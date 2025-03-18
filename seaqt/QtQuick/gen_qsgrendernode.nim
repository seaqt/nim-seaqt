import ./qtquick_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QSGRenderNodeStateFlagEnum* = distinct cint
template DepthState*(_: type QSGRenderNodeStateFlagEnum): untyped = 1
template StencilState*(_: type QSGRenderNodeStateFlagEnum): untyped = 2
template ScissorState*(_: type QSGRenderNodeStateFlagEnum): untyped = 4
template ColorState*(_: type QSGRenderNodeStateFlagEnum): untyped = 8
template BlendState*(_: type QSGRenderNodeStateFlagEnum): untyped = 16
template CullState*(_: type QSGRenderNodeStateFlagEnum): untyped = 32
template ViewportState*(_: type QSGRenderNodeStateFlagEnum): untyped = 64
template RenderTargetState*(_: type QSGRenderNodeStateFlagEnum): untyped = 128


type QSGRenderNodeRenderingFlagEnum* = distinct cint
template BoundedRectRendering*(_: type QSGRenderNodeRenderingFlagEnum): untyped = 1
template DepthAwareRendering*(_: type QSGRenderNodeRenderingFlagEnum): untyped = 2
template OpaqueRendering*(_: type QSGRenderNodeRenderingFlagEnum): untyped = 4


import ./gen_qsgrendernode_types
export gen_qsgrendernode_types

import
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qmatrix4x4_types,
  ../QtGui/gen_qregion_types,
  ./gen_qsgnode
export
  gen_qrect_types,
  gen_qmatrix4x4_types,
  gen_qregion_types,
  gen_qsgnode

type cQSGRenderNode*{.exportc: "QSGRenderNode", incompleteStruct.} = object
type cQSGRenderNodeRenderState*{.exportc: "QSGRenderNode__RenderState", incompleteStruct.} = object

proc fcQSGRenderNode_changedStates(self: pointer): cint {.importc: "QSGRenderNode_changedStates".}
proc fcQSGRenderNode_render(self: pointer, state: pointer): void {.importc: "QSGRenderNode_render".}
proc fcQSGRenderNode_releaseResources(self: pointer): void {.importc: "QSGRenderNode_releaseResources".}
proc fcQSGRenderNode_flags(self: pointer): cint {.importc: "QSGRenderNode_flags".}
proc fcQSGRenderNode_rect(self: pointer): pointer {.importc: "QSGRenderNode_rect".}
proc fcQSGRenderNode_matrix(self: pointer): pointer {.importc: "QSGRenderNode_matrix".}
proc fcQSGRenderNode_clipList(self: pointer): pointer {.importc: "QSGRenderNode_clipList".}
proc fcQSGRenderNode_inheritedOpacity(self: pointer): float64 {.importc: "QSGRenderNode_inheritedOpacity".}
proc fcQSGRenderNode_vtbl(self: pointer): pointer {.importc: "QSGRenderNode_vtbl".}
proc fcQSGRenderNode_vdata(self: pointer): pointer {.importc: "QSGRenderNode_vdata".}

type cQSGRenderNodeVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  changedStates*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  render*: proc(self: pointer, state: pointer): void {.cdecl, raises: [], gcsafe.}
  releaseResources*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  flags*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  rect*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isSubtreeBlocked*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGRenderNode_virtualbase_changedStates(self: pointer): cint {.importc: "QSGRenderNode_virtualbase_changedStates".}
