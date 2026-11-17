const
  QtWidgetsCFlags* =
    gorge("pkg-config --cflags Qt6Widgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWidgetsLibs* = gorge("pkg-config --libs Qt6Widgets")

  QtWidgetsGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtWidgetsBuildVersion* = gorge("pkg-config --modversion Qt6Widgets")
    ## The version used when compiling the application

{.passl: QtWidgetsLibs}
