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

proc fcQSGFlatColorMaterial_new(): ptr cQSGFlatColorMaterial {.importc: "QSGFlatColorMaterial_new".}
proc fcQSGFlatColorMaterial_typeX(self: pointer, ): pointer {.importc: "QSGFlatColorMaterial_type".}
proc fcQSGFlatColorMaterial_createShader(self: pointer, ): pointer {.importc: "QSGFlatColorMaterial_createShader".}
proc fcQSGFlatColorMaterial_setColor(self: pointer, color: pointer): void {.importc: "QSGFlatColorMaterial_setColor".}
proc fcQSGFlatColorMaterial_color(self: pointer, ): pointer {.importc: "QSGFlatColorMaterial_color".}
proc fcQSGFlatColorMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGFlatColorMaterial_compare".}
proc fQSGFlatColorMaterial_virtualbase_type(self: pointer, ): pointer{.importc: "QSGFlatColorMaterial_virtualbase_type".}
proc fcQSGFlatColorMaterial_override_virtual_typeX(self: pointer, slot: int) {.importc: "QSGFlatColorMaterial_override_virtual_type".}
proc fQSGFlatColorMaterial_virtualbase_createShader(self: pointer, ): pointer{.importc: "QSGFlatColorMaterial_virtualbase_createShader".}
proc fcQSGFlatColorMaterial_override_virtual_createShader(self: pointer, slot: int) {.importc: "QSGFlatColorMaterial_override_virtual_createShader".}
proc fQSGFlatColorMaterial_virtualbase_compare(self: pointer, other: pointer): cint{.importc: "QSGFlatColorMaterial_virtualbase_compare".}
proc fcQSGFlatColorMaterial_override_virtual_compare(self: pointer, slot: int) {.importc: "QSGFlatColorMaterial_override_virtual_compare".}
proc fcQSGFlatColorMaterial_delete(self: pointer) {.importc: "QSGFlatColorMaterial_delete".}


func init*(T: type gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, h: ptr cQSGFlatColorMaterial): gen_qsgflatcolormaterial_types.QSGFlatColorMaterial =
  T(h: h)
proc create*(T: type gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, ): gen_qsgflatcolormaterial_types.QSGFlatColorMaterial =
  gen_qsgflatcolormaterial_types.QSGFlatColorMaterial.init(fcQSGFlatColorMaterial_new())

proc typeX*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGFlatColorMaterial_typeX(self.h))

proc createShader*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, ): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGFlatColorMaterial_createShader(self.h))

proc setColor*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, color: gen_qcolor_types.QColor): void =
  fcQSGFlatColorMaterial_setColor(self.h, color.h)

proc color*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGFlatColorMaterial_color(self.h))

proc compare*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGFlatColorMaterial_compare(self.h, other.h)

proc QSGFlatColorMaterialtypeX*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fQSGFlatColorMaterial_virtualbase_type(self.h))

type QSGFlatColorMaterialtypeXProc* = proc(): gen_qsgmaterialtype_types.QSGMaterialType
proc ontypeX*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, slot: QSGFlatColorMaterialtypeXProc) =
  # TODO check subclass
  var tmp = new QSGFlatColorMaterialtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGFlatColorMaterial_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGFlatColorMaterial_type(self: ptr cQSGFlatColorMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGFlatColorMaterial_type ".} =
  var nimfunc = cast[ptr QSGFlatColorMaterialtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSGFlatColorMaterialcreateShader*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, ): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fQSGFlatColorMaterial_virtualbase_createShader(self.h))

type QSGFlatColorMaterialcreateShaderProc* = proc(): gen_qsgmaterialshader_types.QSGMaterialShader
proc oncreateShader*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, slot: QSGFlatColorMaterialcreateShaderProc) =
  # TODO check subclass
  var tmp = new QSGFlatColorMaterialcreateShaderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGFlatColorMaterial_override_virtual_createShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGFlatColorMaterial_createShader(self: ptr cQSGFlatColorMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGFlatColorMaterial_createShader ".} =
  var nimfunc = cast[ptr QSGFlatColorMaterialcreateShaderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSGFlatColorMaterialcompare*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fQSGFlatColorMaterial_virtualbase_compare(self.h, other.h)

type QSGFlatColorMaterialcompareProc* = proc(other: gen_qsgmaterial_types.QSGMaterial): cint
proc oncompare*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, slot: QSGFlatColorMaterialcompareProc) =
  # TODO check subclass
  var tmp = new QSGFlatColorMaterialcompareProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGFlatColorMaterial_override_virtual_compare(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGFlatColorMaterial_compare(self: ptr cQSGFlatColorMaterial, slot: int, other: pointer): cint {.exportc: "miqt_exec_callback_QSGFlatColorMaterial_compare ".} =
  var nimfunc = cast[ptr QSGFlatColorMaterialcompareProc](cast[pointer](slot))
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc delete*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial) =
  fcQSGFlatColorMaterial_delete(self.h)
