import ./gen_qvariantanimation_types
export gen_qvariantanimation_types

type QPropertyAnimation* = object of gen_qvariantanimation_types.QVariantAnimation
proc `=copy`(dest: var QPropertyAnimation, source: QPropertyAnimation) {.error.}
proc `=sink`(dest: var QPropertyAnimation, source: QPropertyAnimation) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

