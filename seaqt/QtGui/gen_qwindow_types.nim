import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QSurface
type QWindow* = object of gen_qobject_types.QObject
