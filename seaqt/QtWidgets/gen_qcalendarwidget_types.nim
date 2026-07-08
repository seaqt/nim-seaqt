import ./gen_qwidget_types
export gen_qwidget_types

type QCalendarWidget* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QCalendarWidget, source: QCalendarWidget) {.error.}
proc `=sink`(dest: var QCalendarWidget, source: QCalendarWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

