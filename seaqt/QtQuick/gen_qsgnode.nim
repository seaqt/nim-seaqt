import ./Qt5Quick_libs

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


type QSGNodeNodeTypeEnum* = distinct cint
template BasicNodeType*(_: type QSGNodeNodeTypeEnum): untyped = 0
template GeometryNodeType*(_: type QSGNodeNodeTypeEnum): untyped = 1
template TransformNodeType*(_: type QSGNodeNodeTypeEnum): untyped = 2
template ClipNodeType*(_: type QSGNodeNodeTypeEnum): untyped = 3
template OpacityNodeType*(_: type QSGNodeNodeTypeEnum): untyped = 4
template RootNodeType*(_: type QSGNodeNodeTypeEnum): untyped = 5
template RenderNodeType*(_: type QSGNodeNodeTypeEnum): untyped = 6


type QSGNodeFlagEnum* = distinct cint
template OwnedByParent*(_: type QSGNodeFlagEnum): untyped = 1
template UsePreprocess*(_: type QSGNodeFlagEnum): untyped = 2
template OwnsGeometry*(_: type QSGNodeFlagEnum): untyped = 65536
template OwnsMaterial*(_: type QSGNodeFlagEnum): untyped = 131072
template OwnsOpaqueMaterial*(_: type QSGNodeFlagEnum): untyped = 262144
template IsVisitableNode*(_: type QSGNodeFlagEnum): untyped = 16777216


type QSGNodeDirtyStateBitEnum* = distinct cint
template DirtySubtreeBlocked*(_: type QSGNodeDirtyStateBitEnum): untyped = 128
template DirtyMatrix*(_: type QSGNodeDirtyStateBitEnum): untyped = 256
template DirtyNodeAdded*(_: type QSGNodeDirtyStateBitEnum): untyped = 1024
template DirtyNodeRemoved*(_: type QSGNodeDirtyStateBitEnum): untyped = 2048
template DirtyGeometry*(_: type QSGNodeDirtyStateBitEnum): untyped = 4096
template DirtyMaterial*(_: type QSGNodeDirtyStateBitEnum): untyped = 8192
template DirtyOpacity*(_: type QSGNodeDirtyStateBitEnum): untyped = 16384
template DirtyForceUpdate*(_: type QSGNodeDirtyStateBitEnum): untyped = 32768
template DirtyUsePreprocess*(_: type QSGNodeDirtyStateBitEnum): untyped = 2
template DirtyPropagationMask*(_: type QSGNodeDirtyStateBitEnum): untyped = 50432


import ./gen_qsgnode_types
export gen_qsgnode_types

import
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qmatrix4x4_types,
  ./gen_qsggeometry_types,
  ./gen_qsgmaterial_types
export
  gen_qrect_types,
  gen_qmatrix4x4_types,
  gen_qsggeometry_types,
  gen_qsgmaterial_types

type cQSGNode*{.exportc: "QSGNode", incompleteStruct.} = object
type cQSGBasicGeometryNode*{.exportc: "QSGBasicGeometryNode", incompleteStruct.} = object
type cQSGGeometryNode*{.exportc: "QSGGeometryNode", incompleteStruct.} = object
type cQSGClipNode*{.exportc: "QSGClipNode", incompleteStruct.} = object
type cQSGTransformNode*{.exportc: "QSGTransformNode", incompleteStruct.} = object
type cQSGRootNode*{.exportc: "QSGRootNode", incompleteStruct.} = object
type cQSGOpacityNode*{.exportc: "QSGOpacityNode", incompleteStruct.} = object
type cQSGNodeVisitor*{.exportc: "QSGNodeVisitor", incompleteStruct.} = object

