const
  QtQuickCFlags* =
    gorge("pkg-config --cflags Qt6Quick") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtQuickLibs* = gorge("pkg-config --libs Qt6Quick")

  QtQuickGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtQuickBuildVersion* = gorge("pkg-config --modversion Qt6Quick")
    ## The version used when compiling the application

{.passl: QtQuickLibs}
