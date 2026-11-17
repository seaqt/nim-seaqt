const
  QtWebSocketsCFlags* =
    gorge("pkg-config --cflags Qt6WebSockets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebSocketsLibs* = gorge("pkg-config --libs Qt6WebSockets")

  QtWebSocketsGenVersion* = "6.5.3"
    ## The version used for generating the bindings

  QtWebSocketsBuildVersion* = gorge("pkg-config --modversion Qt6WebSockets")
    ## The version used when compiling the application

{.passl: QtWebSocketsLibs}
