include(FindPackageHandleStandardArgs)
include(SelectLibraryConfigurations)

find_path(GDAL_INCLUDE_DIR NAMES gdal.h HINTS ${CURRENT_INSTALLED_DIR})

# j-rivero: comment the DEBUG support to avoid failures. This shuld be fixed in
# versions never versions (> 3.2.2) in vcpkg, not needed in the future
#find_library(GDAL_LIBRARY_DEBUG NAMES gdal_d gdal_i_d gdal NAMES_PER_DIR PATH_SUFFIXES lib PATHS "${_VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/debug" NO_DEFAULT_PATH REQUIRED)
find_library(GDAL_LIBRARY_RELEASE NAMES gdal_i gdal NAMES_PER_DIR PATH_SUFFIXES lib PATHS "${_VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}" NO_DEFAULT_PATH REQUIRED)

select_library_configurations(GDAL)

set(GDAL_INCLUDE_DIRS ${GDAL_INCLUDE_DIR})
set(GDAL_LIBRARIES ${GDAL_LIBRARY})
