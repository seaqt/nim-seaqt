const
  QtPdfWidgetsCFlags* =
    gorge("pkg-config --cflags Qt5PdfWidgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtPdfWidgetsLibs* = gorge("pkg-config --libs Qt5PdfWidgets")

  QtPdfWidgetsGenVersion* = "5.15.13"
    ## The version used for generating the bindings

  QtPdfWidgetsBuildVersion* = gorge("pkg-config --modversion Qt5PdfWidgets")
    ## The version used when compiling the application

{.passl: QtPdfWidgetsLibs}
