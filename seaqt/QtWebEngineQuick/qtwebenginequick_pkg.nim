const
  QtWebEngineQuickCFlags* =
    gorge("pkg-config --cflags Qt6WebEngineQuick") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtWebEngineQuickLibs* = gorge("pkg-config --libs Qt6WebEngineQuick")

  QtWebEngineQuickGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtWebEngineQuickBuildVersion* = gorge("pkg-config --modversion Qt6WebEngineQuick")
    ## The version used when compiling the application

{.passl: QtWebEngineQuickLibs}