proc fcQSGNode_parent(self: pointer, ): pointer {.importc: "QSGNode_parent".}
proc fcQSGNode_removeChildNode(self: pointer, node: pointer): void {.importc: "QSGNode_removeChildNode".}
proc fcQSGNode_removeAllChildNodes(self: pointer, ): void {.importc: "QSGNode_removeAllChildNodes".}
proc fcQSGNode_prependChildNode(self: pointer, node: pointer): void {.importc: "QSGNode_prependChildNode".}
proc fcQSGNode_appendChildNode(self: pointer, node: pointer): void {.importc: "QSGNode_appendChildNode".}
proc fcQSGNode_insertChildNodeBefore(self: pointer, node: pointer, before: pointer): void {.importc: "QSGNode_insertChildNodeBefore".}
proc fcQSGNode_insertChildNodeAfter(self: pointer, node: pointer, after: pointer): void {.importc: "QSGNode_insertChildNodeAfter".}
proc fcQSGNode_reparentChildNodesTo(self: pointer, newParent: pointer): void {.importc: "QSGNode_reparentChildNodesTo".}
proc fcQSGNode_childCount(self: pointer, ): cint {.importc: "QSGNode_childCount".}
proc fcQSGNode_childAtIndex(self: pointer, i: cint): pointer {.importc: "QSGNode_childAtIndex".}
proc fcQSGNode_firstChild(self: pointer, ): pointer {.importc: "QSGNode_firstChild".}
proc fcQSGNode_lastChild(self: pointer, ): pointer {.importc: "QSGNode_lastChild".}
proc fcQSGNode_nextSibling(self: pointer, ): pointer {.importc: "QSGNode_nextSibling".}
proc fcQSGNode_previousSibling(self: pointer, ): pointer {.importc: "QSGNode_previousSibling".}
proc fcQSGNode_typeX(self: pointer, ): cint {.importc: "QSGNode_type".}
proc fcQSGNode_clearDirty(self: pointer, ): void {.importc: "QSGNode_clearDirty".}
proc fcQSGNode_markDirty(self: pointer, bits: cint): void {.importc: "QSGNode_markDirty".}
proc fcQSGNode_dirtyState(self: pointer, ): cint {.importc: "QSGNode_dirtyState".}
proc fcQSGNode_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGNode_isSubtreeBlocked".}
proc fcQSGNode_flags(self: pointer, ): cint {.importc: "QSGNode_flags".}
proc fcQSGNode_setFlag(self: pointer, param1: cint): void {.importc: "QSGNode_setFlag".}
proc fcQSGNode_setFlags(self: pointer, param1: cint): void {.importc: "QSGNode_setFlags".}
proc fcQSGNode_preprocess(self: pointer, ): void {.importc: "QSGNode_preprocess".}
proc fcQSGNode_setFlag2(self: pointer, param1: cint, param2: bool): void {.importc: "QSGNode_setFlag2".}
proc fcQSGNode_setFlags2(self: pointer, param1: cint, param2: bool): void {.importc: "QSGNode_setFlags2".}
type cQSGNodeVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQSGNodeVTable, self: ptr cQSGNode) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
proc fcQSGNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGNode_virtualbase_isSubtreeBlocked".}
proc fcQSGNode_virtualbase_preprocess(self: pointer, ): void {.importc: "QSGNode_virtualbase_preprocess".}
proc fcQSGNode_new(vtbl: pointer, ): ptr cQSGNode {.importc: "QSGNode_new".}
proc fcQSGBasicGeometryNode_setGeometry(self: pointer, geometry: pointer): void {.importc: "QSGBasicGeometryNode_setGeometry".}
proc fcQSGBasicGeometryNode_geometry(self: pointer, ): pointer {.importc: "QSGBasicGeometryNode_geometry".}
proc fcQSGBasicGeometryNode_geometry2(self: pointer, ): pointer {.importc: "QSGBasicGeometryNode_geometry2".}
proc fcQSGBasicGeometryNode_matrix(self: pointer, ): pointer {.importc: "QSGBasicGeometryNode_matrix".}
proc fcQSGBasicGeometryNode_clipList(self: pointer, ): pointer {.importc: "QSGBasicGeometryNode_clipList".}
proc fcQSGBasicGeometryNode_setRendererMatrix(self: pointer, m: pointer): void {.importc: "QSGBasicGeometryNode_setRendererMatrix".}
proc fcQSGBasicGeometryNode_setRendererClipList(self: pointer, c: pointer): void {.importc: "QSGBasicGeometryNode_setRendererClipList".}
proc fcQSGGeometryNode_setMaterial(self: pointer, material: pointer): void {.importc: "QSGGeometryNode_setMaterial".}
proc fcQSGGeometryNode_material(self: pointer, ): pointer {.importc: "QSGGeometryNode_material".}
proc fcQSGGeometryNode_setOpaqueMaterial(self: pointer, material: pointer): void {.importc: "QSGGeometryNode_setOpaqueMaterial".}
proc fcQSGGeometryNode_opaqueMaterial(self: pointer, ): pointer {.importc: "QSGGeometryNode_opaqueMaterial".}
proc fcQSGGeometryNode_activeMaterial(self: pointer, ): pointer {.importc: "QSGGeometryNode_activeMaterial".}
proc fcQSGGeometryNode_setRenderOrder(self: pointer, order: cint): void {.importc: "QSGGeometryNode_setRenderOrder".}
proc fcQSGGeometryNode_renderOrder(self: pointer, ): cint {.importc: "QSGGeometryNode_renderOrder".}
proc fcQSGGeometryNode_setInheritedOpacity(self: pointer, opacity: float64): void {.importc: "QSGGeometryNode_setInheritedOpacity".}
proc fcQSGGeometryNode_inheritedOpacity(self: pointer, ): float64 {.importc: "QSGGeometryNode_inheritedOpacity".}
type cQSGGeometryNodeVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQSGGeometryNodeVTable, self: ptr cQSGGeometryNode) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
proc fcQSGGeometryNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGGeometryNode_virtualbase_isSubtreeBlocked".}
proc fcQSGGeometryNode_virtualbase_preprocess(self: pointer, ): void {.importc: "QSGGeometryNode_virtualbase_preprocess".}
proc fcQSGGeometryNode_new(vtbl: pointer, ): ptr cQSGGeometryNode {.importc: "QSGGeometryNode_new".}
proc fcQSGClipNode_setIsRectangular(self: pointer, rectHint: bool): void {.importc: "QSGClipNode_setIsRectangular".}
proc fcQSGClipNode_isRectangular(self: pointer, ): bool {.importc: "QSGClipNode_isRectangular".}
proc fcQSGClipNode_setClipRect(self: pointer, clipRect: pointer): void {.importc: "QSGClipNode_setClipRect".}
proc fcQSGClipNode_clipRect(self: pointer, ): pointer {.importc: "QSGClipNode_clipRect".}
type cQSGClipNodeVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQSGClipNodeVTable, self: ptr cQSGClipNode) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
proc fcQSGClipNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGClipNode_virtualbase_isSubtreeBlocked".}
proc fcQSGClipNode_virtualbase_preprocess(self: pointer, ): void {.importc: "QSGClipNode_virtualbase_preprocess".}
proc fcQSGClipNode_new(vtbl: pointer, ): ptr cQSGClipNode {.importc: "QSGClipNode_new".}
proc fcQSGTransformNode_setMatrix(self: pointer, matrix: pointer): void {.importc: "QSGTransformNode_setMatrix".}
proc fcQSGTransformNode_matrix(self: pointer, ): pointer {.importc: "QSGTransformNode_matrix".}
proc fcQSGTransformNode_setCombinedMatrix(self: pointer, matrix: pointer): void {.importc: "QSGTransformNode_setCombinedMatrix".}
proc fcQSGTransformNode_combinedMatrix(self: pointer, ): pointer {.importc: "QSGTransformNode_combinedMatrix".}
type cQSGTransformNodeVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQSGTransformNodeVTable, self: ptr cQSGTransformNode) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
proc fcQSGTransformNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGTransformNode_virtualbase_isSubtreeBlocked".}
proc fcQSGTransformNode_virtualbase_preprocess(self: pointer, ): void {.importc: "QSGTransformNode_virtualbase_preprocess".}
proc fcQSGTransformNode_new(vtbl: pointer, ): ptr cQSGTransformNode {.importc: "QSGTransformNode_new".}
type cQSGRootNodeVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQSGRootNodeVTable, self: ptr cQSGRootNode) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
proc fcQSGRootNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGRootNode_virtualbase_isSubtreeBlocked".}
proc fcQSGRootNode_virtualbase_preprocess(self: pointer, ): void {.importc: "QSGRootNode_virtualbase_preprocess".}
proc fcQSGRootNode_new(vtbl: pointer, ): ptr cQSGRootNode {.importc: "QSGRootNode_new".}
proc fcQSGOpacityNode_setOpacity(self: pointer, opacity: float64): void {.importc: "QSGOpacityNode_setOpacity".}
proc fcQSGOpacityNode_opacity(self: pointer, ): float64 {.importc: "QSGOpacityNode_opacity".}
proc fcQSGOpacityNode_setCombinedOpacity(self: pointer, opacity: float64): void {.importc: "QSGOpacityNode_setCombinedOpacity".}
proc fcQSGOpacityNode_combinedOpacity(self: pointer, ): float64 {.importc: "QSGOpacityNode_combinedOpacity".}
proc fcQSGOpacityNode_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGOpacityNode_isSubtreeBlocked".}
type cQSGOpacityNodeVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQSGOpacityNodeVTable, self: ptr cQSGOpacityNode) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
proc fcQSGOpacityNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGOpacityNode_virtualbase_isSubtreeBlocked".}
proc fcQSGOpacityNode_virtualbase_preprocess(self: pointer, ): void {.importc: "QSGOpacityNode_virtualbase_preprocess".}
proc fcQSGOpacityNode_new(vtbl: pointer, ): ptr cQSGOpacityNode {.importc: "QSGOpacityNode_new".}

