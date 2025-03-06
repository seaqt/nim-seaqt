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
{.compile("gen_qsgflatcolormaterial.cpp", cflags).}


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

proc fcQSGFlatColorMaterial_typeX(self: pointer, ): pointer {.importc: "QSGFlatColorMaterial_type".}
proc fcQSGFlatColorMaterial_createShader(self: pointer, renderMode: cint): pointer {.importc: "QSGFlatColorMaterial_createShader".}
proc fcQSGFlatColorMaterial_setColor(self: pointer, color: pointer): void {.importc: "QSGFlatColorMaterial_setColor".}
proc fcQSGFlatColorMaterial_color(self: pointer, ): pointer {.importc: "QSGFlatColorMaterial_color".}
proc fcQSGFlatColorMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGFlatColorMaterial_compare".}
type cQSGFlatColorMaterialVTable = object
  destructor*: proc(vtbl: ptr cQSGFlatColorMaterialVTable, self: ptr cQSGFlatColorMaterial) {.cdecl, raises:[], gcsafe.}
  typeX*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  createShader*: proc(vtbl, self: pointer, renderMode: cint): pointer {.cdecl, raises: [], gcsafe.}
  compare*: proc(vtbl, self: pointer, other: pointer): cint {.cdecl, raises: [], gcsafe.}
proc fcQSGFlatColorMaterial_virtualbase_typeX(self: pointer, ): pointer {.importc: "QSGFlatColorMaterial_virtualbase_type".}
proc fcQSGFlatColorMaterial_virtualbase_createShader(self: pointer, renderMode: cint): pointer {.importc: "QSGFlatColorMaterial_virtualbase_createShader".}
proc fcQSGFlatColorMaterial_virtualbase_compare(self: pointer, other: pointer): cint {.importc: "QSGFlatColorMaterial_virtualbase_compare".}
proc fcQSGFlatColorMaterial_new(vtbl: pointer, ): ptr cQSGFlatColorMaterial {.importc: "QSGFlatColorMaterial_new".}
proc fcQSGFlatColorMaterial_delete(self: pointer) {.importc: "QSGFlatColorMaterial_delete".}

proc typeX*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGFlatColorMaterial_typeX(self.h))

proc createShader*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGFlatColorMaterial_createShader(self.h, cint(renderMode)))

proc setColor*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, color: gen_qcolor_types.QColor): void =
  fcQSGFlatColorMaterial_setColor(self.h, color.h)

proc color*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGFlatColorMaterial_color(self.h))

proc compare*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGFlatColorMaterial_compare(self.h, other.h)

type QSGFlatColorMaterialtypeXProc* = proc(self: QSGFlatColorMaterial): gen_qsgmaterialtype_types.QSGMaterialType {.raises: [], gcsafe.}
type QSGFlatColorMaterialcreateShaderProc* = proc(self: QSGFlatColorMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader {.raises: [], gcsafe.}
type QSGFlatColorMaterialcompareProc* = proc(self: QSGFlatColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint {.raises: [], gcsafe.}
type QSGFlatColorMaterialVTable* = object
  vtbl: cQSGFlatColorMaterialVTable
  typeX*: QSGFlatColorMaterialtypeXProc
  createShader*: QSGFlatColorMaterialcreateShaderProc
  compare*: QSGFlatColorMaterialcompareProc
proc QSGFlatColorMaterialtypeX*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGFlatColorMaterial_virtualbase_typeX(self.h))

proc miqt_exec_callback_cQSGFlatColorMaterial_typeX(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGFlatColorMaterialVTable](vtbl)
  let self = QSGFlatColorMaterial(h: self)
  var virtualReturn = vtbl[].typeX(self)
  virtualReturn.h

proc QSGFlatColorMaterialcreateShader*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGFlatColorMaterial_virtualbase_createShader(self.h, cint(renderMode)))

proc miqt_exec_callback_cQSGFlatColorMaterial_createShader(vtbl: pointer, self: pointer, renderMode: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSGFlatColorMaterialVTable](vtbl)
  let self = QSGFlatColorMaterial(h: self)
  let slotval1 = cint(renderMode)
  var virtualReturn = vtbl[].createShader(self, slotval1)
  virtualReturn.h

proc QSGFlatColorMaterialcompare*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGFlatColorMaterial_virtualbase_compare(self.h, other.h)

proc miqt_exec_callback_cQSGFlatColorMaterial_compare(vtbl: pointer, self: pointer, other: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSGFlatColorMaterialVTable](vtbl)
  let self = QSGFlatColorMaterial(h: self)
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other)
  var virtualReturn = vtbl[].compare(self, slotval1)
  virtualReturn

proc create*(T: type gen_qsgflatcolormaterial_types.QSGFlatColorMaterial,
    vtbl: ref QSGFlatColorMaterialVTable = nil): gen_qsgflatcolormaterial_types.QSGFlatColorMaterial =
  let vtbl = if vtbl == nil: new QSGFlatColorMaterialVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGFlatColorMaterialVTable, _: ptr cQSGFlatColorMaterial) {.cdecl.} =
    let vtbl = cast[ref QSGFlatColorMaterialVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQSGFlatColorMaterial_typeX
  if not isNil(vtbl.createShader):
    vtbl[].vtbl.createShader = miqt_exec_callback_cQSGFlatColorMaterial_createShader
  if not isNil(vtbl.compare):
    vtbl[].vtbl.compare = miqt_exec_callback_cQSGFlatColorMaterial_compare
  gen_qsgflatcolormaterial_types.QSGFlatColorMaterial(h: fcQSGFlatColorMaterial_new(addr(vtbl[]), ))

proc delete*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial) =
  fcQSGFlatColorMaterial_delete(self.h)
