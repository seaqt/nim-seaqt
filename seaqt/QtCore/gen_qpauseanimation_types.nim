import ./gen_qabstractanimation_types
export gen_qabstractanimation_types

type QPauseAnimation* = object of gen_qabstractanimation_types.QAbstractAnimation
proc `=copy`(dest: var QPauseAnimation, source: QPauseAnimation) {.error.}
proc `=sink`(dest: var QPauseAnimation, source: QPauseAnimation) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

