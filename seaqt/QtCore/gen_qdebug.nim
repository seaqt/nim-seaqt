import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QDebugVerbosityLevelEnum* = distinct cint
template MinimumVerbosity*(_: type QDebugVerbosityLevelEnum): untyped = 0
template DefaultVerbosity*(_: type QDebugVerbosityLevelEnum): untyped = 2
template MaximumVerbosity*(_: type QDebugVerbosityLevelEnum): untyped = 7


import ./gen_qdebug_types
export gen_qdebug_types

import
  ./gen_qchar_types,
  ./gen_qiodevice_types
export
  gen_qchar_types,
  gen_qiodevice_types

type cQDebug*{.exportc: "QDebug", incompleteStruct.} = object
type cQDebugStateSaver*{.exportc: "QDebugStateSaver", incompleteStruct.} = object
type cQNoDebug*{.exportc: "QNoDebug", incompleteStruct.} = object

proc fcQDebug_operatorAssign(self: pointer, other: pointer): void {.importc: "QDebug_operatorAssign".}
proc fcQDebug_swap(self: pointer, other: pointer): void {.importc: "QDebug_swap".}
proc fcQDebug_resetFormat(self: pointer): pointer {.importc: "QDebug_resetFormat".}
proc fcQDebug_space(self: pointer): pointer {.importc: "QDebug_space".}
proc fcQDebug_nospace(self: pointer): pointer {.importc: "QDebug_nospace".}
proc fcQDebug_maybeSpace(self: pointer): pointer {.importc: "QDebug_maybeSpace".}
proc fcQDebug_verbosity(self: pointer, verbosityLevel: cint): pointer {.importc: "QDebug_verbosity".}
proc fcQDebug_verbosity2(self: pointer): cint {.importc: "QDebug_verbosity2".}
proc fcQDebug_setVerbosity(self: pointer, verbosityLevel: cint): void {.importc: "QDebug_setVerbosity".}
proc fcQDebug_autoInsertSpaces(self: pointer): bool {.importc: "QDebug_autoInsertSpaces".}
proc fcQDebug_setAutoInsertSpaces(self: pointer, b: bool): void {.importc: "QDebug_setAutoInsertSpaces".}
proc fcQDebug_quote(self: pointer): pointer {.importc: "QDebug_quote".}
proc fcQDebug_noquote(self: pointer): pointer {.importc: "QDebug_noquote".}
proc fcQDebug_maybeQuote(self: pointer): pointer {.importc: "QDebug_maybeQuote".}
proc fcQDebug_operatorShiftLeft(self: pointer, t: pointer): pointer {.importc: "QDebug_operatorShiftLeft".}
proc fcQDebug_operatorShiftLeftWithBool(self: pointer, t: bool): pointer {.importc: "QDebug_operatorShiftLeftWithBool".}
proc fcQDebug_operatorShiftLeftWithChar(self: pointer, t: cchar): pointer {.importc: "QDebug_operatorShiftLeftWithChar".}
proc fcQDebug_operatorShiftLeftWithShort(self: pointer, t: cshort): pointer {.importc: "QDebug_operatorShiftLeftWithShort".}
proc fcQDebug_operatorShiftLeftWithUnsignedshort(self: pointer, t: cushort): pointer {.importc: "QDebug_operatorShiftLeftWithUnsignedshort".}
proc fcQDebug_operatorShiftLeftWithInt(self: pointer, t: cint): pointer {.importc: "QDebug_operatorShiftLeftWithInt".}
proc fcQDebug_operatorShiftLeftWithUnsignedint(self: pointer, t: cuint): pointer {.importc: "QDebug_operatorShiftLeftWithUnsignedint".}
proc fcQDebug_operatorShiftLeftWithLong(self: pointer, t: clong): pointer {.importc: "QDebug_operatorShiftLeftWithLong".}
proc fcQDebug_operatorShiftLeftWithUnsignedlong(self: pointer, t: culong): pointer {.importc: "QDebug_operatorShiftLeftWithUnsignedlong".}
proc fcQDebug_operatorShiftLeftWithQint64(self: pointer, t: clonglong): pointer {.importc: "QDebug_operatorShiftLeftWithQint64".}
proc fcQDebug_operatorShiftLeftWithQuint64(self: pointer, t: culonglong): pointer {.importc: "QDebug_operatorShiftLeftWithQuint64".}
proc fcQDebug_operatorShiftLeftWithFloat(self: pointer, t: float32): pointer {.importc: "QDebug_operatorShiftLeftWithFloat".}
proc fcQDebug_operatorShiftLeftWithDouble(self: pointer, t: float64): pointer {.importc: "QDebug_operatorShiftLeftWithDouble".}
proc fcQDebug_operatorShiftLeft2(self: pointer, t: cstring): pointer {.importc: "QDebug_operatorShiftLeft2".}
proc fcQDebug_operatorShiftLeftWithQString(self: pointer, t: struct_miqt_string): pointer {.importc: "QDebug_operatorShiftLeftWithQString".}
proc fcQDebug_operatorShiftLeftWithQByteArray(self: pointer, t: struct_miqt_string): pointer {.importc: "QDebug_operatorShiftLeftWithQByteArray".}
proc fcQDebug_operatorShiftLeftWithVoid(self: pointer, t: pointer): pointer {.importc: "QDebug_operatorShiftLeftWithVoid".}
proc fcQDebug_maybeQuote1(self: pointer, c: cchar): pointer {.importc: "QDebug_maybeQuote1".}
proc fcQDebug_new(device: pointer): ptr cQDebug {.importc: "QDebug_new".}
proc fcQDebug_new2(o: pointer): ptr cQDebug {.importc: "QDebug_new2".}
proc fcQDebugStateSaver_new(dbg: pointer): ptr cQDebugStateSaver {.importc: "QDebugStateSaver_new".}
proc fcQNoDebug_space(self: pointer): pointer {.importc: "QNoDebug_space".}
proc fcQNoDebug_nospace(self: pointer): pointer {.importc: "QNoDebug_nospace".}
proc fcQNoDebug_maybeSpace(self: pointer): pointer {.importc: "QNoDebug_maybeSpace".}
proc fcQNoDebug_quote(self: pointer): pointer {.importc: "QNoDebug_quote".}
proc fcQNoDebug_noquote(self: pointer): pointer {.importc: "QNoDebug_noquote".}
proc fcQNoDebug_maybeQuote(self: pointer): pointer {.importc: "QNoDebug_maybeQuote".}
proc fcQNoDebug_verbosity(self: pointer, param1: cint): pointer {.importc: "QNoDebug_verbosity".}
proc fcQNoDebug_maybeQuote1(self: pointer, param1: cchar): pointer {.importc: "QNoDebug_maybeQuote1".}

