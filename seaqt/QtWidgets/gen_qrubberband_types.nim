import ./gen_qwidget_types
export gen_qwidget_types

type QRubberBand* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QRubberBand, source: QRubberBand) {.error.}
proc `=sink`(dest: var QRubberBand, source: QRubberBand) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

