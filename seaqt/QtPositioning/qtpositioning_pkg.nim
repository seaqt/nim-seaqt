const
  QtPositioningCFlags* =
    gorge("pkg-config --cflags Qt5Positioning") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtPositioningLibs* = gorge("pkg-config --libs Qt5Positioning")

  QtPositioningGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtPositioningBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5Positioning")
      if v.len > 0: v else: QtPositioningGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtPositioningBuildVersion=x.y.z

{.passl: QtPositioningLibs}
