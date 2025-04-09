import ./gen_qobject_types
export gen_qobject_types

type QAbstractAnimation* = object of gen_qobject_types.QObject
type QAnimationDriver* = object of gen_qobject_types.QObject