proc parent*(self: gen_qsgnode_types.QSGNode, ): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_parent(self.h), owned: false)

proc removeChildNode*(self: gen_qsgnode_types.QSGNode, node: gen_qsgnode_types.QSGNode): void =
  fcQSGNode_removeChildNode(self.h, node.h)

proc removeAllChildNodes*(self: gen_qsgnode_types.QSGNode, ): void =
  fcQSGNode_removeAllChildNodes(self.h)

proc prependChildNode*(self: gen_qsgnode_types.QSGNode, node: gen_qsgnode_types.QSGNode): void =
  fcQSGNode_prependChildNode(self.h, node.h)

proc appendChildNode*(self: gen_qsgnode_types.QSGNode, node: gen_qsgnode_types.QSGNode): void =
  fcQSGNode_appendChildNode(self.h, node.h)

proc insertChildNodeBefore*(self: gen_qsgnode_types.QSGNode, node: gen_qsgnode_types.QSGNode, before: gen_qsgnode_types.QSGNode): void =
  fcQSGNode_insertChildNodeBefore(self.h, node.h, before.h)

proc insertChildNodeAfter*(self: gen_qsgnode_types.QSGNode, node: gen_qsgnode_types.QSGNode, after: gen_qsgnode_types.QSGNode): void =
  fcQSGNode_insertChildNodeAfter(self.h, node.h, after.h)

proc reparentChildNodesTo*(self: gen_qsgnode_types.QSGNode, newParent: gen_qsgnode_types.QSGNode): void =
  fcQSGNode_reparentChildNodesTo(self.h, newParent.h)

proc childCount*(self: gen_qsgnode_types.QSGNode, ): cint =
  fcQSGNode_childCount(self.h)

