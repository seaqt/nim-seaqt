const
  QtWebKitWidgetsCFlags* =
    gorge("pkg-config --cflags Qt5WebKitWidgets") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtWebKitWidgetsLibs* = gorge("pkg-config --libs Qt5WebKitWidgets")

  QtWebKitWidgetsGenVersion* = "5.212.0"
    ## The version used for generating the bindings

  QtWebKitWidgetsBuildVersion* = gorge("pkg-config --modversion Qt5WebKitWidgets")
    ## The version used when compiling the application

{.passl: QtWebKitWidgetsLibs}
