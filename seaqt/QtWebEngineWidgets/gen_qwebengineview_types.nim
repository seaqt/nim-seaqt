import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QWebEngineView* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QWebEngineView, source: QWebEngineView) {.error.}
proc `=sink`(dest: var QWebEngineView, source: QWebEngineView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