proc childAtIndex*(self: gen_qsgnode_types.QSGNode, i: cint): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_childAtIndex(self.h, i), owned: false)

proc firstChild*(self: gen_qsgnode_types.QSGNode, ): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_firstChild(self.h), owned: false)

proc lastChild*(self: gen_qsgnode_types.QSGNode, ): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_lastChild(self.h), owned: false)

proc nextSibling*(self: gen_qsgnode_types.QSGNode, ): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_nextSibling(self.h), owned: false)

proc previousSibling*(self: gen_qsgnode_types.QSGNode, ): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_previousSibling(self.h), owned: false)

proc typeX*(self: gen_qsgnode_types.QSGNode, ): cint =
  cint(fcQSGNode_typeX(self.h))

proc clearDirty*(self: gen_qsgnode_types.QSGNode, ): void =
  fcQSGNode_clearDirty(self.h)

proc markDirty*(self: gen_qsgnode_types.QSGNode, bits: cint): void =
  fcQSGNode_markDirty(self.h, cint(bits))

proc dirtyState*(self: gen_qsgnode_types.QSGNode, ): cint =
  cint(fcQSGNode_dirtyState(self.h))

proc isSubtreeBlocked*(self: gen_qsgnode_types.QSGNode, ): bool =
  fcQSGNode_isSubtreeBlocked(self.h)

proc flags*(self: gen_qsgnode_types.QSGNode, ): cint =
  cint(fcQSGNode_flags(self.h))

proc setFlag*(self: gen_qsgnode_types.QSGNode, param1: cint): void =
  fcQSGNode_setFlag(self.h, cint(param1))

proc setFlags*(self: gen_qsgnode_types.QSGNode, param1: cint): void =
  fcQSGNode_setFlags(self.h, cint(param1))

proc preprocess*(self: gen_qsgnode_types.QSGNode, ): void =
  fcQSGNode_preprocess(self.h)

proc setFlag*(self: gen_qsgnode_types.QSGNode, param1: cint, param2: bool): void =
  fcQSGNode_setFlag2(self.h, cint(param1), param2)

proc setFlags*(self: gen_qsgnode_types.QSGNode, param1: cint, param2: bool): void =
  fcQSGNode_setFlags2(self.h, cint(param1), param2)

type QSGNodeisSubtreeBlockedProc* = proc(self: QSGNode): bool {.raises: [], gcsafe.}
type QSGNodepreprocessProc* = proc(self: QSGNode): void {.raises: [], gcsafe.}
type QSGNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGNodeVTable
  isSubtreeBlocked*: QSGNodeisSubtreeBlockedProc
  preprocess*: QSGNodepreprocessProc
proc QSGNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGNode, ): bool =
  fcQSGNode_virtualbase_isSubtreeBlocked(self.h)

proc miqt_exec_callback_cQSGNode_isSubtreeBlocked(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGNodeVTable](vtbl)
  let self = QSGNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc QSGNodepreprocess*(self: gen_qsgnode_types.QSGNode, ): void =
  fcQSGNode_virtualbase_preprocess(self.h)

proc miqt_exec_callback_cQSGNode_preprocess(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGNodeVTable](vtbl)
  let self = QSGNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGNode* {.inheritable.} = ref object of QSGNode
  vtbl*: cQSGNodeVTable
method isSubtreeBlocked*(self: VirtualQSGNode, ): bool {.base.} =
  QSGNodeisSubtreeBlocked(self[])
proc miqt_exec_method_cQSGNode_isSubtreeBlocked(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSGNode](cast[uint](vtbl) - uint(offsetOf(VirtualQSGNode, vtbl)))
  var virtualReturn = vtbl.isSubtreeBlocked()
  virtualReturn

method preprocess*(self: VirtualQSGNode, ): void {.base.} =
  QSGNodepreprocess(self[])
proc miqt_exec_method_cQSGNode_preprocess(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSGNode](cast[uint](vtbl) - uint(offsetOf(VirtualQSGNode, vtbl)))
  vtbl.preprocess()

proc create*(T: type gen_qsgnode_types.QSGNode,
    vtbl: ref QSGNodeVTable = nil): gen_qsgnode_types.QSGNode =
  let vtbl = if vtbl == nil: new QSGNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGNodeVTable, _: ptr cQSGNode) {.cdecl.} =
    let vtbl = cast[ref QSGNodeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = miqt_exec_callback_cQSGNode_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = miqt_exec_callback_cQSGNode_preprocess
  gen_qsgnode_types.QSGNode(h: fcQSGNode_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qsgnode_types.QSGNode,
    vtbl: VirtualQSGNode) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGNodeVTable, _: ptr cQSGNode) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSGNode()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSGNode, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.isSubtreeBlocked = miqt_exec_method_cQSGNode_isSubtreeBlocked
  vtbl[].vtbl.preprocess = miqt_exec_method_cQSGNode_preprocess
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSGNode_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc setGeometry*(self: gen_qsgnode_types.QSGBasicGeometryNode, geometry: gen_qsggeometry_types.QSGGeometry): void =
  fcQSGBasicGeometryNode_setGeometry(self.h, geometry.h)

