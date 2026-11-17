import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QPaintDevice
type QWidget* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWidget, source: QWidget) {.error.}
proc `=sink`(dest: var QWidget, source: QWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

