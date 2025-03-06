import ./gen_qobject_types
export gen_qobject_types

type QIODevice* = object of gen_qobject_types.QObject
