import ../QtCore/gen_qobject_types
export gen_qobject_types

type QMediaDevices* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QMediaDevices, source: QMediaDevices) {.error.}
proc `=sink`(dest: var QMediaDevices, source: QMediaDevices) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

