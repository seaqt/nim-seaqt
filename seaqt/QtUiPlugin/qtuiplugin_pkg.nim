const
  QtUiPluginCFlags* =
    gorge("pkg-config --cflags Qt6UiPlugin") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtUiPluginLibs* = gorge("pkg-config --libs Qt6UiPlugin")

  QtUiPluginGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtUiPluginBuildVersion* = gorge("pkg-config --modversion Qt6UiPlugin")
    ## The version used when compiling the application

{.passl: QtUiPluginLibs}
