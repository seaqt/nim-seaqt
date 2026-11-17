import ./gen_qsgnode_types
export gen_qsgnode_types

type QSGImageNode* = object of gen_qsgnode_types.QSGGeometryNode
proc `=copy`(dest: var QSGImageNode, source: QSGImageNode) {.error.}
proc `=sink`(dest: var QSGImageNode, source: QSGImageNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

