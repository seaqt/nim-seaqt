type QCameraInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qcamerainfo.cpp", cflags).}

proc fcQCameraInfo_delete(self: pointer) {.importc: "QCameraInfo_delete".}
proc `=destroy`(self: var QCameraInfo) =
  if self.owned: fcQCameraInfo_delete(self.h)

proc `=sink`(dest: var QCameraInfo, source: QCameraInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCameraInfo, source: QCameraInfo) {.error.}
proc delete*(self: sink QCameraInfo) =
  let h = self.h
  wasMoved(self)
  fcQCameraInfo_delete(h)

