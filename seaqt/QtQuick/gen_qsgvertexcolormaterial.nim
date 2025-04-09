import ./Qt6Quick_libs

{.push raises: [].}

from system/ansi_c import c_free

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
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)

const cflags = gorge("pkg-config --cflags Qt6Quick")  & " -fPIC"
{.compile("gen_qsgvertexcolormaterial.cpp", cflags).}


import ./gen_qsgvertexcolormaterial_types
export gen_qsgvertexcolormaterial_types

import
  ./gen_qsgmaterial,
  ./gen_qsgmaterialshader_types,
  ./gen_qsgmaterialtype_types
export
  gen_qsgmaterial,
  gen_qsgmaterialshader_types,
  gen_qsgmaterialtype_types

type cQSGVertexColorMaterial*{.exportc: "QSGVertexColorMaterial", incompleteStruct.} = object

proc fcQSGVertexColorMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGVertexColorMaterial_compare".}
proc fcQSGVertexColorMaterial_vdata(self: pointer): ptr pointer {.importc: "QSGVertexColorMaterial_vdata".}
proc fvdata_cQSGVertexColorMaterial(self: pointer): pointer {.importc: "vdata_QSGVertexColorMaterial".}
type cQSGVertexColorMaterialVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  compare*: proc(self: pointer, other: pointer): cint {.cdecl, raises: [], gcsafe.}
  typeX*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  createShader*: proc(self: pointer, renderMode: cint): pointer {.cdecl, raises: [], gcsafe.}
proc fcQSGVertexColorMaterial_virtualbase_compare(self: pointer, other: pointer): cint {.importc: "QSGVertexColorMaterial_virtualbase_compare".}
proc fcQSGVertexColorMaterial_virtualbase_typeX(self: pointer): pointer {.importc: "QSGVertexColorMaterial_virtualbase_type".}
proc fcQSGVertexColorMaterial_virtualbase_createShader(self: pointer, renderMode: cint): pointer {.importc: "QSGVertexColorMaterial_virtualbase_createShader".}
proc fcQSGVertexColorMaterial_new(vtbl: pointer, vdata: csize_t): ptr cQSGVertexColorMaterial {.importc: "QSGVertexColorMaterial_new".}
proc fcQSGVertexColorMaterial_delete(self: pointer) {.importc: "QSGVertexColorMaterial_delete".}

proc compare*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGVertexColorMaterial_compare(self.h, other.h)

type QSGVertexColorMaterialcompareProc* = proc(self: QSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.raises: [], gcsafe.}
type QSGVertexColorMaterialtypeXProc* = proc(self: QSGVertexColorMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.raises: [], gcsafe.}
type QSGVertexColorMaterialcreateShaderProc* = proc(self: QSGVertexColorMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader {.raises: [], gcsafe.}
type QSGVertexColorMaterialVTable* = object
  vtbl: cQSGVertexColorMaterialVTable
  compare*: QSGVertexColorMaterialcompareProc
  typeX*: QSGVertexColorMaterialtypeXProc
  createShader*: QSGVertexColorMaterialcreateShaderProc
proc QSGVertexColorMaterialcompare*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGVertexColorMaterial_virtualbase_compare(self.h, other.h)

proc fcQSGVertexColorMaterial_vtable_callback_compare(self: pointer, other: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGVertexColorMaterialVTable](fcQSGVertexColorMaterial_vdata(self)[])
  let self = QSGVertexColorMaterial(h: self)
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other)
  var virtualReturn = vtbl[].compare(self, slotval1)
  virtualReturn

proc QSGVertexColorMaterialtypeX*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGVertexColorMaterial_virtualbase_typeX(self.h))

proc fcQSGVertexColorMaterial_vtable_callback_typeX(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGVertexColorMaterialVTable](fcQSGVertexColorMaterial_vdata(self)[])
  let self = QSGVertexColorMaterial(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn.h

proc QSGVertexColorMaterialcreateShader*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGVertexColorMaterial_virtualbase_createShader(self.h, cint(renderMode)))

proc fcQSGVertexColorMaterial_vtable_callback_createShader(self: pointer, renderMode: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGVertexColorMaterialVTable](fcQSGVertexColorMaterial_vdata(self)[])
  let self = QSGVertexColorMaterial(h: self)
  let slotval1 = cint(renderMode)
  var virtualReturn = vtbl[].createShader(self, slotval1)
  virtualReturn.h

type VirtualQSGVertexColorMaterial* {.inheritable.} = ref object of QSGVertexColorMaterial
  vtbl*: cQSGVertexColorMaterialVTable
method compare*(self: VirtualQSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.base.} =
  QSGVertexColorMaterialcompare(self[], other)
proc fcQSGVertexColorMaterial_method_callback_compare(self: pointer, other: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSGVertexColorMaterial](fcQSGVertexColorMaterial_vdata(self)[])
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other)
  var virtualReturn = inst.compare(slotval1)
  virtualReturn

method typeX*(self: VirtualQSGVertexColorMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.base.} =
  QSGVertexColorMaterialtypeX(self[])
proc fcQSGVertexColorMaterial_method_callback_typeX(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSGVertexColorMaterial](fcQSGVertexColorMaterial_vdata(self)[])
  var virtualReturn = inst.typeX()
  virtualReturn.h

method createShader*(self: VirtualQSGVertexColorMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader {.base.} =
  QSGVertexColorMaterialcreateShader(self[], renderMode)
proc fcQSGVertexColorMaterial_method_callback_createShader(self: pointer, renderMode: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSGVertexColorMaterial](fcQSGVertexColorMaterial_vdata(self)[])
  let slotval1 = cint(renderMode)
  var virtualReturn = inst.createShader(slotval1)
  virtualReturn.h

proc create*(T: type gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial,
    vtbl: ref QSGVertexColorMaterialVTable = nil): gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial =
  let vtbl = if vtbl == nil: new QSGVertexColorMaterialVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGVertexColorMaterialVTable](fcQSGVertexColorMaterial_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].compare):
    vtbl[].vtbl.compare = fcQSGVertexColorMaterial_vtable_callback_compare
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = fcQSGVertexColorMaterial_vtable_callback_typeX
  if not isNil(vtbl[].createShader):
    vtbl[].vtbl.createShader = fcQSGVertexColorMaterial_vtable_callback_createShader
  let tmp = gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial(h: fcQSGVertexColorMaterial_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQSGVertexColorMaterial_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQSGVertexColorMaterial_mvtbl = cQSGVertexColorMaterialVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGVertexColorMaterial()[])](self.fcQSGVertexColorMaterial_vdata()[])
    inst[].h = nil,

  compare: fcQSGVertexColorMaterial_method_callback_compare,
  typeX: fcQSGVertexColorMaterial_method_callback_typeX,
  createShader: fcQSGVertexColorMaterial_method_callback_createShader,
)
proc create*(T: type gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial,
    inst: VirtualQSGVertexColorMaterial) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGVertexColorMaterial_new(addr(cQSGVertexColorMaterial_mvtbl), csize_t(sizeof(pointer)))
  fcQSGVertexColorMaterial_vdata(inst[].h)[] = addr inst[]

proc delete*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial) =
  fcQSGVertexColorMaterial_delete(self.h)