proc geometry*(self: gen_qsgnode_types.QSGBasicGeometryNode, ): gen_qsggeometry_types.QSGGeometry =
  gen_qsggeometry_types.QSGGeometry(h: fcQSGBasicGeometryNode_geometry(self.h), owned: false)

proc geometry2*(self: gen_qsgnode_types.QSGBasicGeometryNode, ): gen_qsggeometry_types.QSGGeometry =
  gen_qsggeometry_types.QSGGeometry(h: fcQSGBasicGeometryNode_geometry2(self.h), owned: false)

proc matrix*(self: gen_qsgnode_types.QSGBasicGeometryNode, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGBasicGeometryNode_matrix(self.h), owned: false)

proc clipList*(self: gen_qsgnode_types.QSGBasicGeometryNode, ): gen_qsgnode_types.QSGClipNode =
  gen_qsgnode_types.QSGClipNode(h: fcQSGBasicGeometryNode_clipList(self.h), owned: false)

proc setRendererMatrix*(self: gen_qsgnode_types.QSGBasicGeometryNode, m: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQSGBasicGeometryNode_setRendererMatrix(self.h, m.h)

proc setRendererClipList*(self: gen_qsgnode_types.QSGBasicGeometryNode, c: gen_qsgnode_types.QSGClipNode): void =
  fcQSGBasicGeometryNode_setRendererClipList(self.h, c.h)

proc setMaterial*(self: gen_qsgnode_types.QSGGeometryNode, material: gen_qsgmaterial_types.QSGMaterial): void =
  fcQSGGeometryNode_setMaterial(self.h, material.h)

proc material*(self: gen_qsgnode_types.QSGGeometryNode, ): gen_qsgmaterial_types.QSGMaterial =
  gen_qsgmaterial_types.QSGMaterial(h: fcQSGGeometryNode_material(self.h), owned: false)

proc setOpaqueMaterial*(self: gen_qsgnode_types.QSGGeometryNode, material: gen_qsgmaterial_types.QSGMaterial): void =
  fcQSGGeometryNode_setOpaqueMaterial(self.h, material.h)

proc opaqueMaterial*(self: gen_qsgnode_types.QSGGeometryNode, ): gen_qsgmaterial_types.QSGMaterial =
  gen_qsgmaterial_types.QSGMaterial(h: fcQSGGeometryNode_opaqueMaterial(self.h), owned: false)

proc activeMaterial*(self: gen_qsgnode_types.QSGGeometryNode, ): gen_qsgmaterial_types.QSGMaterial =
  gen_qsgmaterial_types.QSGMaterial(h: fcQSGGeometryNode_activeMaterial(self.h), owned: false)

proc setRenderOrder*(self: gen_qsgnode_types.QSGGeometryNode, order: cint): void =
  fcQSGGeometryNode_setRenderOrder(self.h, order)

proc renderOrder*(self: gen_qsgnode_types.QSGGeometryNode, ): cint =
  fcQSGGeometryNode_renderOrder(self.h)

proc setInheritedOpacity*(self: gen_qsgnode_types.QSGGeometryNode, opacity: float64): void =
  fcQSGGeometryNode_setInheritedOpacity(self.h, opacity)

proc inheritedOpacity*(self: gen_qsgnode_types.QSGGeometryNode, ): float64 =
  fcQSGGeometryNode_inheritedOpacity(self.h)

type QSGGeometryNodeisSubtreeBlockedProc* = proc(self: QSGGeometryNode): bool {.raises: [], gcsafe.}
type QSGGeometryNodepreprocessProc* = proc(self: QSGGeometryNode): void {.raises: [], gcsafe.}
type QSGGeometryNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGGeometryNodeVTable
  isSubtreeBlocked*: QSGGeometryNodeisSubtreeBlockedProc
  preprocess*: QSGGeometryNodepreprocessProc
proc QSGGeometryNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGGeometryNode, ): bool =
  fcQSGGeometryNode_virtualbase_isSubtreeBlocked(self.h)

proc miqt_exec_callback_cQSGGeometryNode_isSubtreeBlocked(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGGeometryNodeVTable](vtbl)
  let self = QSGGeometryNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc QSGGeometryNodepreprocess*(self: gen_qsgnode_types.QSGGeometryNode, ): void =
  fcQSGGeometryNode_virtualbase_preprocess(self.h)

proc miqt_exec_callback_cQSGGeometryNode_preprocess(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGGeometryNodeVTable](vtbl)
  let self = QSGGeometryNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGGeometryNode* {.inheritable.} = ref object of QSGGeometryNode
  vtbl*: cQSGGeometryNodeVTable
method isSubtreeBlocked*(self: VirtualQSGGeometryNode, ): bool {.base.} =
  QSGGeometryNodeisSubtreeBlocked(self[])
proc miqt_exec_method_cQSGGeometryNode_isSubtreeBlocked(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSGGeometryNode](cast[uint](vtbl) - uint(offsetOf(VirtualQSGGeometryNode, vtbl)))
  var virtualReturn = vtbl.isSubtreeBlocked()
  virtualReturn

method preprocess*(self: VirtualQSGGeometryNode, ): void {.base.} =
  QSGGeometryNodepreprocess(self[])
