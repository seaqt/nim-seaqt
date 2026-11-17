const
  QtWebSocketsCFlags* =
    gorge("pkg-config --cflags Qt5WebSockets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebSocketsLibs* = gorge("pkg-config --libs Qt5WebSockets")

  QtWebSocketsGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtWebSocketsBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5WebSockets")
      if v.len > 0: v else: QtWebSocketsGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtWebSocketsBuildVersion=x.y.z

{.passl: QtWebSocketsLibs}
