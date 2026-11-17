const
  QtSvgCFlags* =
    gorge("pkg-config --cflags Qt6Svg") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtSvgLibs* = gorge("pkg-config --libs Qt6Svg")

  QtSvgGenVersion* = "6.8.3"
    ## The version used for generating the bindings

  QtSvgBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6Svg")
      if v.len > 0: v else: QtSvgGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtSvgBuildVersion=x.y.z

{.passl: QtSvgLibs}
