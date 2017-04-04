#============================================================
#
# Name    = CustomPythonSetup.cmake.template
# Purpose = Template for Manual Config of Python
# Usage   = Copy this file to CustomPythonTemplate.cmake and modifications.
# Notes   = Should the CustomPythonTemplate.cmake file exist, the search
#           for a python installation will be skipped in favor of the variables
#           defined within the custom file.
#============================================================

#
#  The following are varaibles set by the default python search.
#

set( PYTHONINTERP_FOUND "TRUE" )
set( PYTHON_EXECUTABLE 
     "/usr/bin/python"
     CACHE FILEPATH "File Path to system python executable" ) 
set( PYTHON_VERSION_MAJOR "2" CACHE VERSION "System Python version major" )
set( PYTHON_VERSION_MINOR "7" CACHE VERSION "System Python version minor" )
set( PYTHON_VERSION_PATCH "13" CACHE VERSION "System Python version patch" )

set( PYTHON_VERSION_STRING 
     "${PYTHON_VERSION_MAJOR}.${PYTHON_VERSION_MINOR}.${PYTHON_VERSION_PATCH}"
     CACHE VERSION "Python Interpreter version number" ) 

set( PYTHONLIBS_FOUND "TRUE" )
set( PYTHON_LIBRARIES 
     "C:/Python27/libs/python27.lib"
     CACHE FILEPATH "File Path to system python shared object library" )  
set( PYTHON_INCLUDE_DIRS
     "/usr/include/python2.7"
     CACHE PATH "Directory Path to system python includes" )
set( PYTHONLIBS_VERSION_STRING 
     ${PYTHON_VERSION_STRING}
     CACHE VERSION "Python Libraries version number" )
