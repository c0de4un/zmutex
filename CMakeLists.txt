# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# CMAKE
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# CMake Version
include( "cmake/constants.cmake" )
cmake_minimum_required( VERSION ${PROJECT_CMAKE_VERSION} )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# CONFIGS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

include( "cmake/globals.cmake" )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# PROJECT
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

project( "zMutex" VERSION ${APP_VERSION} LANGUAGES C CXX )

set( CMAKE_C_STANDARD ${ZMUTEX_C_STANDARD} )
set( CMAKE_CXX_STANDARD ${ZMUTEX_CXX_STANDARD} )
set( CMAKE_POSITION_INDEPENDENT_CODE ON )

if ( ZMUTEX_TESTS_ENABLED )
    enable_testing()
endif ( ZMUTEX_TESTS_ENABLED )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# CONFIGS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Platform
include( "${ZMUTEX_DIR}/cmake/platform.cmake" )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# MODULES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# CORE
include( "${ZMUTEX_SRC_DIR}/core/core.cmake" )

# WINDOWS
if ( ZMUTEX_WINDOWS )
    include( "${ZMUTEX_SRC_DIR}/windows/windows.cmake" )
endif ( ZMUTEX_WINDOWS )

# ANDROID
if ( ZMUTEX_ANDROID )
    include( "${ZMUTEX_SRC_DIR}/android/android.cmake" )
endif ( ZMUTEX_ANDROID )

# LINUX
if ( ZMUTEX_LINUX )
    include( "${ZMUTEX_SRC_DIR}/linux/linux.cmake" )
endif ( ZMUTEX_LINUX )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# BUILD
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Create Executable Object
add_executable( zmutex ${ZMUTEX_HEADERS} ${ZMUTEX_SOURCES} )

# Configure Executable Object
set_target_properties( zmutex
    PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${ZMUTEX_OUTPUT_DIR}"
)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# TESTS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if ( ZMUTEX_TESTS_ENABLED )
    add_subdirectory( "${ZMUTEX_LIBS_DIR}/googletest" )
endif ( ZMUTEX_TESTS_ENABLED )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =