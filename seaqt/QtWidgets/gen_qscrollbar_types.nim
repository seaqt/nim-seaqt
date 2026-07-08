import ./gen_qabstractslider_types
export gen_qabstractslider_types

type QScrollBar* = object of gen_qabstractslider_types.QAbstractSlider
proc `=copy`(dest: var QScrollBar, source: QScrollBar) {.error.}
proc `=sink`(dest: var QScrollBar, source: QScrollBar) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

