import ./gen_qabstractslider_types
export gen_qabstractslider_types

type QSlider* = object of gen_qabstractslider_types.QAbstractSlider
proc `=copy`(dest: var QSlider, source: QSlider) {.error.}
proc `=sink`(dest: var QSlider, source: QSlider) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

