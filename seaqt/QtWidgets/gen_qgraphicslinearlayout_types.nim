import ./gen_qgraphicslayout_types
export gen_qgraphicslayout_types

type QGraphicsLinearLayout* = object of gen_qgraphicslayout_types.QGraphicsLayout
proc `=copy`(dest: var QGraphicsLinearLayout, source: QGraphicsLinearLayout) {.error.}
proc `=sink`(dest: var QGraphicsLinearLayout, source: QGraphicsLinearLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

