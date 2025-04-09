import ./gen_qobject_types
export gen_qobject_types

type QAbstractAnimation* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAbstractAnimation, source: QAbstractAnimation) {.error.}
proc `=sink`(dest: var QAbstractAnimation, source: QAbstractAnimation) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QAnimationDriver* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAnimationDriver, source: QAnimationDriver) {.error.}
proc `=sink`(dest: var QAnimationDriver, source: QAnimationDriver) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

