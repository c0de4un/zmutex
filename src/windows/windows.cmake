# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# HEADERS
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( ZMUTEX_WINDOWS_PUBLIC "${ZMUTEX_SRC_DIR}/windows/public/zmutex/" )
set( ZMUTEX_HEADERS
    "${ZMUTEX_WINDOWS_PUBLIC}WinSharedMutex.hpp"
    ${ZMUTEX_HEADERS}
)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# SOURCES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set( ZMUTEX_WINDOWS_PRIVATE "${ZMUTEX_SRC_DIR}/windows/private/zmutex/" )
set( ZMUTEX_SOURCES
    "${ZMUTEX_WINDOWS_PRIVATE}WinSharedMutex.cpp"
    ${ZMUTEX_SOURCES}
)

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =