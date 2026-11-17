const
  QtCoreCFlags* =
    gorge("pkg-config --cflags Qt5Core") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtCoreLibs* = gorge("pkg-config --libs Qt5Core")

  QtCoreGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtCoreBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5Core")
      if v.len > 0: v else: QtCoreGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtCoreBuildVersion=x.y.z

{.passl: QtCoreLibs}
