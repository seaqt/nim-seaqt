const
  QtGuiCFlags* =
    gorge("pkg-config --cflags Qt6Gui") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtGuiLibs* = gorge("pkg-config --libs Qt6Gui")

  QtGuiGenVersion* = "6.5.3"
    ## The version used for generating the bindings

  QtGuiBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6Gui")
      if v.len > 0: v else: QtGuiGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtGuiBuildVersion=x.y.z

{.passl: QtGuiLibs}
