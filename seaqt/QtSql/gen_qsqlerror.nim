import ./qtsql_pkg

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


type QSqlErrorErrorTypeEnum* = distinct cint
template NoError*(_: type QSqlErrorErrorTypeEnum): untyped = 0
template ConnectionError*(_: type QSqlErrorErrorTypeEnum): untyped = 1
template StatementError*(_: type QSqlErrorErrorTypeEnum): untyped = 2
template TransactionError*(_: type QSqlErrorErrorTypeEnum): untyped = 3
template UnknownError*(_: type QSqlErrorErrorTypeEnum): untyped = 4


import ./gen_qsqlerror_types
export gen_qsqlerror_types


type cQSqlError*{.exportc: "QSqlError", incompleteStruct.} = object

proc fcQSqlError_operatorAssign(self: pointer, other: pointer): void {.importc: "QSqlError_operatorAssign".}
proc fcQSqlError_operatorEqual(self: pointer, other: pointer): bool {.importc: "QSqlError_operatorEqual".}
proc fcQSqlError_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QSqlError_operatorNotEqual".}
proc fcQSqlError_swap(self: pointer, other: pointer): void {.importc: "QSqlError_swap".}
proc fcQSqlError_driverText(self: pointer): struct_seaqt_string {.importc: "QSqlError_driverText".}
proc fcQSqlError_databaseText(self: pointer): struct_seaqt_string {.importc: "QSqlError_databaseText".}
proc fcQSqlError_typeX(self: pointer): cint {.importc: "QSqlError_type".}
proc fcQSqlError_number(self: pointer): cint {.importc: "QSqlError_number".}
proc fcQSqlError_nativeErrorCode(self: pointer): struct_seaqt_string {.importc: "QSqlError_nativeErrorCode".}
proc fcQSqlError_text(self: pointer): struct_seaqt_string {.importc: "QSqlError_text".}
proc fcQSqlError_isValid(self: pointer): bool {.importc: "QSqlError_isValid".}
proc fcQSqlError_setDriverText(self: pointer, driverText: struct_seaqt_string): void {.importc: "QSqlError_setDriverText".}
proc fcQSqlError_setDatabaseText(self: pointer, databaseText: struct_seaqt_string): void {.importc: "QSqlError_setDatabaseText".}
proc fcQSqlError_setType(self: pointer, typeVal: cint): void {.importc: "QSqlError_setType".}
proc fcQSqlError_setNumber(self: pointer, number: cint): void {.importc: "QSqlError_setNumber".}
proc fcQSqlError_new(driverText: struct_seaqt_string, databaseText: struct_seaqt_string, typeVal: cint, number: cint): ptr cQSqlError {.importc: "QSqlError_new".}
proc fcQSqlError_new2(): ptr cQSqlError {.importc: "QSqlError_new2".}
proc fcQSqlError_new3(other: pointer): ptr cQSqlError {.importc: "QSqlError_new3".}
proc fcQSqlError_new4(driverText: struct_seaqt_string): ptr cQSqlError {.importc: "QSqlError_new4".}
proc fcQSqlError_new5(driverText: struct_seaqt_string, databaseText: struct_seaqt_string): ptr cQSqlError {.importc: "QSqlError_new5".}
proc fcQSqlError_new6(driverText: struct_seaqt_string, databaseText: struct_seaqt_string, typeVal: cint): ptr cQSqlError {.importc: "QSqlError_new6".}
proc fcQSqlError_new7(driverText: struct_seaqt_string, databaseText: struct_seaqt_string, typeVal: cint, errorCode: struct_seaqt_string): ptr cQSqlError {.importc: "QSqlError_new7".}

proc operatorAssign*(self: gen_qsqlerror_types.QSqlError, other: gen_qsqlerror_types.QSqlError): void =
  fcQSqlError_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qsqlerror_types.QSqlError, other: gen_qsqlerror_types.QSqlError): bool =
  fcQSqlError_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qsqlerror_types.QSqlError, other: gen_qsqlerror_types.QSqlError): bool =
  fcQSqlError_operatorNotEqual(self.h, other.h)

proc swap*(self: gen_qsqlerror_types.QSqlError, other: gen_qsqlerror_types.QSqlError): void =
  fcQSqlError_swap(self.h, other.h)

