const
  QtPrintSupportCFlags* =
    gorge("pkg-config --cflags Qt6PrintSupport") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtPrintSupportLibs* = gorge("pkg-config --libs Qt6PrintSupport")

  QtPrintSupportGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtPrintSupportBuildVersion* = gorge("pkg-config --modversion Qt6PrintSupport")
    ## The version used when compiling the application

{.passl: QtPrintSupportLibs}
