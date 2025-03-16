const
  QtCoreCFlags* =
    gorge("pkg-config --cflags Qt5Core") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtCoreLibs* = gorge("pkg-config --libs Qt5Core")

  QtCoreGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtCoreBuildVersion* = gorge("pkg-config --modversion Qt5Core")
    ## The version used when compiling the application

{.passl: QtCoreLibs}
