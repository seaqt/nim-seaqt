import ../QtCore/gen_qobject_types
export gen_qobject_types

type QInputDevice* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QInputDevice, source: QInputDevice) {.error.}
proc `=sink`(dest: var QInputDevice, source: QInputDevice) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

