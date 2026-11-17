const
  QtQuickCFlags* =
    gorge("pkg-config --cflags Qt5Quick") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtQuickLibs* = gorge("pkg-config --libs Qt5Quick")

  QtQuickGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtQuickBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5Quick")
      if v.len > 0: v else: QtQuickGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtQuickBuildVersion=x.y.z

{.passl: QtQuickLibs}
