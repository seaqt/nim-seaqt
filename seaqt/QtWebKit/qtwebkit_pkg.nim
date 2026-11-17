const
  QtWebKitCFlags* =
    gorge("pkg-config --cflags Qt5WebKit") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebKitLibs* = gorge("pkg-config --libs Qt5WebKit")

  QtWebKitGenVersion* = "5.212.0"
    ## The version used for generating the bindings

  QtWebKitBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5WebKit")
      if v.len > 0: v else: QtWebKitGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtWebKitBuildVersion=x.y.z

{.passl: QtWebKitLibs}
