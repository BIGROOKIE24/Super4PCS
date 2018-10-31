#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "super4pcs_io" for configuration "Release"
set_property(TARGET super4pcs_io APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(super4pcs_io PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/super4pcs_io.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS super4pcs_io )
list(APPEND _IMPORT_CHECK_FILES_FOR_super4pcs_io "${_IMPORT_PREFIX}/lib/super4pcs_io.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
