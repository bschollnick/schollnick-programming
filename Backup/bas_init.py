"""BAS Standardized Initialization Routines.

This code sets up a standard initialization framework for applications.
The code itself is considered public domain, due to the simplisticity of the
code.
"""

#
# Copyright (c) Benjamin Schollnick, 2003-2004. All Rights Reserved
#
#   Released to the Public Domain.
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
__version__ = '0.75'    # Human Readable Version number
version_info = (0,7,5)  # Easier format version data for comparisons
                        # i.e. if version_info > (1,2,5)
                        #
                        #   if __version__ > '1.00' is a little more contrived.
                        
__author__      = 'Benjamin A. Schollnick'
__date__        = '2004-03-05'  # yyyy-mm-dd
__email__       = 'Benjamin@schollnick.net'
__module_name__ = "Standard Initialization Routines"
__short_cright__= "Copyright (C) 2003,2004 Benjamin Schollnick. All Rights Reserved."

copyright = """
                        COPYRIGHT
                        ---------

 Copyright (c) Benjamin Schollnick, 2003-2004. All Rights Reserved

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT
OF THIRD PARTY RIGHTS. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR HOLDERS
INCLUDED IN THIS NOTICE BE LIABLE FOR ANY CLAIM, OR ANY SPECIAL INDIRECT
OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS
OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE
OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE
OR PERFORMANCE OF THIS SOFTWARE.

Except as contained in this notice, the name of a copyright holder
shall not be used in advertising or otherwise to promote the sale, use
or other dealings in this Software without prior written authorization
of the copyright holder.
"""
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

import  bas_common
import  bas_logging
import  ConfigParser
import  optparse
import  os
import  sys
#import  mongoose

class   initialization_wrapper:
    """Generic Initialization framework for applications.

    The Initialize function sets various systems, that are commonly used
    in many applications, specifically:

        * Command Line Parser (optparse.OptionParser)   [cmd_line_interface]
        * Log File                                      [log_file_interface]
        * INI File Parser   (ConfigParser.ConfigParser) [config_interface]

    The interfaces are available from the following variables/handles
    set up during the initialization of the wrapper:

        The Command Line Parser interface, is cmd_line_interface.
        The Log Fileinterface, is logfile_interface.
        The INI File Parser interface, is config_interface.
        
    Inputs  --  allow_multi_ini_load, This allows all the initialization
                files to be loaded at once.  This could cause collisions, and
                is disabled by default.

                If you wish to enable this feature, pass allow_multi_ini_load=1,
                into the constructor.
                
    Outputs --  None Directly, object itself is output.  See above.

    Notes:
            allow_multi_ini_load is different, then having multiple ini files
            and switching between ini files.

            You can switch between the ini files at any time.

    Examples:

        import  bas_common
        command_line    = "bas_init.py -f test.ini,test2.ini test1 test2 test3"
        sys.argv        = command_line.split (" ")
        initialization_data  = initialization_wrapper ()
        initialization_data.cmd_line_interface.add_option ("-f", "--file", action="store", type="string", dest="inputfilename", help="The configuration file to read.", default="machines.ini")
        initialization_data.cmd_line_interface.add_option ("-o", "--out", action="store", type="string", dest="outputfilename", help="The configuration file to write to.", default="report.pdf")
    
    """
    def     __init__ ( self, allow_multi_ini_load = False,
                       app_name = None, version = None):
        #
        #   GUI Mode
        #
        self.gui_mode                = False
        #
        #   Command Line Defaults
        #
        self.usage_text         = "usage: %prog [options]"
        self.cmd_line_interface = optparse.OptionParser ( )
        self.cmd_line_options   = None
        self.cmd_line_arguments = None

        #
        #   Logging Defaults
        #
        self.logfile_interface = None
        self.logfile_handler   = None
        #
        #   Configuration File Defaults
        self.allow_multi_ini_load = allow_multi_ini_load
        self.config_interface   = ConfigParser.ConfigParser ()
        self.config_filenames   = None
        self.config_current_numb= None
        self.config_max_files   = None
        self.config_app_name    = app_name
        self.config_app_version = version
