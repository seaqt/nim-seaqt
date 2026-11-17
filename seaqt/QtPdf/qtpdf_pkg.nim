const
  QtPdfCFlags* =
    gorge("pkg-config --cflags Qt6Pdf") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtPdfLibs* = gorge("pkg-config --libs Qt6Pdf")

  QtPdfGenVersion* = "6.5.3"
    ## The version used for generating the bindings

  QtPdfBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6Pdf")
      if v.len > 0: v else: QtPdfGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtPdfBuildVersion=x.y.z

{.passl: QtPdfLibs}
