const
  QtUiToolsCFlags* =
    gorge("pkg-config --cflags Qt6UiTools") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtUiToolsLibs* = gorge("pkg-config --libs Qt6UiTools")

  QtUiToolsGenVersion* = "6.5.3"
    ## The version used for generating the bindings

  QtUiToolsBuildVersion* = gorge("pkg-config --modversion Qt6UiTools")
    ## The version used when compiling the application

{.passl: QtUiToolsLibs}
