const
  QtWidgetsCFlags* =
    gorge("pkg-config --cflags Qt5Widgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWidgetsLibs* = gorge("pkg-config --libs Qt5Widgets")

  QtWidgetsGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtWidgetsBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5Widgets")
      if v.len > 0: v else: QtWidgetsGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtWidgetsBuildVersion=x.y.z

{.passl: QtWidgetsLibs}
