import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick")  & " -fPIC"
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

proc fcQSGOpaqueTextureMaterial_new(): ptr cQSGOpaqueTextureMaterial {.importc: "QSGOpaqueTextureMaterial_new".}
proc fcQSGOpaqueTextureMaterial_typeX(self: pointer, ): pointer {.importc: "QSGOpaqueTextureMaterial_type".}
proc fcQSGOpaqueTextureMaterial_createShader(self: pointer, ): pointer {.importc: "QSGOpaqueTextureMaterial_createShader".}
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
proc fQSGOpaqueTextureMaterial_virtualbase_type(self: pointer, ): pointer{.importc: "QSGOpaqueTextureMaterial_virtualbase_type".}
proc fcQSGOpaqueTextureMaterial_override_virtual_typeX(self: pointer, slot: int) {.importc: "QSGOpaqueTextureMaterial_override_virtual_type".}
proc fQSGOpaqueTextureMaterial_virtualbase_createShader(self: pointer, ): pointer{.importc: "QSGOpaqueTextureMaterial_virtualbase_createShader".}
proc fcQSGOpaqueTextureMaterial_override_virtual_createShader(self: pointer, slot: int) {.importc: "QSGOpaqueTextureMaterial_override_virtual_createShader".}
proc fQSGOpaqueTextureMaterial_virtualbase_compare(self: pointer, other: pointer): cint{.importc: "QSGOpaqueTextureMaterial_virtualbase_compare".}
proc fcQSGOpaqueTextureMaterial_override_virtual_compare(self: pointer, slot: int) {.importc: "QSGOpaqueTextureMaterial_override_virtual_compare".}
proc fcQSGOpaqueTextureMaterial_delete(self: pointer) {.importc: "QSGOpaqueTextureMaterial_delete".}
proc fcQSGTextureMaterial_typeX(self: pointer, ): pointer {.importc: "QSGTextureMaterial_type".}
proc fcQSGTextureMaterial_createShader(self: pointer, ): pointer {.importc: "QSGTextureMaterial_createShader".}
proc fcQSGTextureMaterial_delete(self: pointer) {.importc: "QSGTextureMaterial_delete".}


func init*(T: type gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, h: ptr cQSGOpaqueTextureMaterial): gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial =
  T(h: h)
proc create*(T: type gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial =
  gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial.init(fcQSGOpaqueTextureMaterial_new())

proc typeX*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGOpaqueTextureMaterial_typeX(self.h))

proc createShader*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGOpaqueTextureMaterial_createShader(self.h))

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

proc QSGOpaqueTextureMaterialtypeX*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fQSGOpaqueTextureMaterial_virtualbase_type(self.h))

type QSGOpaqueTextureMaterialtypeXProc* = proc(): gen_qsgmaterialtype_types.QSGMaterialType
proc ontypeX*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, slot: QSGOpaqueTextureMaterialtypeXProc) =
  # TODO check subclass
  var tmp = new QSGOpaqueTextureMaterialtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGOpaqueTextureMaterial_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGOpaqueTextureMaterial_type(self: ptr cQSGOpaqueTextureMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGOpaqueTextureMaterial_type ".} =
  var nimfunc = cast[ptr QSGOpaqueTextureMaterialtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSGOpaqueTextureMaterialcreateShader*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, ): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fQSGOpaqueTextureMaterial_virtualbase_createShader(self.h))

type QSGOpaqueTextureMaterialcreateShaderProc* = proc(): gen_qsgmaterialshader_types.QSGMaterialShader
proc oncreateShader*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, slot: QSGOpaqueTextureMaterialcreateShaderProc) =
  # TODO check subclass
  var tmp = new QSGOpaqueTextureMaterialcreateShaderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGOpaqueTextureMaterial_override_virtual_createShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGOpaqueTextureMaterial_createShader(self: ptr cQSGOpaqueTextureMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGOpaqueTextureMaterial_createShader ".} =
  var nimfunc = cast[ptr QSGOpaqueTextureMaterialcreateShaderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSGOpaqueTextureMaterialcompare*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fQSGOpaqueTextureMaterial_virtualbase_compare(self.h, other.h)

type QSGOpaqueTextureMaterialcompareProc* = proc(other: gen_qsgmaterial_types.QSGMaterial): cint
proc oncompare*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, slot: QSGOpaqueTextureMaterialcompareProc) =
  # TODO check subclass
  var tmp = new QSGOpaqueTextureMaterialcompareProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGOpaqueTextureMaterial_override_virtual_compare(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGOpaqueTextureMaterial_compare(self: ptr cQSGOpaqueTextureMaterial, slot: int, other: pointer): cint {.exportc: "miqt_exec_callback_QSGOpaqueTextureMaterial_compare ".} =
  var nimfunc = cast[ptr QSGOpaqueTextureMaterialcompareProc](cast[pointer](slot))
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc delete*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial) =
  fcQSGOpaqueTextureMaterial_delete(self.h)

func init*(T: type gen_qsgtexturematerial_types.QSGTextureMaterial, h: ptr cQSGTextureMaterial): gen_qsgtexturematerial_types.QSGTextureMaterial =
  T(h: h)
proc typeX*(self: gen_qsgtexturematerial_types.QSGTextureMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGTextureMaterial_typeX(self.h))

proc createShader*(self: gen_qsgtexturematerial_types.QSGTextureMaterial, ): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGTextureMaterial_createShader(self.h))

proc delete*(self: gen_qsgtexturematerial_types.QSGTextureMaterial) =
  fcQSGTextureMaterial_delete(self.h)
