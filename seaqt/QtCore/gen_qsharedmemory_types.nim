import ./gen_qobject_types
export gen_qobject_types

type QSharedMemory* = object of gen_qobject_types.QObject
