const
  QtWebChannelCFlags* =
    gorge("pkg-config --cflags Qt5WebChannel") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtWebChannelLibs* = gorge("pkg-config --libs Qt5WebChannel")

  QtWebChannelGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtWebChannelBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5WebChannel")
      if v.len > 0: v else: QtWebChannelGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtWebChannelBuildVersion=x.y.z

{.passl: QtWebChannelLibs}
