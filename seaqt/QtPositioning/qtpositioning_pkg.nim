const
  QtPositioningCFlags* =
    gorge("pkg-config --cflags Qt5Positioning") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtPositioningLibs* = gorge("pkg-config --libs Qt5Positioning")

  QtPositioningGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtPositioningBuildVersion* = gorge("pkg-config --modversion Qt5Positioning")
    ## The version used when compiling the application

{.passl: QtPositioningLibs}
