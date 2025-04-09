import ./gen_qabstractanimation_types
export gen_qabstractanimation_types

type QAnimationGroup* = object of gen_qabstractanimation_types.QAbstractAnimation
proc `=copy`(dest: var QAnimationGroup, source: QAnimationGroup) {.error.}
proc `=sink`(dest: var QAnimationGroup, source: QAnimationGroup) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

