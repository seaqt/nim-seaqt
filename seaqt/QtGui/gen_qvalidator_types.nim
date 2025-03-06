import ../QtCore/gen_qobject_types
export gen_qobject_types

type QValidator* = object of gen_qobject_types.QObject
type QIntValidator* = object of QValidator
type QDoubleValidator* = object of QValidator
type QRegExpValidator* = object of QValidator
type QRegularExpressionValidator* = object of QValidator
