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

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# HEADERS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( ZMUTEX_HEADERS
    "${ZMUTEX_SRC_DIR}/main.hpp" )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# SOURCES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( ZMUTEX_HEADERS
    "${ZMUTEX_SRC_DIR}/main.cpp" )

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

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =