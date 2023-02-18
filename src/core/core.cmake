# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# HEADERS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( ZMUTEX_CORE_PUBLIC "${ZMUTEX_SRC_DIR}/core/public/zmutex/" )
set( ZMUTEX_HEADERS
    "${ZMUTEX_CORE_PUBLIC}/IMutex.hxx"
    "${ZMUTEX_CORE_PUBLIC}/ISharedMutex.hxx"
    "${ZMUTEX_CORE_PUBLIC}/SharedMutex.hpp"
    ${ZMUTEX_HEADERS} )

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# SOURCES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( ZMUTEX_CORE_PRIVATE "${ZMUTEX_SRC_DIR}/core/private/zmutex/" )
set( ZMUTEX_SOURCES
    "${ZMUTEX_CORE_PRIVATE}/Mutex.cpp"
    "${ZMUTEX_CORE_PRIVATE}/SharedMutex.cpp"
    ${ZMUTEX_SOURCES} )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =