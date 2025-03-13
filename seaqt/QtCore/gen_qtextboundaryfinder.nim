import ./Qt6Core_libs

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


type QTextBoundaryFinderBoundaryTypeEnum* = distinct cint
template Grapheme*(_: type QTextBoundaryFinderBoundaryTypeEnum): untyped = 0
template Word*(_: type QTextBoundaryFinderBoundaryTypeEnum): untyped = 1
template Sentence*(_: type QTextBoundaryFinderBoundaryTypeEnum): untyped = 2
template Line*(_: type QTextBoundaryFinderBoundaryTypeEnum): untyped = 3


type QTextBoundaryFinderBoundaryReasonEnum* = distinct cint
template NotAtBoundary*(_: type QTextBoundaryFinderBoundaryReasonEnum): untyped = 0
template BreakOpportunity*(_: type QTextBoundaryFinderBoundaryReasonEnum): untyped = 31
template StartOfItem*(_: type QTextBoundaryFinderBoundaryReasonEnum): untyped = 32
template EndOfItem*(_: type QTextBoundaryFinderBoundaryReasonEnum): untyped = 64
template MandatoryBreak*(_: type QTextBoundaryFinderBoundaryReasonEnum): untyped = 128
template SoftHyphen*(_: type QTextBoundaryFinderBoundaryReasonEnum): untyped = 256


import ./gen_qtextboundaryfinder_types
export gen_qtextboundaryfinder_types

import
  ./gen_qchar_types
export
  gen_qchar_types

type cQTextBoundaryFinder*{.exportc: "QTextBoundaryFinder", incompleteStruct.} = object

proc fcQTextBoundaryFinder_operatorAssign(self: pointer, other: pointer): void {.importc: "QTextBoundaryFinder_operatorAssign".}
proc fcQTextBoundaryFinder_isValid(self: pointer): bool {.importc: "QTextBoundaryFinder_isValid".}
proc fcQTextBoundaryFinder_typeX(self: pointer): cint {.importc: "QTextBoundaryFinder_type".}
proc fcQTextBoundaryFinder_string(self: pointer): struct_miqt_string {.importc: "QTextBoundaryFinder_string".}
proc fcQTextBoundaryFinder_toStart(self: pointer): void {.importc: "QTextBoundaryFinder_toStart".}
proc fcQTextBoundaryFinder_toEnd(self: pointer): void {.importc: "QTextBoundaryFinder_toEnd".}
proc fcQTextBoundaryFinder_position(self: pointer): int64 {.importc: "QTextBoundaryFinder_position".}
proc fcQTextBoundaryFinder_setPosition(self: pointer, position: int64): void {.importc: "QTextBoundaryFinder_setPosition".}
proc fcQTextBoundaryFinder_toNextBoundary(self: pointer): int64 {.importc: "QTextBoundaryFinder_toNextBoundary".}
proc fcQTextBoundaryFinder_toPreviousBoundary(self: pointer): int64 {.importc: "QTextBoundaryFinder_toPreviousBoundary".}
proc fcQTextBoundaryFinder_isAtBoundary(self: pointer): bool {.importc: "QTextBoundaryFinder_isAtBoundary".}
proc fcQTextBoundaryFinder_boundaryReasons(self: pointer): cint {.importc: "QTextBoundaryFinder_boundaryReasons".}
proc fcQTextBoundaryFinder_new(): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new".}
proc fcQTextBoundaryFinder_new2(other: pointer): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new2".}
proc fcQTextBoundaryFinder_new3(typeVal: cint, string: struct_miqt_string): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new3".}
proc fcQTextBoundaryFinder_new4(typeVal: cint, chars: pointer, length: int64): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new4".}
proc fcQTextBoundaryFinder_new5(typeVal: cint, chars: pointer, length: int64, buffer: ptr uint8): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new5".}
proc fcQTextBoundaryFinder_new6(typeVal: cint, chars: pointer, length: int64, buffer: ptr uint8, bufferSize: int64): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new6".}

