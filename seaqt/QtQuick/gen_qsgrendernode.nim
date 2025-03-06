import ./Qt6Quick_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config --cflags Qt6Quick")  & " -fPIC"
{.compile("gen_qsgrendernode.cpp", cflags).}


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
template NoExternalRendering*(_: type QSGRenderNodeRenderingFlagEnum): untyped = 8


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

proc fcQSGRenderNode_changedStates(self: pointer, ): cint {.importc: "QSGRenderNode_changedStates".}
proc fcQSGRenderNode_prepare(self: pointer, ): void {.importc: "QSGRenderNode_prepare".}
proc fcQSGRenderNode_render(self: pointer, state: pointer): void {.importc: "QSGRenderNode_render".}
proc fcQSGRenderNode_releaseResources(self: pointer, ): void {.importc: "QSGRenderNode_releaseResources".}
proc fcQSGRenderNode_flags(self: pointer, ): cint {.importc: "QSGRenderNode_flags".}
proc fcQSGRenderNode_rect(self: pointer, ): pointer {.importc: "QSGRenderNode_rect".}
proc fcQSGRenderNode_matrix(self: pointer, ): pointer {.importc: "QSGRenderNode_matrix".}
proc fcQSGRenderNode_clipList(self: pointer, ): pointer {.importc: "QSGRenderNode_clipList".}
proc fcQSGRenderNode_inheritedOpacity(self: pointer, ): float64 {.importc: "QSGRenderNode_inheritedOpacity".}
type cQSGRenderNodeVTable = object
  destructor*: proc(vtbl: ptr cQSGRenderNodeVTable, self: ptr cQSGRenderNode) {.cdecl, raises:[], gcsafe.}
  changedStates*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  prepare*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  render*: proc(vtbl, self: pointer, state: pointer): void {.cdecl, raises: [], gcsafe.}
  releaseResources*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  flags*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  rect*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  isSubtreeBlocked*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
proc fcQSGRenderNode_virtualbase_changedStates(self: pointer, ): cint {.importc: "QSGRenderNode_virtualbase_changedStates".}
proc fcQSGRenderNode_virtualbase_prepare(self: pointer, ): void {.importc: "QSGRenderNode_virtualbase_prepare".}
proc fcQSGRenderNode_virtualbase_releaseResources(self: pointer, ): void {.importc: "QSGRenderNode_virtualbase_releaseResources".}
proc fcQSGRenderNode_virtualbase_flags(self: pointer, ): cint {.importc: "QSGRenderNode_virtualbase_flags".}
proc fcQSGRenderNode_virtualbase_rect(self: pointer, ): pointer {.importc: "QSGRenderNode_virtualbase_rect".}
proc fcQSGRenderNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGRenderNode_virtualbase_isSubtreeBlocked".}
proc fcQSGRenderNode_virtualbase_preprocess(self: pointer, ): void {.importc: "QSGRenderNode_virtualbase_preprocess".}
proc fcQSGRenderNode_new(vtbl: pointer, ): ptr cQSGRenderNode {.importc: "QSGRenderNode_new".}
proc fcQSGRenderNode_delete(self: pointer) {.importc: "QSGRenderNode_delete".}
proc fcQSGRenderNodeRenderState_projectionMatrix(self: pointer, ): pointer {.importc: "QSGRenderNode__RenderState_projectionMatrix".}
proc fcQSGRenderNodeRenderState_scissorRect(self: pointer, ): pointer {.importc: "QSGRenderNode__RenderState_scissorRect".}
proc fcQSGRenderNodeRenderState_scissorEnabled(self: pointer, ): bool {.importc: "QSGRenderNode__RenderState_scissorEnabled".}
proc fcQSGRenderNodeRenderState_stencilValue(self: pointer, ): cint {.importc: "QSGRenderNode__RenderState_stencilValue".}
proc fcQSGRenderNodeRenderState_stencilEnabled(self: pointer, ): bool {.importc: "QSGRenderNode__RenderState_stencilEnabled".}
proc fcQSGRenderNodeRenderState_clipRegion(self: pointer, ): pointer {.importc: "QSGRenderNode__RenderState_clipRegion".}
proc fcQSGRenderNodeRenderState_get(self: pointer, state: cstring): pointer {.importc: "QSGRenderNode__RenderState_get".}
proc fcQSGRenderNodeRenderState_operatorAssign(self: pointer, param1: pointer): void {.importc: "QSGRenderNode__RenderState_operatorAssign".}
proc fcQSGRenderNodeRenderState_delete(self: pointer) {.importc: "QSGRenderNode__RenderState_delete".}

