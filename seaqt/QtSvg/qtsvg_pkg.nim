const
  QtSvgCFlags* =
    gorge("pkg-config --cflags Qt6Svg") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtSvgLibs* = gorge("pkg-config --libs Qt6Svg")

  QtSvgGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtSvgBuildVersion* = gorge("pkg-config --modversion Qt6Svg")
    ## The version used when compiling the application

{.passl: QtSvgLibs}
