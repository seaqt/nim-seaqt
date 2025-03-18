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


{.compile("gen_qsgtexturematerial.cpp", QtQuickCFlags).}


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

proc fcQSGOpaqueTextureMaterial_typeX(self: pointer): pointer {.importc: "QSGOpaqueTextureMaterial_type".}
proc fcQSGOpaqueTextureMaterial_createShader(self: pointer): pointer {.importc: "QSGOpaqueTextureMaterial_createShader".}
proc fcQSGOpaqueTextureMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGOpaqueTextureMaterial_compare".}
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
proc fcQSGOpaqueTextureMaterial_vtbl(self: pointer): pointer {.importc: "QSGOpaqueTextureMaterial_vtbl".}
proc fcQSGOpaqueTextureMaterial_vdata(self: pointer): pointer {.importc: "QSGOpaqueTextureMaterial_vdata".}

type cQSGOpaqueTextureMaterialVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  typeX*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  createShader*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  compare*: proc(self: pointer, other: pointer): cint {.cdecl, raises: [], gcsafe.}
proc fcQSGOpaqueTextureMaterial_virtualbase_typeX(self: pointer): pointer {.importc: "QSGOpaqueTextureMaterial_virtualbase_type".}
proc fcQSGOpaqueTextureMaterial_virtualbase_createShader(self: pointer): pointer {.importc: "QSGOpaqueTextureMaterial_virtualbase_createShader".}
proc fcQSGOpaqueTextureMaterial_virtualbase_compare(self: pointer, other: pointer): cint {.importc: "QSGOpaqueTextureMaterial_virtualbase_compare".}
proc fcQSGOpaqueTextureMaterial_new(vtbl, vdata: pointer): ptr cQSGOpaqueTextureMaterial {.importc: "QSGOpaqueTextureMaterial_new".}
proc fcQSGTextureMaterial_typeX(self: pointer): pointer {.importc: "QSGTextureMaterial_type".}
proc fcQSGTextureMaterial_createShader(self: pointer): pointer {.importc: "QSGTextureMaterial_createShader".}

proc typeX*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGOpaqueTextureMaterial_typeX(self.h), owned: false)

proc createShader*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGOpaqueTextureMaterial_createShader(self.h), owned: false)

proc compare*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGOpaqueTextureMaterial_compare(self.h, other.h)

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

type QSGOpaqueTextureMaterialtypeXProc* = proc(self: QSGOpaqueTextureMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.raises: [], gcsafe.}
type QSGOpaqueTextureMaterialcreateShaderProc* = proc(self: QSGOpaqueTextureMaterial): gen_qsgmaterialshader_types.QSGMaterialShader {.raises: [], gcsafe.}
type QSGOpaqueTextureMaterialcompareProc* = proc(self: QSGOpaqueTextureMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.raises: [], gcsafe.}

type QSGOpaqueTextureMaterialVTable* {.inheritable, pure.} = object
  vtbl: cQSGOpaqueTextureMaterialVTable
  typeX*: QSGOpaqueTextureMaterialtypeXProc
  createShader*: QSGOpaqueTextureMaterialcreateShaderProc
  compare*: QSGOpaqueTextureMaterialcompareProc

proc QSGOpaqueTextureMaterialtypeX*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGOpaqueTextureMaterial_virtualbase_typeX(self.h), owned: false)

proc QSGOpaqueTextureMaterialcreateShader*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGOpaqueTextureMaterial_virtualbase_createShader(self.h), owned: false)

