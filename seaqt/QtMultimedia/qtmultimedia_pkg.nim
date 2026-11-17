const
  QtMultimediaCFlags* =
    gorge("pkg-config --cflags Qt5Multimedia") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtMultimediaLibs* = gorge("pkg-config --libs Qt5Multimedia")

  QtMultimediaGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtMultimediaBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5Multimedia")
      if v.len > 0: v else: QtMultimediaGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtMultimediaBuildVersion=x.y.z

{.passl: QtMultimediaLibs}
