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
{.compile("gen_qsgnode.cpp", cflags).}


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

proc fcQSGNode_new(): ptr cQSGNode {.importc: "QSGNode_new".}
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
proc fQSGNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGNode_virtualbase_isSubtreeBlocked".}
proc fcQSGNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGNode_override_virtual_isSubtreeBlocked".}
proc fQSGNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGNode_virtualbase_preprocess".}
proc fcQSGNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGNode_override_virtual_preprocess".}
proc fcQSGNode_delete(self: pointer) {.importc: "QSGNode_delete".}
proc fcQSGBasicGeometryNode_setGeometry(self: pointer, geometry: pointer): void {.importc: "QSGBasicGeometryNode_setGeometry".}
proc fcQSGBasicGeometryNode_geometry(self: pointer, ): pointer {.importc: "QSGBasicGeometryNode_geometry".}
proc fcQSGBasicGeometryNode_geometry2(self: pointer, ): pointer {.importc: "QSGBasicGeometryNode_geometry2".}
proc fcQSGBasicGeometryNode_matrix(self: pointer, ): pointer {.importc: "QSGBasicGeometryNode_matrix".}
proc fcQSGBasicGeometryNode_clipList(self: pointer, ): pointer {.importc: "QSGBasicGeometryNode_clipList".}
proc fcQSGBasicGeometryNode_setRendererMatrix(self: pointer, m: pointer): void {.importc: "QSGBasicGeometryNode_setRendererMatrix".}
proc fcQSGBasicGeometryNode_setRendererClipList(self: pointer, c: pointer): void {.importc: "QSGBasicGeometryNode_setRendererClipList".}
proc fcQSGBasicGeometryNode_delete(self: pointer) {.importc: "QSGBasicGeometryNode_delete".}
proc fcQSGGeometryNode_new(): ptr cQSGGeometryNode {.importc: "QSGGeometryNode_new".}
proc fcQSGGeometryNode_setMaterial(self: pointer, material: pointer): void {.importc: "QSGGeometryNode_setMaterial".}
proc fcQSGGeometryNode_material(self: pointer, ): pointer {.importc: "QSGGeometryNode_material".}
proc fcQSGGeometryNode_setOpaqueMaterial(self: pointer, material: pointer): void {.importc: "QSGGeometryNode_setOpaqueMaterial".}
proc fcQSGGeometryNode_opaqueMaterial(self: pointer, ): pointer {.importc: "QSGGeometryNode_opaqueMaterial".}
proc fcQSGGeometryNode_activeMaterial(self: pointer, ): pointer {.importc: "QSGGeometryNode_activeMaterial".}
proc fcQSGGeometryNode_setRenderOrder(self: pointer, order: cint): void {.importc: "QSGGeometryNode_setRenderOrder".}
proc fcQSGGeometryNode_renderOrder(self: pointer, ): cint {.importc: "QSGGeometryNode_renderOrder".}
proc fcQSGGeometryNode_setInheritedOpacity(self: pointer, opacity: float64): void {.importc: "QSGGeometryNode_setInheritedOpacity".}
proc fcQSGGeometryNode_inheritedOpacity(self: pointer, ): float64 {.importc: "QSGGeometryNode_inheritedOpacity".}
proc fQSGGeometryNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGGeometryNode_virtualbase_isSubtreeBlocked".}
proc fcQSGGeometryNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGGeometryNode_override_virtual_isSubtreeBlocked".}
proc fQSGGeometryNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGGeometryNode_virtualbase_preprocess".}
proc fcQSGGeometryNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGGeometryNode_override_virtual_preprocess".}
proc fcQSGGeometryNode_delete(self: pointer) {.importc: "QSGGeometryNode_delete".}
proc fcQSGClipNode_new(): ptr cQSGClipNode {.importc: "QSGClipNode_new".}
proc fcQSGClipNode_setIsRectangular(self: pointer, rectHint: bool): void {.importc: "QSGClipNode_setIsRectangular".}
proc fcQSGClipNode_isRectangular(self: pointer, ): bool {.importc: "QSGClipNode_isRectangular".}
proc fcQSGClipNode_setClipRect(self: pointer, clipRect: pointer): void {.importc: "QSGClipNode_setClipRect".}
proc fcQSGClipNode_clipRect(self: pointer, ): pointer {.importc: "QSGClipNode_clipRect".}
proc fQSGClipNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGClipNode_virtualbase_isSubtreeBlocked".}
proc fcQSGClipNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGClipNode_override_virtual_isSubtreeBlocked".}
proc fQSGClipNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGClipNode_virtualbase_preprocess".}
proc fcQSGClipNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGClipNode_override_virtual_preprocess".}
proc fcQSGClipNode_delete(self: pointer) {.importc: "QSGClipNode_delete".}
proc fcQSGTransformNode_new(): ptr cQSGTransformNode {.importc: "QSGTransformNode_new".}
proc fcQSGTransformNode_setMatrix(self: pointer, matrix: pointer): void {.importc: "QSGTransformNode_setMatrix".}
proc fcQSGTransformNode_matrix(self: pointer, ): pointer {.importc: "QSGTransformNode_matrix".}
proc fcQSGTransformNode_setCombinedMatrix(self: pointer, matrix: pointer): void {.importc: "QSGTransformNode_setCombinedMatrix".}
proc fcQSGTransformNode_combinedMatrix(self: pointer, ): pointer {.importc: "QSGTransformNode_combinedMatrix".}
proc fQSGTransformNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGTransformNode_virtualbase_isSubtreeBlocked".}
proc fcQSGTransformNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGTransformNode_override_virtual_isSubtreeBlocked".}
proc fQSGTransformNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGTransformNode_virtualbase_preprocess".}
proc fcQSGTransformNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGTransformNode_override_virtual_preprocess".}
proc fcQSGTransformNode_delete(self: pointer) {.importc: "QSGTransformNode_delete".}
proc fcQSGRootNode_new(): ptr cQSGRootNode {.importc: "QSGRootNode_new".}
proc fQSGRootNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGRootNode_virtualbase_isSubtreeBlocked".}
proc fcQSGRootNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGRootNode_override_virtual_isSubtreeBlocked".}
proc fQSGRootNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGRootNode_virtualbase_preprocess".}
proc fcQSGRootNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGRootNode_override_virtual_preprocess".}
proc fcQSGRootNode_delete(self: pointer) {.importc: "QSGRootNode_delete".}
proc fcQSGOpacityNode_new(): ptr cQSGOpacityNode {.importc: "QSGOpacityNode_new".}
proc fcQSGOpacityNode_setOpacity(self: pointer, opacity: float64): void {.importc: "QSGOpacityNode_setOpacity".}
proc fcQSGOpacityNode_opacity(self: pointer, ): float64 {.importc: "QSGOpacityNode_opacity".}
proc fcQSGOpacityNode_setCombinedOpacity(self: pointer, opacity: float64): void {.importc: "QSGOpacityNode_setCombinedOpacity".}
proc fcQSGOpacityNode_combinedOpacity(self: pointer, ): float64 {.importc: "QSGOpacityNode_combinedOpacity".}
proc fcQSGOpacityNode_isSubtreeBlocked(self: pointer, ): bool {.importc: "QSGOpacityNode_isSubtreeBlocked".}
proc fQSGOpacityNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGOpacityNode_virtualbase_isSubtreeBlocked".}
proc fcQSGOpacityNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGOpacityNode_override_virtual_isSubtreeBlocked".}
proc fQSGOpacityNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGOpacityNode_virtualbase_preprocess".}
proc fcQSGOpacityNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGOpacityNode_override_virtual_preprocess".}
proc fcQSGOpacityNode_delete(self: pointer) {.importc: "QSGOpacityNode_delete".}
proc fcQSGNodeVisitor_delete(self: pointer) {.importc: "QSGNodeVisitor_delete".}


