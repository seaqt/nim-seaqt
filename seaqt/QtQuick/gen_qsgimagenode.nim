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

const cflags = gorge("pkg-config --cflags Qt5Quick")  & " -fPIC"
{.compile("gen_qsgimagenode.cpp", cflags).}


type QSGImageNodeTextureCoordinatesTransformFlagEnum* = distinct cint
template NoTransform*(_: type QSGImageNodeTextureCoordinatesTransformFlagEnum): untyped = 0
template MirrorHorizontally*(_: type QSGImageNodeTextureCoordinatesTransformFlagEnum): untyped = 1
template MirrorVertically*(_: type QSGImageNodeTextureCoordinatesTransformFlagEnum): untyped = 2


import ./gen_qsgimagenode_types
export gen_qsgimagenode_types

import
  ../QtCore/gen_qrect_types,
  ./gen_qsggeometry_types,
  ./gen_qsgnode,
  ./gen_qsgtexture_types
export
  gen_qrect_types,
  gen_qsggeometry_types,
  gen_qsgnode,
  gen_qsgtexture_types

type cQSGImageNode*{.exportc: "QSGImageNode", incompleteStruct.} = object

proc fcQSGImageNode_setRect(self: pointer, rect: pointer): void {.importc: "QSGImageNode_setRect".}
proc fcQSGImageNode_setRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QSGImageNode_setRect2".}
proc fcQSGImageNode_rect(self: pointer, ): pointer {.importc: "QSGImageNode_rect".}
proc fcQSGImageNode_setSourceRect(self: pointer, r: pointer): void {.importc: "QSGImageNode_setSourceRect".}
proc fcQSGImageNode_setSourceRect2(self: pointer, x: float64, y: float64, w: float64, h: float64): void {.importc: "QSGImageNode_setSourceRect2".}
proc fcQSGImageNode_sourceRect(self: pointer, ): pointer {.importc: "QSGImageNode_sourceRect".}
proc fcQSGImageNode_setTexture(self: pointer, texture: pointer): void {.importc: "QSGImageNode_setTexture".}
proc fcQSGImageNode_texture(self: pointer, ): pointer {.importc: "QSGImageNode_texture".}
proc fcQSGImageNode_setFiltering(self: pointer, filtering: cint): void {.importc: "QSGImageNode_setFiltering".}
proc fcQSGImageNode_filtering(self: pointer, ): cint {.importc: "QSGImageNode_filtering".}
proc fcQSGImageNode_setMipmapFiltering(self: pointer, filtering: cint): void {.importc: "QSGImageNode_setMipmapFiltering".}
proc fcQSGImageNode_mipmapFiltering(self: pointer, ): cint {.importc: "QSGImageNode_mipmapFiltering".}
proc fcQSGImageNode_setTextureCoordinatesTransform(self: pointer, mode: cint): void {.importc: "QSGImageNode_setTextureCoordinatesTransform".}
proc fcQSGImageNode_textureCoordinatesTransform(self: pointer, ): cint {.importc: "QSGImageNode_textureCoordinatesTransform".}
proc fcQSGImageNode_setOwnsTexture(self: pointer, owns: bool): void {.importc: "QSGImageNode_setOwnsTexture".}
proc fcQSGImageNode_ownsTexture(self: pointer, ): bool {.importc: "QSGImageNode_ownsTexture".}
proc fcQSGImageNode_rebuildGeometry(g: pointer, texture: pointer, rect: pointer, sourceRect: pointer, texCoordMode: cint): void {.importc: "QSGImageNode_rebuildGeometry".}
proc fcQSGImageNode_delete(self: pointer) {.importc: "QSGImageNode_delete".}

proc setRect*(self: gen_qsgimagenode_types.QSGImageNode, rect: gen_qrect_types.QRectF): void =
  fcQSGImageNode_setRect(self.h, rect.h)

proc setRect*(self: gen_qsgimagenode_types.QSGImageNode, x: float64, y: float64, w: float64, h: float64): void =
  fcQSGImageNode_setRect2(self.h, x, y, w, h)

proc rect*(self: gen_qsgimagenode_types.QSGImageNode, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGImageNode_rect(self.h))

proc setSourceRect*(self: gen_qsgimagenode_types.QSGImageNode, r: gen_qrect_types.QRectF): void =
  fcQSGImageNode_setSourceRect(self.h, r.h)

proc setSourceRect*(self: gen_qsgimagenode_types.QSGImageNode, x: float64, y: float64, w: float64, h: float64): void =
  fcQSGImageNode_setSourceRect2(self.h, x, y, w, h)

proc sourceRect*(self: gen_qsgimagenode_types.QSGImageNode, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSGImageNode_sourceRect(self.h))

proc setTexture*(self: gen_qsgimagenode_types.QSGImageNode, texture: gen_qsgtexture_types.QSGTexture): void =
  fcQSGImageNode_setTexture(self.h, texture.h)

proc texture*(self: gen_qsgimagenode_types.QSGImageNode, ): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGImageNode_texture(self.h))

proc setFiltering*(self: gen_qsgimagenode_types.QSGImageNode, filtering: cint): void =
  fcQSGImageNode_setFiltering(self.h, cint(filtering))

proc filtering*(self: gen_qsgimagenode_types.QSGImageNode, ): cint =
  cint(fcQSGImageNode_filtering(self.h))

proc setMipmapFiltering*(self: gen_qsgimagenode_types.QSGImageNode, filtering: cint): void =
  fcQSGImageNode_setMipmapFiltering(self.h, cint(filtering))

proc mipmapFiltering*(self: gen_qsgimagenode_types.QSGImageNode, ): cint =
  cint(fcQSGImageNode_mipmapFiltering(self.h))

proc setTextureCoordinatesTransform*(self: gen_qsgimagenode_types.QSGImageNode, mode: cint): void =
  fcQSGImageNode_setTextureCoordinatesTransform(self.h, cint(mode))

proc textureCoordinatesTransform*(self: gen_qsgimagenode_types.QSGImageNode, ): cint =
  cint(fcQSGImageNode_textureCoordinatesTransform(self.h))

proc setOwnsTexture*(self: gen_qsgimagenode_types.QSGImageNode, owns: bool): void =
  fcQSGImageNode_setOwnsTexture(self.h, owns)

proc ownsTexture*(self: gen_qsgimagenode_types.QSGImageNode, ): bool =
  fcQSGImageNode_ownsTexture(self.h)

proc rebuildGeometry*(_: type gen_qsgimagenode_types.QSGImageNode, g: gen_qsggeometry_types.QSGGeometry, texture: gen_qsgtexture_types.QSGTexture, rect: gen_qrect_types.QRectF, sourceRect: gen_qrect_types.QRectF, texCoordMode: cint): void =
  fcQSGImageNode_rebuildGeometry(g.h, texture.h, rect.h, sourceRect.h, cint(texCoordMode))

proc delete*(self: gen_qsgimagenode_types.QSGImageNode) =
  fcQSGImageNode_delete(self.h)
