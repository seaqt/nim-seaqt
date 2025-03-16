const
  QtSvgCFlags* =
    gorge("pkg-config --cflags Qt5Svg") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtSvgLibs* = gorge("pkg-config --libs Qt5Svg")

  QtSvgGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtSvgBuildVersion* = gorge("pkg-config --modversion Qt5Svg")
    ## The version used when compiling the application

{.passl: QtSvgLibs}
