import ../QtCore/gen_qobject_types
export gen_qobject_types

type QVideoFrameInput* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QVideoFrameInput, source: QVideoFrameInput) {.error.}
proc `=sink`(dest: var QVideoFrameInput, source: QVideoFrameInput) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

