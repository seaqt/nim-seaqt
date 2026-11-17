const
  QtWebEngineQuickCFlags* =
    gorge("pkg-config --cflags Qt6WebEngineQuick") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebEngineQuickLibs* = gorge("pkg-config --libs Qt6WebEngineQuick")

  QtWebEngineQuickGenVersion* = "6.4.3"
    ## The version used for generating the bindings

  QtWebEngineQuickBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6WebEngineQuick")
      if v.len > 0: v else: QtWebEngineQuickGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtWebEngineQuickBuildVersion=x.y.z

{.passl: QtWebEngineQuickLibs}