proc fcQSGRenderNode_virtualbase_releaseResources(self: pointer): void {.importc: "QSGRenderNode_virtualbase_releaseResources".}
proc fcQSGRenderNode_virtualbase_flags(self: pointer): cint {.importc: "QSGRenderNode_virtualbase_flags".}
proc fcQSGRenderNode_virtualbase_rect(self: pointer): pointer {.importc: "QSGRenderNode_virtualbase_rect".}
proc fcQSGRenderNode_virtualbase_isSubtreeBlocked(self: pointer): bool {.importc: "QSGRenderNode_virtualbase_isSubtreeBlocked".}
proc fcQSGRenderNode_virtualbase_preprocess(self: pointer): void {.importc: "QSGRenderNode_virtualbase_preprocess".}
proc fcQSGRenderNode_new(vtbl, vdata: pointer): ptr cQSGRenderNode {.importc: "QSGRenderNode_new".}
proc fcQSGRenderNodeRenderState_projectionMatrix(self: pointer): pointer {.importc: "QSGRenderNode__RenderState_projectionMatrix".}
proc fcQSGRenderNodeRenderState_scissorRect(self: pointer): pointer {.importc: "QSGRenderNode__RenderState_scissorRect".}
proc fcQSGRenderNodeRenderState_scissorEnabled(self: pointer): bool {.importc: "QSGRenderNode__RenderState_scissorEnabled".}
proc fcQSGRenderNodeRenderState_stencilValue(self: pointer): cint {.importc: "QSGRenderNode__RenderState_stencilValue".}
proc fcQSGRenderNodeRenderState_stencilEnabled(self: pointer): bool {.importc: "QSGRenderNode__RenderState_stencilEnabled".}
proc fcQSGRenderNodeRenderState_clipRegion(self: pointer): pointer {.importc: "QSGRenderNode__RenderState_clipRegion".}
proc fcQSGRenderNodeRenderState_get(self: pointer, state: cstring): pointer {.importc: "QSGRenderNode__RenderState_get".}
proc fcQSGRenderNodeRenderState_operatorAssign(self: pointer, param1: pointer): void {.importc: "QSGRenderNode__RenderState_operatorAssign".}

proc changedStates*(self: gen_qsgrendernode_types.QSGRenderNode): cint =
  cint(fcQSGRenderNode_changedStates(self.h))

proc render*(self: gen_qsgrendernode_types.QSGRenderNode, state: gen_qsgrendernode_types.QSGRenderNodeRenderState): void =
  fcQSGRenderNode_render(self.h, state.h)

proc releaseResources*(self: gen_qsgrendernode_types.QSGRenderNode): void =
  fcQSGRenderNode_releaseResources(self.h)

proc flags*(self: gen_qsgrendernode_types.QSGRenderNode): cint =
  cint(fcQSGRenderNode_flags(self.h))

proc rect*(self: gen_qsgrendernode_types.QSGRenderNode): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGRenderNode_rect(self.h), owned: true)

proc matrix*(self: gen_qsgrendernode_types.QSGRenderNode): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGRenderNode_matrix(self.h), owned: false)

proc clipList*(self: gen_qsgrendernode_types.QSGRenderNode): gen_qsgnode_types.QSGClipNode =
  gen_qsgnode_types.QSGClipNode(h: fcQSGRenderNode_clipList(self.h), owned: false)

proc inheritedOpacity*(self: gen_qsgrendernode_types.QSGRenderNode): float64 =
  fcQSGRenderNode_inheritedOpacity(self.h)

type QSGRenderNodechangedStatesProc* = proc(self: QSGRenderNode): cint {.raises: [], gcsafe.}
type QSGRenderNoderenderProc* = proc(self: QSGRenderNode, state: gen_qsgrendernode_types.QSGRenderNodeRenderState): void {.raises: [], gcsafe.}
type QSGRenderNodereleaseResourcesProc* = proc(self: QSGRenderNode): void {.raises: [], gcsafe.}
type QSGRenderNodeflagsProc* = proc(self: QSGRenderNode): cint {.raises: [], gcsafe.}
type QSGRenderNoderectProc* = proc(self: QSGRenderNode): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QSGRenderNodeisSubtreeBlockedProc* = proc(self: QSGRenderNode): bool {.raises: [], gcsafe.}
type QSGRenderNodepreprocessProc* = proc(self: QSGRenderNode): void {.raises: [], gcsafe.}

type QSGRenderNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGRenderNodeVTable
  changedStates*: QSGRenderNodechangedStatesProc
  render*: QSGRenderNoderenderProc
  releaseResources*: QSGRenderNodereleaseResourcesProc
  flags*: QSGRenderNodeflagsProc
  rect*: QSGRenderNoderectProc
  isSubtreeBlocked*: QSGRenderNodeisSubtreeBlockedProc
  preprocess*: QSGRenderNodepreprocessProc

