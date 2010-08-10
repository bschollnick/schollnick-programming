"""BAS_Common routines -  Common routines, that are grouped in here for collection purposes.

The code is intended to be used, to help with cross platform integration for
my code.  It contains OS detection code, Win32 specific code with default fall
back, etc.

"""
#
# Copyright (c) Benjamin Schollnick
# 2003-2004. All Rights Reserved
#

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
__version__ = '0.60'    # Human Readable Version number
version_info = (0,6,0)  # Easier format version data for comparisons
                        # i.e. if version_info > (1,2,5)
                        #
                        #   if __version__ > '1.00' is a little more contrived.
                        
__author__  = 'Benjamin A. Schollnick'
__date__    = '2003-10-29'  # yyyy-mm-dd
__email__   = 'Benjamin.Schollnick@usa.xerox.com'
#__name__    = "Benjamin A Schollnick Common Routines"

copyright = """
                        COPYRIGHT
                        ---------

 Copyright (c) Benjamin Schollnick
   Benjamin Schollnick, 2000-2001. All Rights Reserved

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
import ConfigParser
import os
import os.path
import string
import sys
import ftplib
import  time

class   timing:
    def     __init__ ( self ):
        self.time    = None
        self.elapsed = None
        
    def     start (self ):
        self.time = time.time()

    def     end (self ):
        if self.time <> None:
            self.elapsed = time.time() - self.time
            self.time = None

    def     print_time (self ):
        print self.elapsed
        
        
def format_lines    ( fieldname, data, fieldname_width=15, data_width=20):
    """
        Reformat the data into a string.
        Simply a "Macro", to reduce duplication.
        
        Inputs -
            FieldName   - Name of the field that is to be reformated.
            data        - The actual stored data.

        Outputs -
            fieldname = "This is the fieldname"
            data      = "This is the data."
            "This is the fie: This is the "

        Example:

    """
    fmt = '  %-' + str(fieldname_width) + 's: %-' + str(data_width) + 's'
    return fmt % (fieldname, data)

class	NullDevice:
	def	write (self, s):
		pass

def     Return_Application_Name ( ):
        """Returns the name of the Executable.
           The code will process the sys.argv[0] string, and extract the last
           element, which should be the executable name.
            
            Inputs -
                None

            Outputs -
                A single String.  

            Example:
                
        """
        Name = sys.argv[0].split(os.sep)
        Name = Name[len(Name)-1]
        Name = Name.split(".")[0]
        return Name

def     file_statistics     ( path ):
        """
            Outputs -
                0   = File Size
                1   = Time of Most Recent Access
                2   = Time of Most Recent Modification
        
        """
        temp = os.stat ( path )
        return (temp[6], temp[7], temp[8])
    
def     Add_OSSep_to_Path   ( path ):
        """ Check to see if there is a OS.SEP to the end of the path.

            Inputs -
                Path    - Pathname (w/o Filename) to the path

            Outputs -
                The path with a os.sep appended to it.


            Example:
                
        """
	if not (path.endswith ( os.sep ) or path.endswith (os.altsep)):
		path = path + os.sep
	return path

def     Generate_UpperCase_List ( data_list ):
        """ Convert a list of Strings to Upper Case.
        Used for various purposes, but generally for arguments lists
        of computer names on Command Line.

            Inputs -
                data_list   - A list of Strings

            Outputs -
                A upper processed list of strings


            Example:
                if specific_machines == True:
                    new_list = bas_common.Generate_UpperCase_List ( args )
        """
        new_list = []
        for x in range(0, len( data_list ) ):
            new_list.append ( data_list[x].strip().upper() )
        return new_list
    

def	English_Boolean_Value	( boolean_value ):
        """ Translate a Boolean value into a English word.

            Inputs -
                boolean_value   - The Boolean value to translated.

            Outputs -
                A single String.  Either "True" or "False" depending on
                input.


            Example:
                bol_value       = True
                print username  = bas_common.English_Boolean_Value ( bol_value )
                  True

                bol_value = False
                print username  = bas_common.English_Boolean_Value ( bol_value )
                  False
                
        """
	if boolean_value == True:
		return "True"
	else:
		return "False"


def	Translate_English_to_Boolean ( bstring ):
        """ Translate a English word into a Boolean value.
            If the inbound string is in the following list:

            YES, TRUE, ON, SUCCESS

            Then True is returned.  In all other cases, False is returned.

            Inputs -
                A single String.  
                

            Outputs -
                boolean_value   - Representing the string that was sent.


            Example:
                bol_value       = True
                print username  = bas_common.English_Boolean_Value ( bol_value )
                  1

                bol_value = False
                print username  = bas_common.English_Boolean_Value ( bol_value )
                  0
                
        """    
	target = bstring.upper().strip() #string.upper ( string.strip ( bstring ) )
	if target in ['YES', 'TRUE', 'ON', 'SUCCESS']:
		return True
	else:
		return False



def	create_platform_path ( list_of_directories, *overflow):
	"""
	A platform agnostic wrapper around os.path.join()

	examples:
	
	print "path: ", create_platform_path (None)
	print "path: ", create_platform_path ( *["develope"] )
	print "path: ", create_platform_path ( *["develope", "bas_common"] )
	print "path: ", create_platform_path ( *["temp", "delete", "me"] )
	test = ["this", "is", "the", "path"]
	print "path: ", create_platform_path (*test)
	"""
	if (list_of_directories <> None):
		return os.path.join ( list_of_directories, *overflow )
	else:
		return ""

def     retrieve_ftp_directory (    ftp_ses = None,     directory_path = "./",
                                    file_spec = "."):
        """ Split the FTP directory lines into a tupple.

            Inputs -
                ftp_ses             - An FTP Session that has been established
                directory_path      - The directory path of files to list
                                        (Note: Add a seperator to the end of the directory path..)
                file_spec           - The file specification of the directory list

            Outputs -
                A list of tupples, each entry contain a tupple which represents a single file.
                Each tupple has the following information:
                
                    Element 0   - Date (Only)
                    Element 1   - Time (Only)
                    Element 2   - File Size
                    Element 3   - File Name
                    
            Example:

                dir           = ftp_ses.dir( directory_path + os.sep + "*.*",   ftp_dir.append )
                for line in ftp_dir:
                    if line <> "" or line <> None:
                        print ( iis_ftp_split_line ( line ) )
        """

        def     unix_ftp_split_line ( line ):
            """ Split the FTP directory lines into a tupple.
                Not intended to be called directly, only for use by retrieve ftp directory.

                Needed due to the different format of the files listings on IIS vs. Unix
                Inputs -
                    line            - The text of the line to be split

                Outputs -
                    A tupple :
                    
                        Element 0   - Date (Only)
                        Element 1   - Time (Only)
                        Element 2   - File Size
                        Element 3   - File Name
                        
                Example:

                    ftpsession = ftplib.FTP ( "Yoyodyne.ess.mc.xerox.com", "bart", "simpson" )
                    data = retrieve_ftp_directory  ( ftpsession, "" )
                    print data
            """
            split_form      = line.split ( " " )

            position = len(split_form)
            if split_form [position - 2 ] == "->":   # Sym link
                position = position - 2
            ftp_date        = ""
            ftp_filesize    = ""
            ftp_time        = split_form [ position - 2 ]
            ftp_filename    = split_form [ position - 1]
            return (    ftp_date,   ftp_time,   ftp_filesize,   ftp_filename )

        def     iis_ftp_split_line ( line ):
            """ Split the FTP directory lines into a tupple.
                Not intended to be called directly, only for use by retrieve ftp directory.

                Inputs -
                    line            - The text of the line to be split

                Outputs -
                    A tupple :
                    
                        Element 0   - Date (Only)
                        Element 1   - Time (Only)
                        Element 2   - File Size
                        Element 3   - File Name
                        
                Example:

                    ftpsession = ftplib.FTP ( "Yoyodyne.ess.mc.xerox.com", "bart", "simpson" )
                    data = retrieve_ftp_directory  ( ftpsession, "" )
                    print data
            """
            split_form      = line.split ( " " )
            ftp_date        = split_form [ 0 ]
            ftp_time        = split_form [ 2 ]
            ftp_filesize    = split_form [ len ( split_form ) - 2 ]
            ftp_filename    = split_form [ len ( split_form ) - 1 ]
            return (    ftp_date,   ftp_time,   ftp_filesize,   ftp_filename )

        def auto_split ( line ):
            """Automates the UNIX vs. IIS comparisons for the FTP directory routines.
            """

            test = line.split (" ")    
            if len(test[0]) == 10:  # The first entry in the unix directory is the permissions
                #print "unix"        # Which is 3 groups of 3 + space...  (10)
                return unix_ftp_split_line ( line )
            else:
                #   IIS
                #
                return iis_ftp_split_line ( line )

        #
        #   Start of Main Function
        #
        if ftp_ses == None:
            return None
        
        ftp_dir       = []      #   Temporary data 
        ftp_directory = []      #   Stored Final Data
        current_dir   = ftp_ses.pwd ()
        dir           = ftp_ses.dir( directory_path + file_spec,   ftp_dir.append )
        for line in ftp_dir:
            if line.strip() <> "" and line <> None:
                ftp_directory.append ( auto_split ( line ) )
        return ftp_directory

def     ftp_file_exists         ( ftp_ses = None, directory_path=".", filename=None):
        """ Checks to see if the file exists on the FTP Server.

            Inputs -
                ftp_ses             - An FTP Session that has been established
                directory_path      - The directory path to the file
                filename            - The file name of the file to check for.

                NOTE:   If the directory path is invalid, the file will not be able to be
                        found, and will be reported as not existing.

                NOTE:   This function uses the FTP Size command.  It checks to see if the file
                        has a file size, if it does have a file size, then obviously the file exists.

                        Not all FTP servers will support the Size command.  If the server does not
                        support the size command, the file may be reported to not exist.
                
            Outputs -

                Boolean     -   True    == File found
                                False   == File Not Found

                EXCEPTION:

                        If a ftp session is not passed into the function, it will return
                        a None value.
                
            Example:

                ftpsession = ftplib.FTP ( "Yoyodyne.ess.mc.xerox.com", "bart", "simpson" )
                #print ftpsession.size ("xxCCLetter25.zip")
                print bas_common.ftp_file_exists (ftpsession, ".", "CCLetter25.zip")
                print bas_common.ftp_file_exists (ftpsession, ".", "xxCCLetter25.zip")
                print bas_common.ftp_file_exists (ftpsession, "workflow", "CCLetter25.zip")
                print bas_common.ftp_file_exists (ftpsession, "workflow.", "xxCCLetter25.zip")
        """
        if filename <> None and ftp_ses <> None:
            current_directory = ftp_ses.pwd ()
            try:
                ftp_ses.cwd ( directory_path )
                ftp_ses.size ( filename )
                return True
            except ftplib.error_perm:
                return False
        else:
            return None
        
def     ftp_upload_file         (   ftp_ses = None,
                                    target_directory = ".",
                                    target_filename  = None,
                                    local_filename   = None,
                                    overwrite_ok     = False):
        """ Checks to see if the file exists on the FTP Server.

            Inputs -
                ftp_ses             - An FTP Session that has been established
                target_directory    - remote directory to place the file in
                target_filename     - filename on the remote system
                local_filename      - The full filename / pathname for the file on the local machine
                overwrite_ok        - True if you are allowing overwrite, false if you wish to deny overwrite.

            Outputs -

                Boolean     -   True    == File uploaded successfully
                                False   == File Not uploaded successfully (partial transfer
                                            may have occurred.
                
            Example:

                ftpsession = ftplib.FTP ( "Yoyodyne.ess.mc.xerox.com", "bart", "simpson" )
                #print ftpsession.size ("xxCCLetter25.zip")
                print bas_common.ftp_file_exists (ftpsession, ".", "CCLetter25.zip")
                print bas_common.ftp_file_exists (ftpsession, ".", "xxCCLetter25.zip")
                print bas_common.ftp_file_exists (ftpsession, "workflow", "CCLetter25.zip")
                print bas_common.ftp_file_exists (ftpsession, "workflow.", "xxCCLetter25.zip")
        """
        if overwrite_ok == False:
            if  bas_common.ftp_file_exists (ftpsession, target_directory, target_filename):
                return False

        try:    
            ftp_filehandle = open ( local_filename )
            ftp_ses.cwd ( target_directory )
            ftp_ses.storbinary ("STOR %s" % target_filename, ftp_filehandle)
            ftp_filehandle.close ()
            #ftp_ses.close ()
            return True
        except ftplib.error_perm:
            return False
    
def     retrieve_ftp_file       (   ftp_ses = None,
                                    directory_path = ".",
                                    target_path = ".",
                                    filename = "*.*"):
        """ Retrieve FTP file(s).

            Inputs -
                ftp_ses             - An FTP Session that has been established
                directory_path      - The directory path of files to list
                target_path         - The target directory to save the file(s) in
                file_spec           - The file specification to download

                If the file_spec is a wildcard, then the file_spec will be transferred.
                
            Outputs -
                
                    
            Example:

        """
        if ftp_ses:
            if filename == "*.*":
                directory_dump = retrieve_ftp_directory (    ftp_ses, directory_path, filename )
                length = len ( directory_dump )
            else:
                length = 1

            if length == 1:
#                print Add_OSSep_to_Path ( directory_path) +  filename
                ftp_ses.retrbinary ('RETR '+ Add_OSSep_to_Path ( directory_path) +  filename,
                                    open( Add_OSSep_to_Path   ( target_path ) + filename, 'wb').write)
                return 1
            else:
                count = 0
                for file_data in directory_dump:
                    ftp_ses.retrbinary ('RETR '+ Add_OSSep_to_Path ( directory_path) +  file_data[3],
                                        open( Add_OSSep_to_Path   ( target_path ) + file_data[3], 'wb').write)
                    count = count + 1
                return count

#
#   Next Gen Configuration File 
#

       
#
#   Configuration File Common Routines (*.INI based)
#


##def	CFG_Open_File	( filename ):
##	handle = ConfigParser.ConfigParser()
##	handle.read ( filename )
##	return handle
##
##def	CFG_Close_File ( cfile ):
##	cfile = None
##	return cfile
##    
##def     CFG_Retrieve_Entry ( name, element, cfile ):
##    #
##    #   Open the Config File, and pass it here for retrieval
##    #
##	try:
##		return cfile.get ( name, element )
##	except (ConfigParser.NoOptionError, ConfigParser.NoSectionError):
##		return ''
##
##def     CFG_retrieve_default    (cf, section_name, element, default_value = ""):
##        """ Wrapper around the Python supplied INI reading routines.
##            Adds support for a default value.
##
##            Inputs -
##                cf              - Configuration File Parser Object
##                section_name    - The [Section] to be read from
##                element         - The element in the [Section]
##                default_value   - The default value to use, if the element
##                                    and/or section is not found
##
##            Outputs -
##                1) The value that is to be returned from the INI file,
##                    alternatively if the section or element is not found
##                    the default value.
##
##            Example:
##                username  = bas_retrieve (cf, hostname, "username", "").strip()
##
##        """
##        try:
##            return cf.get ( section_name, element )
##        except (ConfigParser.NoOptionError, ConfigParser.NoSectionError):
##            return default_value
##
##
##def     CFG_Retrieve_Float_Entry ( name, element, cfile ):
##    #
##    #   Open the Config File, and pass it here for retrieval
##    #
##	try:
##		return cfile.getfloat ( name, element )
##	except (ConfigParser.NoOptionError, ConfigParser.NoSectionError):
##		return ''
##
##def	CFG_Set_Entry (name, element, option, cfile):
##	try:
##		cfile.set (name, element, option)
##	except:
##		pass

def	Win32_Set_Console_Title ( text ):
        """ Wrapper around the win32api.SetConsoleTitle command.
            This will test for the presence of the Win32 libraries,
            if they are available it will pass the text sent into
            the Set console title api call.

            Inputs -
                text            - The new Console Title text.

            Outputs -
                None
                
            Example:
                Win32_Set_Console_Title ("This is the new title")

        """
	if not (macintosh) and _win32_loaded:
		try:
			win32api.SetConsoleTitle ( text )
		except:
			pass
	return None

	
if __name__ == "__main__":      #   If run from the Command line
    pass                        #   Execute nothing.

# Check to see if we are running on a Macintosh based system.
# (Mac OS X or Classic)
#
macintosh	= (sys.platform == "mac")
_win32_loaded = 0

if not sys.platform == "win32":
	try:
                # Check to see if we are running under Windows.
                #
		import win32api, win32con
		_win32_loaded = 1
	except:
		pass

#
#   Common Functions
#

platform_name = sys.platform
# Set a standardized variable for the platform name, which is based off the
# Os.name functions.
#

if sys.version_info < (2, 3, 0, 'final', 0):
    #
    #   Before python v2.30 true and false had to be declared.  They were
    #   Not constants in python platform.
    #
    true    = True 	= TRUE  = 1
    false   = False     = FALSE = 0

#
#   Aliases for True/False.
#
yes	= Yes		= True
no	= No		= False
success	= Success	= True
failure	= Failure	= False
