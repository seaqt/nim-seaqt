const
  QtWidgetsCFlags* =
    gorge("pkg-config --cflags Qt5Widgets") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtWidgetsLibs* = gorge("pkg-config --libs Qt5Widgets")

  QtWidgetsGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtWidgetsBuildVersion* = gorge("pkg-config --modversion Qt5Widgets")
    ## The version used when compiling the application

{.passl: QtWidgetsLibs}
