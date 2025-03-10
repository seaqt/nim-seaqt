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
proc `=copy`(dest: var QSGBasicGeometryNode, source: QSGBasicGeometryNode) {.error.}
proc `=sink`(dest: var QSGBasicGeometryNode, source: QSGBasicGeometryNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QSGGeometryNode* = object of QSGBasicGeometryNode
proc `=copy`(dest: var QSGGeometryNode, source: QSGGeometryNode) {.error.}
proc `=sink`(dest: var QSGGeometryNode, source: QSGGeometryNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QSGClipNode* = object of QSGBasicGeometryNode
proc `=copy`(dest: var QSGClipNode, source: QSGClipNode) {.error.}
proc `=sink`(dest: var QSGClipNode, source: QSGClipNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QSGTransformNode* = object of QSGNode
proc `=copy`(dest: var QSGTransformNode, source: QSGTransformNode) {.error.}
proc `=sink`(dest: var QSGTransformNode, source: QSGTransformNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QSGRootNode* = object of QSGNode
proc `=copy`(dest: var QSGRootNode, source: QSGRootNode) {.error.}
proc `=sink`(dest: var QSGRootNode, source: QSGRootNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QSGOpacityNode* = object of QSGNode
proc `=copy`(dest: var QSGOpacityNode, source: QSGOpacityNode) {.error.}
proc `=sink`(dest: var QSGOpacityNode, source: QSGOpacityNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

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

