const
  QtScriptCFlags* =
    gorge("pkg-config --cflags Qt5Script") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtScriptLibs* = gorge("pkg-config --libs Qt5Script")

  QtScriptGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtScriptBuildVersion* = gorge("pkg-config --modversion Qt5Script")
    ## The version used when compiling the application

{.passl: QtScriptLibs}
