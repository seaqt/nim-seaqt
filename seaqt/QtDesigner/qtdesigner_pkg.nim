const
  QtDesignerCFlags* =
    gorge("pkg-config --cflags Qt6Designer") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtDesignerLibs* = gorge("pkg-config --libs Qt6Designer")

  QtDesignerGenVersion* = "6.4.3"
    ## The version used for generating the bindings

  QtDesignerBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6Designer")
      if v.len > 0: v else: QtDesignerGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtDesignerBuildVersion=x.y.z

{.passl: QtDesignerLibs}