proc miqt_exec_method_cQSGGeometryNode_preprocess(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSGGeometryNode](cast[uint](vtbl) - uint(offsetOf(VirtualQSGGeometryNode, vtbl)))
  vtbl.preprocess()

proc create*(T: type gen_qsgnode_types.QSGGeometryNode,
    vtbl: ref QSGGeometryNodeVTable = nil): gen_qsgnode_types.QSGGeometryNode =
  let vtbl = if vtbl == nil: new QSGGeometryNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGGeometryNodeVTable, _: ptr cQSGGeometryNode) {.cdecl.} =
    let vtbl = cast[ref QSGGeometryNodeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = miqt_exec_callback_cQSGGeometryNode_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = miqt_exec_callback_cQSGGeometryNode_preprocess
  gen_qsgnode_types.QSGGeometryNode(h: fcQSGGeometryNode_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qsgnode_types.QSGGeometryNode,
    vtbl: VirtualQSGGeometryNode) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGGeometryNodeVTable, _: ptr cQSGGeometryNode) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSGGeometryNode()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSGGeometryNode, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.isSubtreeBlocked = miqt_exec_method_cQSGGeometryNode_isSubtreeBlocked
  vtbl[].vtbl.preprocess = miqt_exec_method_cQSGGeometryNode_preprocess
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSGGeometryNode_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc setIsRectangular*(self: gen_qsgnode_types.QSGClipNode, rectHint: bool): void =
  fcQSGClipNode_setIsRectangular(self.h, rectHint)

proc isRectangular*(self: gen_qsgnode_types.QSGClipNode, ): bool =
  fcQSGClipNode_isRectangular(self.h)

proc setClipRect*(self: gen_qsgnode_types.QSGClipNode, clipRect: gen_qrect_types.QRectF): void =
  fcQSGClipNode_setClipRect(self.h, clipRect.h)

proc clipRect*(self: gen_qsgnode_types.QSGClipNode, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGClipNode_clipRect(self.h), owned: true)

type QSGClipNodeisSubtreeBlockedProc* = proc(self: QSGClipNode): bool {.raises: [], gcsafe.}
type QSGClipNodepreprocessProc* = proc(self: QSGClipNode): void {.raises: [], gcsafe.}
type QSGClipNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGClipNodeVTable
  isSubtreeBlocked*: QSGClipNodeisSubtreeBlockedProc
  preprocess*: QSGClipNodepreprocessProc
proc QSGClipNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGClipNode, ): bool =
  fcQSGClipNode_virtualbase_isSubtreeBlocked(self.h)

proc miqt_exec_callback_cQSGClipNode_isSubtreeBlocked(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGClipNodeVTable](vtbl)
  let self = QSGClipNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc QSGClipNodepreprocess*(self: gen_qsgnode_types.QSGClipNode, ): void =
  fcQSGClipNode_virtualbase_preprocess(self.h)

proc miqt_exec_callback_cQSGClipNode_preprocess(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGClipNodeVTable](vtbl)
  let self = QSGClipNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGClipNode* {.inheritable.} = ref object of QSGClipNode
  vtbl*: cQSGClipNodeVTable
method isSubtreeBlocked*(self: VirtualQSGClipNode, ): bool {.base.} =
  QSGClipNodeisSubtreeBlocked(self[])
proc miqt_exec_method_cQSGClipNode_isSubtreeBlocked(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSGClipNode](cast[uint](vtbl) - uint(offsetOf(VirtualQSGClipNode, vtbl)))
  var virtualReturn = vtbl.isSubtreeBlocked()
  virtualReturn

method preprocess*(self: VirtualQSGClipNode, ): void {.base.} =
  QSGClipNodepreprocess(self[])
proc miqt_exec_method_cQSGClipNode_preprocess(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSGClipNode](cast[uint](vtbl) - uint(offsetOf(VirtualQSGClipNode, vtbl)))
  vtbl.preprocess()

