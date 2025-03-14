const
  QtCoreCFlags* =
    gorge("pkg-config --cflags Qt6Core") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtCoreLibs* = gorge("pkg-config --libs Qt6Core")

  QtCoreGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtCoreBuildVersion* = gorge("pkg-config --modversion Qt6Core")
    ## The version used when compiling the application

{.passl: QtCoreLibs}
