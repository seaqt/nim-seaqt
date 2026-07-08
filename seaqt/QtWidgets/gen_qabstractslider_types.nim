import ./gen_qwidget_types
export gen_qwidget_types

type QAbstractSlider* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QAbstractSlider, source: QAbstractSlider) {.error.}
proc `=sink`(dest: var QAbstractSlider, source: QAbstractSlider) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

