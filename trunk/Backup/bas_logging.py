"""BAS_Logging Interface --  Routines involved in log file manipulation.
        Mainly convience wrappers for Python v2.3 log file routines.
"""
#
# Copyright (c) Benjamin Schollnick
# 2003-2004. All Rights Reserved
#
#   Released to the Public Domain.
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
__version__ = '0.50'    # Human Readable Version number
version_info = (0,5,0)  # Easier format version data for comparisons
                        # i.e. if version_info > (1,2,5)
                        #
                        #   if __version__ > '1.00' is a little more contrived.
                        
__author__  = 'Benjamin A. Schollnick'
__date__    = '2003-12-06'  # yyyy-mm-dd
__email__   = 'Benjamin.Schollnick@usa.xerox.com'

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
import  bas_common
import  logging
import  sys
import  os

def Log_to_File_Interface ( Application_Name = bas_common.Return_Application_Name ( ),
                            logfile_path     = "." + os.sep,
                            logfile_name     = bas_common.Return_Application_Name ( )+".log",
                            warning_level    = logging.INFO ):
    """ Setup a Logging Interface to a Log File.

        debug       ( msg[, *args[, **kwargs]]) 
        info        ( msg[, *args[, **kwargs]]) 
        warning     ( msg[, *args[, **kwargs]]) 
        error       ( msg[, *args[, **kwargs]]) 
        critical    ( msg[, *args[, **kwargs]]) 
        log         ( lvl, msg[, *args[, **kwargs]]) 
        exception   ( msg[, *args])

        Inputs -
            Application_Name    - The name of the Application that we are logging.
            logfile_path        - The pathname of where to store the log file,
                                    ensure to append a os.sep
            logfile_name        - The name of the log file, does not automatically
                                    append .LOG
            warning_level       - The default filter for the warning level.
                                    Defaults to Debugging.


        Outputs -
            Returns two interfaces.

            log_interface   - Interface to the Log

            hdlr            - The formating Interface
                
                            
        Example:

            logger = Log_to_File_Interface ()

            logger.error('We have a problem')
            logger.info('While this is just chatty')
            #logger.close()
    """
    log_interface = logging.getLogger( Application_Name )
    hdlr = logging.FileHandler( logfile_path + logfile_name )
    formatter = logging.Formatter('%(asctime)s %(levelname)s %(message)s')
    hdlr.setFormatter(formatter)
    log_interface.addHandler(hdlr) 
    log_interface.setLevel( warning_level )
    return log_interface, hdlr

