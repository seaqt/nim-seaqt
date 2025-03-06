import ./gen_qmediaobject_types
export gen_qmediaobject_types

type QCamera* = object of gen_qmediaobject_types.QMediaObject
type QCameraFrameRateRange* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qcamera.cpp", cflags).}

proc fcQCameraFrameRateRange_delete(self: pointer) {.importc: "QCamera__FrameRateRange_delete".}
proc `=destroy`(self: var QCameraFrameRateRange) =
  if self.owned: fcQCameraFrameRateRange_delete(self.h)

proc `=sink`(dest: var QCameraFrameRateRange, source: QCameraFrameRateRange) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCameraFrameRateRange, source: QCameraFrameRateRange) {.error.}
proc delete*(self: sink QCameraFrameRateRange) =
  let h = self.h
  wasMoved(self)
  fcQCameraFrameRateRange_delete(h)

