const
  QtPrintSupportCFlags* =
    gorge("pkg-config --cflags Qt5PrintSupport") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtPrintSupportLibs* = gorge("pkg-config --libs Qt5PrintSupport")

  QtPrintSupportGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtPrintSupportBuildVersion* = gorge("pkg-config --modversion Qt5PrintSupport")
    ## The version used when compiling the application

{.passl: QtPrintSupportLibs}
