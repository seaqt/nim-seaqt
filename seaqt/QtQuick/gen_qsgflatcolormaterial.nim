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


{.compile("gen_qsgflatcolormaterial.cpp", QtQuickCFlags).}


import ./gen_qsgflatcolormaterial_types
export gen_qsgflatcolormaterial_types

import
  ../QtGui/gen_qcolor_types,
  ./gen_qsgmaterial,
  ./gen_qsgmaterialshader_types,
  ./gen_qsgmaterialtype_types
export
  gen_qcolor_types,
  gen_qsgmaterial,
  gen_qsgmaterialshader_types,
  gen_qsgmaterialtype_types

type cQSGFlatColorMaterial*{.exportc: "QSGFlatColorMaterial", incompleteStruct.} = object

proc fcQSGFlatColorMaterial_typeX(self: pointer): pointer {.importc: "QSGFlatColorMaterial_type".}
proc fcQSGFlatColorMaterial_createShader(self: pointer): pointer {.importc: "QSGFlatColorMaterial_createShader".}
proc fcQSGFlatColorMaterial_setColor(self: pointer, color: pointer): void {.importc: "QSGFlatColorMaterial_setColor".}
proc fcQSGFlatColorMaterial_color(self: pointer): pointer {.importc: "QSGFlatColorMaterial_color".}
proc fcQSGFlatColorMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGFlatColorMaterial_compare".}
proc fcQSGFlatColorMaterial_vtbl(self: pointer): pointer {.importc: "QSGFlatColorMaterial_vtbl".}
proc fcQSGFlatColorMaterial_vdata(self: pointer): pointer {.importc: "QSGFlatColorMaterial_vdata".}
type cQSGFlatColorMaterialVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  typeX*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  createShader*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  compare*: proc(self: pointer, other: pointer): cint {.cdecl, raises: [], gcsafe.}
proc fcQSGFlatColorMaterial_virtualbase_typeX(self: pointer): pointer {.importc: "QSGFlatColorMaterial_virtualbase_type".}
proc fcQSGFlatColorMaterial_virtualbase_createShader(self: pointer): pointer {.importc: "QSGFlatColorMaterial_virtualbase_createShader".}
proc fcQSGFlatColorMaterial_virtualbase_compare(self: pointer, other: pointer): cint {.importc: "QSGFlatColorMaterial_virtualbase_compare".}
proc fcQSGFlatColorMaterial_new(vtbl, vdata: pointer): ptr cQSGFlatColorMaterial {.importc: "QSGFlatColorMaterial_new".}

proc typeX*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGFlatColorMaterial_typeX(self.h), owned: false)

proc createShader*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGFlatColorMaterial_createShader(self.h), owned: false)

proc setColor*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, color: gen_qcolor_types.QColor): void =
  fcQSGFlatColorMaterial_setColor(self.h, color.h)

proc color*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGFlatColorMaterial_color(self.h), owned: false)

proc compare*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGFlatColorMaterial_compare(self.h, other.h)

type QSGFlatColorMaterialtypeXProc* = proc(self: QSGFlatColorMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.raises: [], gcsafe.}
type QSGFlatColorMaterialcreateShaderProc* = proc(self: QSGFlatColorMaterial): gen_qsgmaterialshader_types.QSGMaterialShader {.raises: [], gcsafe.}
type QSGFlatColorMaterialcompareProc* = proc(self: QSGFlatColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.raises: [], gcsafe.}
type QSGFlatColorMaterialVTable* {.inheritable, pure.} = object
  vtbl: cQSGFlatColorMaterialVTable
  typeX*: QSGFlatColorMaterialtypeXProc
  createShader*: QSGFlatColorMaterialcreateShaderProc
  compare*: QSGFlatColorMaterialcompareProc
proc QSGFlatColorMaterialtypeX*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGFlatColorMaterial_virtualbase_typeX(self.h), owned: false)