proc QSGRenderNodechangedStates*(self: gen_qsgrendernode_types.QSGRenderNode): cint =
  cint(fcQSGRenderNode_virtualbase_changedStates(self.h))

proc QSGRenderNodereleaseResources*(self: gen_qsgrendernode_types.QSGRenderNode): void =
  fcQSGRenderNode_virtualbase_releaseResources(self.h)

proc QSGRenderNodeflags*(self: gen_qsgrendernode_types.QSGRenderNode): cint =
  cint(fcQSGRenderNode_virtualbase_flags(self.h))

proc QSGRenderNoderect*(self: gen_qsgrendernode_types.QSGRenderNode): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGRenderNode_virtualbase_rect(self.h), owned: true)

proc QSGRenderNodeisSubtreeBlocked*(self: gen_qsgrendernode_types.QSGRenderNode): bool =
  fcQSGRenderNode_virtualbase_isSubtreeBlocked(self.h)

proc QSGRenderNodepreprocess*(self: gen_qsgrendernode_types.QSGRenderNode): void =
  fcQSGRenderNode_virtualbase_preprocess(self.h)


proc fcQSGRenderNode_vtable_callback_changedStates(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](fcQSGRenderNode_vdata(self))
  let self = QSGRenderNode(h: self)
  var virtualReturn = vtbl[].changedStates(self)
  cint(virtualReturn)

proc fcQSGRenderNode_vtable_callback_render(self: pointer, state: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](fcQSGRenderNode_vdata(self))
  let self = QSGRenderNode(h: self)
  let slotval1 = gen_qsgrendernode_types.QSGRenderNodeRenderState(h: state, owned: false)
  vtbl[].render(self, slotval1)

proc fcQSGRenderNode_vtable_callback_releaseResources(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](fcQSGRenderNode_vdata(self))
  let self = QSGRenderNode(h: self)
  vtbl[].releaseResources(self)

proc fcQSGRenderNode_vtable_callback_flags(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](fcQSGRenderNode_vdata(self))
  let self = QSGRenderNode(h: self)
  var virtualReturn = vtbl[].flags(self)
  cint(virtualReturn)

proc fcQSGRenderNode_vtable_callback_rect(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](fcQSGRenderNode_vdata(self))
  let self = QSGRenderNode(h: self)
  var virtualReturn = vtbl[].rect(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSGRenderNode_vtable_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](fcQSGRenderNode_vdata(self))
  let self = QSGRenderNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc fcQSGRenderNode_vtable_callback_preprocess(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](fcQSGRenderNode_vdata(self))
  let self = QSGRenderNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGRenderNode* {.inheritable.} = ref object of QSGRenderNode
  vtbl*: cQSGRenderNodeVTable

method changedStates*(self: VirtualQSGRenderNode): cint {.base.} =
  QSGRenderNodechangedStates(self[])
method render*(self: VirtualQSGRenderNode, state: gen_qsgrendernode_types.QSGRenderNodeRenderState): void {.base.} =
  raiseAssert("missing implementation of QSGRenderNode.render")
method releaseResources*(self: VirtualQSGRenderNode): void {.base.} =
  QSGRenderNodereleaseResources(self[])
method flags*(self: VirtualQSGRenderNode): cint {.base.} =
  QSGRenderNodeflags(self[])
method rect*(self: VirtualQSGRenderNode): gen_qrect_types.QRectF {.base.} =
  QSGRenderNoderect(self[])
method isSubtreeBlocked*(self: VirtualQSGRenderNode): bool {.base.} =
  QSGRenderNodeisSubtreeBlocked(self[])
method preprocess*(self: VirtualQSGRenderNode): void {.base.} =
  QSGRenderNodepreprocess(self[])

proc fcQSGRenderNode_method_callback_changedStates(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSGRenderNode](fcQSGRenderNode_vdata(self))
  var virtualReturn = inst.changedStates()
  cint(virtualReturn)

