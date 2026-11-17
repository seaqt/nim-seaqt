const
  QtPdfCFlags* =
    gorge("pkg-config --cflags Qt6Pdf") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtPdfLibs* = gorge("pkg-config --libs Qt6Pdf")

  QtPdfGenVersion* = "6.8.3"
    ## The version used for generating the bindings

  QtPdfBuildVersion* = gorge("pkg-config --modversion Qt6Pdf")
    ## The version used when compiling the application

{.passl: QtPdfLibs}