proc create*(T: type gen_qsgnode_types.QSGClipNode,
    vtbl: ref QSGClipNodeVTable = nil): gen_qsgnode_types.QSGClipNode =
  let vtbl = if vtbl == nil: new QSGClipNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGClipNodeVTable, _: ptr cQSGClipNode) {.cdecl.} =
    let vtbl = cast[ref QSGClipNodeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = miqt_exec_callback_cQSGClipNode_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = miqt_exec_callback_cQSGClipNode_preprocess
  gen_qsgnode_types.QSGClipNode(h: fcQSGClipNode_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qsgnode_types.QSGClipNode,
    vtbl: VirtualQSGClipNode) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGClipNodeVTable, _: ptr cQSGClipNode) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSGClipNode()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSGClipNode, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.isSubtreeBlocked = miqt_exec_method_cQSGClipNode_isSubtreeBlocked
  vtbl[].vtbl.preprocess = miqt_exec_method_cQSGClipNode_preprocess
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSGClipNode_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc setMatrix*(self: gen_qsgnode_types.QSGTransformNode, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQSGTransformNode_setMatrix(self.h, matrix.h)

proc matrix*(self: gen_qsgnode_types.QSGTransformNode, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGTransformNode_matrix(self.h), owned: false)

proc setCombinedMatrix*(self: gen_qsgnode_types.QSGTransformNode, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQSGTransformNode_setCombinedMatrix(self.h, matrix.h)

proc combinedMatrix*(self: gen_qsgnode_types.QSGTransformNode, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGTransformNode_combinedMatrix(self.h), owned: false)

type QSGTransformNodeisSubtreeBlockedProc* = proc(self: QSGTransformNode): bool {.raises: [], gcsafe.}
type QSGTransformNodepreprocessProc* = proc(self: QSGTransformNode): void {.raises: [], gcsafe.}
type QSGTransformNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGTransformNodeVTable
  isSubtreeBlocked*: QSGTransformNodeisSubtreeBlockedProc
  preprocess*: QSGTransformNodepreprocessProc
proc QSGTransformNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGTransformNode, ): bool =
  fcQSGTransformNode_virtualbase_isSubtreeBlocked(self.h)

proc miqt_exec_callback_cQSGTransformNode_isSubtreeBlocked(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGTransformNodeVTable](vtbl)
  let self = QSGTransformNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc QSGTransformNodepreprocess*(self: gen_qsgnode_types.QSGTransformNode, ): void =
  fcQSGTransformNode_virtualbase_preprocess(self.h)

proc miqt_exec_callback_cQSGTransformNode_preprocess(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTransformNodeVTable](vtbl)
  let self = QSGTransformNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGTransformNode* {.inheritable.} = ref object of QSGTransformNode
  vtbl*: cQSGTransformNodeVTable
method isSubtreeBlocked*(self: VirtualQSGTransformNode, ): bool {.base.} =
  QSGTransformNodeisSubtreeBlocked(self[])
proc miqt_exec_method_cQSGTransformNode_isSubtreeBlocked(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSGTransformNode](cast[uint](vtbl) - uint(offsetOf(VirtualQSGTransformNode, vtbl)))
  var virtualReturn = vtbl.isSubtreeBlocked()
  virtualReturn

method preprocess*(self: VirtualQSGTransformNode, ): void {.base.} =
  QSGTransformNodepreprocess(self[])
proc miqt_exec_method_cQSGTransformNode_preprocess(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSGTransformNode](cast[uint](vtbl) - uint(offsetOf(VirtualQSGTransformNode, vtbl)))
  vtbl.preprocess()

proc create*(T: type gen_qsgnode_types.QSGTransformNode,
    vtbl: ref QSGTransformNodeVTable = nil): gen_qsgnode_types.QSGTransformNode =
  let vtbl = if vtbl == nil: new QSGTransformNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGTransformNodeVTable, _: ptr cQSGTransformNode) {.cdecl.} =
    let vtbl = cast[ref QSGTransformNodeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = miqt_exec_callback_cQSGTransformNode_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = miqt_exec_callback_cQSGTransformNode_preprocess
  gen_qsgnode_types.QSGTransformNode(h: fcQSGTransformNode_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qsgnode_types.QSGTransformNode,
    vtbl: VirtualQSGTransformNode) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGTransformNodeVTable, _: ptr cQSGTransformNode) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSGTransformNode()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSGTransformNode, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.isSubtreeBlocked = miqt_exec_method_cQSGTransformNode_isSubtreeBlocked
  vtbl[].vtbl.preprocess = miqt_exec_method_cQSGTransformNode_preprocess
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSGTransformNode_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

type QSGRootNodeisSubtreeBlockedProc* = proc(self: QSGRootNode): bool {.raises: [], gcsafe.}
type QSGRootNodepreprocessProc* = proc(self: QSGRootNode): void {.raises: [], gcsafe.}
type QSGRootNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGRootNodeVTable
  isSubtreeBlocked*: QSGRootNodeisSubtreeBlockedProc
  preprocess*: QSGRootNodepreprocessProc
proc QSGRootNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGRootNode, ): bool =
  fcQSGRootNode_virtualbase_isSubtreeBlocked(self.h)

proc miqt_exec_callback_cQSGRootNode_isSubtreeBlocked(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGRootNodeVTable](vtbl)
  let self = QSGRootNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc QSGRootNodepreprocess*(self: gen_qsgnode_types.QSGRootNode, ): void =
  fcQSGRootNode_virtualbase_preprocess(self.h)

proc miqt_exec_callback_cQSGRootNode_preprocess(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGRootNodeVTable](vtbl)
  let self = QSGRootNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGRootNode* {.inheritable.} = ref object of QSGRootNode
  vtbl*: cQSGRootNodeVTable
method isSubtreeBlocked*(self: VirtualQSGRootNode, ): bool {.base.} =
  QSGRootNodeisSubtreeBlocked(self[])
proc miqt_exec_method_cQSGRootNode_isSubtreeBlocked(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSGRootNode](cast[uint](vtbl) - uint(offsetOf(VirtualQSGRootNode, vtbl)))
  var virtualReturn = vtbl.isSubtreeBlocked()
  virtualReturn

method preprocess*(self: VirtualQSGRootNode, ): void {.base.} =
  QSGRootNodepreprocess(self[])
