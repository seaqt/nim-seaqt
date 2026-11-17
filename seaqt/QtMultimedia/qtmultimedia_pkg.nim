const
  QtMultimediaCFlags* =
    gorge("pkg-config --cflags Qt6Multimedia") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtMultimediaLibs* = gorge("pkg-config --libs Qt6Multimedia")

  QtMultimediaGenVersion* = "6.8.3"
    ## The version used for generating the bindings

  QtMultimediaBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6Multimedia")
      if v.len > 0: v else: QtMultimediaGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtMultimediaBuildVersion=x.y.z

{.passl: QtMultimediaLibs}
