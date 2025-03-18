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


{.compile("gen_qsgsimpletexturenode.cpp", QtQuickCFlags).}


type QSGSimpleTextureNodeTextureCoordinatesTransformFlagEnum* = distinct cint
template NoTransform*(_: type QSGSimpleTextureNodeTextureCoordinatesTransformFlagEnum): untyped = 0
template MirrorHorizontally*(_: type QSGSimpleTextureNodeTextureCoordinatesTransformFlagEnum): untyped = 1
template MirrorVertically*(_: type QSGSimpleTextureNodeTextureCoordinatesTransformFlagEnum): untyped = 2


import ./gen_qsgsimpletexturenode_types
export gen_qsgsimpletexturenode_types

import
  ../QtCore/gen_qrect_types,
  ./gen_qsgnode,
  ./gen_qsgtexture_types
export
  gen_qrect_types,
  gen_qsgnode,
  gen_qsgtexture_types

type cQSGSimpleTextureNode*{.exportc: "QSGSimpleTextureNode", incompleteStruct.} = object

proc fcQSGSimpleTextureNode_setRect(self: pointer, rect: pointer): void {.importc: "QSGSimpleTextureNode_setRect".}
proc fcQSGSimpleTextureNode_setRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QSGSimpleTextureNode_setRect2".}
proc fcQSGSimpleTextureNode_rect(self: pointer): pointer {.importc: "QSGSimpleTextureNode_rect".}
proc fcQSGSimpleTextureNode_setSourceRect(self: pointer, r: pointer): void {.importc: "QSGSimpleTextureNode_setSourceRect".}
proc fcQSGSimpleTextureNode_setSourceRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QSGSimpleTextureNode_setSourceRect2".}
proc fcQSGSimpleTextureNode_sourceRect(self: pointer): pointer {.importc: "QSGSimpleTextureNode_sourceRect".}
proc fcQSGSimpleTextureNode_setTexture(self: pointer, texture: pointer): void {.importc: "QSGSimpleTextureNode_setTexture".}
proc fcQSGSimpleTextureNode_texture(self: pointer): pointer {.importc: "QSGSimpleTextureNode_texture".}
proc fcQSGSimpleTextureNode_setFiltering(self: pointer, filtering: cint): void {.importc: "QSGSimpleTextureNode_setFiltering".}
proc fcQSGSimpleTextureNode_filtering(self: pointer): cint {.importc: "QSGSimpleTextureNode_filtering".}
proc fcQSGSimpleTextureNode_setTextureCoordinatesTransform(self: pointer, mode: cint): void {.importc: "QSGSimpleTextureNode_setTextureCoordinatesTransform".}
proc fcQSGSimpleTextureNode_textureCoordinatesTransform(self: pointer): cint {.importc: "QSGSimpleTextureNode_textureCoordinatesTransform".}
proc fcQSGSimpleTextureNode_setOwnsTexture(self: pointer, owns: bool): void {.importc: "QSGSimpleTextureNode_setOwnsTexture".}
proc fcQSGSimpleTextureNode_ownsTexture(self: pointer): bool {.importc: "QSGSimpleTextureNode_ownsTexture".}
proc fcQSGSimpleTextureNode_vtbl(self: pointer): pointer {.importc: "QSGSimpleTextureNode_vtbl".}
proc fcQSGSimpleTextureNode_vdata(self: pointer): pointer {.importc: "QSGSimpleTextureNode_vdata".}

type cQSGSimpleTextureNodeVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  isSubtreeBlocked*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  preprocess*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSGSimpleTextureNode_virtualbase_isSubtreeBlocked(self: pointer): bool {.importc: "QSGSimpleTextureNode_virtualbase_isSubtreeBlocked".}
proc fcQSGSimpleTextureNode_virtualbase_preprocess(self: pointer): void {.importc: "QSGSimpleTextureNode_virtualbase_preprocess".}
proc fcQSGSimpleTextureNode_new(vtbl, vdata: pointer): ptr cQSGSimpleTextureNode {.importc: "QSGSimpleTextureNode_new".}

proc setRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, rect: gen_qrect_types.QRectF): void =
  fcQSGSimpleTextureNode_setRect(self.h, rect.h)

proc setRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, x: float64, y: float64, w: float64, h: float64): void =
  fcQSGSimpleTextureNode_setRect2(self.h, x, y, w, h)

proc rect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGSimpleTextureNode_rect(self.h), owned: true)

proc setSourceRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, r: gen_qrect_types.QRectF): void =
  fcQSGSimpleTextureNode_setSourceRect(self.h, r.h)

proc setSourceRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, x: float64, y: float64, w: float64, h: float64): void =
  fcQSGSimpleTextureNode_setSourceRect2(self.h, x, y, w, h)

proc sourceRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGSimpleTextureNode_sourceRect(self.h), owned: true)

proc setTexture*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, texture: gen_qsgtexture_types.QSGTexture): void =
  fcQSGSimpleTextureNode_setTexture(self.h, texture.h)

