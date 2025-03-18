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

proc fcQSGNode_parent(self: pointer): pointer {.importc: "QSGNode_parent".}
proc fcQSGNode_removeChildNode(self: pointer, node: pointer): void {.importc: "QSGNode_removeChildNode".}
proc fcQSGNode_removeAllChildNodes(self: pointer): void {.importc: "QSGNode_removeAllChildNodes".}
proc fcQSGNode_prependChildNode(self: pointer, node: pointer): void {.importc: "QSGNode_prependChildNode".}
proc fcQSGNode_appendChildNode(self: pointer, node: pointer): void {.importc: "QSGNode_appendChildNode".}
proc fcQSGNode_insertChildNodeBefore(self: pointer, node: pointer, before: pointer): void {.importc: "QSGNode_insertChildNodeBefore".}
proc fcQSGNode_insertChildNodeAfter(self: pointer, node: pointer, after: pointer): void {.importc: "QSGNode_insertChildNodeAfter".}
proc fcQSGNode_reparentChildNodesTo(self: pointer, newParent: pointer): void {.importc: "QSGNode_reparentChildNodesTo".}
proc fcQSGNode_childCount(self: pointer): cint {.importc: "QSGNode_childCount".}
proc fcQSGNode_childAtIndex(self: pointer, i: cint): pointer {.importc: "QSGNode_childAtIndex".}
proc fcQSGNode_firstChild(self: pointer): pointer {.importc: "QSGNode_firstChild".}
proc fcQSGNode_lastChild(self: pointer): pointer {.importc: "QSGNode_lastChild".}
proc fcQSGNode_nextSibling(self: pointer): pointer {.importc: "QSGNode_nextSibling".}
proc fcQSGNode_previousSibling(self: pointer): pointer {.importc: "QSGNode_previousSibling".}
proc fcQSGNode_typeX(self: pointer): cint {.importc: "QSGNode_type".}
proc fcQSGNode_clearDirty(self: pointer): void {.importc: "QSGNode_clearDirty".}
proc fcQSGNode_markDirty(self: pointer, bits: cint): void {.importc: "QSGNode_markDirty".}
proc fcQSGNode_dirtyState(self: pointer): cint {.importc: "QSGNode_dirtyState".}
proc fcQSGNode_isSubtreeBlocked(self: pointer): bool {.importc: "QSGNode_isSubtreeBlocked".}
proc fcQSGNode_flags(self: pointer): cint {.importc: "QSGNode_flags".}
proc fcQSGNode_setFlag(self: pointer, param1: cint): void {.importc: "QSGNode_setFlag".}
proc fcQSGNode_setFlags(self: pointer, param1: cint): void {.importc: "QSGNode_setFlags".}
proc fcQSGNode_preprocess(self: pointer): void {.importc: "QSGNode_preprocess".}
proc fcQSGNode_setFlag2(self: pointer, param1: cint, param2: bool): void {.importc: "QSGNode_setFlag2".}
proc fcQSGNode_setFlags2(self: pointer, param1: cint, param2: bool): void {.importc: "QSGNode_setFlags2".}
proc fcQSGNode_vtbl(self: pointer): pointer {.importc: "QSGNode_vtbl".}
proc fcQSGNode_vdata(self: pointer): pointer {.importc: "QSGNode_vdata".}

type cQSGNodeVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGNode_virtualbase_isSubtreeBlocked(self: pointer): bool {.importc: "QSGNode_virtualbase_isSubtreeBlocked".}
proc fcQSGNode_virtualbase_preprocess(self: pointer): void {.importc: "QSGNode_virtualbase_preprocess".}
proc fcQSGNode_new(vtbl, vdata: pointer): ptr cQSGNode {.importc: "QSGNode_new".}
proc fcQSGBasicGeometryNode_setGeometry(self: pointer, geometry: pointer): void {.importc: "QSGBasicGeometryNode_setGeometry".}
proc fcQSGBasicGeometryNode_geometry(self: pointer): pointer {.importc: "QSGBasicGeometryNode_geometry".}
proc fcQSGBasicGeometryNode_geometry2(self: pointer): pointer {.importc: "QSGBasicGeometryNode_geometry2".}
proc fcQSGBasicGeometryNode_matrix(self: pointer): pointer {.importc: "QSGBasicGeometryNode_matrix".}
proc fcQSGBasicGeometryNode_clipList(self: pointer): pointer {.importc: "QSGBasicGeometryNode_clipList".}
proc fcQSGBasicGeometryNode_setRendererMatrix(self: pointer, m: pointer): void {.importc: "QSGBasicGeometryNode_setRendererMatrix".}
proc fcQSGBasicGeometryNode_setRendererClipList(self: pointer, c: pointer): void {.importc: "QSGBasicGeometryNode_setRendererClipList".}
proc fcQSGGeometryNode_setMaterial(self: pointer, material: pointer): void {.importc: "QSGGeometryNode_setMaterial".}
proc fcQSGGeometryNode_material(self: pointer): pointer {.importc: "QSGGeometryNode_material".}
proc fcQSGGeometryNode_setOpaqueMaterial(self: pointer, material: pointer): void {.importc: "QSGGeometryNode_setOpaqueMaterial".}
proc fcQSGGeometryNode_opaqueMaterial(self: pointer): pointer {.importc: "QSGGeometryNode_opaqueMaterial".}
proc fcQSGGeometryNode_activeMaterial(self: pointer): pointer {.importc: "QSGGeometryNode_activeMaterial".}
proc fcQSGGeometryNode_setRenderOrder(self: pointer, order: cint): void {.importc: "QSGGeometryNode_setRenderOrder".}
proc fcQSGGeometryNode_renderOrder(self: pointer): cint {.importc: "QSGGeometryNode_renderOrder".}
proc fcQSGGeometryNode_setInheritedOpacity(self: pointer, opacity: float64): void {.importc: "QSGGeometryNode_setInheritedOpacity".}
proc fcQSGGeometryNode_inheritedOpacity(self: pointer): float64 {.importc: "QSGGeometryNode_inheritedOpacity".}
proc fcQSGGeometryNode_vtbl(self: pointer): pointer {.importc: "QSGGeometryNode_vtbl".}
proc fcQSGGeometryNode_vdata(self: pointer): pointer {.importc: "QSGGeometryNode_vdata".}

type cQSGGeometryNodeVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGGeometryNode_virtualbase_isSubtreeBlocked(self: pointer): bool {.importc: "QSGGeometryNode_virtualbase_isSubtreeBlocked".}
proc fcQSGGeometryNode_virtualbase_preprocess(self: pointer): void {.importc: "QSGGeometryNode_virtualbase_preprocess".}
proc fcQSGGeometryNode_new(vtbl, vdata: pointer): ptr cQSGGeometryNode {.importc: "QSGGeometryNode_new".}
proc fcQSGClipNode_setIsRectangular(self: pointer, rectHint: bool): void {.importc: "QSGClipNode_setIsRectangular".}
proc fcQSGClipNode_isRectangular(self: pointer): bool {.importc: "QSGClipNode_isRectangular".}
proc fcQSGClipNode_setClipRect(self: pointer, clipRect: pointer): void {.importc: "QSGClipNode_setClipRect".}
proc fcQSGClipNode_clipRect(self: pointer): pointer {.importc: "QSGClipNode_clipRect".}
proc fcQSGClipNode_vtbl(self: pointer): pointer {.importc: "QSGClipNode_vtbl".}
proc fcQSGClipNode_vdata(self: pointer): pointer {.importc: "QSGClipNode_vdata".}

type cQSGClipNodeVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGClipNode_virtualbase_isSubtreeBlocked(self: pointer): bool {.importc: "QSGClipNode_virtualbase_isSubtreeBlocked".}
proc fcQSGClipNode_virtualbase_preprocess(self: pointer): void {.importc: "QSGClipNode_virtualbase_preprocess".}
proc fcQSGClipNode_new(vtbl, vdata: pointer): ptr cQSGClipNode {.importc: "QSGClipNode_new".}
proc fcQSGTransformNode_setMatrix(self: pointer, matrix: pointer): void {.importc: "QSGTransformNode_setMatrix".}
proc fcQSGTransformNode_matrix(self: pointer): pointer {.importc: "QSGTransformNode_matrix".}
proc fcQSGTransformNode_setCombinedMatrix(self: pointer, matrix: pointer): void {.importc: "QSGTransformNode_setCombinedMatrix".}
proc fcQSGTransformNode_combinedMatrix(self: pointer): pointer {.importc: "QSGTransformNode_combinedMatrix".}
proc fcQSGTransformNode_vtbl(self: pointer): pointer {.importc: "QSGTransformNode_vtbl".}
proc fcQSGTransformNode_vdata(self: pointer): pointer {.importc: "QSGTransformNode_vdata".}

type cQSGTransformNodeVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGTransformNode_virtualbase_isSubtreeBlocked(self: pointer): bool {.importc: "QSGTransformNode_virtualbase_isSubtreeBlocked".}
proc fcQSGTransformNode_virtualbase_preprocess(self: pointer): void {.importc: "QSGTransformNode_virtualbase_preprocess".}
proc fcQSGTransformNode_new(vtbl, vdata: pointer): ptr cQSGTransformNode {.importc: "QSGTransformNode_new".}
proc fcQSGRootNode_vtbl(self: pointer): pointer {.importc: "QSGRootNode_vtbl".}
proc fcQSGRootNode_vdata(self: pointer): pointer {.importc: "QSGRootNode_vdata".}

type cQSGRootNodeVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGRootNode_virtualbase_isSubtreeBlocked(self: pointer): bool {.importc: "QSGRootNode_virtualbase_isSubtreeBlocked".}
proc fcQSGRootNode_virtualbase_preprocess(self: pointer): void {.importc: "QSGRootNode_virtualbase_preprocess".}
proc fcQSGRootNode_new(vtbl, vdata: pointer): ptr cQSGRootNode {.importc: "QSGRootNode_new".}
proc fcQSGOpacityNode_setOpacity(self: pointer, opacity: float64): void {.importc: "QSGOpacityNode_setOpacity".}
proc fcQSGOpacityNode_opacity(self: pointer): float64 {.importc: "QSGOpacityNode_opacity".}
proc fcQSGOpacityNode_setCombinedOpacity(self: pointer, opacity: float64): void {.importc: "QSGOpacityNode_setCombinedOpacity".}
proc fcQSGOpacityNode_combinedOpacity(self: pointer): float64 {.importc: "QSGOpacityNode_combinedOpacity".}
proc fcQSGOpacityNode_isSubtreeBlocked(self: pointer): bool {.importc: "QSGOpacityNode_isSubtreeBlocked".}
proc fcQSGOpacityNode_vtbl(self: pointer): pointer {.importc: "QSGOpacityNode_vtbl".}
proc fcQSGOpacityNode_vdata(self: pointer): pointer {.importc: "QSGOpacityNode_vdata".}

type cQSGOpacityNodeVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGOpacityNode_virtualbase_isSubtreeBlocked(self: pointer): bool {.importc: "QSGOpacityNode_virtualbase_isSubtreeBlocked".}
proc fcQSGOpacityNode_virtualbase_preprocess(self: pointer): void {.importc: "QSGOpacityNode_virtualbase_preprocess".}
proc fcQSGOpacityNode_new(vtbl, vdata: pointer): ptr cQSGOpacityNode {.importc: "QSGOpacityNode_new".}

proc parent*(self: gen_qsgnode_types.QSGNode): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_parent(self.h), owned: false)

proc removeChildNode*(self: gen_qsgnode_types.QSGNode, node: gen_qsgnode_types.QSGNode): void =
  fcQSGNode_removeChildNode(self.h, node.h)

proc removeAllChildNodes*(self: gen_qsgnode_types.QSGNode): void =
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

proc childCount*(self: gen_qsgnode_types.QSGNode): cint =
  fcQSGNode_childCount(self.h)

proc childAtIndex*(self: gen_qsgnode_types.QSGNode, i: cint): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_childAtIndex(self.h, i), owned: false)

proc firstChild*(self: gen_qsgnode_types.QSGNode): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_firstChild(self.h), owned: false)

proc lastChild*(self: gen_qsgnode_types.QSGNode): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_lastChild(self.h), owned: false)

proc nextSibling*(self: gen_qsgnode_types.QSGNode): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_nextSibling(self.h), owned: false)

proc previousSibling*(self: gen_qsgnode_types.QSGNode): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_previousSibling(self.h), owned: false)

proc typeX*(self: gen_qsgnode_types.QSGNode): cint =
  cint(fcQSGNode_typeX(self.h))

proc clearDirty*(self: gen_qsgnode_types.QSGNode): void =
  fcQSGNode_clearDirty(self.h)

proc markDirty*(self: gen_qsgnode_types.QSGNode, bits: cint): void =
  fcQSGNode_markDirty(self.h, cint(bits))

proc dirtyState*(self: gen_qsgnode_types.QSGNode): cint =
  cint(fcQSGNode_dirtyState(self.h))

proc isSubtreeBlocked*(self: gen_qsgnode_types.QSGNode): bool =
  fcQSGNode_isSubtreeBlocked(self.h)

proc flags*(self: gen_qsgnode_types.QSGNode): cint =
  cint(fcQSGNode_flags(self.h))

proc setFlag*(self: gen_qsgnode_types.QSGNode, param1: cint): void =
  fcQSGNode_setFlag(self.h, cint(param1))

proc setFlags*(self: gen_qsgnode_types.QSGNode, param1: cint): void =
  fcQSGNode_setFlags(self.h, cint(param1))

proc preprocess*(self: gen_qsgnode_types.QSGNode): void =
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

proc QSGNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGNode): bool =
  fcQSGNode_virtualbase_isSubtreeBlocked(self.h)

proc QSGNodepreprocess*(self: gen_qsgnode_types.QSGNode): void =
  fcQSGNode_virtualbase_preprocess(self.h)


proc fcQSGNode_vtable_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGNodeVTable](fcQSGNode_vdata(self))
  let self = QSGNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc fcQSGNode_vtable_callback_preprocess(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGNodeVTable](fcQSGNode_vdata(self))
  let self = QSGNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGNode* {.inheritable.} = ref object of QSGNode
  vtbl*: cQSGNodeVTable

method isSubtreeBlocked*(self: VirtualQSGNode): bool {.base.} =
  QSGNodeisSubtreeBlocked(self[])
method preprocess*(self: VirtualQSGNode): void {.base.} =
  QSGNodepreprocess(self[])

proc fcQSGNode_method_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGNode](fcQSGNode_vdata(self))
  var virtualReturn = inst.isSubtreeBlocked()
  virtualReturn

proc fcQSGNode_method_callback_preprocess(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGNode](fcQSGNode_vdata(self))
  inst.preprocess()


proc create*(T: type gen_qsgnode_types.QSGNode,
    vtbl: ref QSGNodeVTable = nil): gen_qsgnode_types.QSGNode =
  let vtbl = if vtbl == nil: new QSGNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGNodeVTable](fcQSGNode_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = fcQSGNode_vtable_callback_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = fcQSGNode_vtable_callback_preprocess
  gen_qsgnode_types.QSGNode(h: fcQSGNode_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGNode_mvtbl = cQSGNodeVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGNode()[])](self.fcQSGNode_vtbl())
    inst[].h = nil
    inst[].owned = false,

  isSubtreeBlocked: fcQSGNode_method_callback_isSubtreeBlocked,
  preprocess: fcQSGNode_method_callback_preprocess,
)
proc create*(T: type gen_qsgnode_types.QSGNode,
    inst: VirtualQSGNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGNode_new(addr(cQSGNode_mvtbl), addr(inst[]))
  inst[].owned = true

proc setGeometry*(self: gen_qsgnode_types.QSGBasicGeometryNode, geometry: gen_qsggeometry_types.QSGGeometry): void =
  fcQSGBasicGeometryNode_setGeometry(self.h, geometry.h)

proc geometry*(self: gen_qsgnode_types.QSGBasicGeometryNode): gen_qsggeometry_types.QSGGeometry =
  gen_qsggeometry_types.QSGGeometry(h: fcQSGBasicGeometryNode_geometry(self.h), owned: false)

proc geometry2*(self: gen_qsgnode_types.QSGBasicGeometryNode): gen_qsggeometry_types.QSGGeometry =
  gen_qsggeometry_types.QSGGeometry(h: fcQSGBasicGeometryNode_geometry2(self.h), owned: false)

proc matrix*(self: gen_qsgnode_types.QSGBasicGeometryNode): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGBasicGeometryNode_matrix(self.h), owned: false)

proc clipList*(self: gen_qsgnode_types.QSGBasicGeometryNode): gen_qsgnode_types.QSGClipNode =
  gen_qsgnode_types.QSGClipNode(h: fcQSGBasicGeometryNode_clipList(self.h), owned: false)

proc setRendererMatrix*(self: gen_qsgnode_types.QSGBasicGeometryNode, m: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQSGBasicGeometryNode_setRendererMatrix(self.h, m.h)

proc setRendererClipList*(self: gen_qsgnode_types.QSGBasicGeometryNode, c: gen_qsgnode_types.QSGClipNode): void =
  fcQSGBasicGeometryNode_setRendererClipList(self.h, c.h)

proc setMaterial*(self: gen_qsgnode_types.QSGGeometryNode, material: gen_qsgmaterial_types.QSGMaterial): void =
  fcQSGGeometryNode_setMaterial(self.h, material.h)

proc material*(self: gen_qsgnode_types.QSGGeometryNode): gen_qsgmaterial_types.QSGMaterial =
  gen_qsgmaterial_types.QSGMaterial(h: fcQSGGeometryNode_material(self.h), owned: false)

proc setOpaqueMaterial*(self: gen_qsgnode_types.QSGGeometryNode, material: gen_qsgmaterial_types.QSGMaterial): void =
  fcQSGGeometryNode_setOpaqueMaterial(self.h, material.h)

proc opaqueMaterial*(self: gen_qsgnode_types.QSGGeometryNode): gen_qsgmaterial_types.QSGMaterial =
  gen_qsgmaterial_types.QSGMaterial(h: fcQSGGeometryNode_opaqueMaterial(self.h), owned: false)

proc activeMaterial*(self: gen_qsgnode_types.QSGGeometryNode): gen_qsgmaterial_types.QSGMaterial =
  gen_qsgmaterial_types.QSGMaterial(h: fcQSGGeometryNode_activeMaterial(self.h), owned: false)

proc setRenderOrder*(self: gen_qsgnode_types.QSGGeometryNode, order: cint): void =
  fcQSGGeometryNode_setRenderOrder(self.h, order)

proc renderOrder*(self: gen_qsgnode_types.QSGGeometryNode): cint =
  fcQSGGeometryNode_renderOrder(self.h)

proc setInheritedOpacity*(self: gen_qsgnode_types.QSGGeometryNode, opacity: float64): void =
  fcQSGGeometryNode_setInheritedOpacity(self.h, opacity)

proc inheritedOpacity*(self: gen_qsgnode_types.QSGGeometryNode): float64 =
  fcQSGGeometryNode_inheritedOpacity(self.h)

type QSGGeometryNodeisSubtreeBlockedProc* = proc(self: QSGGeometryNode): bool {.raises: [], gcsafe.}
type QSGGeometryNodepreprocessProc* = proc(self: QSGGeometryNode): void {.raises: [], gcsafe.}

type QSGGeometryNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGGeometryNodeVTable
  isSubtreeBlocked*: QSGGeometryNodeisSubtreeBlockedProc
  preprocess*: QSGGeometryNodepreprocessProc

proc QSGGeometryNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGGeometryNode): bool =
  fcQSGGeometryNode_virtualbase_isSubtreeBlocked(self.h)

proc QSGGeometryNodepreprocess*(self: gen_qsgnode_types.QSGGeometryNode): void =
  fcQSGGeometryNode_virtualbase_preprocess(self.h)


proc fcQSGGeometryNode_vtable_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGGeometryNodeVTable](fcQSGGeometryNode_vdata(self))
  let self = QSGGeometryNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc fcQSGGeometryNode_vtable_callback_preprocess(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGGeometryNodeVTable](fcQSGGeometryNode_vdata(self))
  let self = QSGGeometryNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGGeometryNode* {.inheritable.} = ref object of QSGGeometryNode
  vtbl*: cQSGGeometryNodeVTable

method isSubtreeBlocked*(self: VirtualQSGGeometryNode): bool {.base.} =
  QSGGeometryNodeisSubtreeBlocked(self[])
method preprocess*(self: VirtualQSGGeometryNode): void {.base.} =
  QSGGeometryNodepreprocess(self[])

proc fcQSGGeometryNode_method_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGGeometryNode](fcQSGGeometryNode_vdata(self))
  var virtualReturn = inst.isSubtreeBlocked()
  virtualReturn

proc fcQSGGeometryNode_method_callback_preprocess(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGGeometryNode](fcQSGGeometryNode_vdata(self))
  inst.preprocess()


proc create*(T: type gen_qsgnode_types.QSGGeometryNode,
    vtbl: ref QSGGeometryNodeVTable = nil): gen_qsgnode_types.QSGGeometryNode =
  let vtbl = if vtbl == nil: new QSGGeometryNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGGeometryNodeVTable](fcQSGGeometryNode_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = fcQSGGeometryNode_vtable_callback_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = fcQSGGeometryNode_vtable_callback_preprocess
  gen_qsgnode_types.QSGGeometryNode(h: fcQSGGeometryNode_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGGeometryNode_mvtbl = cQSGGeometryNodeVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGGeometryNode()[])](self.fcQSGGeometryNode_vtbl())
    inst[].h = nil
    inst[].owned = false,

  isSubtreeBlocked: fcQSGGeometryNode_method_callback_isSubtreeBlocked,
  preprocess: fcQSGGeometryNode_method_callback_preprocess,
)
proc create*(T: type gen_qsgnode_types.QSGGeometryNode,
    inst: VirtualQSGGeometryNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGGeometryNode_new(addr(cQSGGeometryNode_mvtbl), addr(inst[]))
  inst[].owned = true

proc setIsRectangular*(self: gen_qsgnode_types.QSGClipNode, rectHint: bool): void =
  fcQSGClipNode_setIsRectangular(self.h, rectHint)

proc isRectangular*(self: gen_qsgnode_types.QSGClipNode): bool =
  fcQSGClipNode_isRectangular(self.h)

proc setClipRect*(self: gen_qsgnode_types.QSGClipNode, clipRect: gen_qrect_types.QRectF): void =
  fcQSGClipNode_setClipRect(self.h, clipRect.h)

proc clipRect*(self: gen_qsgnode_types.QSGClipNode): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGClipNode_clipRect(self.h), owned: true)

