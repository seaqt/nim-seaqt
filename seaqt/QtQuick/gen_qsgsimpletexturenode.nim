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
{.compile("gen_qsgsimpletexturenode.cpp", cflags).}


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

proc fcQSGSimpleTextureNode_new(): ptr cQSGSimpleTextureNode {.importc: "QSGSimpleTextureNode_new".}
proc fcQSGSimpleTextureNode_setRect(self: pointer, rect: pointer): void {.importc: "QSGSimpleTextureNode_setRect".}
proc fcQSGSimpleTextureNode_setRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QSGSimpleTextureNode_setRect2".}
proc fcQSGSimpleTextureNode_rect(self: pointer, ): pointer {.importc: "QSGSimpleTextureNode_rect".}
proc fcQSGSimpleTextureNode_setSourceRect(self: pointer, r: pointer): void {.importc: "QSGSimpleTextureNode_setSourceRect".}
proc fcQSGSimpleTextureNode_setSourceRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QSGSimpleTextureNode_setSourceRect2".}
proc fcQSGSimpleTextureNode_sourceRect(self: pointer, ): pointer {.importc: "QSGSimpleTextureNode_sourceRect".}
proc fcQSGSimpleTextureNode_setTexture(self: pointer, texture: pointer): void {.importc: "QSGSimpleTextureNode_setTexture".}
proc fcQSGSimpleTextureNode_texture(self: pointer, ): pointer {.importc: "QSGSimpleTextureNode_texture".}
proc fcQSGSimpleTextureNode_setFiltering(self: pointer, filtering: cint): void {.importc: "QSGSimpleTextureNode_setFiltering".}
proc fcQSGSimpleTextureNode_filtering(self: pointer, ): cint {.importc: "QSGSimpleTextureNode_filtering".}
proc fcQSGSimpleTextureNode_setTextureCoordinatesTransform(self: pointer, mode: cint): void {.importc: "QSGSimpleTextureNode_setTextureCoordinatesTransform".}
proc fcQSGSimpleTextureNode_textureCoordinatesTransform(self: pointer, ): cint {.importc: "QSGSimpleTextureNode_textureCoordinatesTransform".}
proc fcQSGSimpleTextureNode_setOwnsTexture(self: pointer, owns: bool): void {.importc: "QSGSimpleTextureNode_setOwnsTexture".}
proc fcQSGSimpleTextureNode_ownsTexture(self: pointer, ): bool {.importc: "QSGSimpleTextureNode_ownsTexture".}
proc fQSGSimpleTextureNode_virtualbase_isSubtreeBlocked(self: pointer, ): bool{.importc: "QSGSimpleTextureNode_virtualbase_isSubtreeBlocked".}
proc fcQSGSimpleTextureNode_override_virtual_isSubtreeBlocked(self: pointer, slot: int) {.importc: "QSGSimpleTextureNode_override_virtual_isSubtreeBlocked".}
proc fQSGSimpleTextureNode_virtualbase_preprocess(self: pointer, ): void{.importc: "QSGSimpleTextureNode_virtualbase_preprocess".}
proc fcQSGSimpleTextureNode_override_virtual_preprocess(self: pointer, slot: int) {.importc: "QSGSimpleTextureNode_override_virtual_preprocess".}
proc fcQSGSimpleTextureNode_delete(self: pointer) {.importc: "QSGSimpleTextureNode_delete".}


func init*(T: type gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, h: ptr cQSGSimpleTextureNode): gen_qsgsimpletexturenode_types.QSGSimpleTextureNode =
  T(h: h)
proc create*(T: type gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): gen_qsgsimpletexturenode_types.QSGSimpleTextureNode =
  gen_qsgsimpletexturenode_types.QSGSimpleTextureNode.init(fcQSGSimpleTextureNode_new())

proc setRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, rect: gen_qrect_types.QRectF): void =
  fcQSGSimpleTextureNode_setRect(self.h, rect.h)

proc setRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, x: float64, y: float64, w: float64, h: float64): void =
  fcQSGSimpleTextureNode_setRect2(self.h, x, y, w, h)

proc rect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGSimpleTextureNode_rect(self.h))

proc setSourceRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, r: gen_qrect_types.QRectF): void =
  fcQSGSimpleTextureNode_setSourceRect(self.h, r.h)

proc setSourceRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, x: float64, y: float64, w: float64, h: float64): void =
  fcQSGSimpleTextureNode_setSourceRect2(self.h, x, y, w, h)

proc sourceRect*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGSimpleTextureNode_sourceRect(self.h))

proc setTexture*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, texture: gen_qsgtexture_types.QSGTexture): void =
  fcQSGSimpleTextureNode_setTexture(self.h, texture.h)

proc texture*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGSimpleTextureNode_texture(self.h))

proc setFiltering*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, filtering: cint): void =
  fcQSGSimpleTextureNode_setFiltering(self.h, cint(filtering))

proc filtering*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): cint =
  cint(fcQSGSimpleTextureNode_filtering(self.h))

proc setTextureCoordinatesTransform*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, mode: cint): void =
  fcQSGSimpleTextureNode_setTextureCoordinatesTransform(self.h, cint(mode))

proc textureCoordinatesTransform*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): cint =
  cint(fcQSGSimpleTextureNode_textureCoordinatesTransform(self.h))

proc setOwnsTexture*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, owns: bool): void =
  fcQSGSimpleTextureNode_setOwnsTexture(self.h, owns)

proc ownsTexture*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): bool =
  fcQSGSimpleTextureNode_ownsTexture(self.h)

proc QSGSimpleTextureNodeisSubtreeBlocked*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): bool =
  fQSGSimpleTextureNode_virtualbase_isSubtreeBlocked(self.h)

type QSGSimpleTextureNodeisSubtreeBlockedProc* = proc(): bool
proc onisSubtreeBlocked*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, slot: QSGSimpleTextureNodeisSubtreeBlockedProc) =
  # TODO check subclass
  var tmp = new QSGSimpleTextureNodeisSubtreeBlockedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGSimpleTextureNode_override_virtual_isSubtreeBlocked(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGSimpleTextureNode_isSubtreeBlocked(self: ptr cQSGSimpleTextureNode, slot: int): bool {.exportc: "miqt_exec_callback_QSGSimpleTextureNode_isSubtreeBlocked ".} =
  var nimfunc = cast[ptr QSGSimpleTextureNodeisSubtreeBlockedProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGSimpleTextureNodepreprocess*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, ): void =
  fQSGSimpleTextureNode_virtualbase_preprocess(self.h)

type QSGSimpleTextureNodepreprocessProc* = proc(): void
proc onpreprocess*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode, slot: QSGSimpleTextureNodepreprocessProc) =
  # TODO check subclass
  var tmp = new QSGSimpleTextureNodepreprocessProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGSimpleTextureNode_override_virtual_preprocess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGSimpleTextureNode_preprocess(self: ptr cQSGSimpleTextureNode, slot: int): void {.exportc: "miqt_exec_callback_QSGSimpleTextureNode_preprocess ".} =
  var nimfunc = cast[ptr QSGSimpleTextureNodepreprocessProc](cast[pointer](slot))

  nimfunc[]()
proc delete*(self: gen_qsgsimpletexturenode_types.QSGSimpleTextureNode) =
  fcQSGSimpleTextureNode_delete(self.h)
