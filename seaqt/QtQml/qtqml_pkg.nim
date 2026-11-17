const
  QtQmlCFlags* =
    gorge("pkg-config --cflags Qt5Qml") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtQmlLibs* = gorge("pkg-config --libs Qt5Qml")

  QtQmlGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtQmlBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt5Qml")
      if v.len > 0: v else: QtQmlGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtQmlBuildVersion=x.y.z

{.passl: QtQmlLibs}
