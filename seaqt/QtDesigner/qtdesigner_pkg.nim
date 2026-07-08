const
  QtDesignerCFlags* =
    gorge("pkg-config --cflags Qt6Designer") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtDesignerLibs* = gorge("pkg-config --libs Qt6Designer")

  QtDesignerGenVersion* = "6.8.3"
    ## The version used for generating the bindings

  QtDesignerBuildVersion* = gorge("pkg-config --modversion Qt6Designer")
    ## The version used when compiling the application

{.passl: QtDesignerLibs}