##        import mongoose.reporters
##        mongoose.mongoose.start ()
##        mongoose.setSessionInfo ( self.config_app_name, self.config_app_version)
##        mongoose.registerReporter( mongoose.reporters.ConsoleReporter () )
##        mongoose.registerReporter( mongoose.reporters.GuiReporter () )

    def     close_configuration_file ( self ):
        """
        """
        self.allow_multi_ini_load = allow_multi_ini_load
        self.config_interface   = ConfigParser.ConfigParser ()
        self.config_filenames   = None
        self.config_current_numb= None
        self.config_max_files   = None


    def     open_configuration_file ( self, filename ):
        """This establishes the SafeConfigParser subsystem.

        This routine will setup the various variables, and subsystems
        needed to parse the ini file(s) that are passed into it.

        The various variables are as follows:

            * allow_multi_ini_load      Default = Disabled
            * config_interface
            * config_filenames
            * config_current_numb[er]
            * config_max_files

        The configparser is loaded into the Config_Interface variable.
        The rest of the variables are used to support extensions to the
        Config_Interface.

        The significant addition is the ability to switch to another ini file.

        Inputs  --
                    filename    - This is the filename(s) to be loaded, seperated
                                    by a comma (,).  There are two different behaviors
                                    depending on the settings of "ALLOW_MULTI_INI_LOAD".

                                    If Multi is enabled, then all the INI files are loaded
                                    at once.  This could cause namespace collisions, if the
                                    ini files contain sections with the same names.

                                    The collisions are not fatal, but could cause confusion
                                    due to details coming from different INI files.

                                    If Multi is disabled, then the filenames are parsed
                                    and stored in config_filenames.  The first filename is
                                    then opened, and read normally.  The other files can
                                    be loaded via a function call.

        Outputs --  None Directly, object itself is output. 

        Examples:

            import  bas_common
            command_line    = "bas_init.py -f test.ini,test2.ini test1 test2 test3"
            sys.argv        = command_line.split (" ")
            initialization_data  = initialization_wrapper ()
            initialization_data.open_configuration_file ( "test.ini" )
            print "Initialization Successful..."
            print
            initialization_data.display_config_info ()
        
        """
        try:
            self.config_filenames   = filename.strip().split (",")
            self.config_max_files   = len( self.config_filenames )
            
            if self.allow_multi_ini_load :
                self.config_interface.read ( self.config_filenames )
            else:
                self.config_current_numb = 0
                self.config_interface.readfp ( open (self.config_filenames[self.config_current_numb]) )
            return True
