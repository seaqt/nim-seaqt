const
  QtSvgCFlags* =
    gorge("pkg-config --cflags Qt5Svg") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtSvgLibs* = gorge("pkg-config --libs Qt5Svg")

  QtSvgGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtSvgBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5Svg")
      if v.len > 0: v else: QtSvgGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtSvgBuildVersion=x.y.z

{.passl: QtSvgLibs}