proc operatorAssign*(self: gen_qdebug_types.QDebug, other: gen_qdebug_types.QDebug): void =
  fcQDebug_operatorAssign(self.h, other.h)

proc swap*(self: gen_qdebug_types.QDebug, other: gen_qdebug_types.QDebug): void =
  fcQDebug_swap(self.h, other.h)

proc resetFormat*(self: gen_qdebug_types.QDebug): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_resetFormat(self.h), owned: false)

proc space*(self: gen_qdebug_types.QDebug): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_space(self.h), owned: false)

proc nospace*(self: gen_qdebug_types.QDebug): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_nospace(self.h), owned: false)

proc maybeSpace*(self: gen_qdebug_types.QDebug): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_maybeSpace(self.h), owned: false)

proc verbosity*(self: gen_qdebug_types.QDebug, verbosityLevel: cint): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_verbosity(self.h, verbosityLevel), owned: false)

proc verbosity*(self: gen_qdebug_types.QDebug): cint =
  fcQDebug_verbosity2(self.h)

proc setVerbosity*(self: gen_qdebug_types.QDebug, verbosityLevel: cint): void =
  fcQDebug_setVerbosity(self.h, verbosityLevel)

proc autoInsertSpaces*(self: gen_qdebug_types.QDebug): bool =
  fcQDebug_autoInsertSpaces(self.h)

