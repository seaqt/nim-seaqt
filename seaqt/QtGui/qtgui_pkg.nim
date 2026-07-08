const
  QtGuiCFlags* =
    gorge("pkg-config --cflags Qt5Gui") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtGuiLibs* = gorge("pkg-config --libs Qt5Gui")

  QtGuiGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtGuiBuildVersion* = gorge("pkg-config --modversion Qt5Gui")
    ## The version used when compiling the application

{.passl: QtGuiLibs}
