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
type cQSGVertexColorMaterialVTable = object
  destructor*: proc(vtbl: ptr cQSGVertexColorMaterialVTable, self: ptr cQSGVertexColorMaterial) {.cdecl, raises:[], gcsafe.}
  compare*: proc(vtbl, self: pointer, other: pointer): cint {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  createShader*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQSGVertexColorMaterial_virtualbase_compare(self: pointer, other: pointer): cint {.importc: "QSGVertexColorMaterial_virtualbase_compare".}
proc fcQSGVertexColorMaterial_virtualbase_typeX(self: pointer, ): pointer {.importc: "QSGVertexColorMaterial_virtualbase_type".}
proc fcQSGVertexColorMaterial_virtualbase_createShader(self: pointer, ): pointer {.importc: "QSGVertexColorMaterial_virtualbase_createShader".}
proc fcQSGVertexColorMaterial_new(vtbl: pointer, ): ptr cQSGVertexColorMaterial {.importc: "QSGVertexColorMaterial_new".}
proc fcQSGVertexColorMaterial_delete(self: pointer) {.importc: "QSGVertexColorMaterial_delete".}

proc compare*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGVertexColorMaterial_compare(self.h, other.h)

type QSGVertexColorMaterialcompareProc* = proc(self: QSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.raises: [], gcsafe.}
type QSGVertexColorMaterialtypeXProc* = proc(self: QSGVertexColorMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.raises: [], gcsafe.}
type QSGVertexColorMaterialcreateShaderProc* = proc(self: QSGVertexColorMaterial): gen_qsgmaterialshader_types.QSGMaterialShader {.raises: [], gcsafe.}
type QSGVertexColorMaterialVTable* = object
  vtbl: cQSGVertexColorMaterialVTable
  compare*: QSGVertexColorMaterialcompareProc
  typeX*: QSGVertexColorMaterialtypeXProc
  createShader*: QSGVertexColorMaterialcreateShaderProc
proc QSGVertexColorMaterialcompare*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGVertexColorMaterial_virtualbase_compare(self.h, other.h)

proc miqt_exec_callback_cQSGVertexColorMaterial_compare(vtbl: pointer, self: pointer, other: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGVertexColorMaterialVTable](vtbl)
  let self = QSGVertexColorMaterial(h: self)
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other)
  var virtualReturn = vtbl[].compare(self, slotval1)
  virtualReturn

proc QSGVertexColorMaterialtypeX*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGVertexColorMaterial_virtualbase_typeX(self.h))

proc miqt_exec_callback_cQSGVertexColorMaterial_typeX(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGVertexColorMaterialVTable](vtbl)
  let self = QSGVertexColorMaterial(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn.h

proc QSGVertexColorMaterialcreateShader*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, ): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGVertexColorMaterial_virtualbase_createShader(self.h))

proc miqt_exec_callback_cQSGVertexColorMaterial_createShader(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGVertexColorMaterialVTable](vtbl)
  let self = QSGVertexColorMaterial(h: self)
  var virtualReturn = vtbl[].createShader(self)
  virtualReturn.h

proc create*(T: type gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial,
    vtbl: ref QSGVertexColorMaterialVTable = nil): gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial =
  let vtbl = if vtbl == nil: new QSGVertexColorMaterialVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGVertexColorMaterialVTable, _: ptr cQSGVertexColorMaterial) {.cdecl.} =
    let vtbl = cast[ref QSGVertexColorMaterialVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.compare):
    vtbl[].vtbl.compare = miqt_exec_callback_cQSGVertexColorMaterial_compare
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQSGVertexColorMaterial_typeX
  if not isNil(vtbl.createShader):
    vtbl[].vtbl.createShader = miqt_exec_callback_cQSGVertexColorMaterial_createShader
  gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial(h: fcQSGVertexColorMaterial_new(addr(vtbl[]), ))

proc delete*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial) =
  fcQSGVertexColorMaterial_delete(self.h)
