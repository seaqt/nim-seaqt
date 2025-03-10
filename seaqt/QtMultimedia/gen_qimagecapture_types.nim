import ../QtCore/gen_qobject_types
export gen_qobject_types

type QImageCapture* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QImageCapture, source: QImageCapture) {.error.}
proc `=sink`(dest: var QImageCapture, source: QImageCapture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

