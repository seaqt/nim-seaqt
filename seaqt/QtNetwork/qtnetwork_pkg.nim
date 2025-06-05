const
  QtNetworkCFlags* =
    gorge("pkg-config --cflags Qt6Network") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtNetworkLibs* = gorge("pkg-config --libs Qt6Network")

  QtNetworkGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtNetworkBuildVersion* = gorge("pkg-config --modversion Qt6Network")
    ## The version used when compiling the application

{.passl: QtNetworkLibs}