proc fcQSGRenderNode_method_callback_render(self: pointer, state: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGRenderNode](fcQSGRenderNode_vdata(self))
  let slotval1 = gen_qsgrendernode_types.QSGRenderNodeRenderState(h: state, owned: false)
  inst.render(slotval1)

proc fcQSGRenderNode_method_callback_releaseResources(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGRenderNode](fcQSGRenderNode_vdata(self))
  inst.releaseResources()

proc fcQSGRenderNode_method_callback_flags(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSGRenderNode](fcQSGRenderNode_vdata(self))
  var virtualReturn = inst.flags()
  cint(virtualReturn)

proc fcQSGRenderNode_method_callback_rect(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGRenderNode](fcQSGRenderNode_vdata(self))
  var virtualReturn = inst.rect()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSGRenderNode_method_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGRenderNode](fcQSGRenderNode_vdata(self))
  var virtualReturn = inst.isSubtreeBlocked()
  virtualReturn

proc fcQSGRenderNode_method_callback_preprocess(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGRenderNode](fcQSGRenderNode_vdata(self))
  inst.preprocess()


proc create*(T: type gen_qsgrendernode_types.QSGRenderNode,
    vtbl: ref QSGRenderNodeVTable = nil): gen_qsgrendernode_types.QSGRenderNode =
  let vtbl = if vtbl == nil: new QSGRenderNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGRenderNodeVTable](fcQSGRenderNode_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].changedStates):
    vtbl[].vtbl.changedStates = fcQSGRenderNode_vtable_callback_changedStates
  if not isNil(vtbl[].render):
    vtbl[].vtbl.render = fcQSGRenderNode_vtable_callback_render
  if not isNil(vtbl[].releaseResources):
    vtbl[].vtbl.releaseResources = fcQSGRenderNode_vtable_callback_releaseResources
  if not isNil(vtbl[].flags):
    vtbl[].vtbl.flags = fcQSGRenderNode_vtable_callback_flags
  if not isNil(vtbl[].rect):
    vtbl[].vtbl.rect = fcQSGRenderNode_vtable_callback_rect
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = fcQSGRenderNode_vtable_callback_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = fcQSGRenderNode_vtable_callback_preprocess
  gen_qsgrendernode_types.QSGRenderNode(h: fcQSGRenderNode_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGRenderNode_mvtbl = cQSGRenderNodeVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGRenderNode()[])](self.fcQSGRenderNode_vtbl())
    inst[].h = nil
    inst[].owned = false,

  changedStates: fcQSGRenderNode_method_callback_changedStates,
  render: fcQSGRenderNode_method_callback_render,
  releaseResources: fcQSGRenderNode_method_callback_releaseResources,
  flags: fcQSGRenderNode_method_callback_flags,
  rect: fcQSGRenderNode_method_callback_rect,
  isSubtreeBlocked: fcQSGRenderNode_method_callback_isSubtreeBlocked,
  preprocess: fcQSGRenderNode_method_callback_preprocess,
)
proc create*(T: type gen_qsgrendernode_types.QSGRenderNode,
    inst: VirtualQSGRenderNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGRenderNode_new(addr(cQSGRenderNode_mvtbl), addr(inst[]))
  inst[].owned = true

proc projectionMatrix*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGRenderNodeRenderState_projectionMatrix(self.h), owned: false)

proc scissorRect*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGRenderNodeRenderState_scissorRect(self.h), owned: true)

proc scissorEnabled*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState): bool =
  fcQSGRenderNodeRenderState_scissorEnabled(self.h)

proc stencilValue*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState): cint =
  fcQSGRenderNodeRenderState_stencilValue(self.h)

proc stencilEnabled*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState): bool =
  fcQSGRenderNodeRenderState_stencilEnabled(self.h)

proc clipRegion*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQSGRenderNodeRenderState_clipRegion(self.h), owned: false)

proc get*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState, state: cstring): pointer =
  fcQSGRenderNodeRenderState_get(self.h, state)

proc operatorAssign*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState, param1: gen_qsgrendernode_types.QSGRenderNodeRenderState): void =
  fcQSGRenderNodeRenderState_operatorAssign(self.h, param1.h)

