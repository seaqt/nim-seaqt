import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QPagedPaintDevice
type QPdfWriter* = object of gen_qobject_types.QObject
