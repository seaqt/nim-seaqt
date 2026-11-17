const
  QtQuickCFlags* =
    gorge("pkg-config --cflags Qt6Quick") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtQuickLibs* = gorge("pkg-config --libs Qt6Quick")

  QtQuickGenVersion* = "6.8.3"
    ## The version used for generating the bindings

  QtQuickBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6Quick")
      if v.len > 0: v else: QtQuickGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtQuickBuildVersion=x.y.z

{.passl: QtQuickLibs}
