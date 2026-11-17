const
  QtPdfWidgetsCFlags* =
    gorge("pkg-config --cflags Qt6PdfWidgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtPdfWidgetsLibs* = gorge("pkg-config --libs Qt6PdfWidgets")

  QtPdfWidgetsGenVersion* = "6.5.3"
    ## The version used for generating the bindings

  QtPdfWidgetsBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6PdfWidgets")
      if v.len > 0: v else: QtPdfWidgetsGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtPdfWidgetsBuildVersion=x.y.z

{.passl: QtPdfWidgetsLibs}
