cmake_minimum_required (VERSION 3.16.0)

project(raystarter)
set(NAME "raystarter")
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/modules")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

link_directories(
  ${CMAKE_SOURCE_DIR}/lib
  ${CMAKE_SOURCE_DIR}/dep/raylib/lib)

include_directories(
  ${CMAKE_SOURCE_DIR}/inc
  ${CMAKE_SOURCE_DIR}/dep/raylib/include)

find_package(RAYLIB REQUIRED)
message(STATUS "Found raylib in ${RAYLIB_INCLUDE_DIR}")
file(GLOB SOURCE "src/*.c")
add_executable(raystarter ${SOURCE})
set_property(TARGET raystarter PROPERTY C_STANDARD 11)

if(WIN32)
  set(LIBS ${RAYLIB_LIBRARY} opengl32 winmm)
elseif(UNIX AND NOT APPLE)
  set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS} -W -Wall -Wextra")
  find_package(OpenGL REQUIRED)
  add_definitions(${OPENGL_DEFINITIONS})
  find_package(X11 REQUIRED)
  set(LIBS ${RAYLIB_LIBRARY} raylib X11 GL dl pthread Xrandr Xi m)
  set(CMAKE_C_LINK_EXECUTABLE "${CMAKE_C_LINK_EXECUTABLE} ${RAYLIB_LIBRARY} -ldl")
elseif(APPLE)
  INCLUDE_DIRECTORIES(/System/Library/Frameworks)
  FIND_LIBRARY(COCOA_LIBRARY Cocoa)
  FIND_LIBRARY(OpenGL_LIBRARY OpenGL)
  FIND_LIBRARY(IOKit_LIBRARY IOKit)
  FIND_LIBRARY(CoreVideo_LIBRARY CoreVideo)
  MARK_AS_ADVANCED(COCOA_LIBRARY OpenGL_LIBRARY)
  SET(APPLE_LIBS ${COCOA_LIBRARY} ${IOKit_LIBRARY} ${OpenGL_LIBRARY} ${CoreVideo_LIBRARY})
  SET(APPLE_LIBS ${APPLE_LIBS} ${RAYLIB_LIBRARY} ${ASSIMP_LIBRARY})
  set(LIBS ${LIBS} ${APPLE_LIBS})
else()
  set(LIBS)
endif(WIN32)

if (WIN32)
  file (GLOB DLL_FILES
    "dep/raylib/lib/*.dll")

  foreach(DLL_FILE ${DLL_FILES})
    add_custom_command(TARGET ${NAME} PRE_BUILD COMMAND ${CMAKE_COMMAND} -E copy ${DLL_FILE} $<TARGET_FILE_DIR:${NAME}>)
  endforeach(DLL_FILE)
endif(WIN32)

target_link_libraries(raystarter ${LIBS})
