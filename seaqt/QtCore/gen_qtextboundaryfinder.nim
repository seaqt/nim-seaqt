import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qtextboundaryfinder.cpp", cflags).}


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
proc fcQTextBoundaryFinder_isValid(self: pointer, ): bool {.importc: "QTextBoundaryFinder_isValid".}
proc fcQTextBoundaryFinder_typeX(self: pointer, ): cint {.importc: "QTextBoundaryFinder_type".}
proc fcQTextBoundaryFinder_string(self: pointer, ): struct_miqt_string {.importc: "QTextBoundaryFinder_string".}
proc fcQTextBoundaryFinder_toStart(self: pointer, ): void {.importc: "QTextBoundaryFinder_toStart".}
proc fcQTextBoundaryFinder_toEnd(self: pointer, ): void {.importc: "QTextBoundaryFinder_toEnd".}
proc fcQTextBoundaryFinder_position(self: pointer, ): cint {.importc: "QTextBoundaryFinder_position".}
proc fcQTextBoundaryFinder_setPosition(self: pointer, position: cint): void {.importc: "QTextBoundaryFinder_setPosition".}
proc fcQTextBoundaryFinder_toNextBoundary(self: pointer, ): cint {.importc: "QTextBoundaryFinder_toNextBoundary".}
proc fcQTextBoundaryFinder_toPreviousBoundary(self: pointer, ): cint {.importc: "QTextBoundaryFinder_toPreviousBoundary".}
proc fcQTextBoundaryFinder_isAtBoundary(self: pointer, ): bool {.importc: "QTextBoundaryFinder_isAtBoundary".}
proc fcQTextBoundaryFinder_boundaryReasons(self: pointer, ): cint {.importc: "QTextBoundaryFinder_boundaryReasons".}
proc fcQTextBoundaryFinder_new(): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new".}
proc fcQTextBoundaryFinder_new2(other: pointer): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new2".}
proc fcQTextBoundaryFinder_new3(typeVal: cint, string: struct_miqt_string): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new3".}
proc fcQTextBoundaryFinder_new4(typeVal: cint, chars: pointer, length: cint): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new4".}
proc fcQTextBoundaryFinder_new5(typeVal: cint, chars: pointer, length: cint, buffer: ptr uint8): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new5".}
proc fcQTextBoundaryFinder_new6(typeVal: cint, chars: pointer, length: cint, buffer: ptr uint8, bufferSize: cint): ptr cQTextBoundaryFinder {.importc: "QTextBoundaryFinder_new6".}
proc fcQTextBoundaryFinder_delete(self: pointer) {.importc: "QTextBoundaryFinder_delete".}

proc operatorAssign*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, other: gen_qtextboundaryfinder_types.QTextBoundaryFinder): void =
  fcQTextBoundaryFinder_operatorAssign(self.h, other.h)

proc isValid*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, ): bool =
  fcQTextBoundaryFinder_isValid(self.h)

proc typeX*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, ): cint =
  cint(fcQTextBoundaryFinder_typeX(self.h))

proc string*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, ): string =
  let v_ms = fcQTextBoundaryFinder_string(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStart*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, ): void =
  fcQTextBoundaryFinder_toStart(self.h)

proc toEnd*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, ): void =
  fcQTextBoundaryFinder_toEnd(self.h)

proc position*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, ): cint =
  fcQTextBoundaryFinder_position(self.h)

proc setPosition*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, position: cint): void =
  fcQTextBoundaryFinder_setPosition(self.h, position)

proc toNextBoundary*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, ): cint =
  fcQTextBoundaryFinder_toNextBoundary(self.h)

proc toPreviousBoundary*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, ): cint =
  fcQTextBoundaryFinder_toPreviousBoundary(self.h)

proc isAtBoundary*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, ): bool =
  fcQTextBoundaryFinder_isAtBoundary(self.h)

proc boundaryReasons*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder, ): cint =
  cint(fcQTextBoundaryFinder_boundaryReasons(self.h))

proc create*(T: type gen_qtextboundaryfinder_types.QTextBoundaryFinder): gen_qtextboundaryfinder_types.QTextBoundaryFinder =
  gen_qtextboundaryfinder_types.QTextBoundaryFinder(h: fcQTextBoundaryFinder_new())

proc create*(T: type gen_qtextboundaryfinder_types.QTextBoundaryFinder,
    other: gen_qtextboundaryfinder_types.QTextBoundaryFinder): gen_qtextboundaryfinder_types.QTextBoundaryFinder =
  gen_qtextboundaryfinder_types.QTextBoundaryFinder(h: fcQTextBoundaryFinder_new2(other.h))

proc create*(T: type gen_qtextboundaryfinder_types.QTextBoundaryFinder,
    typeVal: cint, string: string): gen_qtextboundaryfinder_types.QTextBoundaryFinder =
  gen_qtextboundaryfinder_types.QTextBoundaryFinder(h: fcQTextBoundaryFinder_new3(cint(typeVal), struct_miqt_string(data: string, len: csize_t(len(string)))))

proc create*(T: type gen_qtextboundaryfinder_types.QTextBoundaryFinder,
    typeVal: cint, chars: gen_qchar_types.QChar, length: cint): gen_qtextboundaryfinder_types.QTextBoundaryFinder =
  gen_qtextboundaryfinder_types.QTextBoundaryFinder(h: fcQTextBoundaryFinder_new4(cint(typeVal), chars.h, length))

proc create*(T: type gen_qtextboundaryfinder_types.QTextBoundaryFinder,
    typeVal: cint, chars: gen_qchar_types.QChar, length: cint, buffer: ptr uint8): gen_qtextboundaryfinder_types.QTextBoundaryFinder =
  gen_qtextboundaryfinder_types.QTextBoundaryFinder(h: fcQTextBoundaryFinder_new5(cint(typeVal), chars.h, length, buffer))

proc create*(T: type gen_qtextboundaryfinder_types.QTextBoundaryFinder,
    typeVal: cint, chars: gen_qchar_types.QChar, length: cint, buffer: ptr uint8, bufferSize: cint): gen_qtextboundaryfinder_types.QTextBoundaryFinder =
  gen_qtextboundaryfinder_types.QTextBoundaryFinder(h: fcQTextBoundaryFinder_new6(cint(typeVal), chars.h, length, buffer, bufferSize))

proc delete*(self: gen_qtextboundaryfinder_types.QTextBoundaryFinder) =
  fcQTextBoundaryFinder_delete(self.h)
