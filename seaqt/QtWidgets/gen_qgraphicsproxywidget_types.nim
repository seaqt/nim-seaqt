import ./gen_qgraphicswidget_types
export gen_qgraphicswidget_types

type QGraphicsProxyWidget* = object of gen_qgraphicswidget_types.QGraphicsWidget
proc `=copy`(dest: var QGraphicsProxyWidget, source: QGraphicsProxyWidget) {.error.}
proc `=sink`(dest: var QGraphicsProxyWidget, source: QGraphicsProxyWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

