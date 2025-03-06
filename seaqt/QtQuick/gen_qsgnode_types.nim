type QSGNode* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Quick") & " -fPIC"
{.compile("gen_qsgnode.cpp", cflags).}

proc fcQSGNode_delete(self: pointer) {.importc: "QSGNode_delete".}
proc `=destroy`(self: var QSGNode) =
  if self.owned: fcQSGNode_delete(self.h)

proc `=sink`(dest: var QSGNode, source: QSGNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGNode, source: QSGNode) {.error.}
proc delete*(self: sink QSGNode) =
  let h = self.h
  wasMoved(self)
  fcQSGNode_delete(h)

type QSGBasicGeometryNode* = object of QSGNode
type QSGGeometryNode* = object of QSGBasicGeometryNode
type QSGClipNode* = object of QSGBasicGeometryNode
type QSGTransformNode* = object of QSGNode
type QSGRootNode* = object of QSGNode
type QSGOpacityNode* = object of QSGNode
type QSGNodeVisitor* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSGNodeVisitor_delete(self: pointer) {.importc: "QSGNodeVisitor_delete".}
proc `=destroy`(self: var QSGNodeVisitor) =
  if self.owned: fcQSGNodeVisitor_delete(self.h)

proc `=sink`(dest: var QSGNodeVisitor, source: QSGNodeVisitor) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGNodeVisitor, source: QSGNodeVisitor) {.error.}
proc delete*(self: sink QSGNodeVisitor) =
  let h = self.h
  wasMoved(self)
  fcQSGNodeVisitor_delete(h)

