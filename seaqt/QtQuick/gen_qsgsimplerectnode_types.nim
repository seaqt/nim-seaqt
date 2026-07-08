import ./gen_qsgnode_types
export gen_qsgnode_types

type QSGSimpleRectNode* = object of gen_qsgnode_types.QSGGeometryNode
proc `=copy`(dest: var QSGSimpleRectNode, source: QSGSimpleRectNode) {.error.}
proc `=sink`(dest: var QSGSimpleRectNode, source: QSGSimpleRectNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

