FIND_PATH( RAYLIB_INCLUDE_DIR raylib.h
        /usr/include
        /usr/local/include
        /opt/local/include
        ${CMAKE_SOURCE_DIR}/includes
)
FIND_LIBRARY( RAYLIB_LIBRARY raylib
        /usr/lib64
        /usr/lib
        /usr/local/lib
        /opt/local/lib
        ${CMAKE_SOURCE_DIR}/lib
)
IF(RAYLIB_INCLUDE_DIR AND RAYLIB_LIBRARY)
        SET( RAYLIB_FOUND TRUE )
        SET( RAYLIB_LIBRARIES ${RAYLIB_LIBRARY} )
ENDIF(RAYLIB_INCLUDE_DIR AND RAYLIB_LIBRARY)
IF(RAYLIB_FOUND)
        IF(NOT RAYLIB_FIND_QUIETLY)
        MESSAGE(STATUS "Found RAYLIB: ${RAYLIB_LIBRARY}")
        ENDIF(NOT RAYLIB_FIND_QUIETLY)
ELSE(RAYLIB_FOUND)
        IF(RAYLIB_FIND_REQUIRED)
        MESSAGE(FATAL_ERROR "Could not find libRAYLIB")
        ENDIF(RAYLIB_FIND_REQUIRED)
ENDIF(RAYLIB_FOUND)
