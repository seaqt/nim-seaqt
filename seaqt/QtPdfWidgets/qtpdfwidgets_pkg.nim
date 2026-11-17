const
  QtPdfWidgetsCFlags* =
    gorge("pkg-config --cflags Qt5PdfWidgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtPdfWidgetsLibs* = gorge("pkg-config --libs Qt5PdfWidgets")

  QtPdfWidgetsGenVersion* = "5.15.13"
    ## The version used for generating the bindings

  QtPdfWidgetsBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5PdfWidgets")
      if v.len > 0: v else: QtPdfWidgetsGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtPdfWidgetsBuildVersion=x.y.z

{.passl: QtPdfWidgetsLibs}
