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
{.compile("gen_qsgtexturematerial.cpp", cflags).}


import ./gen_qsgtexturematerial_types
export gen_qsgtexturematerial_types

import
  ./gen_qsgmaterial,
  ./gen_qsgmaterialshader_types,
  ./gen_qsgmaterialtype_types,
  ./gen_qsgtexture_types
export
  gen_qsgmaterial,
  gen_qsgmaterialshader_types,
  gen_qsgmaterialtype_types,
  gen_qsgtexture_types

type cQSGOpaqueTextureMaterial*{.exportc: "QSGOpaqueTextureMaterial", incompleteStruct.} = object
type cQSGTextureMaterial*{.exportc: "QSGTextureMaterial", incompleteStruct.} = object

proc fcQSGOpaqueTextureMaterial_typeX(self: pointer, ): pointer {.importc: "QSGOpaqueTextureMaterial_type".}
proc fcQSGOpaqueTextureMaterial_createShader(self: pointer, renderMode: cint): pointer {.importc: "QSGOpaqueTextureMaterial_createShader".}
proc fcQSGOpaqueTextureMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGOpaqueTextureMaterial_compare".}
proc fcQSGOpaqueTextureMaterial_setTexture(self: pointer, texture: pointer): void {.importc: "QSGOpaqueTextureMaterial_setTexture".}
proc fcQSGOpaqueTextureMaterial_texture(self: pointer, ): pointer {.importc: "QSGOpaqueTextureMaterial_texture".}
proc fcQSGOpaqueTextureMaterial_setMipmapFiltering(self: pointer, filteringType: cint): void {.importc: "QSGOpaqueTextureMaterial_setMipmapFiltering".}
proc fcQSGOpaqueTextureMaterial_mipmapFiltering(self: pointer, ): cint {.importc: "QSGOpaqueTextureMaterial_mipmapFiltering".}
proc fcQSGOpaqueTextureMaterial_setFiltering(self: pointer, filteringType: cint): void {.importc: "QSGOpaqueTextureMaterial_setFiltering".}
proc fcQSGOpaqueTextureMaterial_filtering(self: pointer, ): cint {.importc: "QSGOpaqueTextureMaterial_filtering".}
proc fcQSGOpaqueTextureMaterial_setHorizontalWrapMode(self: pointer, mode: cint): void {.importc: "QSGOpaqueTextureMaterial_setHorizontalWrapMode".}
proc fcQSGOpaqueTextureMaterial_horizontalWrapMode(self: pointer, ): cint {.importc: "QSGOpaqueTextureMaterial_horizontalWrapMode".}
proc fcQSGOpaqueTextureMaterial_setVerticalWrapMode(self: pointer, mode: cint): void {.importc: "QSGOpaqueTextureMaterial_setVerticalWrapMode".}
proc fcQSGOpaqueTextureMaterial_verticalWrapMode(self: pointer, ): cint {.importc: "QSGOpaqueTextureMaterial_verticalWrapMode".}
proc fcQSGOpaqueTextureMaterial_setAnisotropyLevel(self: pointer, level: cint): void {.importc: "QSGOpaqueTextureMaterial_setAnisotropyLevel".}
proc fcQSGOpaqueTextureMaterial_anisotropyLevel(self: pointer, ): cint {.importc: "QSGOpaqueTextureMaterial_anisotropyLevel".}
type cQSGOpaqueTextureMaterialVTable = object
  destructor*: proc(vtbl: ptr cQSGOpaqueTextureMaterialVTable, self: ptr cQSGOpaqueTextureMaterial) {.cdecl, raises:[], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  createShader*: proc(vtbl, self: pointer, renderMode: cint): pointer {.cdecl, raises: [], gcsafe.}
  compare*: proc(vtbl, self: pointer, other: pointer): cint {.cdecl, raises: [], gcsafe.}
proc fcQSGOpaqueTextureMaterial_virtualbase_typeX(self: pointer, ): pointer {.importc: "QSGOpaqueTextureMaterial_virtualbase_type".}
proc fcQSGOpaqueTextureMaterial_virtualbase_createShader(self: pointer, renderMode: cint): pointer {.importc: "QSGOpaqueTextureMaterial_virtualbase_createShader".}
proc fcQSGOpaqueTextureMaterial_virtualbase_compare(self: pointer, other: pointer): cint {.importc: "QSGOpaqueTextureMaterial_virtualbase_compare".}
proc fcQSGOpaqueTextureMaterial_new(vtbl: pointer, ): ptr cQSGOpaqueTextureMaterial {.importc: "QSGOpaqueTextureMaterial_new".}
proc fcQSGOpaqueTextureMaterial_delete(self: pointer) {.importc: "QSGOpaqueTextureMaterial_delete".}
proc fcQSGTextureMaterial_typeX(self: pointer, ): pointer {.importc: "QSGTextureMaterial_type".}
proc fcQSGTextureMaterial_createShader(self: pointer, renderMode: cint): pointer {.importc: "QSGTextureMaterial_createShader".}
proc fcQSGTextureMaterial_delete(self: pointer) {.importc: "QSGTextureMaterial_delete".}

proc typeX*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGOpaqueTextureMaterial_typeX(self.h))

proc createShader*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGOpaqueTextureMaterial_createShader(self.h, cint(renderMode)))

