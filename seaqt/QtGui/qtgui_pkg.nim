const
  QtGuiCFlags* =
    gorge("pkg-config --cflags Qt6Gui") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtGuiLibs* = gorge("pkg-config --libs Qt6Gui")

  QtGuiGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtGuiBuildVersion* = gorge("pkg-config --modversion Qt6Gui")
    ## The version used when compiling the application

{.passl: QtGuiLibs}
