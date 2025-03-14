const
  QtMultimediaCFlags* =
    gorge("pkg-config --cflags Qt6Multimedia") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtMultimediaLibs* = gorge("pkg-config --libs Qt6Multimedia")

  QtMultimediaGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtMultimediaBuildVersion* = gorge("pkg-config --modversion Qt6Multimedia")
    ## The version used when compiling the application

{.passl: QtMultimediaLibs}
