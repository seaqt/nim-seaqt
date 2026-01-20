import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QWebView* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QWebView, source: QWebView) {.error.}
proc `=sink`(dest: var QWebView, source: QWebView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