proc miqt_exec_method_cQSGRootNode_preprocess(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSGRootNode](cast[uint](vtbl) - uint(offsetOf(VirtualQSGRootNode, vtbl)))
  vtbl.preprocess()

proc create*(T: type gen_qsgnode_types.QSGRootNode,
    vtbl: ref QSGRootNodeVTable = nil): gen_qsgnode_types.QSGRootNode =
  let vtbl = if vtbl == nil: new QSGRootNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGRootNodeVTable, _: ptr cQSGRootNode) {.cdecl.} =
    let vtbl = cast[ref QSGRootNodeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = miqt_exec_callback_cQSGRootNode_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = miqt_exec_callback_cQSGRootNode_preprocess
  gen_qsgnode_types.QSGRootNode(h: fcQSGRootNode_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qsgnode_types.QSGRootNode,
    vtbl: VirtualQSGRootNode) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGRootNodeVTable, _: ptr cQSGRootNode) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSGRootNode()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSGRootNode, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.isSubtreeBlocked = miqt_exec_method_cQSGRootNode_isSubtreeBlocked
  vtbl[].vtbl.preprocess = miqt_exec_method_cQSGRootNode_preprocess
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSGRootNode_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc setOpacity*(self: gen_qsgnode_types.QSGOpacityNode, opacity: float64): void =
  fcQSGOpacityNode_setOpacity(self.h, opacity)

proc opacity*(self: gen_qsgnode_types.QSGOpacityNode, ): float64 =
  fcQSGOpacityNode_opacity(self.h)

proc setCombinedOpacity*(self: gen_qsgnode_types.QSGOpacityNode, opacity: float64): void =
  fcQSGOpacityNode_setCombinedOpacity(self.h, opacity)

proc combinedOpacity*(self: gen_qsgnode_types.QSGOpacityNode, ): float64 =
  fcQSGOpacityNode_combinedOpacity(self.h)

proc isSubtreeBlocked*(self: gen_qsgnode_types.QSGOpacityNode, ): bool =
  fcQSGOpacityNode_isSubtreeBlocked(self.h)

type QSGOpacityNodeisSubtreeBlockedProc* = proc(self: QSGOpacityNode): bool {.raises: [], gcsafe.}
type QSGOpacityNodepreprocessProc* = proc(self: QSGOpacityNode): void {.raises: [], gcsafe.}
type QSGOpacityNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGOpacityNodeVTable
  isSubtreeBlocked*: QSGOpacityNodeisSubtreeBlockedProc
  preprocess*: QSGOpacityNodepreprocessProc
proc QSGOpacityNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGOpacityNode, ): bool =
  fcQSGOpacityNode_virtualbase_isSubtreeBlocked(self.h)

proc miqt_exec_callback_cQSGOpacityNode_isSubtreeBlocked(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGOpacityNodeVTable](vtbl)
  let self = QSGOpacityNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc QSGOpacityNodepreprocess*(self: gen_qsgnode_types.QSGOpacityNode, ): void =
  fcQSGOpacityNode_virtualbase_preprocess(self.h)

proc miqt_exec_callback_cQSGOpacityNode_preprocess(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGOpacityNodeVTable](vtbl)
  let self = QSGOpacityNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGOpacityNode* {.inheritable.} = ref object of QSGOpacityNode
  vtbl*: cQSGOpacityNodeVTable
method isSubtreeBlocked*(self: VirtualQSGOpacityNode, ): bool {.base.} =
  QSGOpacityNodeisSubtreeBlocked(self[])
proc miqt_exec_method_cQSGOpacityNode_isSubtreeBlocked(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQSGOpacityNode](cast[uint](vtbl) - uint(offsetOf(VirtualQSGOpacityNode, vtbl)))
  var virtualReturn = vtbl.isSubtreeBlocked()
  virtualReturn

method preprocess*(self: VirtualQSGOpacityNode, ): void {.base.} =
  QSGOpacityNodepreprocess(self[])
proc miqt_exec_method_cQSGOpacityNode_preprocess(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQSGOpacityNode](cast[uint](vtbl) - uint(offsetOf(VirtualQSGOpacityNode, vtbl)))
  vtbl.preprocess()

proc create*(T: type gen_qsgnode_types.QSGOpacityNode,
    vtbl: ref QSGOpacityNodeVTable = nil): gen_qsgnode_types.QSGOpacityNode =
  let vtbl = if vtbl == nil: new QSGOpacityNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGOpacityNodeVTable, _: ptr cQSGOpacityNode) {.cdecl.} =
    let vtbl = cast[ref QSGOpacityNodeVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = miqt_exec_callback_cQSGOpacityNode_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = miqt_exec_callback_cQSGOpacityNode_preprocess
  gen_qsgnode_types.QSGOpacityNode(h: fcQSGOpacityNode_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qsgnode_types.QSGOpacityNode,
    vtbl: VirtualQSGOpacityNode) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGOpacityNodeVTable, _: ptr cQSGOpacityNode) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSGOpacityNode()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSGOpacityNode, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.isSubtreeBlocked = miqt_exec_method_cQSGOpacityNode_isSubtreeBlocked
  vtbl[].vtbl.preprocess = miqt_exec_method_cQSGOpacityNode_preprocess
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSGOpacityNode_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

