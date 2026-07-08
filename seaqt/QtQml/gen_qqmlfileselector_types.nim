import ../QtCore/gen_qobject_types
export gen_qobject_types

type QQmlFileSelector* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QQmlFileSelector, source: QQmlFileSelector) {.error.}
proc `=sink`(dest: var QQmlFileSelector, source: QQmlFileSelector) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

