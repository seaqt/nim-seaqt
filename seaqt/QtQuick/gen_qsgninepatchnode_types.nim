import ./gen_qsgnode_types
export gen_qsgnode_types

type QSGNinePatchNode* = object of gen_qsgnode_types.QSGGeometryNode
proc `=copy`(dest: var QSGNinePatchNode, source: QSGNinePatchNode) {.error.}
proc `=sink`(dest: var QSGNinePatchNode, source: QSGNinePatchNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

