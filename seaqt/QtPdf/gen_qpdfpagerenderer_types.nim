import ../QtCore/gen_qobject_types
export gen_qobject_types

type QPdfPageRenderer* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QPdfPageRenderer, source: QPdfPageRenderer) {.error.}
proc `=sink`(dest: var QPdfPageRenderer, source: QPdfPageRenderer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

