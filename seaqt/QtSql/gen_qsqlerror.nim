import ./qtsql_pkg

{.push raises: [].}

from system/ansi_c import c_free

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
proc fcQSqlError_nativeErrorCode(self: pointer): struct_seaqt_string {.importc: "QSqlError_nativeErrorCode".}
proc fcQSqlError_text(self: pointer): struct_seaqt_string {.importc: "QSqlError_text".}
proc fcQSqlError_isValid(self: pointer): bool {.importc: "QSqlError_isValid".}
proc fcQSqlError_new(): ptr cQSqlError {.importc: "QSqlError_new".}
proc fcQSqlError_new2(other: pointer): ptr cQSqlError {.importc: "QSqlError_new2".}
proc fcQSqlError_new3(driverText: struct_seaqt_string): ptr cQSqlError {.importc: "QSqlError_new3".}
proc fcQSqlError_new4(driverText: struct_seaqt_string, databaseText: struct_seaqt_string): ptr cQSqlError {.importc: "QSqlError_new4".}
proc fcQSqlError_new5(driverText: struct_seaqt_string, databaseText: struct_seaqt_string, typeVal: cint): ptr cQSqlError {.importc: "QSqlError_new5".}
proc fcQSqlError_new6(driverText: struct_seaqt_string, databaseText: struct_seaqt_string, typeVal: cint, errorCode: struct_seaqt_string): ptr cQSqlError {.importc: "QSqlError_new6".}
proc fcQSqlError_delete(self: pointer) {.importc: "QSqlError_delete".}

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

proc create*(T: type gen_qsqlerror_types.QSqlError): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new())
  tmp
proc create*(T: type gen_qsqlerror_types.QSqlError,
    other: gen_qsqlerror_types.QSqlError): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new2(other.h))
  tmp
proc create*(T: type gen_qsqlerror_types.QSqlError,
    driverText: openArray[char]): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new3(struct_seaqt_string(data: if len(driverText) > 0: addr driverText[0] else: nil, len: csize_t(len(driverText)))))
  tmp
proc create*(T: type gen_qsqlerror_types.QSqlError,
    driverText: openArray[char], databaseText: openArray[char]): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new4(struct_seaqt_string(data: if len(driverText) > 0: addr driverText[0] else: nil, len: csize_t(len(driverText))), struct_seaqt_string(data: if len(databaseText) > 0: addr databaseText[0] else: nil, len: csize_t(len(databaseText)))))
  tmp
proc create*(T: type gen_qsqlerror_types.QSqlError,
    driverText: openArray[char], databaseText: openArray[char], typeVal: cint): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new5(struct_seaqt_string(data: if len(driverText) > 0: addr driverText[0] else: nil, len: csize_t(len(driverText))), struct_seaqt_string(data: if len(databaseText) > 0: addr databaseText[0] else: nil, len: csize_t(len(databaseText))), cint(typeVal)))
  tmp
proc create*(T: type gen_qsqlerror_types.QSqlError,
    driverText: openArray[char], databaseText: openArray[char], typeVal: cint, errorCode: openArray[char]): gen_qsqlerror_types.QSqlError =
  let tmp = gen_qsqlerror_types.QSqlError(h: fcQSqlError_new6(struct_seaqt_string(data: if len(driverText) > 0: addr driverText[0] else: nil, len: csize_t(len(driverText))), struct_seaqt_string(data: if len(databaseText) > 0: addr databaseText[0] else: nil, len: csize_t(len(databaseText))), cint(typeVal), struct_seaqt_string(data: if len(errorCode) > 0: addr errorCode[0] else: nil, len: csize_t(len(errorCode)))))
  tmp
proc delete*(self: gen_qsqlerror_types.QSqlError) =
  fcQSqlError_delete(self.h)
