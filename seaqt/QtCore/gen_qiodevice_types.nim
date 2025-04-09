import ./gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QIODeviceBase
type QIODevice* = object of gen_qobject_types.QObject
