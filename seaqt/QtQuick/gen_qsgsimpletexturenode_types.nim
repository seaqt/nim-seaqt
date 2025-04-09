import ./gen_qsgnode_types
export gen_qsgnode_types

type QSGSimpleTextureNode* = object of gen_qsgnode_types.QSGGeometryNode
proc `=copy`(dest: var QSGSimpleTextureNode, source: QSGSimpleTextureNode) {.error.}
proc `=sink`(dest: var QSGSimpleTextureNode, source: QSGSimpleTextureNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

