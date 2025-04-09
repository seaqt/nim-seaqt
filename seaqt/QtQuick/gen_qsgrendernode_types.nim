import ./gen_qsgnode_types
export gen_qsgnode_types

type QSGRenderNode* = object of gen_qsgnode_types.QSGNode
type QSGRenderNodeRenderState* {.inheritable, pure.} = object
  h*: pointer
