type QCameraFocusZone* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qcamerafocus.cpp", QtMultimediaCFlags).}

proc fcQCameraFocusZone_delete(self: pointer) {.importc: "QCameraFocusZone_delete".}
proc `=destroy`(self: var QCameraFocusZone) =
  if self.owned: fcQCameraFocusZone_delete(self.h)

proc `=sink`(dest: var QCameraFocusZone, source: QCameraFocusZone) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCameraFocusZone, source: QCameraFocusZone) {.error.}
proc delete*(self: sink QCameraFocusZone) =
  let h = self.h
  wasMoved(self)
  fcQCameraFocusZone_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QCameraFocus* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QCameraFocus, source: QCameraFocus) {.error.}
proc `=sink`(dest: var QCameraFocus, source: QCameraFocus) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

