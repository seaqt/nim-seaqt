import ../QtCore/gen_qobject_types
export gen_qobject_types

type QValidator* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QValidator, source: QValidator) {.error.}
proc `=sink`(dest: var QValidator, source: QValidator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QIntValidator* = object of QValidator
proc `=copy`(dest: var QIntValidator, source: QIntValidator) {.error.}
proc `=sink`(dest: var QIntValidator, source: QIntValidator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QDoubleValidator* = object of QValidator
proc `=copy`(dest: var QDoubleValidator, source: QDoubleValidator) {.error.}
proc `=sink`(dest: var QDoubleValidator, source: QDoubleValidator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QRegularExpressionValidator* = object of QValidator
proc `=copy`(dest: var QRegularExpressionValidator, source: QRegularExpressionValidator) {.error.}
proc `=sink`(dest: var QRegularExpressionValidator, source: QRegularExpressionValidator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

