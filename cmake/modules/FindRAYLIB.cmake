FIND_PATH( RAYLIB_INCLUDE_DIR raylib.h
        /usr/include
        /usr/local/include
        /opt/local/include
        ${CMAKE_SOURCE_DIR}/includes
        ${CMAKE_SOURCE_DIR}/dep/raylib/include
        "C:/raylib/include"
)
FIND_LIBRARY( RAYLIB_LIBRARY raylib
        /usr/lib64
        /usr/lib
        /usr/local/lib
        /opt/local/lib
        ${CMAKE_SOURCE_DIR}/lib
        ${CMAKE_SOURCE_DIR}/dep/raylib/lib
        "C:/raylib/lib"
)
IF(RAYLIB_INCLUDE_DIR AND RAYLIB_LIBRARY)
  SET( RAYLIB_FOUND TRUE )
  SET( RAYLIB_LIBRARIES ${RAYLIB_LIBRARY} )
  INCLUDE(FindPackageHandleStandardArgs)
  FIND_PACKAGE_HANDLE_STANDARD_ARGS(RAYLIB DEFAULT_MSG
    RAYLIB_LIBRARY RAYLIB_INCLUDE_DIR)
ENDIF(RAYLIB_INCLUDE_DIR AND RAYLIB_LIBRARY)
