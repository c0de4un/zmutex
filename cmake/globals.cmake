# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

if ( NOT DEFINED ZMUTEX_DIR )
    set( ZMUTEX_DIR ${CMAKE_CURRENT_SOURCE_DIR} )
endif ( NOT DEFINED ZMUTEX_DIR )

if ( NOT DEFINED ZMUTEX_SRC_DIR )
    set( ZMUTEX_SRC_DIR "${ZMUTEX_DIR}/src" )
endif ( NOT DEFINED ZMUTEX_SRC_DIR )

if ( NOT DEFINED ZMUTEX_TESTS_DIR )
    set( ZMUTEX_TESTS_DIR "${ZMUTEX_DIR}/tests" )
endif ( NOT DEFINED ZMUTEX_TESTS_DIR )

if ( NOT DEFINED ZMUTEX_OUTPUT_DIR )
    set( ZMUTEX_OUTPUT_DIR "${ZMUTEX_DIR}/bin" )
endif ( NOT DEFINED ZMUTEX_OUTPUT_DIR )

if ( NOT DEFINED ZMUTEX_LIBS_DIR )
    set( ZMUTEX_LIBS_DIR "${ZMUTEX_DIR}/libs" )
endif ( NOT DEFINED ZMUTEX_LIBS_DIR )

set( ZMUTEX_HEADERS "" )
set( ZMUTEX_SOURCES "" )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
