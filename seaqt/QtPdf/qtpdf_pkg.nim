const
  QtPdfCFlags* =
    gorge("pkg-config --cflags Qt5Pdf") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtPdfLibs* = gorge("pkg-config --libs Qt5Pdf")

  QtPdfGenVersion* = "5.15.13"
    ## The version used for generating the bindings

  QtPdfBuildVersion* = gorge("pkg-config --modversion Qt5Pdf")
    ## The version used when compiling the application

{.passl: QtPdfLibs}
