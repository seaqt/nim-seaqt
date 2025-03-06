import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qcborcommon.cpp", cflags).}


type QCborSimpleTypeEnum* = distinct uint8
template False*(_: type QCborSimpleTypeEnum): untyped = 20
template True*(_: type QCborSimpleTypeEnum): untyped = 21
template Null*(_: type QCborSimpleTypeEnum): untyped = 22
template Undefined*(_: type QCborSimpleTypeEnum): untyped = 23


type QCborTagEnum* = distinct culonglong

type QCborKnownTagsEnum* = distinct cint
template DateTimeString*(_: type QCborKnownTagsEnum): untyped = 0
template UnixTime_t*(_: type QCborKnownTagsEnum): untyped = 1
template PositiveBignum*(_: type QCborKnownTagsEnum): untyped = 2
template NegativeBignum*(_: type QCborKnownTagsEnum): untyped = 3
template Decimal*(_: type QCborKnownTagsEnum): untyped = 4
template Bigfloat*(_: type QCborKnownTagsEnum): untyped = 5
template COSE_Encrypt0*(_: type QCborKnownTagsEnum): untyped = 16
template COSE_Mac0*(_: type QCborKnownTagsEnum): untyped = 17
template COSE_Sign1*(_: type QCborKnownTagsEnum): untyped = 18
template ExpectedBase64url*(_: type QCborKnownTagsEnum): untyped = 21
template ExpectedBase64*(_: type QCborKnownTagsEnum): untyped = 22
template ExpectedBase16*(_: type QCborKnownTagsEnum): untyped = 23
template EncodedCbor*(_: type QCborKnownTagsEnum): untyped = 24
template Url*(_: type QCborKnownTagsEnum): untyped = 32
template Base64url*(_: type QCborKnownTagsEnum): untyped = 33
template Base64*(_: type QCborKnownTagsEnum): untyped = 34
template RegularExpression*(_: type QCborKnownTagsEnum): untyped = 35
template MimeMessage*(_: type QCborKnownTagsEnum): untyped = 36
template Uuid*(_: type QCborKnownTagsEnum): untyped = 37
template COSE_Encrypt*(_: type QCborKnownTagsEnum): untyped = 96
template COSE_Mac*(_: type QCborKnownTagsEnum): untyped = 97
template COSE_Sign*(_: type QCborKnownTagsEnum): untyped = 98
template Signature*(_: type QCborKnownTagsEnum): untyped = 55799


type QCborNegativeIntegerEnum* = distinct culonglong

type QCborErrorCodeEnum* = distinct cint
template UnknownError*(_: type QCborErrorCodeEnum): untyped = 1
template AdvancePastEnd*(_: type QCborErrorCodeEnum): untyped = 3
template InputOutputError*(_: type QCborErrorCodeEnum): untyped = 4
template GarbageAtEnd*(_: type QCborErrorCodeEnum): untyped = 256
template EndOfFile*(_: type QCborErrorCodeEnum): untyped = 257
template UnexpectedBreak*(_: type QCborErrorCodeEnum): untyped = 258
template UnknownType*(_: type QCborErrorCodeEnum): untyped = 259
template IllegalType*(_: type QCborErrorCodeEnum): untyped = 260
template IllegalNumber*(_: type QCborErrorCodeEnum): untyped = 261
template IllegalSimpleType*(_: type QCborErrorCodeEnum): untyped = 262
template InvalidUtf8String*(_: type QCborErrorCodeEnum): untyped = 516
template DataTooLarge*(_: type QCborErrorCodeEnum): untyped = 1024
template NestingTooDeep*(_: type QCborErrorCodeEnum): untyped = 1025
template UnsupportedType*(_: type QCborErrorCodeEnum): untyped = 1026
template NoError*(_: type QCborErrorCodeEnum): untyped = 0


import ./gen_qcborcommon_types
export gen_qcborcommon_types

import
  ./gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQCborError*{.exportc: "QCborError", incompleteStruct.} = object

proc fcQCborError_ToQCborError__Code(self: pointer, ): cint {.importc: "QCborError_ToQCborError__Code".}
proc fcQCborError_toString(self: pointer, ): struct_miqt_string {.importc: "QCborError_toString".}
proc fcQCborError_staticMetaObject(): pointer {.importc: "QCborError_staticMetaObject".}
proc fcQCborError_delete(self: pointer) {.importc: "QCborError_delete".}

proc ToQCborError__Code*(self: gen_qcborcommon_types.QCborError, ): cint =
  cint(fcQCborError_ToQCborError__Code(self.h))

proc toString*(self: gen_qcborcommon_types.QCborError, ): string =
  let v_ms = fcQCborError_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type gen_qcborcommon_types.QCborError): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCborError_staticMetaObject())
proc delete*(self: gen_qcborcommon_types.QCborError) =
  fcQCborError_delete(self.h)
