const
  QtSvgWidgetsCFlags* =
    gorge("pkg-config --cflags Qt6SvgWidgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtSvgWidgetsLibs* = gorge("pkg-config --libs Qt6SvgWidgets")

  QtSvgWidgetsGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtSvgWidgetsBuildVersion* = gorge("pkg-config --modversion Qt6SvgWidgets")
    ## The version used when compiling the application

{.passl: QtSvgWidgetsLibs}