proc cQSGFlatColorMaterial_vtable_callback_typeX(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGFlatColorMaterialVTable](fcQSGFlatColorMaterial_vdata(self))
  let self = QSGFlatColorMaterial(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSGFlatColorMaterialcreateShader*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGFlatColorMaterial_virtualbase_createShader(self.h), owned: false)

proc cQSGFlatColorMaterial_vtable_callback_createShader(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGFlatColorMaterialVTable](fcQSGFlatColorMaterial_vdata(self))
  let self = QSGFlatColorMaterial(h: self)
  var virtualReturn = vtbl[].createShader(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSGFlatColorMaterialcompare*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGFlatColorMaterial_virtualbase_compare(self.h, other.h)

proc cQSGFlatColorMaterial_vtable_callback_compare(self: pointer, other: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGFlatColorMaterialVTable](fcQSGFlatColorMaterial_vdata(self))
  let self = QSGFlatColorMaterial(h: self)
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other, owned: false)
  var virtualReturn = vtbl[].compare(self, slotval1)
  virtualReturn

type VirtualQSGFlatColorMaterial* {.inheritable.} = ref object of QSGFlatColorMaterial
  vtbl*: cQSGFlatColorMaterialVTable
method typeX*(self: VirtualQSGFlatColorMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.base.} =
  QSGFlatColorMaterialtypeX(self[])
proc cQSGFlatColorMaterial_method_callback_typeX(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGFlatColorMaterial](fcQSGFlatColorMaterial_vdata(self))
  var virtualReturn = inst.typeX()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method createShader*(self: VirtualQSGFlatColorMaterial): gen_qsgmaterialshader_types.QSGMaterialShader {.base.} =
  QSGFlatColorMaterialcreateShader(self[])
proc cQSGFlatColorMaterial_method_callback_createShader(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGFlatColorMaterial](fcQSGFlatColorMaterial_vdata(self))
  var virtualReturn = inst.createShader()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method compare*(self: VirtualQSGFlatColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.base.} =
  QSGFlatColorMaterialcompare(self[], other)
proc cQSGFlatColorMaterial_method_callback_compare(self: pointer, other: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSGFlatColorMaterial](fcQSGFlatColorMaterial_vdata(self))
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other, owned: false)
  var virtualReturn = inst.compare(slotval1)
  virtualReturn

proc create*(T: type gen_qsgflatcolormaterial_types.QSGFlatColorMaterial,
    vtbl: ref QSGFlatColorMaterialVTable = nil): gen_qsgflatcolormaterial_types.QSGFlatColorMaterial =
  let vtbl = if vtbl == nil: new QSGFlatColorMaterialVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGFlatColorMaterialVTable](fcQSGFlatColorMaterial_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = cQSGFlatColorMaterial_vtable_callback_typeX
  if not isNil(vtbl[].createShader):
    vtbl[].vtbl.createShader = cQSGFlatColorMaterial_vtable_callback_createShader
  if not isNil(vtbl[].compare):
    vtbl[].vtbl.compare = cQSGFlatColorMaterial_vtable_callback_compare
  gen_qsgflatcolormaterial_types.QSGFlatColorMaterial(h: fcQSGFlatColorMaterial_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGFlatColorMaterial_mvtbl = cQSGFlatColorMaterialVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGFlatColorMaterial()[])](self.fcQSGFlatColorMaterial_vtbl())
    inst[].h = nil
    inst[].owned = false,
  typeX: cQSGFlatColorMaterial_method_callback_typeX,
  createShader: cQSGFlatColorMaterial_method_callback_createShader,
  compare: cQSGFlatColorMaterial_method_callback_compare,
)
proc create*(T: type gen_qsgflatcolormaterial_types.QSGFlatColorMaterial,
    inst: VirtualQSGFlatColorMaterial) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGFlatColorMaterial_new(addr(cQSGFlatColorMaterial_mvtbl), addr(inst[]))
  inst[].owned = true

