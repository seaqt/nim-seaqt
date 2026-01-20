import ./gen_qanimationgroup_types
export gen_qanimationgroup_types

type QSequentialAnimationGroup* = object of gen_qanimationgroup_types.QAnimationGroup
proc `=copy`(dest: var QSequentialAnimationGroup, source: QSequentialAnimationGroup) {.error.}
proc `=sink`(dest: var QSequentialAnimationGroup, source: QSequentialAnimationGroup) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

