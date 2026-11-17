import ./qtquick_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qsgtexturematerial.cpp", QtQuickCFlags).}


import ./gen_qsgtexturematerial_types
export gen_qsgtexturematerial_types

import
  ./gen_qsgmaterial,
  ./gen_qsgmaterialshader_types,
  ./gen_qsgtexture_types
export
  gen_qsgmaterial,
  gen_qsgmaterialshader_types,
  gen_qsgtexture_types

type cQSGOpaqueTextureMaterial*{.exportc: "QSGOpaqueTextureMaterial", incompleteStruct.} = object
type cQSGTextureMaterial*{.exportc: "QSGTextureMaterial", incompleteStruct.} = object

proc fcQSGOpaqueTextureMaterial_createShader(self: pointer): pointer {.importc: "QSGOpaqueTextureMaterial_createShader".}
proc fcQSGOpaqueTextureMaterial_setTexture(self: pointer, texture: pointer): void {.importc: "QSGOpaqueTextureMaterial_setTexture".}
proc fcQSGOpaqueTextureMaterial_texture(self: pointer): pointer {.importc: "QSGOpaqueTextureMaterial_texture".}
proc fcQSGOpaqueTextureMaterial_setMipmapFiltering(self: pointer, filteringType: cint): void {.importc: "QSGOpaqueTextureMaterial_setMipmapFiltering".}
proc fcQSGOpaqueTextureMaterial_mipmapFiltering(self: pointer): cint {.importc: "QSGOpaqueTextureMaterial_mipmapFiltering".}
proc fcQSGOpaqueTextureMaterial_setFiltering(self: pointer, filteringType: cint): void {.importc: "QSGOpaqueTextureMaterial_setFiltering".}
proc fcQSGOpaqueTextureMaterial_filtering(self: pointer): cint {.importc: "QSGOpaqueTextureMaterial_filtering".}
proc fcQSGOpaqueTextureMaterial_setHorizontalWrapMode(self: pointer, mode: cint): void {.importc: "QSGOpaqueTextureMaterial_setHorizontalWrapMode".}
proc fcQSGOpaqueTextureMaterial_horizontalWrapMode(self: pointer): cint {.importc: "QSGOpaqueTextureMaterial_horizontalWrapMode".}
proc fcQSGOpaqueTextureMaterial_setVerticalWrapMode(self: pointer, mode: cint): void {.importc: "QSGOpaqueTextureMaterial_setVerticalWrapMode".}
proc fcQSGOpaqueTextureMaterial_verticalWrapMode(self: pointer): cint {.importc: "QSGOpaqueTextureMaterial_verticalWrapMode".}
proc fcQSGOpaqueTextureMaterial_setAnisotropyLevel(self: pointer, level: cint): void {.importc: "QSGOpaqueTextureMaterial_setAnisotropyLevel".}
proc fcQSGOpaqueTextureMaterial_anisotropyLevel(self: pointer): cint {.importc: "QSGOpaqueTextureMaterial_anisotropyLevel".}
proc fcQSGOpaqueTextureMaterial_new(): ptr cQSGOpaqueTextureMaterial {.importc: "QSGOpaqueTextureMaterial_new".}
proc fcQSGTextureMaterial_createShader(self: pointer): pointer {.importc: "QSGTextureMaterial_createShader".}

proc createShader*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGOpaqueTextureMaterial_createShader(self.h), owned: false)

proc setTexture*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, texture: gen_qsgtexture_types.QSGTexture): void =
  fcQSGOpaqueTextureMaterial_setTexture(self.h, texture.h)

proc texture*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial): gen_qsgtexture_types.QSGTexture =
  gen_qsgtexture_types.QSGTexture(h: fcQSGOpaqueTextureMaterial_texture(self.h), owned: false)

proc setMipmapFiltering*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, filteringType: cint): void =
  fcQSGOpaqueTextureMaterial_setMipmapFiltering(self.h, cint(filteringType))

proc mipmapFiltering*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial): cint =
  cint(fcQSGOpaqueTextureMaterial_mipmapFiltering(self.h))

proc setFiltering*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, filteringType: cint): void =
  fcQSGOpaqueTextureMaterial_setFiltering(self.h, cint(filteringType))

proc filtering*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial): cint =
  cint(fcQSGOpaqueTextureMaterial_filtering(self.h))

proc setHorizontalWrapMode*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, mode: cint): void =
  fcQSGOpaqueTextureMaterial_setHorizontalWrapMode(self.h, cint(mode))

proc horizontalWrapMode*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial): cint =
  cint(fcQSGOpaqueTextureMaterial_horizontalWrapMode(self.h))

proc setVerticalWrapMode*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, mode: cint): void =
  fcQSGOpaqueTextureMaterial_setVerticalWrapMode(self.h, cint(mode))

proc verticalWrapMode*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial): cint =
  cint(fcQSGOpaqueTextureMaterial_verticalWrapMode(self.h))

proc setAnisotropyLevel*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, level: cint): void =
  fcQSGOpaqueTextureMaterial_setAnisotropyLevel(self.h, cint(level))

proc anisotropyLevel*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial): cint =
  cint(fcQSGOpaqueTextureMaterial_anisotropyLevel(self.h))

proc create*(T: type gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial): gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial =
  let tmp = gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial(h: fcQSGOpaqueTextureMaterial_new(), owned: true)
  tmp
proc createShader*(self: gen_qsgtexturematerial_types.QSGTextureMaterial): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGTextureMaterial_createShader(self.h), owned: false)

