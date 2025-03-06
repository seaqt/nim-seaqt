import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_quuid.cpp", cflags).}


type QUuidVariantEnum* = distinct cint
template VarUnknown*(_: type QUuidVariantEnum): untyped = -1
template NCS*(_: type QUuidVariantEnum): untyped = 0
template DCE*(_: type QUuidVariantEnum): untyped = 2
template Microsoft*(_: type QUuidVariantEnum): untyped = 6
template Reserved*(_: type QUuidVariantEnum): untyped = 7


type QUuidVersionEnum* = distinct cint
template VerUnknown*(_: type QUuidVersionEnum): untyped = -1
template Time*(_: type QUuidVersionEnum): untyped = 1
template EmbeddedPOSIX*(_: type QUuidVersionEnum): untyped = 2
template Md5*(_: type QUuidVersionEnum): untyped = 3
template Name*(_: type QUuidVersionEnum): untyped = 3
template Random*(_: type QUuidVersionEnum): untyped = 4
template Sha1*(_: type QUuidVersionEnum): untyped = 5


type QUuidStringFormatEnum* = distinct cint
template WithBraces*(_: type QUuidStringFormatEnum): untyped = 0
template WithoutBraces*(_: type QUuidStringFormatEnum): untyped = 1
template Id128*(_: type QUuidStringFormatEnum): untyped = 3


import ./gen_quuid_types
export gen_quuid_types

import
  ./gen_qanystringview_types,
  ./gen_qbytearrayview_types
export
  gen_qanystringview_types,
  gen_qbytearrayview_types

type cQUuid*{.exportc: "QUuid", incompleteStruct.} = object

proc fcQUuid_fromString(string: pointer): pointer {.importc: "QUuid_fromString".}
proc fcQUuid_toString(self: pointer, ): struct_miqt_string {.importc: "QUuid_toString".}
proc fcQUuid_toByteArray(self: pointer, ): struct_miqt_string {.importc: "QUuid_toByteArray".}
proc fcQUuid_toRfc4122(self: pointer, ): struct_miqt_string {.importc: "QUuid_toRfc4122".}
proc fcQUuid_fromRfc4122(param1: pointer): pointer {.importc: "QUuid_fromRfc4122".}
proc fcQUuid_isNull(self: pointer, ): bool {.importc: "QUuid_isNull".}
proc fcQUuid_operatorEqual(self: pointer, orig: pointer): bool {.importc: "QUuid_operatorEqual".}
proc fcQUuid_operatorNotEqual(self: pointer, orig: pointer): bool {.importc: "QUuid_operatorNotEqual".}
proc fcQUuid_operatorLesser(self: pointer, other: pointer): bool {.importc: "QUuid_operatorLesser".}
proc fcQUuid_operatorGreater(self: pointer, other: pointer): bool {.importc: "QUuid_operatorGreater".}
proc fcQUuid_createUuid(): pointer {.importc: "QUuid_createUuid".}
proc fcQUuid_createUuidV3(ns: pointer, baseData: struct_miqt_string): pointer {.importc: "QUuid_createUuidV3".}
proc fcQUuid_createUuidV5(ns: pointer, baseData: struct_miqt_string): pointer {.importc: "QUuid_createUuidV5".}
proc fcQUuid_createUuidV32(ns: pointer, baseData: struct_miqt_string): pointer {.importc: "QUuid_createUuidV32".}
proc fcQUuid_createUuidV52(ns: pointer, baseData: struct_miqt_string): pointer {.importc: "QUuid_createUuidV52".}
proc fcQUuid_variant(self: pointer, ): cint {.importc: "QUuid_variant".}
proc fcQUuid_version(self: pointer, ): cint {.importc: "QUuid_version".}
proc fcQUuid_toString1(self: pointer, mode: cint): struct_miqt_string {.importc: "QUuid_toString1".}
proc fcQUuid_toByteArray1(self: pointer, mode: cint): struct_miqt_string {.importc: "QUuid_toByteArray1".}
proc fcQUuid_new(): ptr cQUuid {.importc: "QUuid_new".}
proc fcQUuid_new2(l: cuint, w1: cushort, w2: cushort, b1: uint8, b2: uint8, b3: uint8, b4: uint8, b5: uint8, b6: uint8, b7: uint8, b8: uint8): ptr cQUuid {.importc: "QUuid_new2".}
proc fcQUuid_new3(string: pointer): ptr cQUuid {.importc: "QUuid_new3".}
proc fcQUuid_new4(param1: pointer): ptr cQUuid {.importc: "QUuid_new4".}
proc fcQUuid_delete(self: pointer) {.importc: "QUuid_delete".}

