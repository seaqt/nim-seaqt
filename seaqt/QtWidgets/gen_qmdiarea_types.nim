import ./gen_qabstractscrollarea_types
export gen_qabstractscrollarea_types

type QMdiArea* = object of gen_qabstractscrollarea_types.QAbstractScrollArea
proc `=copy`(dest: var QMdiArea, source: QMdiArea) {.error.}
proc `=sink`(dest: var QMdiArea, source: QMdiArea) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

