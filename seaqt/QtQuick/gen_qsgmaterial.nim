import ./Qt6Quick_libs

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

proc fcQSGMaterial_typeX(self: pointer): pointer {.importc: "QSGMaterial_type".}
proc fcQSGMaterial_createShader(self: pointer, renderMode: cint): pointer {.importc: "QSGMaterial_createShader".}
proc fcQSGMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGMaterial_compare".}
proc fcQSGMaterial_flags(self: pointer): cint {.importc: "QSGMaterial_flags".}
proc fcQSGMaterial_setFlag(self: pointer, flags: cint): void {.importc: "QSGMaterial_setFlag".}
proc fcQSGMaterial_setFlag2(self: pointer, flags: cint, on: bool): void {.importc: "QSGMaterial_setFlag2".}
proc fcQSGMaterial_vtbl(self: pointer): pointer {.importc: "QSGMaterial_vtbl".}
proc fcQSGMaterial_vdata(self: pointer): pointer {.importc: "QSGMaterial_vdata".}
type cQSGMaterialVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  typeX*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  createShader*: proc(self: pointer, renderMode: cint): pointer {.cdecl, raises: [], gcsafe.}
  compare*: proc(self: pointer, other: pointer): cint {.cdecl, raises: [], gcsafe.}
proc fcQSGMaterial_virtualbase_compare(self: pointer, other: pointer): cint {.importc: "QSGMaterial_virtualbase_compare".}
proc fcQSGMaterial_new(vtbl, vdata: pointer): ptr cQSGMaterial {.importc: "QSGMaterial_new".}

proc typeX*(self: gen_qsgmaterial_types.QSGMaterial): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGMaterial_typeX(self.h), owned: false)

proc createShader*(self: gen_qsgmaterial_types.QSGMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGMaterial_createShader(self.h, cint(renderMode)), owned: false)

proc compare*(self: gen_qsgmaterial_types.QSGMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGMaterial_compare(self.h, other.h)

proc flags*(self: gen_qsgmaterial_types.QSGMaterial): cint =
  cint(fcQSGMaterial_flags(self.h))

proc setFlag*(self: gen_qsgmaterial_types.QSGMaterial, flags: cint): void =
  fcQSGMaterial_setFlag(self.h, cint(flags))

proc setFlag*(self: gen_qsgmaterial_types.QSGMaterial, flags: cint, on: bool): void =
  fcQSGMaterial_setFlag2(self.h, cint(flags), on)

type QSGMaterialtypeXProc* = proc(self: QSGMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.raises: [], gcsafe.}
type QSGMaterialcreateShaderProc* = proc(self: QSGMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader {.raises: [], gcsafe.}
type QSGMaterialcompareProc* = proc(self: QSGMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.raises: [], gcsafe.}
type QSGMaterialVTable* {.inheritable, pure.} = object
  vtbl: cQSGMaterialVTable
  typeX*: QSGMaterialtypeXProc
  createShader*: QSGMaterialcreateShaderProc
  compare*: QSGMaterialcompareProc
proc cQSGMaterial_vtable_callback_typeX(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialVTable](fcQSGMaterial_vdata(self))
  let self = QSGMaterial(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQSGMaterial_vtable_callback_createShader(self: pointer, renderMode: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialVTable](fcQSGMaterial_vdata(self))
  let self = QSGMaterial(h: self)
  let slotval1 = cint(renderMode)
  var virtualReturn = vtbl[].createShader(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSGMaterialcompare*(self: gen_qsgmaterial_types.QSGMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGMaterial_virtualbase_compare(self.h, other.h)

proc cQSGMaterial_vtable_callback_compare(self: pointer, other: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialVTable](fcQSGMaterial_vdata(self))
  let self = QSGMaterial(h: self)
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other, owned: false)
  var virtualReturn = vtbl[].compare(self, slotval1)
  virtualReturn

type VirtualQSGMaterial* {.inheritable.} = ref object of QSGMaterial
  vtbl*: cQSGMaterialVTable
method typeX*(self: VirtualQSGMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.base.} =
  raiseAssert("missing implementation of QSGMaterial_virtualbase_type")
proc cQSGMaterial_method_callback_typeX(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGMaterial](fcQSGMaterial_vdata(self))
  var virtualReturn = inst.typeX()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method createShader*(self: VirtualQSGMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader {.base.} =
  raiseAssert("missing implementation of QSGMaterial_virtualbase_createShader")
proc cQSGMaterial_method_callback_createShader(self: pointer, renderMode: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSGMaterial](fcQSGMaterial_vdata(self))
  let slotval1 = cint(renderMode)
  var virtualReturn = inst.createShader(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method compare*(self: VirtualQSGMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.base.} =
  QSGMaterialcompare(self[], other)
proc cQSGMaterial_method_callback_compare(self: pointer, other: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSGMaterial](fcQSGMaterial_vdata(self))
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other, owned: false)
  var virtualReturn = inst.compare(slotval1)
  virtualReturn

proc create*(T: type gen_qsgmaterial_types.QSGMaterial,
    vtbl: ref QSGMaterialVTable = nil): gen_qsgmaterial_types.QSGMaterial =
  let vtbl = if vtbl == nil: new QSGMaterialVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGMaterialVTable](fcQSGMaterial_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = cQSGMaterial_vtable_callback_typeX
  if not isNil(vtbl[].createShader):
    vtbl[].vtbl.createShader = cQSGMaterial_vtable_callback_createShader
  if not isNil(vtbl[].compare):
    vtbl[].vtbl.compare = cQSGMaterial_vtable_callback_compare
  gen_qsgmaterial_types.QSGMaterial(h: fcQSGMaterial_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGMaterial_mvtbl = cQSGMaterialVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGMaterial()[])](self.fcQSGMaterial_vtbl())
    inst[].h = nil
    inst[].owned = false,
  typeX: cQSGMaterial_method_callback_typeX,
  createShader: cQSGMaterial_method_callback_createShader,
  compare: cQSGMaterial_method_callback_compare,
)
proc create*(T: type gen_qsgmaterial_types.QSGMaterial,
    inst: VirtualQSGMaterial) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGMaterial_new(addr(cQSGMaterial_mvtbl), addr(inst[]))
  inst[].owned = true

