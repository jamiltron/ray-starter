# Ray-Starter

A basic skeleton of a project using Cmake to find [raylib](https://github.com/raysan5/raylib).

Note that I vendor raylib in here directly just for my ease of use. This is currently the 3.5 version
built from source. If you want to supply your own version update it here, or add references in the
FindRAYLIB.cmake file.

## Building

`mkdir build; cd build; cmake ..`

If you're using Visual Studio you'll probably need to right-click on your project solution and set the
working directory to wherever your exe gets output to. I need to figure out how to set that with CMake.

## Dependencies

The below dependencies are used in the project or are the dependencies
of dependencies, I have tried to link their licenses or repos below

* [raylib](https://github.com/raysan5/raylib/blob/master/LICENSE)
* [GLAD](https://github.com/Dav1dde/glad#whats-the-license-of-glad-generated-code-101)
* [dirent](https://github.com/raysan5/raylib/blob/master/src/external/dirent.h)
* [stb-image](https://github.com/nothings/stb)
* [stb-image_write](https://github.com/nothings/stb)
* [stb_image_resize](https://github.com/nothings/stb)
* [stb_truetype](https://github.com/nothings/stb)
* [stb_vorbis](https://github.com/nothings/stb)
* [stb_rectpack](https://github.com/nothings/stb)
* [stb_perlin](https://github.com/nothings/stb)
* [rgif](https://github.com/charlietangora/gif-h)
* [miniaudio](https://github.com/dr-soft/miniaudio)
* [dr_flac](https://github.com/mackron/dr_libs)
* [dr_mp3](https://github.com/mackron/dr_libs)
* [jar_mod](https://github.com/jfdelnero/HxCModPlayer)
* [jar_xm](https://github.com/Artefact2/libxm)
* [par_shapes](https://github.com/prideout/par/blob/master/par_shapes.h)
* [cglft](https://github.com/jkuhlmann/cgltf)
* [tinyobj_loader_c](https://github.com/syoyo/tinyobjloader-c)
