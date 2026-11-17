import ./gen_qmediaobject_types
export gen_qmediaobject_types

type QCamera* = object of gen_qmediaobject_types.QMediaObject
proc `=copy`(dest: var QCamera, source: QCamera) {.error.}
proc `=sink`(dest: var QCamera, source: QCamera) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QCameraFrameRateRange* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qcamera.cpp", QtMultimediaCFlags).}

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

