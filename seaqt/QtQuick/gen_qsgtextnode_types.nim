import ./gen_qsgnode_types
export gen_qsgnode_types

type QSGTextNode* = object of gen_qsgnode_types.QSGTransformNode
proc `=copy`(dest: var QSGTextNode, source: QSGTextNode) {.error.}
proc `=sink`(dest: var QSGTextNode, source: QSGTextNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

