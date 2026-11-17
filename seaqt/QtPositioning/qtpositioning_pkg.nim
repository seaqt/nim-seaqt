const
  QtPositioningCFlags* =
    gorge("pkg-config --cflags Qt6Positioning") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtPositioningLibs* = gorge("pkg-config --libs Qt6Positioning")

  QtPositioningGenVersion* = "6.4.3"
    ## The version used for generating the bindings

  QtPositioningBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6Positioning")
      if v.len > 0: v else: QtPositioningGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtPositioningBuildVersion=x.y.z

{.passl: QtPositioningLibs}
