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
{.compile("gen_qsgmaterial.cpp", cflags).}


type QSGMaterialFlagEnum* = distinct cint
template Blending*(_: type QSGMaterialFlagEnum): untyped = 1
template RequiresDeterminant*(_: type QSGMaterialFlagEnum): untyped = 2
template RequiresFullMatrixExceptTranslate*(_: type QSGMaterialFlagEnum): untyped = 6
template RequiresFullMatrix*(_: type QSGMaterialFlagEnum): untyped = 14
template CustomCompileStep*(_: type QSGMaterialFlagEnum): untyped = 16
template SupportsRhiShader*(_: type QSGMaterialFlagEnum): untyped = 32
template RhiShaderWanted*(_: type QSGMaterialFlagEnum): untyped = 4096


import ./gen_qsgmaterial_types
export gen_qsgmaterial_types

import
  ./gen_qsgmaterialshader_types,
  ./gen_qsgmaterialtype_types
export
  gen_qsgmaterialshader_types,
  gen_qsgmaterialtype_types

type cQSGMaterial*{.exportc: "QSGMaterial", incompleteStruct.} = object

proc fcQSGMaterial_new(): ptr cQSGMaterial {.importc: "QSGMaterial_new".}
proc fcQSGMaterial_typeX(self: pointer, ): pointer {.importc: "QSGMaterial_type".}
proc fcQSGMaterial_createShader(self: pointer, ): pointer {.importc: "QSGMaterial_createShader".}
proc fcQSGMaterial_compare(self: pointer, other: pointer): cint {.importc: "QSGMaterial_compare".}
proc fcQSGMaterial_flags(self: pointer, ): cint {.importc: "QSGMaterial_flags".}
proc fcQSGMaterial_setFlag(self: pointer, flags: cint): void {.importc: "QSGMaterial_setFlag".}
proc fcQSGMaterial_setFlag2(self: pointer, flags: cint, on: bool): void {.importc: "QSGMaterial_setFlag2".}
proc fcQSGMaterial_override_virtual_typeX(self: pointer, slot: int) {.importc: "QSGMaterial_override_virtual_type".}
proc fcQSGMaterial_override_virtual_createShader(self: pointer, slot: int) {.importc: "QSGMaterial_override_virtual_createShader".}
proc fQSGMaterial_virtualbase_compare(self: pointer, other: pointer): cint{.importc: "QSGMaterial_virtualbase_compare".}
proc fcQSGMaterial_override_virtual_compare(self: pointer, slot: int) {.importc: "QSGMaterial_override_virtual_compare".}
proc fcQSGMaterial_delete(self: pointer) {.importc: "QSGMaterial_delete".}


func init*(T: type gen_qsgmaterial_types.QSGMaterial, h: ptr cQSGMaterial): gen_qsgmaterial_types.QSGMaterial =
  T(h: h)
proc create*(T: type gen_qsgmaterial_types.QSGMaterial, ): gen_qsgmaterial_types.QSGMaterial =
  gen_qsgmaterial_types.QSGMaterial.init(fcQSGMaterial_new())

proc typeX*(self: gen_qsgmaterial_types.QSGMaterial, ): gen_qsgmaterialtype_types.QSGMaterialType =
  gen_qsgmaterialtype_types.QSGMaterialType(h: fcQSGMaterial_typeX(self.h))

proc createShader*(self: gen_qsgmaterial_types.QSGMaterial, ): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGMaterial_createShader(self.h))

proc compare*(self: gen_qsgmaterial_types.QSGMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fcQSGMaterial_compare(self.h, other.h)

proc flags*(self: gen_qsgmaterial_types.QSGMaterial, ): cint =
  cint(fcQSGMaterial_flags(self.h))

proc setFlag*(self: gen_qsgmaterial_types.QSGMaterial, flags: cint): void =
  fcQSGMaterial_setFlag(self.h, cint(flags))

proc setFlag*(self: gen_qsgmaterial_types.QSGMaterial, flags: cint, on: bool): void =
  fcQSGMaterial_setFlag2(self.h, cint(flags), on)

type QSGMaterialtypeXProc* = proc(): gen_qsgmaterialtype_types.QSGMaterialType
proc ontypeX*(self: gen_qsgmaterial_types.QSGMaterial, slot: QSGMaterialtypeXProc) =
  # TODO check subclass
  var tmp = new QSGMaterialtypeXProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterial_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterial_type(self: ptr cQSGMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGMaterial_type ".} =
  var nimfunc = cast[ptr QSGMaterialtypeXProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QSGMaterialcreateShaderProc* = proc(): gen_qsgmaterialshader_types.QSGMaterialShader
proc oncreateShader*(self: gen_qsgmaterial_types.QSGMaterial, slot: QSGMaterialcreateShaderProc) =
  # TODO check subclass
  var tmp = new QSGMaterialcreateShaderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterial_override_virtual_createShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterial_createShader(self: ptr cQSGMaterial, slot: int): pointer {.exportc: "miqt_exec_callback_QSGMaterial_createShader ".} =
  var nimfunc = cast[ptr QSGMaterialcreateShaderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSGMaterialcompare*(self: gen_qsgmaterial_types.QSGMaterial, other: gen_qsgmaterial_types.QSGMaterial): cint =
  fQSGMaterial_virtualbase_compare(self.h, other.h)

type QSGMaterialcompareProc* = proc(other: gen_qsgmaterial_types.QSGMaterial): cint
proc oncompare*(self: gen_qsgmaterial_types.QSGMaterial, slot: QSGMaterialcompareProc) =
  # TODO check subclass
  var tmp = new QSGMaterialcompareProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterial_override_virtual_compare(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterial_compare(self: ptr cQSGMaterial, slot: int, other: pointer): cint {.exportc: "miqt_exec_callback_QSGMaterial_compare ".} =
  var nimfunc = cast[ptr QSGMaterialcompareProc](cast[pointer](slot))
  let slotval1 = gen_qsgmaterial_types.QSGMaterial(h: other)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc delete*(self: gen_qsgmaterial_types.QSGMaterial) =
  fcQSGMaterial_delete(self.h)
