const
  QtRemoteObjectsCFlags* =
    gorge("pkg-config --cflags Qt6RemoteObjects") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtRemoteObjectsLibs* = gorge("pkg-config --libs Qt6RemoteObjects")

  QtRemoteObjectsGenVersion* = "6.4.3"
    ## The version used for generating the bindings

  QtRemoteObjectsBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6RemoteObjects")
      if v.len > 0: v else: QtRemoteObjectsGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtRemoteObjectsBuildVersion=x.y.z

{.passl: QtRemoteObjectsLibs}
