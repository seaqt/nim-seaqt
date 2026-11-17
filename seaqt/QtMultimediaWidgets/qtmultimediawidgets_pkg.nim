const
  QtMultimediaWidgetsCFlags* =
    gorge("pkg-config --cflags Qt6MultimediaWidgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtMultimediaWidgetsLibs* = gorge("pkg-config --libs Qt6MultimediaWidgets")

  QtMultimediaWidgetsGenVersion* = "6.8.3"
    ## The version used for generating the bindings

  QtMultimediaWidgetsBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6MultimediaWidgets")
      if v.len > 0: v else: QtMultimediaWidgetsGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtMultimediaWidgetsBuildVersion=x.y.z

{.passl: QtMultimediaWidgetsLibs}
