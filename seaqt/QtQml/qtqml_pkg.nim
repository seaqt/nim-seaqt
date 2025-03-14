const
  QtQmlCFlags* =
    gorge("pkg-config --cflags Qt6Qml") &
    (when declared(gcc) or declared(llvm): " -fPIC" else: "")

  QtQmlLibs* = gorge("pkg-config --libs Qt6Qml")

  QtQmlGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtQmlBuildVersion* = gorge("pkg-config --modversion Qt6Qml")
    ## The version used when compiling the application

{.passl: QtQmlLibs}
