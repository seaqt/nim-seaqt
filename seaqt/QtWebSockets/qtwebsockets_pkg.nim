const
  QtWebSocketsCFlags* =
    gorge("pkg-config --cflags Qt5WebSockets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebSocketsLibs* = gorge("pkg-config --libs Qt5WebSockets")

  QtWebSocketsGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtWebSocketsBuildVersion* = gorge("pkg-config --modversion Qt5WebSockets")
    ## The version used when compiling the application

{.passl: QtWebSocketsLibs}