proc changedStates*(self: gen_qsgrendernode_types.QSGRenderNode, ): cint =
  cint(fcQSGRenderNode_changedStates(self.h))

proc prepare*(self: gen_qsgrendernode_types.QSGRenderNode, ): void =
  fcQSGRenderNode_prepare(self.h)

proc render*(self: gen_qsgrendernode_types.QSGRenderNode, state: gen_qsgrendernode_types.QSGRenderNodeRenderState): void =
  fcQSGRenderNode_render(self.h, state.h)

proc releaseResources*(self: gen_qsgrendernode_types.QSGRenderNode, ): void =
  fcQSGRenderNode_releaseResources(self.h)

proc flags*(self: gen_qsgrendernode_types.QSGRenderNode, ): cint =
  cint(fcQSGRenderNode_flags(self.h))

proc rect*(self: gen_qsgrendernode_types.QSGRenderNode, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGRenderNode_rect(self.h))

proc matrix*(self: gen_qsgrendernode_types.QSGRenderNode, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGRenderNode_matrix(self.h))

proc clipList*(self: gen_qsgrendernode_types.QSGRenderNode, ): gen_qsgnode_types.QSGClipNode =
  gen_qsgnode_types.QSGClipNode(h: fcQSGRenderNode_clipList(self.h))

proc inheritedOpacity*(self: gen_qsgrendernode_types.QSGRenderNode, ): float64 =
  fcQSGRenderNode_inheritedOpacity(self.h)

type QSGRenderNodechangedStatesProc* = proc(self: QSGRenderNode): cint {.raises: [], gcsafe.}
type QSGRenderNodeprepareProc* = proc(self: QSGRenderNode): void {.raises: [], gcsafe.}
type QSGRenderNoderenderProc* = proc(self: QSGRenderNode, state: gen_qsgrendernode_types.QSGRenderNodeRenderState): void {.raises: [], gcsafe.}
type QSGRenderNodereleaseResourcesProc* = proc(self: QSGRenderNode): void {.raises: [], gcsafe.}
type QSGRenderNodeflagsProc* = proc(self: QSGRenderNode): cint {.raises: [], gcsafe.}
type QSGRenderNoderectProc* = proc(self: QSGRenderNode): gen_qrect_types.QRectF {.raises: [], gcsafe.}
type QSGRenderNodeisSubtreeBlockedProc* = proc(self: QSGRenderNode): bool {.raises: [], gcsafe.}
type QSGRenderNodepreprocessProc* = proc(self: QSGRenderNode): void {.raises: [], gcsafe.}
type QSGRenderNodeVTable* = object
  vtbl: cQSGRenderNodeVTable
  changedStates*: QSGRenderNodechangedStatesProc
  prepare*: QSGRenderNodeprepareProc
  render*: QSGRenderNoderenderProc
  releaseResources*: QSGRenderNodereleaseResourcesProc
  flags*: QSGRenderNodeflagsProc
  rect*: QSGRenderNoderectProc
  isSubtreeBlocked*: QSGRenderNodeisSubtreeBlockedProc
  preprocess*: QSGRenderNodepreprocessProc
proc QSGRenderNodechangedStates*(self: gen_qsgrendernode_types.QSGRenderNode, ): cint =
  cint(fcQSGRenderNode_virtualbase_changedStates(self.h))

proc miqt_exec_callback_cQSGRenderNode_changedStates(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](vtbl)
  let self = QSGRenderNode(h: self)
  var virtualReturn = vtbl[].changedStates(self)
  cint(virtualReturn)

proc QSGRenderNodeprepare*(self: gen_qsgrendernode_types.QSGRenderNode, ): void =
  fcQSGRenderNode_virtualbase_prepare(self.h)

proc miqt_exec_callback_cQSGRenderNode_prepare(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](vtbl)
  let self = QSGRenderNode(h: self)
  vtbl[].prepare(self)

proc miqt_exec_callback_cQSGRenderNode_render(vtbl: pointer, self: pointer, state: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](vtbl)
  let self = QSGRenderNode(h: self)
  let slotval1 = gen_qsgrendernode_types.QSGRenderNodeRenderState(h: state)
  vtbl[].render(self, slotval1)

