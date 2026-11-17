const
  QtQmlCFlags* =
    gorge("pkg-config --cflags Qt5Qml") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtQmlLibs* = gorge("pkg-config --libs Qt5Qml")

  QtQmlGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtQmlBuildVersion* = gorge("pkg-config --modversion Qt5Qml")
    ## The version used when compiling the application

{.passl: QtQmlLibs}
