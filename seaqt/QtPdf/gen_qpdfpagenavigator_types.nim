import ../QtCore/gen_qobject_types
export gen_qobject_types

type QPdfPageNavigator* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QPdfPageNavigator, source: QPdfPageNavigator) {.error.}
proc `=sink`(dest: var QPdfPageNavigator, source: QPdfPageNavigator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