func init*(T: type gen_qsgnode_types.QSGNode, h: ptr cQSGNode): gen_qsgnode_types.QSGNode =
  T(h: h)
proc create*(T: type gen_qsgnode_types.QSGNode, ): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode.init(fcQSGNode_new())

proc parent*(self: gen_qsgnode_types.QSGNode, ): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_parent(self.h))

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
  gen_qsgnode_types.QSGNode(h: fcQSGNode_childAtIndex(self.h, i))

proc firstChild*(self: gen_qsgnode_types.QSGNode, ): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_firstChild(self.h))

proc lastChild*(self: gen_qsgnode_types.QSGNode, ): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_lastChild(self.h))

proc nextSibling*(self: gen_qsgnode_types.QSGNode, ): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_nextSibling(self.h))

proc previousSibling*(self: gen_qsgnode_types.QSGNode, ): gen_qsgnode_types.QSGNode =
  gen_qsgnode_types.QSGNode(h: fcQSGNode_previousSibling(self.h))

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

proc QSGNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGNode, ): bool =
  fQSGNode_virtualbase_isSubtreeBlocked(self.h)

type QSGNodeisSubtreeBlockedProc* = proc(): bool
proc onisSubtreeBlocked*(self: gen_qsgnode_types.QSGNode, slot: QSGNodeisSubtreeBlockedProc) =
  # TODO check subclass
  var tmp = new QSGNodeisSubtreeBlockedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGNode_isSubtreeBlocked(self: ptr cQSGNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGNode_isSubtreeBlocked ".} =
  var nimfunc = cast[ptr QSGNodeisSubtreeBlockedProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGNodepreprocess*(self: gen_qsgnode_types.QSGNode, ): void =
  fQSGNode_virtualbase_preprocess(self.h)

type QSGNodepreprocessProc* = proc(): void
proc onpreprocess*(self: gen_qsgnode_types.QSGNode, slot: QSGNodepreprocessProc) =
  # TODO check subclass
  var tmp = new QSGNodepreprocessProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGNode_preprocess(self: ptr cQSGNode, slot: int): void {.exportc: "miqt_exec_callback_QSGNode_preprocess ".} =
  var nimfunc = cast[ptr QSGNodepreprocessProc](cast[pointer](slot))

  nimfunc[]()
proc delete*(self: gen_qsgnode_types.QSGNode) =
  fcQSGNode_delete(self.h)

func init*(T: type gen_qsgnode_types.QSGBasicGeometryNode, h: ptr cQSGBasicGeometryNode): gen_qsgnode_types.QSGBasicGeometryNode =
  T(h: h)
proc setGeometry*(self: gen_qsgnode_types.QSGBasicGeometryNode, geometry: gen_qsggeometry_types.QSGGeometry): void =
  fcQSGBasicGeometryNode_setGeometry(self.h, geometry.h)

proc geometry*(self: gen_qsgnode_types.QSGBasicGeometryNode, ): gen_qsggeometry_types.QSGGeometry =
  gen_qsggeometry_types.QSGGeometry(h: fcQSGBasicGeometryNode_geometry(self.h))

proc geometry2*(self: gen_qsgnode_types.QSGBasicGeometryNode, ): gen_qsggeometry_types.QSGGeometry =
  gen_qsggeometry_types.QSGGeometry(h: fcQSGBasicGeometryNode_geometry2(self.h))

proc matrix*(self: gen_qsgnode_types.QSGBasicGeometryNode, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGBasicGeometryNode_matrix(self.h))

proc clipList*(self: gen_qsgnode_types.QSGBasicGeometryNode, ): gen_qsgnode_types.QSGClipNode =
  gen_qsgnode_types.QSGClipNode(h: fcQSGBasicGeometryNode_clipList(self.h))

proc setRendererMatrix*(self: gen_qsgnode_types.QSGBasicGeometryNode, m: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQSGBasicGeometryNode_setRendererMatrix(self.h, m.h)

proc setRendererClipList*(self: gen_qsgnode_types.QSGBasicGeometryNode, c: gen_qsgnode_types.QSGClipNode): void =
  fcQSGBasicGeometryNode_setRendererClipList(self.h, c.h)

proc delete*(self: gen_qsgnode_types.QSGBasicGeometryNode) =
  fcQSGBasicGeometryNode_delete(self.h)

func init*(T: type gen_qsgnode_types.QSGGeometryNode, h: ptr cQSGGeometryNode): gen_qsgnode_types.QSGGeometryNode =
  T(h: h)
proc create*(T: type gen_qsgnode_types.QSGGeometryNode, ): gen_qsgnode_types.QSGGeometryNode =
  gen_qsgnode_types.QSGGeometryNode.init(fcQSGGeometryNode_new())

proc setMaterial*(self: gen_qsgnode_types.QSGGeometryNode, material: gen_qsgmaterial_types.QSGMaterial): void =
  fcQSGGeometryNode_setMaterial(self.h, material.h)

proc material*(self: gen_qsgnode_types.QSGGeometryNode, ): gen_qsgmaterial_types.QSGMaterial =
  gen_qsgmaterial_types.QSGMaterial(h: fcQSGGeometryNode_material(self.h))

proc setOpaqueMaterial*(self: gen_qsgnode_types.QSGGeometryNode, material: gen_qsgmaterial_types.QSGMaterial): void =
  fcQSGGeometryNode_setOpaqueMaterial(self.h, material.h)

proc opaqueMaterial*(self: gen_qsgnode_types.QSGGeometryNode, ): gen_qsgmaterial_types.QSGMaterial =
  gen_qsgmaterial_types.QSGMaterial(h: fcQSGGeometryNode_opaqueMaterial(self.h))

proc activeMaterial*(self: gen_qsgnode_types.QSGGeometryNode, ): gen_qsgmaterial_types.QSGMaterial =
  gen_qsgmaterial_types.QSGMaterial(h: fcQSGGeometryNode_activeMaterial(self.h))

proc setRenderOrder*(self: gen_qsgnode_types.QSGGeometryNode, order: cint): void =
  fcQSGGeometryNode_setRenderOrder(self.h, order)

proc renderOrder*(self: gen_qsgnode_types.QSGGeometryNode, ): cint =
  fcQSGGeometryNode_renderOrder(self.h)

proc setInheritedOpacity*(self: gen_qsgnode_types.QSGGeometryNode, opacity: float64): void =
  fcQSGGeometryNode_setInheritedOpacity(self.h, opacity)

proc inheritedOpacity*(self: gen_qsgnode_types.QSGGeometryNode, ): float64 =
  fcQSGGeometryNode_inheritedOpacity(self.h)

proc QSGGeometryNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGGeometryNode, ): bool =
  fQSGGeometryNode_virtualbase_isSubtreeBlocked(self.h)

type QSGGeometryNodeisSubtreeBlockedProc* = proc(): bool
proc onisSubtreeBlocked*(self: gen_qsgnode_types.QSGGeometryNode, slot: QSGGeometryNodeisSubtreeBlockedProc) =
  # TODO check subclass
  var tmp = new QSGGeometryNodeisSubtreeBlockedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGGeometryNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGGeometryNode_isSubtreeBlocked(self: ptr cQSGGeometryNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGGeometryNode_isSubtreeBlocked ".} =
  var nimfunc = cast[ptr QSGGeometryNodeisSubtreeBlockedProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGGeometryNodepreprocess*(self: gen_qsgnode_types.QSGGeometryNode, ): void =
  fQSGGeometryNode_virtualbase_preprocess(self.h)

type QSGGeometryNodepreprocessProc* = proc(): void
proc onpreprocess*(self: gen_qsgnode_types.QSGGeometryNode, slot: QSGGeometryNodepreprocessProc) =
  # TODO check subclass
  var tmp = new QSGGeometryNodepreprocessProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGGeometryNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGGeometryNode_preprocess(self: ptr cQSGGeometryNode, slot: int): void {.exportc: "miqt_exec_callback_QSGGeometryNode_preprocess ".} =
  var nimfunc = cast[ptr QSGGeometryNodepreprocessProc](cast[pointer](slot))

  nimfunc[]()
proc delete*(self: gen_qsgnode_types.QSGGeometryNode) =
  fcQSGGeometryNode_delete(self.h)

func init*(T: type gen_qsgnode_types.QSGClipNode, h: ptr cQSGClipNode): gen_qsgnode_types.QSGClipNode =
  T(h: h)
proc create*(T: type gen_qsgnode_types.QSGClipNode, ): gen_qsgnode_types.QSGClipNode =
  gen_qsgnode_types.QSGClipNode.init(fcQSGClipNode_new())

proc setIsRectangular*(self: gen_qsgnode_types.QSGClipNode, rectHint: bool): void =
  fcQSGClipNode_setIsRectangular(self.h, rectHint)

proc isRectangular*(self: gen_qsgnode_types.QSGClipNode, ): bool =
  fcQSGClipNode_isRectangular(self.h)

proc setClipRect*(self: gen_qsgnode_types.QSGClipNode, clipRect: gen_qrect_types.QRectF): void =
  fcQSGClipNode_setClipRect(self.h, clipRect.h)

proc clipRect*(self: gen_qsgnode_types.QSGClipNode, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGClipNode_clipRect(self.h))

proc QSGClipNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGClipNode, ): bool =
  fQSGClipNode_virtualbase_isSubtreeBlocked(self.h)

type QSGClipNodeisSubtreeBlockedProc* = proc(): bool
proc onisSubtreeBlocked*(self: gen_qsgnode_types.QSGClipNode, slot: QSGClipNodeisSubtreeBlockedProc) =
  # TODO check subclass
  var tmp = new QSGClipNodeisSubtreeBlockedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGClipNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGClipNode_isSubtreeBlocked(self: ptr cQSGClipNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGClipNode_isSubtreeBlocked ".} =
  var nimfunc = cast[ptr QSGClipNodeisSubtreeBlockedProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGClipNodepreprocess*(self: gen_qsgnode_types.QSGClipNode, ): void =
  fQSGClipNode_virtualbase_preprocess(self.h)

type QSGClipNodepreprocessProc* = proc(): void
proc onpreprocess*(self: gen_qsgnode_types.QSGClipNode, slot: QSGClipNodepreprocessProc) =
  # TODO check subclass
  var tmp = new QSGClipNodepreprocessProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGClipNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGClipNode_preprocess(self: ptr cQSGClipNode, slot: int): void {.exportc: "miqt_exec_callback_QSGClipNode_preprocess ".} =
  var nimfunc = cast[ptr QSGClipNodepreprocessProc](cast[pointer](slot))

  nimfunc[]()
proc delete*(self: gen_qsgnode_types.QSGClipNode) =
  fcQSGClipNode_delete(self.h)

func init*(T: type gen_qsgnode_types.QSGTransformNode, h: ptr cQSGTransformNode): gen_qsgnode_types.QSGTransformNode =
  T(h: h)
proc create*(T: type gen_qsgnode_types.QSGTransformNode, ): gen_qsgnode_types.QSGTransformNode =
  gen_qsgnode_types.QSGTransformNode.init(fcQSGTransformNode_new())

proc setMatrix*(self: gen_qsgnode_types.QSGTransformNode, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQSGTransformNode_setMatrix(self.h, matrix.h)

proc matrix*(self: gen_qsgnode_types.QSGTransformNode, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGTransformNode_matrix(self.h))

proc setCombinedMatrix*(self: gen_qsgnode_types.QSGTransformNode, matrix: gen_qmatrix4x4_types.QMatrix4x4): void =
  fcQSGTransformNode_setCombinedMatrix(self.h, matrix.h)

proc combinedMatrix*(self: gen_qsgnode_types.QSGTransformNode, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGTransformNode_combinedMatrix(self.h))

proc QSGTransformNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGTransformNode, ): bool =
  fQSGTransformNode_virtualbase_isSubtreeBlocked(self.h)

type QSGTransformNodeisSubtreeBlockedProc* = proc(): bool
proc onisSubtreeBlocked*(self: gen_qsgnode_types.QSGTransformNode, slot: QSGTransformNodeisSubtreeBlockedProc) =
  # TODO check subclass
  var tmp = new QSGTransformNodeisSubtreeBlockedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTransformNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTransformNode_isSubtreeBlocked(self: ptr cQSGTransformNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGTransformNode_isSubtreeBlocked ".} =
  var nimfunc = cast[ptr QSGTransformNodeisSubtreeBlockedProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGTransformNodepreprocess*(self: gen_qsgnode_types.QSGTransformNode, ): void =
  fQSGTransformNode_virtualbase_preprocess(self.h)

type QSGTransformNodepreprocessProc* = proc(): void
proc onpreprocess*(self: gen_qsgnode_types.QSGTransformNode, slot: QSGTransformNodepreprocessProc) =
  # TODO check subclass
  var tmp = new QSGTransformNodepreprocessProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTransformNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTransformNode_preprocess(self: ptr cQSGTransformNode, slot: int): void {.exportc: "miqt_exec_callback_QSGTransformNode_preprocess ".} =
  var nimfunc = cast[ptr QSGTransformNodepreprocessProc](cast[pointer](slot))

  nimfunc[]()
proc delete*(self: gen_qsgnode_types.QSGTransformNode) =
  fcQSGTransformNode_delete(self.h)

func init*(T: type gen_qsgnode_types.QSGRootNode, h: ptr cQSGRootNode): gen_qsgnode_types.QSGRootNode =
  T(h: h)
proc create*(T: type gen_qsgnode_types.QSGRootNode, ): gen_qsgnode_types.QSGRootNode =
  gen_qsgnode_types.QSGRootNode.init(fcQSGRootNode_new())

proc QSGRootNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGRootNode, ): bool =
  fQSGRootNode_virtualbase_isSubtreeBlocked(self.h)

type QSGRootNodeisSubtreeBlockedProc* = proc(): bool
proc onisSubtreeBlocked*(self: gen_qsgnode_types.QSGRootNode, slot: QSGRootNodeisSubtreeBlockedProc) =
  # TODO check subclass
  var tmp = new QSGRootNodeisSubtreeBlockedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRootNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRootNode_isSubtreeBlocked(self: ptr cQSGRootNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGRootNode_isSubtreeBlocked ".} =
  var nimfunc = cast[ptr QSGRootNodeisSubtreeBlockedProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGRootNodepreprocess*(self: gen_qsgnode_types.QSGRootNode, ): void =
  fQSGRootNode_virtualbase_preprocess(self.h)

type QSGRootNodepreprocessProc* = proc(): void
proc onpreprocess*(self: gen_qsgnode_types.QSGRootNode, slot: QSGRootNodepreprocessProc) =
  # TODO check subclass
  var tmp = new QSGRootNodepreprocessProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGRootNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGRootNode_preprocess(self: ptr cQSGRootNode, slot: int): void {.exportc: "miqt_exec_callback_QSGRootNode_preprocess ".} =
  var nimfunc = cast[ptr QSGRootNodepreprocessProc](cast[pointer](slot))

  nimfunc[]()
proc delete*(self: gen_qsgnode_types.QSGRootNode) =
  fcQSGRootNode_delete(self.h)

func init*(T: type gen_qsgnode_types.QSGOpacityNode, h: ptr cQSGOpacityNode): gen_qsgnode_types.QSGOpacityNode =
  T(h: h)
proc create*(T: type gen_qsgnode_types.QSGOpacityNode, ): gen_qsgnode_types.QSGOpacityNode =
  gen_qsgnode_types.QSGOpacityNode.init(fcQSGOpacityNode_new())

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

proc QSGOpacityNodeisSubtreeBlocked*(self: gen_qsgnode_types.QSGOpacityNode, ): bool =
  fQSGOpacityNode_virtualbase_isSubtreeBlocked(self.h)

type QSGOpacityNodeisSubtreeBlockedProc* = proc(): bool
proc onisSubtreeBlocked*(self: gen_qsgnode_types.QSGOpacityNode, slot: QSGOpacityNodeisSubtreeBlockedProc) =
  # TODO check subclass
  var tmp = new QSGOpacityNodeisSubtreeBlockedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGOpacityNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGOpacityNode_isSubtreeBlocked(self: ptr cQSGOpacityNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGOpacityNode_isSubtreeBlocked ".} =
  var nimfunc = cast[ptr QSGOpacityNodeisSubtreeBlockedProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGOpacityNodepreprocess*(self: gen_qsgnode_types.QSGOpacityNode, ): void =
  fQSGOpacityNode_virtualbase_preprocess(self.h)

type QSGOpacityNodepreprocessProc* = proc(): void
proc onpreprocess*(self: gen_qsgnode_types.QSGOpacityNode, slot: QSGOpacityNodepreprocessProc) =
  # TODO check subclass
  var tmp = new QSGOpacityNodepreprocessProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGOpacityNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGOpacityNode_preprocess(self: ptr cQSGOpacityNode, slot: int): void {.exportc: "miqt_exec_callback_QSGOpacityNode_preprocess ".} =
  var nimfunc = cast[ptr QSGOpacityNodepreprocessProc](cast[pointer](slot))

  nimfunc[]()
proc delete*(self: gen_qsgnode_types.QSGOpacityNode) =
  fcQSGOpacityNode_delete(self.h)

func init*(T: type gen_qsgnode_types.QSGNodeVisitor, h: ptr cQSGNodeVisitor): gen_qsgnode_types.QSGNodeVisitor =
  T(h: h)
proc delete*(self: gen_qsgnode_types.QSGNodeVisitor) =
  fcQSGNodeVisitor_delete(self.h)
