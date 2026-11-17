const
  QtWebChannelCFlags* =
    gorge("pkg-config --cflags Qt6WebChannel") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebChannelLibs* = gorge("pkg-config --libs Qt6WebChannel")

  QtWebChannelGenVersion* = "6.4.3"
    ## The version used for generating the bindings

  QtWebChannelBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6WebChannel")
      if v.len > 0: v else: QtWebChannelGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtWebChannelBuildVersion=x.y.z

{.passl: QtWebChannelLibs}
