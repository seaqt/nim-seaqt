const
  QtMultimediaWidgetsCFlags* =
    gorge("pkg-config --cflags Qt5MultimediaWidgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtMultimediaWidgetsLibs* = gorge("pkg-config --libs Qt5MultimediaWidgets")

  QtMultimediaWidgetsGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtMultimediaWidgetsBuildVersion* = gorge("pkg-config --modversion Qt5MultimediaWidgets")
    ## The version used when compiling the application

{.passl: QtMultimediaWidgetsLibs}