#        print self.config_interface.sections()
        except IOError:
            return False
            
    def     change_configuration_file (self, config_file_number ):
        """This will flush the contents of the current ConfigParser, and load the designated
        configuration file.

        Inputs  --
                    config_file_number  - This is number of the configuration file to load.
                                    If the number is larger than the config_max_files, then
                                    the command is ignored.


        Outputs --  None Directly, The configuration Parser is reloaded. 

        Examples:

            import  bas_common
            command_line    = "bas_init.py -f test.ini,test2.ini test1 test2 test3"
            sys.argv        = command_line.split (" ")
            initialization_data  = initialization_wrapper ()
            initialization_data.open_configuration_file ( "test.ini", "test2.ini", "test3.ini") )
            print "Initialization Successful..."
            print
            initialization_data.display_config_info ()
            print
            initialization_data.change_configuration_file ( 1 )
            print
            initialization_data.display_config_info ()
        
        """
        if config_file_number <= self.config_max_files:
            self.config_interface = ConfigParser.SafeConfigParser ()
            self.config_current_numb = config_file_number
            self.config_interface.readfp ( open (self.config_filenames[self.config_current_numb]) )

    def     read_configuration_string ( self, name, element, default_value = None):
        """ Wrapper around the Python supplied INI reading routines.
            Adds support for a default value.

            Inputs -
                section_name    - The [Section] to be read from
                element         - The element in the [Section]
                default_value   - The default value to use, if the element
                                    and/or section is not found

            Outputs -
                1) The value that is to be returned from the INI file,
                    alternatively if the section or element is not found
                    the default value.

            Example:
                username  = bas_retrieve (cf, hostname, "username", "").strip()

        """
        if self.config_filenames <> None:
            try:
                return self.config_interface.get ( name, element )
            except (ConfigParser.NoOptionError, ConfigParser.NoSectionError):
                return default_value

    def     read_configuration_float ( self, name, element, default_value = None):
        """ Wrapper around the Python supplied INI reading routines.
            Adds support for a default value.

            Inputs -
                section_name    - The [Section] to be read from
                element         - The element in the [Section]
                default_value   - The default value to use, if the element
                                    and/or section is not found

            Outputs -
                1) The value that is to be returned from the INI file,
                    alternatively if the section or element is not found
                    the default value.

            Example:
                username  = bas_retrieve (cf, hostname, "username", "").strip()

        """
        if self.config_filenames <> None:
            try:
                return self.config_interface.get ( name, element )
            except (ConfigParser.NoOptionError, ConfigParser.NoSectionError):
                return default_value

    def     read_configuration_integer ( self, name, element, default_value = None):
        """ Wrapper around the Python supplied INI reading routines.
            Adds support for a default value.

            Inputs -
                section_name    - The [Section] to be read from
                element         - The element in the [Section]
                default_value   - The default value to use, if the element
                                    and/or section is not found

            Outputs -
                1) The value that is to be returned from the INI file,
                    alternatively if the section or element is not found
                    the default value.

            Example:
                username  = bas_retrieve (cf, hostname, "username", "").strip()

        """
        if self.config_filenames <> None:
            try:
                return self.config_interface.get ( name, element )
            except (ConfigParser.NoOptionError, ConfigParser.NoSectionError):
                return default_value

    def     read_configuration_boolean ( self, name, element, default_value = None):
        """ Wrapper around the Python supplied INI reading routines.
            Adds support for a default value.

            Inputs -
                section_name    - The [Section] to be read from
                element         - The element in the [Section]
                default_value   - The default value to use, if the element
                                    and/or section is not found

            Outputs -
                1) The value that is to be returned from the INI file,
                    alternatively if the section or element is not found
                    the default value.

            Example:
                username  = bas_retrieve (cf, hostname, "username", "").strip()

        """
        if self.config_filenames <> None:
            try:
                return self.config_interface.get ( name, element )
            except (ConfigParser.NoOptionError, ConfigParser.NoSectionError):
                return default_value

    def	set_configuration_value (self, name, element, option):
            try:
                    self.config_interface.set (name, element, option)
            except:
                    pass
                
    def     turn_on_log_to_file ( self, 
                                  Application_Name = bas_common.Return_Application_Name ( ),
                                  logfile_path     = "." + os.sep,
                                  logfile_name     = bas_common.Return_Application_Name ( )+".log" ):
        """This activates logging to a logfile.

        Inputs  --
                    Application_Name    - The name that will be posted to the logfile, this defaults to
                                            the executable application filename.
                    logfile_path        - The directory that the logfile will be placed in.  Defaults to the
                                            local directory (.)
                    logfile_name        - The name of the logfile.  This defaults to the Executable application
                                            filename, with the extension replaced with ".log".

        Outputs --  None Directly, The python logfile module is loaded, and started. 

        Examples:

            idata = bas_init.initialization_wrapper ()
            idata.cmd_line_interface.add_option ("-f", "--file", action="store", type="string", dest="inputfilename", help="The configuration file to read.", default="machines.ini")
            idata.cmd_line_interface.add_option ("-g", "--gui",  action="store_true", dest="gui_mode", help="Use the GUI mode.")
            idata.cmd_line_interface.add_option ("-t", "--test", action="store_true", dest="testrun", help="If set, the application does not actually archive the license file.  This does not prevent the FTP session from being created, it just prevents the download of the file.")
            idata.run_cmd_line_parse  ( )
            idata.turn_on_log_to_file ( )
            if not os.path.exists ( data_directory ):
                idata.log_file_interface.warning ( 'Directory [%s] does not Exist.' % server)
        """
        self.log_file_interface, self.log_file_handler = bas_logging.Log_to_File_Interface ( Application_Name   = Application_Name,
                                                                        logfile_path       = logfile_path,
                                                                        logfile_name       = logfile_name)
