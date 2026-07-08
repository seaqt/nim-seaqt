const
  QtWebEngineWidgetsCFlags* =
    gorge("pkg-config --cflags Qt5WebEngineWidgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebEngineWidgetsLibs* = gorge("pkg-config --libs Qt5WebEngineWidgets")

  QtWebEngineWidgetsGenVersion* = "5.15.13"
    ## The version used for generating the bindings

  QtWebEngineWidgetsBuildVersion* = gorge("pkg-config --modversion Qt5WebEngineWidgets")
    ## The version used when compiling the application

{.passl: QtWebEngineWidgetsLibs}