proc QSGRenderNodereleaseResources*(self: gen_qsgrendernode_types.QSGRenderNode, ): void =
  fcQSGRenderNode_virtualbase_releaseResources(self.h)

proc miqt_exec_callback_cQSGRenderNode_releaseResources(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](vtbl)
  let self = QSGRenderNode(h: self)
  vtbl[].releaseResources(self)

proc QSGRenderNodeflags*(self: gen_qsgrendernode_types.QSGRenderNode, ): cint =
  cint(fcQSGRenderNode_virtualbase_flags(self.h))

proc miqt_exec_callback_cQSGRenderNode_flags(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](vtbl)
  let self = QSGRenderNode(h: self)
  var virtualReturn = vtbl[].flags(self)
  cint(virtualReturn)

proc QSGRenderNoderect*(self: gen_qsgrendernode_types.QSGRenderNode, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGRenderNode_virtualbase_rect(self.h))

proc miqt_exec_callback_cQSGRenderNode_rect(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](vtbl)
  let self = QSGRenderNode(h: self)
  var virtualReturn = vtbl[].rect(self)
  virtualReturn.h

proc QSGRenderNodeisSubtreeBlocked*(self: gen_qsgrendernode_types.QSGRenderNode, ): bool =
  fcQSGRenderNode_virtualbase_isSubtreeBlocked(self.h)

proc miqt_exec_callback_cQSGRenderNode_isSubtreeBlocked(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](vtbl)
  let self = QSGRenderNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc QSGRenderNodepreprocess*(self: gen_qsgrendernode_types.QSGRenderNode, ): void =
  fcQSGRenderNode_virtualbase_preprocess(self.h)

proc miqt_exec_callback_cQSGRenderNode_preprocess(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGRenderNodeVTable](vtbl)
  let self = QSGRenderNode(h: self)
  vtbl[].preprocess(self)

proc create*(T: type gen_qsgrendernode_types.QSGRenderNode,
    vtbl: ref QSGRenderNodeVTable = nil): gen_qsgrendernode_types.QSGRenderNode =
  let vtbl = if vtbl == nil: new QSGRenderNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGRenderNodeVTable, _: ptr cQSGRenderNode) {.cdecl.} =
    let vtbl = cast[ref QSGRenderNodeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.changedStates):
    vtbl[].vtbl.changedStates = miqt_exec_callback_cQSGRenderNode_changedStates
  if not isNil(vtbl.prepare):
    vtbl[].vtbl.prepare = miqt_exec_callback_cQSGRenderNode_prepare
  if not isNil(vtbl.render):
    vtbl[].vtbl.render = miqt_exec_callback_cQSGRenderNode_render
  if not isNil(vtbl.releaseResources):
    vtbl[].vtbl.releaseResources = miqt_exec_callback_cQSGRenderNode_releaseResources
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQSGRenderNode_flags
  if not isNil(vtbl.rect):
    vtbl[].vtbl.rect = miqt_exec_callback_cQSGRenderNode_rect
  if not isNil(vtbl.isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = miqt_exec_callback_cQSGRenderNode_isSubtreeBlocked
  if not isNil(vtbl.preprocess):
    vtbl[].vtbl.preprocess = miqt_exec_callback_cQSGRenderNode_preprocess
  gen_qsgrendernode_types.QSGRenderNode(h: fcQSGRenderNode_new(addr(vtbl[]), ))

proc delete*(self: gen_qsgrendernode_types.QSGRenderNode) =
  fcQSGRenderNode_delete(self.h)
proc projectionMatrix*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGRenderNodeRenderState_projectionMatrix(self.h))

proc scissorRect*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGRenderNodeRenderState_scissorRect(self.h))

proc scissorEnabled*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState, ): bool =
  fcQSGRenderNodeRenderState_scissorEnabled(self.h)

proc stencilValue*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState, ): cint =
  fcQSGRenderNodeRenderState_stencilValue(self.h)

proc stencilEnabled*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState, ): bool =
  fcQSGRenderNodeRenderState_stencilEnabled(self.h)

proc clipRegion*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState, ): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQSGRenderNodeRenderState_clipRegion(self.h))

proc get*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState, state: cstring): pointer =
  fcQSGRenderNodeRenderState_get(self.h, state)

proc operatorAssign*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState, param1: gen_qsgrendernode_types.QSGRenderNodeRenderState): void =
  fcQSGRenderNodeRenderState_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qsgrendernode_types.QSGRenderNodeRenderState) =
  fcQSGRenderNodeRenderState_delete(self.h)