#        mongoose.registerReporter( mongoose.reporters.FileLogReporter('crash.log'))


    def     Panic_to_LogFile ( self ):
            import traceback
            self.log_file_interface.warning ( 'An Exception has Occurred.')
            dump = sys.exc_info ()
            self.log_file_interface.warning ( str(dump[0]) )
            self.log_file_interface.warning ( str(dump[1]) )
            error_data = traceback.extract_tb (sys.exc_traceback)
            self.log_file_interface.warning ("Line Number: %s " % error_data[0][1])
            self.log_file_interface.warning ("Function Name: %s" % error_data[0][2])
            self.log_file_interface.warning ("Statement  : %s" % error_data[0][3])
            self.log_file_interface.warning ("See Crash.log for more details")
            
            
            
    #
    #   Command Line Parser Support Functions
    def     run_cmd_line_parse  ( self, cmd_line_override = None):
        """This performs the actual command line parse.

        Inputs  --
                    cmd_line_override   - If you wish to override the "real" command line,
                                            pass the command line (String form) through the
                                            override.  The override will then overwrite the
                                            sys.argv value, and be parsed by the parse.

                                            This has limited uses, but is helpful for debugging
                                            purposes.

        Outputs --  None Directly, the object now has a populated cmd_line_options, and
                    cmd_line_arguments.

        Examples:

            idata = bas_init.initialization_wrapper ()
            idata.cmd_line_interface.add_option ("-f", "--file", action="store", type="string", dest="inputfilename", help="The configuration file to read.", default="machines.ini")
            idata.cmd_line_interface.add_option ("-g", "--gui",  action="store_true", dest="gui_mode", help="Use the GUI mode.")
            idata.cmd_line_interface.add_option ("-t", "--test", action="store_true", dest="testrun", help="If set, the application does not actually archive the license file.  This does not prevent the FTP session from being created, it just prevents the download of the file.")
            idata.run_cmd_line_parse  ( )
            idata.turn_on_log_to_file ( )
            if idata.cmd_line_options.testrun:
                print "\n* * * Test Run Mode Enabled * * *\n"
                idata.log_file_interface.info ( "*** Test Run Mode Enabled ***" )
        """
        if cmd_line_override <> None:
            sys.argv        = cmd_line_override.split (" ")

        self.cmd_line_interface.usage = self.usage_text
        (self.cmd_line_options, self.cmd_line_arguments) = self.cmd_line_interface.parse_args()


    def     change_cmd_line_parse_usage_text   ( self, utext = "" ):
        """This changes the command line parsers usage (help) text.

        Inputs  --
                    utext               - The replacement text for the usage text string.

        Outputs --  None Directly.

        Examples:

            idata = bas_init.initialization_wrapper ()
            idata.change_cmd_line_parse_usage_text ( "Program.exe [acbd] {234sa}")
            idata.cmd_line_interface.add_option ("-f", "--file", action="store", type="string", dest="inputfilename", help="The configuration file to read.", default="machines.ini")
            idata.cmd_line_interface.add_option ("-g", "--gui",  action="store_true", dest="gui_mode", help="Use the GUI mode.")
            idata.cmd_line_interface.add_option ("-t", "--test", action="store_true", dest="testrun", help="If set, the application does not actually archive the license file.  This does not prevent the FTP session from being created, it just prevents the download of the file.")
            idata.run_cmd_line_parse  ( )
            idata.turn_on_log_to_file ( )
            if idata.cmd_line_options.testrun:
                print "\n* * * Test Run Mode Enabled * * *\n"
                idata.log_file_interface.info ( "*** Test Run Mode Enabled ***" )
        """
        self.usage_text = str(utext).strip()

    def     return_cmd_line_parse_results ( self ):
        """ Returns a semi formatted tupple of the command line
            parsing results.
        """
        return self.cmd_line_options, self.cmd_line_arguments

    def     display_config_info ( self ):
        """This displays a subset of the data in the initialization object.

        Inputs  --
                    None.

        Outputs --  Text pumped to Standard out.

                    The current status of the following variables:

                    * GUI Mode
                    * Usage Text
                    * The current command line
                    * The current command line options
                    * The current command line Arguments
                    * The current log file
                    * The current log file handler
                    * The current Configuration file
                    * The current Configuration file's section list

        Examples:

            idata = bas_init.initialization_wrapper ()
            initialization_data.open_configuration_file ( "test.ini", "test2.ini", "test3.ini") )
            print "Initialization Successful..."
            print
            initialization_data.display_config_info ()
            print
            initialization_data.change_configuration_file ( 1 )
            print
            initialization_data.display_config_info ()
        """
        print bas_common.format_lines    ( "Gui Mode",      self.gui_mode )
        print bas_common.format_lines    ( "Usage Text",    self.usage_text )
        print bas_common.format_lines    ( "Cmd Line",      self.cmd_line_interface )
        print bas_common.format_lines    ( "Cmd Line Opts", self.cmd_line_options )
        print bas_common.format_lines    ( "Cmd Line Args", self.cmd_line_arguments )
        print bas_common.format_lines    ( "Log File",      self.logfile_interface )
        print bas_common.format_lines    ( "Log File Hndlr",self.logfile_handler )
        print bas_common.format_lines    ( "Config File",   self.config_interface )
        print bas_common.format_lines    ( "Config Sections",self.config_interface.sections() )


