import ./gen_qobject_types
export gen_qobject_types

type QSettings* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSettings, source: QSettings) {.error.}
proc `=sink`(dest: var QSettings, source: QSettings) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

