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

proc fcQSGVertexColorMaterial_new(): ptr cQSGVertexColorMaterial {.importc: "QSGVertexColorMaterial_new".}
proc fcQSGVertexColorMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGVertexColorMaterial_compare".}
proc fQSGVertexColorMaterial_virtualbase_compare(self: pointer, other: pointer): cint{.importc: "QSGVertexColorMaterial_virtualbase_compare".}
proc fcQSGVertexColorMaterial_override_virtual_compare(self: pointer, slot: int) {.importc: "QSGVertexColorMaterial_override_virtual_compare".}
proc fQSGVertexColorMaterial_virtualbase_type(self: pointer, ): pointer{.importc: "QSGVertexColorMaterial_virtualbase_type".}
proc fcQSGVertexColorMaterial_override_virtual_typeX(self: pointer, slot: int) {.importc: "QSGVertexColorMaterial_override_virtual_type".}
proc fQSGVertexColorMaterial_virtualbase_createShader(self: pointer, ): pointer{.importc: "QSGVertexColorMaterial_virtualbase_createShader".}
proc fcQSGVertexColorMaterial_override_virtual_createShader(self: pointer, slot: int) {.importc: "QSGVertexColorMaterial_override_virtual_createShader".}
proc fcQSGVertexColorMaterial_delete(self: pointer) {.importc: "QSGVertexColorMaterial_delete".}


func init*(T: type gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, h: ptr cQSGVertexColorMaterial): gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial =
  T(h: h)
proc create*(T: type gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, ): gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial =
  gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial.init(fcQSGVertexColorMaterial_new())

proc compare*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGVertexColorMaterial_compare(self.h, other.h)

proc QSGVertexColorMaterialcompare*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fQSGVertexColorMaterial_virtualbase_compare(self.h, other.h)

type QSGVertexColorMaterialcompareProc* = proc(other: gen_qsgmaterial_types.QSGMaterial): cint
proc oncompare*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, slot: QSGVertexColorMaterialcompareProc) =
  # TODO check subclass
  var tmp = new QSGVertexColorMaterialcompareProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGVertexColorMaterial_override_virtual_compare(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGVertexColorMaterial_compare(self: ptr cQSGVertexColorMaterial, slot: int, other: pointer): cint {.exportc: "miqt_exec_callback_QSGVertexColorMaterial_compare ".} =
  var nimfunc = cast[ptr QSGVertexColorMaterialcompareProc](cast[pointer](slot))
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSGVertexColorMaterialtypeX*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fQSGVertexColorMaterial_virtualbase_type(self.h))

type QSGVertexColorMaterialtypeXProc* = proc(): gen_qsgmaterialtype_types.QSGMaterialType
proc ontypeX*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, slot: QSGVertexColorMaterialtypeXProc) =
  # TODO check subclass
  var tmp = new QSGVertexColorMaterialtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGVertexColorMaterial_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGVertexColorMaterial_type(self: ptr cQSGVertexColorMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGVertexColorMaterial_type ".} =
  var nimfunc = cast[ptr QSGVertexColorMaterialtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSGVertexColorMaterialcreateShader*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, ): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fQSGVertexColorMaterial_virtualbase_createShader(self.h))

type QSGVertexColorMaterialcreateShaderProc* = proc(): gen_qsgmaterialshader_types.QSGMaterialShader
proc oncreateShader*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial, slot: QSGVertexColorMaterialcreateShaderProc) =
  # TODO check subclass
  var tmp = new QSGVertexColorMaterialcreateShaderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGVertexColorMaterial_override_virtual_createShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGVertexColorMaterial_createShader(self: ptr cQSGVertexColorMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGVertexColorMaterial_createShader ".} =
  var nimfunc = cast[ptr QSGVertexColorMaterialcreateShaderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial) =
  fcQSGVertexColorMaterial_delete(self.h)
