import ./gen_qsgnode_types
export gen_qsgnode_types

type QSGRenderNode* = object of gen_qsgnode_types.QSGNode
proc `=copy`(dest: var QSGRenderNode, source: QSGRenderNode) {.error.}
proc `=sink`(dest: var QSGRenderNode, source: QSGRenderNode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QSGRenderNodeRenderState* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Quick") & " -fPIC"
{.compile("gen_qsgrendernode.cpp", cflags).}

proc fcQSGRenderNodeRenderState_delete(self: pointer) {.importc: "QSGRenderNode__RenderState_delete".}
proc `=destroy`(self: var QSGRenderNodeRenderState) =
  if self.owned: fcQSGRenderNodeRenderState_delete(self.h)

proc `=sink`(dest: var QSGRenderNodeRenderState, source: QSGRenderNodeRenderState) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGRenderNodeRenderState, source: QSGRenderNodeRenderState) {.error.}
proc delete*(self: sink QSGRenderNodeRenderState) =
  let h = self.h
  wasMoved(self)
  fcQSGRenderNodeRenderState_delete(h)