proc QSGOpaqueTextureMaterialcompare*(self: gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGOpaqueTextureMaterial_virtualbase_compare(self.h, other.h)


proc fcQSGOpaqueTextureMaterial_vtable_callback_typeX(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGOpaqueTextureMaterialVTable](fcQSGOpaqueTextureMaterial_vdata(self))
  let self = QSGOpaqueTextureMaterial(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSGOpaqueTextureMaterial_vtable_callback_createShader(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGOpaqueTextureMaterialVTable](fcQSGOpaqueTextureMaterial_vdata(self))
  let self = QSGOpaqueTextureMaterial(h: self)
  var virtualReturn = vtbl[].createShader(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSGOpaqueTextureMaterial_vtable_callback_compare(self: pointer, other: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGOpaqueTextureMaterialVTable](fcQSGOpaqueTextureMaterial_vdata(self))
  let self = QSGOpaqueTextureMaterial(h: self)
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other, owned: false)
  var virtualReturn = vtbl[].compare(self, slotval1)
  virtualReturn

type VirtualQSGOpaqueTextureMaterial* {.inheritable.} = ref object of QSGOpaqueTextureMaterial
  vtbl*: cQSGOpaqueTextureMaterialVTable

method typeX*(self: VirtualQSGOpaqueTextureMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.base.} =
  QSGOpaqueTextureMaterialtypeX(self[])
method createShader*(self: VirtualQSGOpaqueTextureMaterial): gen_qsgmaterialshader_types.QSGMaterialShader {.base.} =
  QSGOpaqueTextureMaterialcreateShader(self[])
method compare*(self: VirtualQSGOpaqueTextureMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.base.} =
  QSGOpaqueTextureMaterialcompare(self[], other)

proc fcQSGOpaqueTextureMaterial_method_callback_typeX(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGOpaqueTextureMaterial](fcQSGOpaqueTextureMaterial_vdata(self))
  var virtualReturn = inst.typeX()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSGOpaqueTextureMaterial_method_callback_createShader(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGOpaqueTextureMaterial](fcQSGOpaqueTextureMaterial_vdata(self))
  var virtualReturn = inst.createShader()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSGOpaqueTextureMaterial_method_callback_compare(self: pointer, other: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSGOpaqueTextureMaterial](fcQSGOpaqueTextureMaterial_vdata(self))
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other, owned: false)
  var virtualReturn = inst.compare(slotval1)
  virtualReturn


proc create*(T: type gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial,
    vtbl: ref QSGOpaqueTextureMaterialVTable = nil): gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial =
  let vtbl = if vtbl == nil: new QSGOpaqueTextureMaterialVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGOpaqueTextureMaterialVTable](fcQSGOpaqueTextureMaterial_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQSGOpaqueTextureMaterial_vtable_callback_typeX
  if not isNil(vtbl[].createShader):
    vtbl[].vtbl.createShader = fcQSGOpaqueTextureMaterial_vtable_callback_createShader
  if not isNil(vtbl[].compare):
    vtbl[].vtbl.compare = fcQSGOpaqueTextureMaterial_vtable_callback_compare
  gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial(h: fcQSGOpaqueTextureMaterial_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGOpaqueTextureMaterial_mvtbl = cQSGOpaqueTextureMaterialVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGOpaqueTextureMaterial()[])](self.fcQSGOpaqueTextureMaterial_vdata())
    inst[].h = nil
    inst[].owned = false,

  typeX: fcQSGOpaqueTextureMaterial_method_callback_typeX,
  createShader: fcQSGOpaqueTextureMaterial_method_callback_createShader,
  compare: fcQSGOpaqueTextureMaterial_method_callback_compare,
)
proc create*(T: type gen_qsgtexturematerial_types.QSGOpaqueTextureMaterial,
    inst: VirtualQSGOpaqueTextureMaterial) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGOpaqueTextureMaterial_new(addr(cQSGOpaqueTextureMaterial_mvtbl), addr(inst[]))
  inst[].owned = true

proc typeX*(self: gen_qsgtexturematerial_types.QSGTextureMaterial): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGTextureMaterial_typeX(self.h), owned: false)

proc createShader*(self: gen_qsgtexturematerial_types.QSGTextureMaterial): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGTextureMaterial_createShader(self.h), owned: false)

