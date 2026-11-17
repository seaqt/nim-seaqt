const
  QtNetworkCFlags* =
    gorge("pkg-config --cflags Qt6Network") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtNetworkLibs* = gorge("pkg-config --libs Qt6Network")

  QtNetworkGenVersion* = "6.4.3"
    ## The version used for generating the bindings

  QtNetworkBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6Network")
      if v.len > 0: v else: QtNetworkGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtNetworkBuildVersion=x.y.z

{.passl: QtNetworkLibs}
