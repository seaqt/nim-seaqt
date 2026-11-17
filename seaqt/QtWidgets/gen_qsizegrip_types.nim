import ./gen_qwidget_types
export gen_qwidget_types

type QSizeGrip* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QSizeGrip, source: QSizeGrip) {.error.}
proc `=sink`(dest: var QSizeGrip, source: QSizeGrip) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