type QSGClipNodeisSubtreeBlockedProc* = proc(self: QSGClipNode): bool {.raises: [], gcsafe.}
type QSGClipNodepreprocessProc* = proc(self: QSGClipNode): void {.raises: [], gcsafe.}

type QSGClipNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGClipNodeVTable
  isSubtreeBlocked*: QSGClipNodeisSubtreeBlockedProc
  preprocess*: QSGClipNodepreprocessProc

proc QSGClipNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGClipNode): bool =
  fcQSGClipNode_virtualbase_isSubtreeBlocked(self.h)

proc QSGClipNodepreprocess*(self: gen_qsgnode_types.QSGClipNode): void =
  fcQSGClipNode_virtualbase_preprocess(self.h)


proc fcQSGClipNode_vtable_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGClipNodeVTable](fcQSGClipNode_vdata(self))
  let self = QSGClipNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc fcQSGClipNode_vtable_callback_preprocess(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGClipNodeVTable](fcQSGClipNode_vdata(self))
  let self = QSGClipNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGClipNode* {.inheritable.} = ref object of QSGClipNode
  vtbl*: cQSGClipNodeVTable

method isSubtreeBlocked*(self: VirtualQSGClipNode): bool {.base.} =
  QSGClipNodeisSubtreeBlocked(self[])
method preprocess*(self: VirtualQSGClipNode): void {.base.} =
  QSGClipNodepreprocess(self[])

proc fcQSGClipNode_method_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGClipNode](fcQSGClipNode_vdata(self))
  var virtualReturn = inst.isSubtreeBlocked()
  virtualReturn

proc fcQSGClipNode_method_callback_preprocess(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGClipNode](fcQSGClipNode_vdata(self))
  inst.preprocess()


proc create*(T: type gen_qsgnode_types.QSGClipNode,
    vtbl: ref QSGClipNodeVTable = nil): gen_qsgnode_types.QSGClipNode =
  let vtbl = if vtbl == nil: new QSGClipNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGClipNodeVTable](fcQSGClipNode_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = fcQSGClipNode_vtable_callback_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = fcQSGClipNode_vtable_callback_preprocess
  gen_qsgnode_types.QSGClipNode(h: fcQSGClipNode_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGClipNode_mvtbl = cQSGClipNodeVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGClipNode()[])](self.fcQSGClipNode_vtbl())
    inst[].h = nil
    inst[].owned = false,

  isSubtreeBlocked: fcQSGClipNode_method_callback_isSubtreeBlocked,
  preprocess: fcQSGClipNode_method_callback_preprocess,
)
proc create*(T: type gen_qsgnode_types.QSGClipNode,
    inst: VirtualQSGClipNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGClipNode_new(addr(cQSGClipNode_mvtbl), addr(inst[]))
  inst[].owned = true

proc setMatrix*(self: gen_qsgnode_types.QSGTransformNode, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQSGTransformNode_setMatrix(self.h, matrix.h)

proc matrix*(self: gen_qsgnode_types.QSGTransformNode): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGTransformNode_matrix(self.h), owned: false)

proc setCombinedMatrix*(self: gen_qsgnode_types.QSGTransformNode, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQSGTransformNode_setCombinedMatrix(self.h, matrix.h)

proc combinedMatrix*(self: gen_qsgnode_types.QSGTransformNode): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGTransformNode_combinedMatrix(self.h), owned: false)

type QSGTransformNodeisSubtreeBlockedProc* = proc(self: QSGTransformNode): bool {.raises: [], gcsafe.}
type QSGTransformNodepreprocessProc* = proc(self: QSGTransformNode): void {.raises: [], gcsafe.}

type QSGTransformNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGTransformNodeVTable
  isSubtreeBlocked*: QSGTransformNodeisSubtreeBlockedProc
  preprocess*: QSGTransformNodepreprocessProc

proc QSGTransformNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGTransformNode): bool =
  fcQSGTransformNode_virtualbase_isSubtreeBlocked(self.h)

