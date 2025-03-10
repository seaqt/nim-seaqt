import ./gen_qanimationgroup_types
export gen_qanimationgroup_types

type QParallelAnimationGroup* = object of gen_qanimationgroup_types.QAnimationGroup
proc `=copy`(dest: var QParallelAnimationGroup, source: QParallelAnimationGroup) {.error.}
proc `=sink`(dest: var QParallelAnimationGroup, source: QParallelAnimationGroup) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

