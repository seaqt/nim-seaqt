import ./Qt6Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt6Quick")  & " -fPIC"
{.compile("gen_qsgmaterial.cpp", cflags).}


type QSGMaterialFlagEnum* = distinct cint
template Blending*(_: type QSGMaterialFlagEnum): untyped = 1
template RequiresDeterminant*(_: type QSGMaterialFlagEnum): untyped = 2
template RequiresFullMatrixExceptTranslate*(_: type QSGMaterialFlagEnum): untyped = 6
template RequiresFullMatrix*(_: type QSGMaterialFlagEnum): untyped = 14
template NoBatching*(_: type QSGMaterialFlagEnum): untyped = 16
template CustomCompileStep*(_: type QSGMaterialFlagEnum): untyped = 16


import ./gen_qsgmaterial_types
export gen_qsgmaterial_types

import
  ./gen_qsgmaterialshader_types,
  ./gen_qsgmaterialtype_types
export
  gen_qsgmaterialshader_types,
  gen_qsgmaterialtype_types

type cQSGMaterial*{.exportc: "QSGMaterial", incompleteStruct.} = object

proc fcQSGMaterial_typeX(self: pointer, ): pointer {.importc: "QSGMaterial_type".}
proc fcQSGMaterial_createShader(self: pointer, renderMode: cint): pointer {.importc: "QSGMaterial_createShader".}
proc fcQSGMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGMaterial_compare".}
proc fcQSGMaterial_flags(self: pointer, ): cint {.importc: "QSGMaterial_flags".}
proc fcQSGMaterial_setFlag(self: pointer, flags: cint): void {.importc: "QSGMaterial_setFlag".}
proc fcQSGMaterial_setFlag2(self: pointer, flags: cint, on: bool): void {.importc: "QSGMaterial_setFlag2".}
type cQSGMaterialVTable = object
  destructor*: proc(vtbl: ptr cQSGMaterialVTable, self: ptr cQSGMaterial) {.cdecl, raises:[], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  createShader*: proc(vtbl, self: pointer, renderMode: cint): pointer {.cdecl, raises: [], gcsafe.}
  compare*: proc(vtbl, self: pointer, other: pointer): cint {.cdecl, raises: [], gcsafe.}
proc fcQSGMaterial_virtualbase_compare(self: pointer, other: pointer): cint {.importc: "QSGMaterial_virtualbase_compare".}
proc fcQSGMaterial_new(vtbl: pointer, ): ptr cQSGMaterial {.importc: "QSGMaterial_new".}
proc fcQSGMaterial_delete(self: pointer) {.importc: "QSGMaterial_delete".}

proc typeX*(self: gen_qsgmaterial_types.QSGMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGMaterial_typeX(self.h))

proc createShader*(self: gen_qsgmaterial_types.QSGMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGMaterial_createShader(self.h, cint(renderMode)))

proc compare*(self: gen_qsgmaterial_types.QSGMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGMaterial_compare(self.h, other.h)

proc flags*(self: gen_qsgmaterial_types.QSGMaterial, ): cint =
  cint(fcQSGMaterial_flags(self.h))

proc setFlag*(self: gen_qsgmaterial_types.QSGMaterial, flags: cint): void =
  fcQSGMaterial_setFlag(self.h, cint(flags))

proc setFlag*(self: gen_qsgmaterial_types.QSGMaterial, flags: cint, on: bool): void =
  fcQSGMaterial_setFlag2(self.h, cint(flags), on)

type QSGMaterialtypeXProc* = proc(self: QSGMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.raises: [], gcsafe.}
type QSGMaterialcreateShaderProc* = proc(self: QSGMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader {.raises: [], gcsafe.}
type QSGMaterialcompareProc* = proc(self: QSGMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.raises: [], gcsafe.}
type QSGMaterialVTable* = object
  vtbl: cQSGMaterialVTable
  typeX*: QSGMaterialtypeXProc
  createShader*: QSGMaterialcreateShaderProc
  compare*: QSGMaterialcompareProc
proc miqt_exec_callback_cQSGMaterial_typeX(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialVTable](vtbl)
  let self = QSGMaterial(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn.h

proc miqt_exec_callback_cQSGMaterial_createShader(vtbl: pointer, self: pointer, renderMode: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialVTable](vtbl)
  let self = QSGMaterial(h: self)
  let slotval1 = cint(renderMode)
  var virtualReturn = vtbl[].createShader(self, slotval1)
  virtualReturn.h

proc QSGMaterialcompare*(self: gen_qsgmaterial_types.QSGMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGMaterial_virtualbase_compare(self.h, other.h)

proc miqt_exec_callback_cQSGMaterial_compare(vtbl: pointer, self: pointer, other: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialVTable](vtbl)
  let self = QSGMaterial(h: self)
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other)
  var virtualReturn = vtbl[].compare(self, slotval1)
  virtualReturn

proc create*(T: type gen_qsgmaterial_types.QSGMaterial,
    vtbl: ref QSGMaterialVTable = nil): gen_qsgmaterial_types.QSGMaterial =
  let vtbl = if vtbl == nil: new QSGMaterialVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGMaterialVTable, _: ptr cQSGMaterial) {.cdecl.} =
    let vtbl = cast[ref QSGMaterialVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQSGMaterial_typeX
  if not isNil(vtbl.createShader):
    vtbl[].vtbl.createShader = miqt_exec_callback_cQSGMaterial_createShader
  if not isNil(vtbl.compare):
    vtbl[].vtbl.compare = miqt_exec_callback_cQSGMaterial_compare
  gen_qsgmaterial_types.QSGMaterial(h: fcQSGMaterial_new(addr(vtbl[]), ))

proc delete*(self: gen_qsgmaterial_types.QSGMaterial) =
  fcQSGMaterial_delete(self.h)
