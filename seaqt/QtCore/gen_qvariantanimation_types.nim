import ./gen_qabstractanimation_types
export gen_qabstractanimation_types

type QVariantAnimation* = object of gen_qabstractanimation_types.QAbstractAnimation
proc `=copy`(dest: var QVariantAnimation, source: QVariantAnimation) {.error.}
proc `=sink`(dest: var QVariantAnimation, source: QVariantAnimation) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

