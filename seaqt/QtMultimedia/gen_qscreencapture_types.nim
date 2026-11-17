import ../QtCore/gen_qobject_types
export gen_qobject_types

type QScreenCapture* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QScreenCapture, source: QScreenCapture) {.error.}
proc `=sink`(dest: var QScreenCapture, source: QScreenCapture) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

