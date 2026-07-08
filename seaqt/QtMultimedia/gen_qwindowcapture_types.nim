import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWindowCapture* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWindowCapture, source: QWindowCapture) {.error.}
proc `=sink`(dest: var QWindowCapture, source: QWindowCapture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

