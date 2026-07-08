const
  QtWebKitCFlags* =
    gorge("pkg-config --cflags Qt5WebKit") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebKitLibs* = gorge("pkg-config --libs Qt5WebKit")

  QtWebKitGenVersion* = "5.212.0"
    ## The version used for generating the bindings

  QtWebKitBuildVersion* = gorge("pkg-config --modversion Qt5WebKit")
    ## The version used when compiling the application

{.passl: QtWebKitLibs}
