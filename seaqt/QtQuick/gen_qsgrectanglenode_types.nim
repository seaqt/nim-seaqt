import ./gen_qsgnode_types
export gen_qsgnode_types

type QSGRectangleNode* = object of gen_qsgnode_types.QSGGeometryNode
proc `=copy`(dest: var QSGRectangleNode, source: QSGRectangleNode) {.error.}
proc `=sink`(dest: var QSGRectangleNode, source: QSGRectangleNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

