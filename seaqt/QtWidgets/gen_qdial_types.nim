import ./gen_qabstractslider_types
export gen_qabstractslider_types

type QDial* = object of gen_qabstractslider_types.QAbstractSlider
proc `=copy`(dest: var QDial, source: QDial) {.error.}
proc `=sink`(dest: var QDial, source: QDial) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

