const
  QtWebEngineCoreCFlags* =
    gorge("pkg-config --cflags Qt6WebEngineCore") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebEngineCoreLibs* = gorge("pkg-config --libs Qt6WebEngineCore")

  QtWebEngineCoreGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtWebEngineCoreBuildVersion* = gorge("pkg-config --modversion Qt6WebEngineCore")
    ## The version used when compiling the application

{.passl: QtWebEngineCoreLibs}
