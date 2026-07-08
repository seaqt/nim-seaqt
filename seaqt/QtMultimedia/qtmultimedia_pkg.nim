const
  QtMultimediaCFlags* =
    gorge("pkg-config --cflags Qt5Multimedia") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtMultimediaLibs* = gorge("pkg-config --libs Qt5Multimedia")

  QtMultimediaGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtMultimediaBuildVersion* = gorge("pkg-config --modversion Qt5Multimedia")
    ## The version used when compiling the application

{.passl: QtMultimediaLibs}
