const
  QtNetworkCFlags* =
    gorge("pkg-config --cflags Qt5Network") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtNetworkLibs* = gorge("pkg-config --libs Qt5Network")

  QtNetworkGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtNetworkBuildVersion* = gorge("pkg-config --modversion Qt5Network")
    ## The version used when compiling the application

{.passl: QtNetworkLibs}
