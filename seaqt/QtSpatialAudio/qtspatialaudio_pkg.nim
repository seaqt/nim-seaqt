const
  QtSpatialAudioCFlags* =
    gorge("pkg-config --cflags Qt6SpatialAudio") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtSpatialAudioLibs* = gorge("pkg-config --libs Qt6SpatialAudio")

  QtSpatialAudioGenVersion* = "6.4.2"
    ## The version used for generating the bindings

  QtSpatialAudioBuildVersion* = gorge("pkg-config --modversion Qt6SpatialAudio")
    ## The version used when compiling the application

{.passl: QtSpatialAudioLibs}
