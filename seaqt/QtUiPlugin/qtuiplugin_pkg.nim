const
  QtUiPluginCFlags* =
    gorge("pkg-config --cflags Qt6UiPlugin") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtUiPluginLibs* = gorge("pkg-config --libs Qt6UiPlugin")

  QtUiPluginGenVersion* = "6.4.3"
    ## The version used for generating the bindings

  QtUiPluginBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6UiPlugin")
      if v.len > 0: v else: QtUiPluginGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtUiPluginBuildVersion=x.y.z

{.passl: QtUiPluginLibs}
