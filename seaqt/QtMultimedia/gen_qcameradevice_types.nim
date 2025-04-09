type QCameraFormat* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qcameradevice.cpp", QtMultimediaCFlags).}

proc fcQCameraFormat_delete(self: pointer) {.importc: "QCameraFormat_delete".}
proc `=destroy`(self: var QCameraFormat) =
  if self.owned: fcQCameraFormat_delete(self.h)

proc `=sink`(dest: var QCameraFormat, source: QCameraFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCameraFormat, source: QCameraFormat) {.error.}
proc delete*(self: sink QCameraFormat) =
  let h = self.h
  wasMoved(self)
  fcQCameraFormat_delete(h)

type QCameraDevice* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQCameraDevice_delete(self: pointer) {.importc: "QCameraDevice_delete".}
proc `=destroy`(self: var QCameraDevice) =
  if self.owned: fcQCameraDevice_delete(self.h)

proc `=sink`(dest: var QCameraDevice, source: QCameraDevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCameraDevice, source: QCameraDevice) {.error.}
proc delete*(self: sink QCameraDevice) =
  let h = self.h
  wasMoved(self)
  fcQCameraDevice_delete(h)

