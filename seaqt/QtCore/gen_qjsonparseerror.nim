import ./qtcore_pkg

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


type QJsonParseErrorParseErrorEnum* = distinct cint
template NoError*(_: type QJsonParseErrorParseErrorEnum): untyped = 0
template UnterminatedObject*(_: type QJsonParseErrorParseErrorEnum): untyped = 1
template MissingNameSeparator*(_: type QJsonParseErrorParseErrorEnum): untyped = 2
template UnterminatedArray*(_: type QJsonParseErrorParseErrorEnum): untyped = 3
template MissingValueSeparator*(_: type QJsonParseErrorParseErrorEnum): untyped = 4
template IllegalValue*(_: type QJsonParseErrorParseErrorEnum): untyped = 5
template TerminationByNumber*(_: type QJsonParseErrorParseErrorEnum): untyped = 6
template IllegalNumber*(_: type QJsonParseErrorParseErrorEnum): untyped = 7
template IllegalEscapeSequence*(_: type QJsonParseErrorParseErrorEnum): untyped = 8
template IllegalUTF8String*(_: type QJsonParseErrorParseErrorEnum): untyped = 9
template UnterminatedString*(_: type QJsonParseErrorParseErrorEnum): untyped = 10
template MissingObject*(_: type QJsonParseErrorParseErrorEnum): untyped = 11
template DeepNesting*(_: type QJsonParseErrorParseErrorEnum): untyped = 12
template DocumentTooLarge*(_: type QJsonParseErrorParseErrorEnum): untyped = 13
template GarbageAtEnd*(_: type QJsonParseErrorParseErrorEnum): untyped = 14


import ./gen_qjsonparseerror_types
export gen_qjsonparseerror_types


type cQJsonParseError*{.exportc: "QJsonParseError", incompleteStruct.} = object

proc fcQJsonParseError_errorString(self: pointer): struct_seaqt_string {.importc: "QJsonParseError_errorString".}
proc fcQJsonParseError_error(self: pointer): cint {.importc: "QJsonParseError_error".}
proc fcQJsonParseError_setError(self: pointer, error: cint): void {.importc: "QJsonParseError_setError".}

proc errorString*(self: gen_qjsonparseerror_types.QJsonParseError): string =
  let v_ms = fcQJsonParseError_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc error*(self: gen_qjsonparseerror_types.QJsonParseError): cint =
  cint(fcQJsonParseError_error(self.h))

proc setError*(self: gen_qjsonparseerror_types.QJsonParseError, error: cint): void =
  fcQJsonParseError_setError(self.h, cint(error))

