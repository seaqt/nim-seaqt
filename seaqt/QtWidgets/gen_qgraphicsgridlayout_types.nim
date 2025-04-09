import ./gen_qgraphicslayout_types
export gen_qgraphicslayout_types

type QGraphicsGridLayout* = object of gen_qgraphicslayout_types.QGraphicsLayout
proc `=copy`(dest: var QGraphicsGridLayout, source: QGraphicsGridLayout) {.error.}
proc `=sink`(dest: var QGraphicsGridLayout, source: QGraphicsGridLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

