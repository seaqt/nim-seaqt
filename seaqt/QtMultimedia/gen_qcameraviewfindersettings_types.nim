type QCameraViewfinderSettings* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qcameraviewfindersettings.cpp", cflags).}

proc fcQCameraViewfinderSettings_delete(self: pointer) {.importc: "QCameraViewfinderSettings_delete".}
proc `=destroy`(self: var QCameraViewfinderSettings) =
  if self.owned: fcQCameraViewfinderSettings_delete(self.h)

proc `=sink`(dest: var QCameraViewfinderSettings, source: QCameraViewfinderSettings) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCameraViewfinderSettings, source: QCameraViewfinderSettings) {.error.}
proc delete*(self: sink QCameraViewfinderSettings) =
  let h = self.h
  wasMoved(self)
  fcQCameraViewfinderSettings_delete(h)

