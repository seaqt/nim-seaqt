const
  QtSpatialAudioCFlags* =
    gorge("pkg-config --cflags Qt6SpatialAudio") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtSpatialAudioLibs* = gorge("pkg-config --libs Qt6SpatialAudio")

  QtSpatialAudioGenVersion* = "6.4.3"
    ## The version used for generating the bindings

  QtSpatialAudioBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6SpatialAudio")
      if v.len > 0: v else: QtSpatialAudioGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtSpatialAudioBuildVersion=x.y.z

{.passl: QtSpatialAudioLibs}
