const
  QtUiToolsCFlags* =
    gorge("pkg-config --cflags Qt6UiTools") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtUiToolsLibs* = gorge("pkg-config --libs Qt6UiTools")

  QtUiToolsGenVersion* = "6.8.3"
    ## The version used for generating the bindings

  QtUiToolsBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6UiTools")
      if v.len > 0: v else: QtUiToolsGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtUiToolsBuildVersion=x.y.z

{.passl: QtUiToolsLibs}
