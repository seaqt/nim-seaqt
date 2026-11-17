import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQmlTypeNotAvailable* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQmlTypeNotAvailable, source: QQmlTypeNotAvailable) {.error.}
proc `=sink`(dest: var QQmlTypeNotAvailable, source: QQmlTypeNotAvailable) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

