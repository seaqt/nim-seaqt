import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QLayoutItem
type QLayout* = object of gen_qobject_types.QObject
