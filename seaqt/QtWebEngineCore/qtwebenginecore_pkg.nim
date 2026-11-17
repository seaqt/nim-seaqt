const
  QtWebEngineCoreCFlags* =
    gorge("pkg-config --cflags Qt5WebEngineCore") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebEngineCoreLibs* = gorge("pkg-config --libs Qt5WebEngineCore")

  QtWebEngineCoreGenVersion* = "5.15.13"
    ## The version used for generating the bindings

  QtWebEngineCoreBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5WebEngineCore")
      if v.len > 0: v else: QtWebEngineCoreGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtWebEngineCoreBuildVersion=x.y.z

{.passl: QtWebEngineCoreLibs}
