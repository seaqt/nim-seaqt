import ../QtGui/gen_qpainter_types
export gen_qpainter_types

type QStylePainter* = object of gen_qpainter_types.QPainter
proc `=copy`(dest: var QStylePainter, source: QStylePainter) {.error.}
proc `=sink`(dest: var QStylePainter, source: QStylePainter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

