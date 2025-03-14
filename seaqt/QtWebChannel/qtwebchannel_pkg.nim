const
  QtWebChannelCFlags* =
    gorge("pkg-config --cflags Qt6WebChannel") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtWebChannelLibs* = gorge("pkg-config --libs Qt6WebChannel")

  QtWebChannelGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtWebChannelBuildVersion* = gorge("pkg-config --modversion Qt6WebChannel")
    ## The version used when compiling the application

{.passl: QtWebChannelLibs}
