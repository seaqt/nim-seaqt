const
  QtWebEngineCoreCFlags* =
    gorge("pkg-config --cflags Qt5WebEngineCore") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtWebEngineCoreLibs* = gorge("pkg-config --libs Qt5WebEngineCore")

  QtWebEngineCoreGenVersion* = "5.15.13"
    ## The version used for generating the bindings

  QtWebEngineCoreBuildVersion* = gorge("pkg-config --modversion Qt5WebEngineCore")
    ## The version used when compiling the application

{.passl: QtWebEngineCoreLibs}
