const
  QtWebChannelCFlags* =
    gorge("pkg-config --cflags Qt5WebChannel") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebChannelLibs* = gorge("pkg-config --libs Qt5WebChannel")

  QtWebChannelGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtWebChannelBuildVersion* = gorge("pkg-config --modversion Qt5WebChannel")
    ## The version used when compiling the application

{.passl: QtWebChannelLibs}
