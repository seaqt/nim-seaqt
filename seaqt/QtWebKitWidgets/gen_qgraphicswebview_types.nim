import ../QtWidgets/gen_qgraphicswidget_types
export gen_qgraphicswidget_types

type QGraphicsWebView* = object of gen_qgraphicswidget_types.QGraphicsWidget
proc `=copy`(dest: var QGraphicsWebView, source: QGraphicsWebView) {.error.}
proc `=sink`(dest: var QGraphicsWebView, source: QGraphicsWebView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

