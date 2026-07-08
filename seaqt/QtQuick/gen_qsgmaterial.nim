import ./qtquick_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
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
  ./gen_qsgmaterialshader_types
export
  gen_qsgmaterialshader_types

type cQSGMaterial*{.exportc: "QSGMaterial", incompleteStruct.} = object

proc fcQSGMaterial_createShader(self: pointer, renderMode: cint): pointer {.importc: "QSGMaterial_createShader".}
proc fcQSGMaterial_flags(self: pointer): cint {.importc: "QSGMaterial_flags".}
proc fcQSGMaterial_setFlagFlags(self: pointer, flags: cint): void {.importc: "QSGMaterial_setFlag_flags".}
proc fcQSGMaterial_setFlagFlagsOn(self: pointer, flags: cint, on: bool): void {.importc: "QSGMaterial_setFlag_flags_on".}

proc createShader*(self: gen_qsgmaterial_types.QSGMaterial, renderMode: cint): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGMaterial_createShader(self.h, cint(renderMode)), owned: false)

proc flags*(self: gen_qsgmaterial_types.QSGMaterial): cint =
  cint(fcQSGMaterial_flags(self.h))

proc setFlag*(self: gen_qsgmaterial_types.QSGMaterial, flags: cint): void =
  fcQSGMaterial_setFlagFlags(self.h, cint(flags))

proc setFlag*(self: gen_qsgmaterial_types.QSGMaterial, flags: cint, on: bool): void =
  fcQSGMaterial_setFlagFlagsOn(self.h, cint(flags), on)

