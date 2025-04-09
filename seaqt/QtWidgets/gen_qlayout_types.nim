import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QLayoutItem
type QLayout* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QLayout, source: QLayout) {.error.}
proc `=sink`(dest: var QLayout, source: QLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

