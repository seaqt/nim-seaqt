const
  QtWebEngineWidgetsCFlags* =
    gorge("pkg-config --cflags Qt6WebEngineWidgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebEngineWidgetsLibs* = gorge("pkg-config --libs Qt6WebEngineWidgets")

  QtWebEngineWidgetsGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtWebEngineWidgetsBuildVersion* = gorge("pkg-config --modversion Qt6WebEngineWidgets")
    ## The version used when compiling the application

{.passl: QtWebEngineWidgetsLibs}
