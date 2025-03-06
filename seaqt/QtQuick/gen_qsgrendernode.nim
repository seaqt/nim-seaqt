import ./Qt6Quick_libs

{.push raises: [].}

from system/ansi_c import c_free

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

proc fcQSGRenderNode_new(): ptr cQSGRenderNode {.importc: "QSGRenderNode_new".}
proc fcQSGRenderNode_changedStates(self: pointer, ): cint {.importc: "QSGRenderNode_changedStates".}
proc fcQSGRenderNode_prepare(self: pointer, ): void {.importc: "QSGRenderNode_prepare".}
proc fcQSGRenderNode_render(self: pointer, state: pointer): void {.importc: "QSGRenderNode_render".}
proc fcQSGRenderNode_releaseResources(self: pointer, ): void {.importc: "QSGRenderNode_releaseResources".}
proc fcQSGRenderNode_flags(self: pointer, ): cint {.importc: "QSGRenderNode_flags".}
proc fcQSGRenderNode_rect(self: pointer, ): pointer {.importc: "QSGRenderNode_rect".}
proc fcQSGRenderNode_matrix(self: pointer, ): pointer {.importc: "QSGRenderNode_matrix".}
proc fcQSGRenderNode_clipList(self: pointer, ): pointer {.importc: "QSGRenderNode_clipList".}
proc fcQSGRenderNode_inheritedOpacity(self: pointer, ): float64 {.importc: "QSGRenderNode_inheritedOpacity".}
proc fQSGRenderNode_virtualbase_changedStates(self: pointer, ): cint{.importc: "QSGRenderNode_virtualbase_changedStates".}
proc fcQSGRenderNode_override_virtual_changedStates(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_changedStates".}
proc fQSGRenderNode_virtualbase_prepare(self: pointer, ): void{.importc: "QSGRenderNode_virtualbase_prepare".}
proc fcQSGRenderNode_override_virtual_prepare(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_prepare".}
proc fcQSGRenderNode_override_virtual_render(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_render".}
proc fQSGRenderNode_virtualbase_releaseResources(self: pointer, ): void{.importc: "QSGRenderNode_virtualbase_releaseResources".}
proc fcQSGRenderNode_override_virtual_releaseResources(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_releaseResources".}
proc fQSGRenderNode_virtualbase_flags(self: pointer, ): cint{.importc: "QSGRenderNode_virtualbase_flags".}
proc fcQSGRenderNode_override_virtual_flags(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_flags".}
proc fQSGRenderNode_virtualbase_rect(self: pointer, ): pointer{.importc: "QSGRenderNode_virtualbase_rect".}
proc fcQSGRenderNode_override_virtual_rect(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_rect".}
proc fQSGRenderNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGRenderNode_virtualbase_isSubtreeBlocked".}
proc fcQSGRenderNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_isSubtreeBlocked".}
proc fQSGRenderNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGRenderNode_virtualbase_preprocess".}
proc fcQSGRenderNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGRenderNode_override_virtual_preprocess".}
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


func init*(T: type gen_qsgrendernode_types.QSGRenderNode, h: ptr cQSGRenderNode): gen_qsgrendernode_types.QSGRenderNode =
  T(h: h)
proc create*(T: type gen_qsgrendernode_types.QSGRenderNode, ): gen_qsgrendernode_types.QSGRenderNode =
  gen_qsgrendernode_types.QSGRenderNode.init(fcQSGRenderNode_new())

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

proc QSGRenderNodechangedStates*(self: gen_qsgrendernode_types.QSGRenderNode, ): cint =
  cint(fQSGRenderNode_virtualbase_changedStates(self.h))

type QSGRenderNodechangedStatesProc* = proc(): cint
proc onchangedStates*(self: gen_qsgrendernode_types.QSGRenderNode, slot: QSGRenderNodechangedStatesProc) =
  # TODO check subclass
  var tmp = new QSGRenderNodechangedStatesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_changedStates(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_changedStates(self: ptr cQSGRenderNode, slot: int): cint {.exportc: "miqt_exec_callback_QSGRenderNode_changedStates ".} =
  var nimfunc = cast[ptr QSGRenderNodechangedStatesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QSGRenderNodeprepare*(self: gen_qsgrendernode_types.QSGRenderNode, ): void =
  fQSGRenderNode_virtualbase_prepare(self.h)

type QSGRenderNodeprepareProc* = proc(): void
proc onprepare*(self: gen_qsgrendernode_types.QSGRenderNode, slot: QSGRenderNodeprepareProc) =
  # TODO check subclass
  var tmp = new QSGRenderNodeprepareProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_prepare(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_prepare(self: ptr cQSGRenderNode, slot: int): void {.exportc: "miqt_exec_callback_QSGRenderNode_prepare ".} =
  var nimfunc = cast[ptr QSGRenderNodeprepareProc](cast[pointer](slot))

  nimfunc[]()
type QSGRenderNoderenderProc* = proc(state: gen_qsgrendernode_types.QSGRenderNodeRenderState): void
proc onrender*(self: gen_qsgrendernode_types.QSGRenderNode, slot: QSGRenderNoderenderProc) =
  # TODO check subclass
  var tmp = new QSGRenderNoderenderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_render(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_render(self: ptr cQSGRenderNode, slot: int, state: pointer): void {.exportc: "miqt_exec_callback_QSGRenderNode_render ".} =
  var nimfunc = cast[ptr QSGRenderNoderenderProc](cast[pointer](slot))
  let slotval1 = gen_qsgrendernode_types.QSGRenderNodeRenderState(h: state)


  nimfunc[](slotval1)
proc QSGRenderNodereleaseResources*(self: gen_qsgrendernode_types.QSGRenderNode, ): void =
  fQSGRenderNode_virtualbase_releaseResources(self.h)

type QSGRenderNodereleaseResourcesProc* = proc(): void
proc onreleaseResources*(self: gen_qsgrendernode_types.QSGRenderNode, slot: QSGRenderNodereleaseResourcesProc) =
  # TODO check subclass
  var tmp = new QSGRenderNodereleaseResourcesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_releaseResources(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_releaseResources(self: ptr cQSGRenderNode, slot: int): void {.exportc: "miqt_exec_callback_QSGRenderNode_releaseResources ".} =
  var nimfunc = cast[ptr QSGRenderNodereleaseResourcesProc](cast[pointer](slot))

  nimfunc[]()
proc QSGRenderNodeflags*(self: gen_qsgrendernode_types.QSGRenderNode, ): cint =
  cint(fQSGRenderNode_virtualbase_flags(self.h))

type QSGRenderNodeflagsProc* = proc(): cint
proc onflags*(self: gen_qsgrendernode_types.QSGRenderNode, slot: QSGRenderNodeflagsProc) =
  # TODO check subclass
  var tmp = new QSGRenderNodeflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_flags(self: ptr cQSGRenderNode, slot: int): cint {.exportc: "miqt_exec_callback_QSGRenderNode_flags ".} =
  var nimfunc = cast[ptr QSGRenderNodeflagsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QSGRenderNoderect*(self: gen_qsgrendernode_types.QSGRenderNode, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fQSGRenderNode_virtualbase_rect(self.h))

type QSGRenderNoderectProc* = proc(): gen_qrect_types.QRectF
proc onrect*(self: gen_qsgrendernode_types.QSGRenderNode, slot: QSGRenderNoderectProc) =
  # TODO check subclass
  var tmp = new QSGRenderNoderectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_rect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_rect(self: ptr cQSGRenderNode, slot: int): pointer {.exportc: "miqt_exec_callback_QSGRenderNode_rect ".} =
  var nimfunc = cast[ptr QSGRenderNoderectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSGRenderNodeisSubtreeBlocked*(self: gen_qsgrendernode_types.QSGRenderNode, ): bool =
  fQSGRenderNode_virtualbase_isSubtreeBlocked(self.h)

type QSGRenderNodeisSubtreeBlockedProc* = proc(): bool
proc onisSubtreeBlocked*(self: gen_qsgrendernode_types.QSGRenderNode, slot: QSGRenderNodeisSubtreeBlockedProc) =
  # TODO check subclass
  var tmp = new QSGRenderNodeisSubtreeBlockedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_isSubtreeBlocked(self: ptr cQSGRenderNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGRenderNode_isSubtreeBlocked ".} =
  var nimfunc = cast[ptr QSGRenderNodeisSubtreeBlockedProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGRenderNodepreprocess*(self: gen_qsgrendernode_types.QSGRenderNode, ): void =
  fQSGRenderNode_virtualbase_preprocess(self.h)

type QSGRenderNodepreprocessProc* = proc(): void
proc onpreprocess*(self: gen_qsgrendernode_types.QSGRenderNode, slot: QSGRenderNodepreprocessProc) =
  # TODO check subclass
  var tmp = new QSGRenderNodepreprocessProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRenderNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRenderNode_preprocess(self: ptr cQSGRenderNode, slot: int): void {.exportc: "miqt_exec_callback_QSGRenderNode_preprocess ".} =
  var nimfunc = cast[ptr QSGRenderNodepreprocessProc](cast[pointer](slot))

  nimfunc[]()
proc delete*(self: gen_qsgrendernode_types.QSGRenderNode) =
  fcQSGRenderNode_delete(self.h)

func init*(T: type gen_qsgrendernode_types.QSGRenderNodeRenderState, h: ptr cQSGRenderNodeRenderState): gen_qsgrendernode_types.QSGRenderNodeRenderState =
  T(h: h)
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
