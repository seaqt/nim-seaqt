import ../QtCore/gen_qobject_types
export gen_qobject_types

type QSvgRenderer* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QSvgRenderer, source: QSvgRenderer) {.error.}
proc `=sink`(dest: var QSvgRenderer, source: QSvgRenderer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

