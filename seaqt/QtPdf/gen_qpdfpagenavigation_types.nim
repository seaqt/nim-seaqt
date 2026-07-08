import ../QtCore/gen_qobject_types
export gen_qobject_types

type QPdfPageNavigation* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QPdfPageNavigation, source: QPdfPageNavigation) {.error.}
proc `=sink`(dest: var QPdfPageNavigation, source: QPdfPageNavigation) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