proc compare*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGOpaqueTextureMaterial_compare(self.h, other.h)

proc setTexture*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, texture: gen_qsgtexture_types.QSGTexture): void =
  fcQSGOpaqueTextureMaterial_setTexture(self.h, texture.h)

proc texture*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGOpaqueTextureMaterial_texture(self.h))

proc setMipmapFiltering*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, filteringType: cint): void =
  fcQSGOpaqueTextureMaterial_setMipmapFiltering(self.h, cint(filteringType))

proc mipmapFiltering*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): cint =
  cint(fcQSGOpaqueTextureMaterial_mipmapFiltering(self.h))

proc setFiltering*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, filteringType: cint): void =
  fcQSGOpaqueTextureMaterial_setFiltering(self.h, cint(filteringType))

proc filtering*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): cint =
  cint(fcQSGOpaqueTextureMaterial_filtering(self.h))

proc setHorizontalWrapMode*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, mode: cint): void =
  fcQSGOpaqueTextureMaterial_setHorizontalWrapMode(self.h, cint(mode))

proc horizontalWrapMode*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): cint =
  cint(fcQSGOpaqueTextureMaterial_horizontalWrapMode(self.h))

proc setVerticalWrapMode*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, mode: cint): void =
  fcQSGOpaqueTextureMaterial_setVerticalWrapMode(self.h, cint(mode))

proc verticalWrapMode*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): cint =
  cint(fcQSGOpaqueTextureMaterial_verticalWrapMode(self.h))

proc setAnisotropyLevel*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, level: cint): void =
  fcQSGOpaqueTextureMaterial_setAnisotropyLevel(self.h, cint(level))

proc anisotropyLevel*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): cint =
  cint(fcQSGOpaqueTextureMaterial_anisotropyLevel(self.h))

type QSGOpaqueTextureMaterialtypeXProc* = proc(self: QSGOpaqueTextureMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.raises: [], gcsafe.}
type QSGOpaqueTextureMaterialcreateShaderProc* = proc(self: QSGOpaqueTextureMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader {.raises: [], gcsafe.}
type QSGOpaqueTextureMaterialcompareProc* = proc(self: QSGOpaqueTextureMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.raises: [], gcsafe.}
type QSGOpaqueTextureMaterialVTable* = object
  vtbl: cQSGOpaqueTextureMaterialVTable
  typeX*: QSGOpaqueTextureMaterialtypeXProc
  createShader*: QSGOpaqueTextureMaterialcreateShaderProc
  compare*: QSGOpaqueTextureMaterialcompareProc
proc QSGOpaqueTextureMaterialtypeX*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGOpaqueTextureMaterial_virtualbase_typeX(self.h))

proc miqt_exec_callback_cQSGOpaqueTextureMaterial_typeX(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGOpaqueTextureMaterialVTable](vtbl)
  let self = QSGOpaqueTextureMaterial(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn.h

proc QSGOpaqueTextureMaterialcreateShader*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGOpaqueTextureMaterial_virtualbase_createShader(self.h, cint(renderMode)))

proc miqt_exec_callback_cQSGOpaqueTextureMaterial_createShader(vtbl: pointer, self: pointer, renderMode: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGOpaqueTextureMaterialVTable](vtbl)
  let self = QSGOpaqueTextureMaterial(h: self)
  let slotval1 = cint(renderMode)
  var virtualReturn = vtbl[].createShader(self, slotval1)
  virtualReturn.h

proc QSGOpaqueTextureMaterialcompare*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGOpaqueTextureMaterial_virtualbase_compare(self.h, other.h)

proc miqt_exec_callback_cQSGOpaqueTextureMaterial_compare(vtbl: pointer, self: pointer, other: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGOpaqueTextureMaterialVTable](vtbl)
  let self = QSGOpaqueTextureMaterial(h: self)
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other)
  var virtualReturn = vtbl[].compare(self, slotval1)
  virtualReturn

proc create*(T: type gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial,
    vtbl: ref QSGOpaqueTextureMaterialVTable = nil): gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial =
  let vtbl = if vtbl == nil: new QSGOpaqueTextureMaterialVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGOpaqueTextureMaterialVTable, _: ptr cQSGOpaqueTextureMaterial) {.cdecl.} =
    let vtbl = cast[ref QSGOpaqueTextureMaterialVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQSGOpaqueTextureMaterial_typeX
  if not isNil(vtbl.createShader):
    vtbl[].vtbl.createShader = miqt_exec_callback_cQSGOpaqueTextureMaterial_createShader
  if not isNil(vtbl.compare):
    vtbl[].vtbl.compare = miqt_exec_callback_cQSGOpaqueTextureMaterial_compare
  gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial(h: fcQSGOpaqueTextureMaterial_new(addr(vtbl[]), ))

proc delete*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial) =
  fcQSGOpaqueTextureMaterial_delete(self.h)
proc typeX*(self: gen_qsgtexturematerial_types.QSGTextureMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGTextureMaterial_typeX(self.h))

proc createShader*(self: gen_qsgtexturematerial_types.QSGTextureMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGTextureMaterial_createShader(self.h, cint(renderMode)))

proc delete*(self: gen_qsgtexturematerial_types.QSGTextureMaterial) =
  fcQSGTextureMaterial_delete(self.h)