proc fromString*(_: type gen_quuid_types.QUuid, string: gen_qanystringview_types.QAnyStringView): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQUuid_fromString(string.h))

proc toString*(self: gen_quuid_types.QUuid, ): string =
  let v_ms = fcQUuid_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toByteArray*(self: gen_quuid_types.QUuid, ): seq[byte] =
  var v_bytearray = fcQUuid_toByteArray(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toRfc4122*(self: gen_quuid_types.QUuid, ): seq[byte] =
  var v_bytearray = fcQUuid_toRfc4122(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromRfc4122*(_: type gen_quuid_types.QUuid, param1: gen_qbytearrayview_types.QByteArrayView): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQUuid_fromRfc4122(param1.h))

proc isNull*(self: gen_quuid_types.QUuid, ): bool =
  fcQUuid_isNull(self.h)

proc operatorEqual*(self: gen_quuid_types.QUuid, orig: gen_quuid_types.QUuid): bool =
  fcQUuid_operatorEqual(self.h, orig.h)

proc operatorNotEqual*(self: gen_quuid_types.QUuid, orig: gen_quuid_types.QUuid): bool =
  fcQUuid_operatorNotEqual(self.h, orig.h)

proc operatorLesser*(self: gen_quuid_types.QUuid, other: gen_quuid_types.QUuid): bool =
  fcQUuid_operatorLesser(self.h, other.h)

proc operatorGreater*(self: gen_quuid_types.QUuid, other: gen_quuid_types.QUuid): bool =
  fcQUuid_operatorGreater(self.h, other.h)

proc createUuid*(_: type gen_quuid_types.QUuid, ): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQUuid_createUuid())

proc createUuidV3*(_: type gen_quuid_types.QUuid, ns: gen_quuid_types.QUuid, baseData: seq[byte]): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQUuid_createUuidV3(ns.h, struct_miqt_string(data: cast[cstring](if len(baseData) == 0: nil else: unsafeAddr baseData[0]), len: csize_t(len(baseData)))))

proc createUuidV5*(_: type gen_quuid_types.QUuid, ns: gen_quuid_types.QUuid, baseData: seq[byte]): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQUuid_createUuidV5(ns.h, struct_miqt_string(data: cast[cstring](if len(baseData) == 0: nil else: unsafeAddr baseData[0]), len: csize_t(len(baseData)))))

proc createUuidV3*(_: type gen_quuid_types.QUuid, ns: gen_quuid_types.QUuid, baseData: string): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQUuid_createUuidV32(ns.h, struct_miqt_string(data: baseData, len: csize_t(len(baseData)))))

proc createUuidV5*(_: type gen_quuid_types.QUuid, ns: gen_quuid_types.QUuid, baseData: string): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQUuid_createUuidV52(ns.h, struct_miqt_string(data: baseData, len: csize_t(len(baseData)))))

proc variant*(self: gen_quuid_types.QUuid, ): cint =
  cint(fcQUuid_variant(self.h))

proc version*(self: gen_quuid_types.QUuid, ): cint =
  cint(fcQUuid_version(self.h))

proc toString*(self: gen_quuid_types.QUuid, mode: cint): string =
  let v_ms = fcQUuid_toString1(self.h, cint(mode))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toByteArray*(self: gen_quuid_types.QUuid, mode: cint): seq[byte] =
  var v_bytearray = fcQUuid_toByteArray1(self.h, cint(mode))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc create*(T: type gen_quuid_types.QUuid): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQUuid_new())

proc create*(T: type gen_quuid_types.QUuid,
    l: cuint, w1: cushort, w2: cushort, b1: uint8, b2: uint8, b3: uint8, b4: uint8, b5: uint8, b6: uint8, b7: uint8, b8: uint8): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQUuid_new2(l, w1, w2, b1, b2, b3, b4, b5, b6, b7, b8))

proc create*(T: type gen_quuid_types.QUuid,
    string: gen_qanystringview_types.QAnyStringView): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQUuid_new3(string.h))

proc create*(T: type gen_quuid_types.QUuid,
    param1: gen_quuid_types.QUuid): gen_quuid_types.QUuid =
  gen_quuid_types.QUuid(h: fcQUuid_new4(param1.h))

proc delete*(self: gen_quuid_types.QUuid) =
  fcQUuid_delete(self.h)