proc operatorAssign*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, other: gen_qtextboundaryfinder_types.QTextBoundaryFinder): void =
  fcQTextBoundaryFinder_operatorAssign(self.h, other.h)

proc isValid*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder): bool =
  fcQTextBoundaryFinder_isValid(self.h)

proc typeX*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder): cint =
  cint(fcQTextBoundaryFinder_typeX(self.h))

proc string*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder): string =
  let v_ms = fcQTextBoundaryFinder_string(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toStart*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder): void =
  fcQTextBoundaryFinder_toStart(self.h)

proc toEnd*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder): void =
  fcQTextBoundaryFinder_toEnd(self.h)

proc position*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder): int64 =
  fcQTextBoundaryFinder_position(self.h)

proc setPosition*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, position: int64): void =
  fcQTextBoundaryFinder_setPosition(self.h, position)

proc toNextBoundary*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder): int64 =
  fcQTextBoundaryFinder_toNextBoundary(self.h)

proc toPreviousBoundary*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder): int64 =
  fcQTextBoundaryFinder_toPreviousBoundary(self.h)

proc isAtBoundary*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder): bool =
  fcQTextBoundaryFinder_isAtBoundary(self.h)

proc boundaryReasons*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder): cint =
  cint(fcQTextBoundaryFinder_boundaryReasons(self.h))

proc create*(T: type gen_qtextboundaryfinder_types.QTextBoundaryFinder): gen_qtextboundaryfinder_types.QTextBoundaryFinder =
  gen_qtextboundaryfinder_types.QTextBoundaryFinder(h: fcQTextBoundaryFinder_new(), owned: true)

proc create*(T: type gen_qtextboundaryfinder_types.QTextBoundaryFinder,
    other: gen_qtextboundaryfinder_types.QTextBoundaryFinder): gen_qtextboundaryfinder_types.QTextBoundaryFinder =
  gen_qtextboundaryfinder_types.QTextBoundaryFinder(h: fcQTextBoundaryFinder_new2(other.h), owned: true)

proc create*(T: type gen_qtextboundaryfinder_types.QTextBoundaryFinder,
    typeVal: cint, string: openArray[char]): gen_qtextboundaryfinder_types.QTextBoundaryFinder =
  gen_qtextboundaryfinder_types.QTextBoundaryFinder(h: fcQTextBoundaryFinder_new3(cint(typeVal), struct_miqt_string(data: if len(string) > 0: addr string[0] else: nil, len: csize_t(len(string)))), owned: true)

proc create*(T: type gen_qtextboundaryfinder_types.QTextBoundaryFinder,
    typeVal: cint, chars: gen_qchar_types.QChar, length: int64): gen_qtextboundaryfinder_types.QTextBoundaryFinder =
  gen_qtextboundaryfinder_types.QTextBoundaryFinder(h: fcQTextBoundaryFinder_new4(cint(typeVal), chars.h, length), owned: true)

proc create*(T: type gen_qtextboundaryfinder_types.QTextBoundaryFinder,
    typeVal: cint, chars: gen_qchar_types.QChar, length: int64, buffer: ptr uint8): gen_qtextboundaryfinder_types.QTextBoundaryFinder =
  gen_qtextboundaryfinder_types.QTextBoundaryFinder(h: fcQTextBoundaryFinder_new5(cint(typeVal), chars.h, length, buffer), owned: true)

proc create*(T: type gen_qtextboundaryfinder_types.QTextBoundaryFinder,
    typeVal: cint, chars: gen_qchar_types.QChar, length: int64, buffer: ptr uint8, bufferSize: int64): gen_qtextboundaryfinder_types.QTextBoundaryFinder =
  gen_qtextboundaryfinder_types.QTextBoundaryFinder(h: fcQTextBoundaryFinder_new6(cint(typeVal), chars.h, length, buffer, bufferSize), owned: true)

