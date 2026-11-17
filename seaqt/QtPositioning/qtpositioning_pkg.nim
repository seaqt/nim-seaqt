const
  QtPositioningCFlags* =
    gorge("pkg-config --cflags Qt6Positioning") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtPositioningLibs* = gorge("pkg-config --libs Qt6Positioning")

  QtPositioningGenVersion* = "6.11.1"
    ## The version used for generating the bindings

  QtPositioningBuildVersion* = gorge("pkg-config --modversion Qt6Positioning")
    ## The version used when compiling the application

{.passl: QtPositioningLibs}
