const
  QtMultimediaWidgetsCFlags* =
    gorge("pkg-config --cflags Qt6MultimediaWidgets") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtMultimediaWidgetsLibs* = gorge("pkg-config --libs Qt6MultimediaWidgets")

  QtMultimediaWidgetsGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtMultimediaWidgetsBuildVersion* = gorge("pkg-config --modversion Qt6MultimediaWidgets")
    ## The version used when compiling the application

{.passl: QtMultimediaWidgetsLibs}
