# - Config file for the FooBar package
# It defines the following variables
#  Super4PCS_INCLUDE_DIRS - include directories for Super4PCS
#  Super4PCS_LIB_DIR    - libraries to link against
#  Super4PCS_LIBRARIES    - libraries to link against
#
#
# To use
# ::
# find_package(Super4PCS REQUIRED)
# include_directories(${Super4PCS_INCLUDE_DIR})
# add_executable(foo foo.cc)
# target_link_libraries(foo ${Super4PCS_LIBRARIES})
# link_directories(${Super4PCS_LIB_DIR})
#
# find_package( Eigen3 REQUIRED )
# include_directories( ${EIGEN3_INCLUDE_DIR} )



####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was Config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

if(FALSE)
  include("${CMAKE_CURRENT_LIST_DIR}/chealpixTargets.cmake")
endif(FALSE)

include("${CMAKE_CURRENT_LIST_DIR}/Super4PCS-AccelLibTargets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/Super4PCS-IOLibTargets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/Super4PCS-AlgoLibTargets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/Super4PCSConfigVersion.cmake")

check_required_components("Super4PCS")

# Compute paths
set(Super4PCS_INCLUDE_DIR "C:/projects/Super4PCS/Super4PCS-x64-Release/include/")
set(Super4PCS_LIB_DIR "C:/projects/Super4PCS/Super4PCS-x64-Release/lib/")
set(Super4PCS_LIBRARIES super4pcs_accel super4pcs_io super4pcs_algo)

if(FALSE)
  list(APPEND Super4PCS_LIBRARIES chealpix)
endif(FALSE)
