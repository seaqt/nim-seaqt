import ../QtWidgets/gen_qabstractscrollarea_types
export gen_qabstractscrollarea_types

type QPdfView* = object of gen_qabstractscrollarea_types.QAbstractScrollArea
proc `=copy`(dest: var QPdfView, source: QPdfView) {.error.}
proc `=sink`(dest: var QPdfView, source: QPdfView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

