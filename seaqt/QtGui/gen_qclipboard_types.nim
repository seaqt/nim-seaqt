import ../QtCore/gen_qobject_types
export gen_qobject_types

type QClipboard* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QClipboard, source: QClipboard) {.error.}
proc `=sink`(dest: var QClipboard, source: QClipboard) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

