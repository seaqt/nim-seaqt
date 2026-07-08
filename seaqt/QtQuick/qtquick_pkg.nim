const
  QtQuickCFlags* =
    gorge("pkg-config --cflags Qt5Quick") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtQuickLibs* = gorge("pkg-config --libs Qt5Quick")

  QtQuickGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtQuickBuildVersion* = gorge("pkg-config --modversion Qt5Quick")
    ## The version used when compiling the application

{.passl: QtQuickLibs}
