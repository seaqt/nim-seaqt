const
  QtWebEngineCoreCFlags* =
    gorge("pkg-config --cflags Qt6WebEngineCore") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebEngineCoreLibs* = gorge("pkg-config --libs Qt6WebEngineCore")

  QtWebEngineCoreGenVersion* = "6.8.3"
    ## The version used for generating the bindings

  QtWebEngineCoreBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6WebEngineCore")
      if v.len > 0: v else: QtWebEngineCoreGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtWebEngineCoreBuildVersion=x.y.z

{.passl: QtWebEngineCoreLibs}
