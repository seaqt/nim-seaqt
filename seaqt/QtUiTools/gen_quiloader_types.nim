import ../QtCore/gen_qobject_types
export gen_qobject_types

type QUiLoader* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QUiLoader, source: QUiLoader) {.error.}
proc `=sink`(dest: var QUiLoader, source: QUiLoader) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

