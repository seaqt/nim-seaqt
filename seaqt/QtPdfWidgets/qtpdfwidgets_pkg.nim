const
  QtPdfWidgetsCFlags* =
    gorge("pkg-config --cflags Qt6PdfWidgets") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtPdfWidgetsLibs* = gorge("pkg-config --libs Qt6PdfWidgets")

  QtPdfWidgetsGenVersion* = "6.8.3"
    ## The version used for generating the bindings

  QtPdfWidgetsBuildVersion* = gorge("pkg-config --modversion Qt6PdfWidgets")
    ## The version used when compiling the application

{.passl: QtPdfWidgetsLibs}