proc texture*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGSimpleTextureNode_texture(self.h), owned: false)

proc setFiltering*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, filtering: cint): void =
  fcQSGSimpleTextureNode_setFiltering(self.h, cint(filtering))

proc filtering*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode): cint =
  cint(fcQSGSimpleTextureNode_filtering(self.h))

proc setTextureCoordinatesTransform*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, mode: cint): void =
  fcQSGSimpleTextureNode_setTextureCoordinatesTransform(self.h, cint(mode))

proc textureCoordinatesTransform*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode): cint =
  cint(fcQSGSimpleTextureNode_textureCoordinatesTransform(self.h))

proc setOwnsTexture*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, owns: bool): void =
  fcQSGSimpleTextureNode_setOwnsTexture(self.h, owns)

proc ownsTexture*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode): bool =
  fcQSGSimpleTextureNode_ownsTexture(self.h)

type QSGSimpleTextureNodeisSubtreeBlockedProc* = proc(self: QSGSimpleTextureNode): bool {.raises: [], gcsafe.}
type QSGSimpleTextureNodepreprocessProc* = proc(self: QSGSimpleTextureNode): void {.raises: [], gcsafe.}

type QSGSimpleTextureNodeVTable* {.inheritable, pure.} = object
  vtbl: cQSGSimpleTextureNodeVTable
  isSubtreeBlocked*: QSGSimpleTextureNodeisSubtreeBlockedProc
  preprocess*: QSGSimpleTextureNodepreprocessProc

proc QSGSimpleTextureNodeisSubtreeBlocked*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode): bool =
  fcQSGSimpleTextureNode_virtualbase_isSubtreeBlocked(self.h)

proc QSGSimpleTextureNodepreprocess*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode): void =
  fcQSGSimpleTextureNode_virtualbase_preprocess(self.h)


proc fcQSGSimpleTextureNode_vtable_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGSimpleTextureNodeVTable](fcQSGSimpleTextureNode_vdata(self))
  let self = QSGSimpleTextureNode(h: self)
  var virtualReturn = vtbl[].isSubtreeBlocked(self)
  virtualReturn

proc fcQSGSimpleTextureNode_vtable_callback_preprocess(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGSimpleTextureNodeVTable](fcQSGSimpleTextureNode_vdata(self))
  let self = QSGSimpleTextureNode(h: self)
  vtbl[].preprocess(self)

type VirtualQSGSimpleTextureNode* {.inheritable.} = ref object of QSGSimpleTextureNode
  vtbl*: cQSGSimpleTextureNodeVTable

method isSubtreeBlocked*(self: VirtualQSGSimpleTextureNode): bool {.base.} =
  QSGSimpleTextureNodeisSubtreeBlocked(self[])
method preprocess*(self: VirtualQSGSimpleTextureNode): void {.base.} =
  QSGSimpleTextureNodepreprocess(self[])

proc fcQSGSimpleTextureNode_method_callback_isSubtreeBlocked(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGSimpleTextureNode](fcQSGSimpleTextureNode_vdata(self))
  var virtualReturn = inst.isSubtreeBlocked()
  virtualReturn

proc fcQSGSimpleTextureNode_method_callback_preprocess(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSGSimpleTextureNode](fcQSGSimpleTextureNode_vdata(self))
  inst.preprocess()


proc create*(T: type gen_qsgsimpletexturenode_types.QSGSimpleTextureNode,
    vtbl: ref QSGSimpleTextureNodeVTable = nil): gen_qsgsimpletexturenode_types.QSGSimpleTextureNode =
  let vtbl = if vtbl == nil: new QSGSimpleTextureNodeVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGSimpleTextureNodeVTable](fcQSGSimpleTextureNode_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].isSubtreeBlocked):
    vtbl[].vtbl.isSubtreeBlocked = fcQSGSimpleTextureNode_vtable_callback_isSubtreeBlocked
  if not isNil(vtbl[].preprocess):
    vtbl[].vtbl.preprocess = fcQSGSimpleTextureNode_vtable_callback_preprocess
  gen_qsgsimpletexturenode_types.QSGSimpleTextureNode(h: fcQSGSimpleTextureNode_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGSimpleTextureNode_mvtbl = cQSGSimpleTextureNodeVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGSimpleTextureNode()[])](self.fcQSGSimpleTextureNode_vtbl())
    inst[].h = nil
    inst[].owned = false,

  isSubtreeBlocked: fcQSGSimpleTextureNode_method_callback_isSubtreeBlocked,
  preprocess: fcQSGSimpleTextureNode_method_callback_preprocess,
)
proc create*(T: type gen_qsgsimpletexturenode_types.QSGSimpleTextureNode,
    inst: VirtualQSGSimpleTextureNode) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGSimpleTextureNode_new(addr(cQSGSimpleTextureNode_mvtbl), addr(inst[]))
  inst[].owned = true

