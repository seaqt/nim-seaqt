import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QWebInspector* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QWebInspector, source: QWebInspector) {.error.}
proc `=sink`(dest: var QWebInspector, source: QWebInspector) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

