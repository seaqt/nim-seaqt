const
  QtWebKitWidgetsCFlags* =
    gorge("pkg-config --cflags Qt5WebKitWidgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebKitWidgetsLibs* = gorge("pkg-config --libs Qt5WebKitWidgets")

  QtWebKitWidgetsGenVersion* = "5.212.0"
    ## The version used for generating the bindings

  QtWebKitWidgetsBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5WebKitWidgets")
      if v.len > 0: v else: QtWebKitWidgetsGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtWebKitWidgetsBuildVersion=x.y.z

{.passl: QtWebKitWidgetsLibs}
