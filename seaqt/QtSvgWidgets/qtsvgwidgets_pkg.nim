const
  QtSvgWidgetsCFlags* =
    gorge("pkg-config --cflags Qt6SvgWidgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtSvgWidgetsLibs* = gorge("pkg-config --libs Qt6SvgWidgets")

  QtSvgWidgetsGenVersion* = "6.4.3"
    ## The version used for generating the bindings

  QtSvgWidgetsBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6SvgWidgets")
      if v.len > 0: v else: QtSvgWidgetsGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtSvgWidgetsBuildVersion=x.y.z

{.passl: QtSvgWidgetsLibs}
