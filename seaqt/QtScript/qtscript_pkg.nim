const
  QtScriptCFlags* =
    gorge("pkg-config --cflags Qt5Script") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtScriptLibs* = gorge("pkg-config --libs Qt5Script")

  QtScriptGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtScriptBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5Script")
      if v.len > 0: v else: QtScriptGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtScriptBuildVersion=x.y.z

{.passl: QtScriptLibs}