def     test_init ():
    """Small Unit test for the initialization library.

        It creates a initialization wrapper, adds several command line options,
        and overrides the command line.

        It then parses the command line, opens the configuration file,
        displays the configuration data, switches to a new configuration
        file, and then displays the new configuration data.
        
    """
    print sys.argv

    command_line    = "bas_init.py -f test.ini,test2.ini test1 test2 test3"
    initialization_data  = initialization_wrapper ()
    initialization_data.cmd_line_interface.add_option ("-f", "--file", action="store", type="string", dest="inputfilename", help="The configuration file to read.", default="machines.ini")
    initialization_data.cmd_line_interface.add_option ("-o", "--out", action="store", type="string", dest="outputfilename", help="The configuration file to write to.", default="report.pdf")
    initialization_data.cmd_line_interface.add_option ("-g", "--gui",  action="store_true", dest="gui_mode", help="Use the GUI mode.")
    initialization_data.cmd_line_interface.add_option ("-t", "--test", action="store_true", dest="testrun", help="If set, the application does not actually archive the license file.  This does not prevent the FTP session from being created, it just prevents the download of the file.")

    initialization_data.turn_on_log_to_file ( )
    print sys.argv
    initialization_data.run_cmd_line_parse ( cmd_line_override = command_line )
    print sys.argv
    initialization_data.open_configuration_file ( initialization_data.cmd_line_options.inputfilename )
    
    print "Initialization Successful..."
    print
    print "Command Line: ", command_line
    print
    d = 0/0
    initialization_data.display_config_info ()
    print
    initialization_data.change_configuration_file ( 1 )
    print
    initialization_data.display_config_info ()
    


if __name__ == "__main__":      #   If run from the Command line
    test_init ()                #   run the unit test.
    
    