proc setAutoInsertSpaces*(self: gen_qdebug_types.QDebug, b: bool): void =
  fcQDebug_setAutoInsertSpaces(self.h, b)

proc quote*(self: gen_qdebug_types.QDebug): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_quote(self.h), owned: false)

proc noquote*(self: gen_qdebug_types.QDebug): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_noquote(self.h), owned: false)

proc maybeQuote*(self: gen_qdebug_types.QDebug): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_maybeQuote(self.h), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: gen_qchar_types.QChar): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeft(self.h, t.h), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: bool): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithBool(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: cchar): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithChar(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: cshort): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithShort(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: cushort): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithUnsignedshort(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: cint): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithInt(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: cuint): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithUnsignedint(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: clong): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithLong(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: culong): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithUnsignedlong(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: clonglong): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithQint64(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: culonglong): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithQuint64(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: float32): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithFloat(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: float64): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithDouble(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: cstring): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeft2(self.h, t), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: openArray[char]): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithQString(self.h, struct_miqt_string(data: if len(t) > 0: addr t[0] else: nil, len: csize_t(len(t)))), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: openArray[byte]): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithQByteArray(self.h, struct_miqt_string(data: cast[cstring](if len(t) == 0: nil else: unsafeAddr t[0]), len: csize_t(len(t)))), owned: false)

proc operatorShiftLeft*(self: gen_qdebug_types.QDebug, t: pointer): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_operatorShiftLeftWithVoid(self.h, t), owned: false)

proc maybeQuote*(self: gen_qdebug_types.QDebug, c: cchar): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_maybeQuote1(self.h, c), owned: false)

proc create*(T: type gen_qdebug_types.QDebug,
    device: gen_qiodevice_types.QIODevice): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_new(device.h), owned: true)

proc create*(T: type gen_qdebug_types.QDebug,
    o: gen_qdebug_types.QDebug): gen_qdebug_types.QDebug =
  gen_qdebug_types.QDebug(h: fcQDebug_new2(o.h), owned: true)

proc create*(T: type gen_qdebug_types.QDebugStateSaver,
    dbg: gen_qdebug_types.QDebug): gen_qdebug_types.QDebugStateSaver =
  gen_qdebug_types.QDebugStateSaver(h: fcQDebugStateSaver_new(dbg.h), owned: true)

proc space*(self: gen_qdebug_types.QNoDebug): gen_qdebug_types.QNoDebug =
  gen_qdebug_types.QNoDebug(h: fcQNoDebug_space(self.h), owned: false)

proc nospace*(self: gen_qdebug_types.QNoDebug): gen_qdebug_types.QNoDebug =
  gen_qdebug_types.QNoDebug(h: fcQNoDebug_nospace(self.h), owned: false)

proc maybeSpace*(self: gen_qdebug_types.QNoDebug): gen_qdebug_types.QNoDebug =
  gen_qdebug_types.QNoDebug(h: fcQNoDebug_maybeSpace(self.h), owned: false)

proc quote*(self: gen_qdebug_types.QNoDebug): gen_qdebug_types.QNoDebug =
  gen_qdebug_types.QNoDebug(h: fcQNoDebug_quote(self.h), owned: false)

proc noquote*(self: gen_qdebug_types.QNoDebug): gen_qdebug_types.QNoDebug =
  gen_qdebug_types.QNoDebug(h: fcQNoDebug_noquote(self.h), owned: false)

proc maybeQuote*(self: gen_qdebug_types.QNoDebug): gen_qdebug_types.QNoDebug =
  gen_qdebug_types.QNoDebug(h: fcQNoDebug_maybeQuote(self.h), owned: false)

proc verbosity*(self: gen_qdebug_types.QNoDebug, param1: cint): gen_qdebug_types.QNoDebug =
  gen_qdebug_types.QNoDebug(h: fcQNoDebug_verbosity(self.h, param1), owned: false)

proc maybeQuote*(self: gen_qdebug_types.QNoDebug, param1: cchar): gen_qdebug_types.QNoDebug =
  gen_qdebug_types.QNoDebug(h: fcQNoDebug_maybeQuote1(self.h, param1), owned: false)