proc QSGTransformNodepreprocess*(self: gen_qsgnode_types.QSGTransformNode): void =
  fcQSGTransformNode_virtualbase_preprocess(self.h)


proc fcQSGTransformNode_vtable_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGTransformNodeVTable](fcQSGTransformNode_vdata(self))
  let self = QSGTransformNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc fcQSGTransformNode_vtable_callback_preprocess(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGTransformNodeVTable](fcQSGTransformNode_vdata(self))
  let self = QSGTransformNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGTransformNode* {.inheritable.} = ref object of QSGTransformNode
  vtbl*: cQSGTransformNodeVTable

method isSubtreeBlocked*(self: VirtualQSGTransformNode): bool {.base.} =
  QSGTransformNodeisSubtreeBlocked(self[])
method preprocess*(self: VirtualQSGTransformNode): void {.base.} =
  QSGTransformNodepreprocess(self[])

proc fcQSGTransformNode_method_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGTransformNode](fcQSGTransformNode_vdata(self))
  var virtualReturn = inst.isSubtreeBlocked()
  virtualReturn

proc fcQSGTransformNode_method_callback_preprocess(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGTransformNode](fcQSGTransformNode_vdata(self))
  inst.preprocess()


proc create*(T: type gen_qsgnode_types.QSGTransformNode,
    vtbl: ref QSGTransformNodeVTable = nil): gen_qsgnode_types.QSGTransformNode =
  let vtbl = if vtbl == nil: new QSGTransformNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGTransformNodeVTable](fcQSGTransformNode_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = fcQSGTransformNode_vtable_callback_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = fcQSGTransformNode_vtable_callback_preprocess
  gen_qsgnode_types.QSGTransformNode(h: fcQSGTransformNode_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGTransformNode_mvtbl = cQSGTransformNodeVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGTransformNode()[])](self.fcQSGTransformNode_vtbl())
    inst[].h = nil
    inst[].owned = false,

  isSubtreeBlocked: fcQSGTransformNode_method_callback_isSubtreeBlocked,
  preprocess: fcQSGTransformNode_method_callback_preprocess,
)
proc create*(T: type gen_qsgnode_types.QSGTransformNode,
    inst: VirtualQSGTransformNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGTransformNode_new(addr(cQSGTransformNode_mvtbl), addr(inst[]))
  inst[].owned = true

type QSGRootNodeisSubtreeBlockedProc* = proc(self: QSGRootNode): bool {.raises: [], gcsafe.}
type QSGRootNodepreprocessProc* = proc(self: QSGRootNode): void {.raises: [], gcsafe.}

type QSGRootNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGRootNodeVTable
  isSubtreeBlocked*: QSGRootNodeisSubtreeBlockedProc
  preprocess*: QSGRootNodepreprocessProc

proc QSGRootNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGRootNode): bool =
  fcQSGRootNode_virtualbase_isSubtreeBlocked(self.h)

proc QSGRootNodepreprocess*(self: gen_qsgnode_types.QSGRootNode): void =
  fcQSGRootNode_virtualbase_preprocess(self.h)


proc fcQSGRootNode_vtable_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGRootNodeVTable](fcQSGRootNode_vdata(self))
  let self = QSGRootNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc fcQSGRootNode_vtable_callback_preprocess(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGRootNodeVTable](fcQSGRootNode_vdata(self))
  let self = QSGRootNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGRootNode* {.inheritable.} = ref object of QSGRootNode
  vtbl*: cQSGRootNodeVTable

method isSubtreeBlocked*(self: VirtualQSGRootNode): bool {.base.} =
  QSGRootNodeisSubtreeBlocked(self[])
method preprocess*(self: VirtualQSGRootNode): void {.base.} =
  QSGRootNodepreprocess(self[])

proc fcQSGRootNode_method_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGRootNode](fcQSGRootNode_vdata(self))
  var virtualReturn = inst.isSubtreeBlocked()
  virtualReturn

proc fcQSGRootNode_method_callback_preprocess(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGRootNode](fcQSGRootNode_vdata(self))
  inst.preprocess()


