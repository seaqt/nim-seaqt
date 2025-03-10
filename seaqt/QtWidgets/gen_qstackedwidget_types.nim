import ./gen_qframe_types
export gen_qframe_types

type QStackedWidget* = object of gen_qframe_types.QFrame
proc `=copy`(dest: var QStackedWidget, source: QStackedWidget) {.error.}
proc `=sink`(dest: var QStackedWidget, source: QStackedWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

