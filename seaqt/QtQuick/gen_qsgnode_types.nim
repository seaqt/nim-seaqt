type QSGNode* {.inheritable, pure.} = object
  h*: pointer
type QSGBasicGeometryNode* = object of QSGNode
type QSGGeometryNode* = object of QSGBasicGeometryNode
type QSGClipNode* = object of QSGBasicGeometryNode
type QSGTransformNode* = object of QSGNode
type QSGRootNode* = object of QSGNode
type QSGOpacityNode* = object of QSGNode
type QSGNodeVisitor* {.inheritable, pure.} = object
  h*: pointer
