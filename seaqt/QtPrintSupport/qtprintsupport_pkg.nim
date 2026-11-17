const
  QtPrintSupportCFlags* =
    gorge("pkg-config --cflags Qt5PrintSupport") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtPrintSupportLibs* = gorge("pkg-config --libs Qt5PrintSupport")

  QtPrintSupportGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtPrintSupportBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5PrintSupport")
      if v.len > 0: v else: QtPrintSupportGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtPrintSupportBuildVersion=x.y.z

{.passl: QtPrintSupportLibs}
