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

const cflags = gorge("pkg-config --cflags Qt6Quick") & " -fPIC"
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
type cQSGVertexColorMaterialVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQSGVertexColorMaterialVTable, self: ptr cQSGVertexColorMaterial) {.cdecl, raises:[], gcsafe.}
  compare*: proc(vtbl, self: pointer, other: pointer): cint {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  createShader*: proc(vtbl, self: pointer, renderMode: cint): pointer {.cdecl, raises: [], gcsafe.}
proc fcQSGVertexColorMaterial_virtualbase_compare(self: pointer, other: pointer): cint {.importc: "QSGVertexColorMaterial_virtualbase_compare".}
proc fcQSGVertexColorMaterial_virtualbase_typeX(self: pointer, ): pointer {.importc: "QSGVertexColorMaterial_virtualbase_type".}
proc fcQSGVertexColorMaterial_virtualbase_createShader(self: pointer, renderMode: cint): pointer {.importc: "QSGVertexColorMaterial_virtualbase_createShader".}
proc fcQSGVertexColorMaterial_new(vtbl: pointer, ): ptr cQSGVertexColorMaterial {.importc: "QSGVertexColorMaterial_new".}

proc compare*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGVertexColorMaterial_compare(self.h, other.h)

type QSGVertexColorMaterialcompareProc* = proc(self: QSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.raises: [], gcsafe.}
type QSGVertexColorMaterialtypeXProc* = proc(self: QSGVertexColorMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.raises: [], gcsafe.}
type QSGVertexColorMaterialcreateShaderProc* = proc(self: QSGVertexColorMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader {.raises: [], gcsafe.}
type QSGVertexColorMaterialVTable* {.inheritable, pure.} = object
  vtbl: cQSGVertexColorMaterialVTable
  compare*: QSGVertexColorMaterialcompareProc
  typeX*: QSGVertexColorMaterialtypeXProc
  createShader*: QSGVertexColorMaterialcreateShaderProc
proc QSGVertexColorMaterialcompare*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGVertexColorMaterial_virtualbase_compare(self.h, other.h)

proc miqt_exec_callback_cQSGVertexColorMaterial_compare(vtbl: pointer, self: pointer, other: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGVertexColorMaterialVTable](vtbl)
  let self = QSGVertexColorMaterial(h: self)
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other, owned: false)
  var virtualReturn = vtbl[].compare(self, slotval1)
  virtualReturn

proc QSGVertexColorMaterialtypeX*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGVertexColorMaterial_virtualbase_typeX(self.h), owned: false)

proc miqt_exec_callback_cQSGVertexColorMaterial_typeX(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGVertexColorMaterialVTable](vtbl)
  let self = QSGVertexColorMaterial(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSGVertexColorMaterialcreateShader*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGVertexColorMaterial_virtualbase_createShader(self.h, cint(renderMode)), owned: false)

proc miqt_exec_callback_cQSGVertexColorMaterial_createShader(vtbl: pointer, self: pointer, renderMode: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGVertexColorMaterialVTable](vtbl)
  let self = QSGVertexColorMaterial(h: self)
  let slotval1 = cint(renderMode)
  var virtualReturn = vtbl[].createShader(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQSGVertexColorMaterial* {.inheritable.} = ref object of QSGVertexColorMaterial
  vtbl*: cQSGVertexColorMaterialVTable
method compare*(self: VirtualQSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.base.} =
  QSGVertexColorMaterialcompare(self[], other)
proc miqt_exec_method_cQSGVertexColorMaterial_compare(vtbl: pointer, inst: pointer, other: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQSGVertexColorMaterial](cast[uint](vtbl) - uint(offsetOf(VirtualQSGVertexColorMaterial, vtbl)))
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other, owned: false)
  var virtualReturn = vtbl.compare(slotval1)
  virtualReturn

method typeX*(self: VirtualQSGVertexColorMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType {.base.} =
  QSGVertexColorMaterialtypeX(self[])
proc miqt_exec_method_cQSGVertexColorMaterial_typeX(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSGVertexColorMaterial](cast[uint](vtbl) - uint(offsetOf(VirtualQSGVertexColorMaterial, vtbl)))
  var virtualReturn = vtbl.typeX()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method createShader*(self: VirtualQSGVertexColorMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader {.base.} =
  QSGVertexColorMaterialcreateShader(self[], renderMode)
proc miqt_exec_method_cQSGVertexColorMaterial_createShader(vtbl: pointer, inst: pointer, renderMode: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQSGVertexColorMaterial](cast[uint](vtbl) - uint(offsetOf(VirtualQSGVertexColorMaterial, vtbl)))
  let slotval1 = cint(renderMode)
  var virtualReturn = vtbl.createShader(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc create*(T: type gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial,
    vtbl: ref QSGVertexColorMaterialVTable = nil): gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial =
  let vtbl = if vtbl == nil: new QSGVertexColorMaterialVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGVertexColorMaterialVTable, _: ptr cQSGVertexColorMaterial) {.cdecl.} =
    let vtbl = cast[ref QSGVertexColorMaterialVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].compare):
    vtbl[].vtbl.compare = miqt_exec_callback_cQSGVertexColorMaterial_compare
  if not isNil(vtbl[].typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQSGVertexColorMaterial_typeX
  if not isNil(vtbl[].createShader):
    vtbl[].vtbl.createShader = miqt_exec_callback_cQSGVertexColorMaterial_createShader
  gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial(h: fcQSGVertexColorMaterial_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial,
    vtbl: VirtualQSGVertexColorMaterial) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQSGVertexColorMaterialVTable, _: ptr cQSGVertexColorMaterial) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQSGVertexColorMaterial()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQSGVertexColorMaterial, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.compare = miqt_exec_method_cQSGVertexColorMaterial_compare
  vtbl[].vtbl.typeX = miqt_exec_method_cQSGVertexColorMaterial_typeX
  vtbl[].vtbl.createShader = miqt_exec_method_cQSGVertexColorMaterial_createShader
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQSGVertexColorMaterial_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