proc create*(T: type gen_qsgnode_types.QSGRootNode,
    vtbl: ref QSGRootNodeVTable = nil): gen_qsgnode_types.QSGRootNode =
  let vtbl = if vtbl == nil: new QSGRootNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGRootNodeVTable](fcQSGRootNode_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = fcQSGRootNode_vtable_callback_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = fcQSGRootNode_vtable_callback_preprocess
  gen_qsgnode_types.QSGRootNode(h: fcQSGRootNode_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGRootNode_mvtbl = cQSGRootNodeVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGRootNode()[])](self.fcQSGRootNode_vtbl())
    inst[].h = nil
    inst[].owned = false,

  isSubtreeBlocked: fcQSGRootNode_method_callback_isSubtreeBlocked,
  preprocess: fcQSGRootNode_method_callback_preprocess,
)
proc create*(T: type gen_qsgnode_types.QSGRootNode,
    inst: VirtualQSGRootNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGRootNode_new(addr(cQSGRootNode_mvtbl), addr(inst[]))
  inst[].owned = true

proc setOpacity*(self: gen_qsgnode_types.QSGOpacityNode, opacity: float64): void =
  fcQSGOpacityNode_setOpacity(self.h, opacity)

proc opacity*(self: gen_qsgnode_types.QSGOpacityNode): float64 =
  fcQSGOpacityNode_opacity(self.h)

proc setCombinedOpacity*(self: gen_qsgnode_types.QSGOpacityNode, opacity: float64): void =
  fcQSGOpacityNode_setCombinedOpacity(self.h, opacity)

proc combinedOpacity*(self: gen_qsgnode_types.QSGOpacityNode): float64 =
  fcQSGOpacityNode_combinedOpacity(self.h)

proc isSubtreeBlocked*(self: gen_qsgnode_types.QSGOpacityNode): bool =
  fcQSGOpacityNode_isSubtreeBlocked(self.h)

type QSGOpacityNodeisSubtreeBlockedProc* = proc(self: QSGOpacityNode): bool {.raises: [], gcsafe.}
type QSGOpacityNodepreprocessProc* = proc(self: QSGOpacityNode): void {.raises: [], gcsafe.}

type QSGOpacityNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGOpacityNodeVTable
  isSubtreeBlocked*: QSGOpacityNodeisSubtreeBlockedProc
  preprocess*: QSGOpacityNodepreprocessProc

proc QSGOpacityNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGOpacityNode): bool =
  fcQSGOpacityNode_virtualbase_isSubtreeBlocked(self.h)

proc QSGOpacityNodepreprocess*(self: gen_qsgnode_types.QSGOpacityNode): void =
  fcQSGOpacityNode_virtualbase_preprocess(self.h)


proc fcQSGOpacityNode_vtable_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGOpacityNodeVTable](fcQSGOpacityNode_vdata(self))
  let self = QSGOpacityNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc fcQSGOpacityNode_vtable_callback_preprocess(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGOpacityNodeVTable](fcQSGOpacityNode_vdata(self))
  let self = QSGOpacityNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGOpacityNode* {.inheritable.} = ref object of QSGOpacityNode
  vtbl*: cQSGOpacityNodeVTable

method isSubtreeBlocked*(self: VirtualQSGOpacityNode): bool {.base.} =
  QSGOpacityNodeisSubtreeBlocked(self[])
method preprocess*(self: VirtualQSGOpacityNode): void {.base.} =
  QSGOpacityNodepreprocess(self[])

proc fcQSGOpacityNode_method_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGOpacityNode](fcQSGOpacityNode_vdata(self))
  var virtualReturn = inst.isSubtreeBlocked()
  virtualReturn

proc fcQSGOpacityNode_method_callback_preprocess(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGOpacityNode](fcQSGOpacityNode_vdata(self))
  inst.preprocess()


proc create*(T: type gen_qsgnode_types.QSGOpacityNode,
    vtbl: ref QSGOpacityNodeVTable = nil): gen_qsgnode_types.QSGOpacityNode =
  let vtbl = if vtbl == nil: new QSGOpacityNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGOpacityNodeVTable](fcQSGOpacityNode_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = fcQSGOpacityNode_vtable_callback_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = fcQSGOpacityNode_vtable_callback_preprocess
  gen_qsgnode_types.QSGOpacityNode(h: fcQSGOpacityNode_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGOpacityNode_mvtbl = cQSGOpacityNodeVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGOpacityNode()[])](self.fcQSGOpacityNode_vtbl())
    inst[].h = nil
    inst[].owned = false,

  isSubtreeBlocked: fcQSGOpacityNode_method_callback_isSubtreeBlocked,
  preprocess: fcQSGOpacityNode_method_callback_preprocess,
)
proc create*(T: type gen_qsgnode_types.QSGOpacityNode,
    inst: VirtualQSGOpacityNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGOpacityNode_new(addr(cQSGOpacityNode_mvtbl), addr(inst[]))
  inst[].owned = true

