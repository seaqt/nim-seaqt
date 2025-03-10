import ../QtCore/gen_qobject_types
export gen_qobject_types

type QJSEngine* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QJSEngine, source: QJSEngine) {.error.}
proc `=sink`(dest: var QJSEngine, source: QJSEngine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