proc driverText*(self: gen_qsqlerror_types.QSqlError): string =
  let v_ms = fcQSqlError_driverText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc databaseText*(self: gen_qsqlerror_types.QSqlError): string =
  let v_ms = fcQSqlError_databaseText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc typeX*(self: gen_qsqlerror_types.QSqlError): cint =
  cint(fcQSqlError_typeX(self.h))

proc number*(self: gen_qsqlerror_types.QSqlError): cint =
  fcQSqlError_number(self.h)

proc nativeErrorCode*(self: gen_qsqlerror_types.QSqlError): string =
  let v_ms = fcQSqlError_nativeErrorCode(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc text*(self: gen_qsqlerror_types.QSqlError): string =
  let v_ms = fcQSqlError_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: gen_qsqlerror_types.QSqlError): bool =
  fcQSqlError_isValid(self.h)

proc setDriverText*(self: gen_qsqlerror_types.QSqlError, driverText: openArray[char]): void =
  fcQSqlError_setDriverText(self.h, struct_seaqt_string(data: if len(driverText) > 0: addr driverText[0] else: nil, len: csize_t(len(driverText))))

proc setDatabaseText*(self: gen_qsqlerror_types.QSqlError, databaseText: openArray[char]): void =
  fcQSqlError_setDatabaseText(self.h, struct_seaqt_string(data: if len(databaseText) > 0: addr databaseText[0] else: nil, len: csize_t(len(databaseText))))

proc setType*(self: gen_qsqlerror_types.QSqlError, typeVal: cint): void =
  fcQSqlError_setType(self.h, cint(typeVal))

proc setNumber*(self: gen_qsqlerror_types.QSqlError, number: cint): void =
  fcQSqlError_setNumber(self.h, number)

proc create*(T: type gen_qsqlerror_types.QSqlError,
    driverText: openArray[char], databaseText: openArray[char], typeVal: cint, number: cint): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new(struct_seaqt_string(data: if len(driverText) > 0: addr driverText[0] else: nil, len: csize_t(len(driverText))), struct_seaqt_string(data: if len(databaseText) > 0: addr databaseText[0] else: nil, len: csize_t(len(databaseText))), cint(typeVal), number), owned: true)
  tmp
proc create*(T: type gen_qsqlerror_types.QSqlError): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new2(), owned: true)
  tmp
proc create*(T: type gen_qsqlerror_types.QSqlError,
    other: gen_qsqlerror_types.QSqlError): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new3(other.h), owned: true)
  tmp
proc create*(T: type gen_qsqlerror_types.QSqlError,
    driverText: openArray[char]): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new4(struct_seaqt_string(data: if len(driverText) > 0: addr driverText[0] else: nil, len: csize_t(len(driverText)))), owned: true)
  tmp
proc create*(T: type gen_qsqlerror_types.QSqlError,
    driverText: openArray[char], databaseText: openArray[char]): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new5(struct_seaqt_string(data: if len(driverText) > 0: addr driverText[0] else: nil, len: csize_t(len(driverText))), struct_seaqt_string(data: if len(databaseText) > 0: addr databaseText[0] else: nil, len: csize_t(len(databaseText)))), owned: true)
  tmp
proc create*(T: type gen_qsqlerror_types.QSqlError,
    driverText: openArray[char], databaseText: openArray[char], typeVal: cint): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new6(struct_seaqt_string(data: if len(driverText) > 0: addr driverText[0] else: nil, len: csize_t(len(driverText))), struct_seaqt_string(data: if len(databaseText) > 0: addr databaseText[0] else: nil, len: csize_t(len(databaseText))), cint(typeVal)), owned: true)
  tmp
proc create*(T: type gen_qsqlerror_types.QSqlError,
    driverText: openArray[char], databaseText: openArray[char], typeVal: cint, errorCode: openArray[char]): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new7(struct_seaqt_string(data: if len(driverText) > 0: addr driverText[0] else: nil, len: csize_t(len(driverText))), struct_seaqt_string(data: if len(databaseText) > 0: addr databaseText[0] else: nil, len: csize_t(len(databaseText))), cint(typeVal), struct_seaqt_string(data: if len(errorCode) > 0: addr errorCode[0] else: nil, len: csize_t(len(errorCode)))), owned: true)
  tmp
