import ./gen_qwidget_types
export gen_qwidget_types

type QRhiWidget* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QRhiWidget, source: QRhiWidget) {.error.}
proc `=sink`(dest: var QRhiWidget, source: QRhiWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

