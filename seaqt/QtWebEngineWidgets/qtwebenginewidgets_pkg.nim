const
  QtWebEngineWidgetsCFlags* =
    gorge("pkg-config --cflags Qt5WebEngineWidgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebEngineWidgetsLibs* = gorge("pkg-config --libs Qt5WebEngineWidgets")

  QtWebEngineWidgetsGenVersion* = "5.15.13"
    ## The version used for generating the bindings

  QtWebEngineWidgetsBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5WebEngineWidgets")
      if v.len > 0: v else: QtWebEngineWidgetsGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtWebEngineWidgetsBuildVersion=x.y.z

{.passl: QtWebEngineWidgetsLibs}
