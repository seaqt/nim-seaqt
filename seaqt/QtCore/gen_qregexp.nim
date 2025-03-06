import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qregexp.cpp", cflags).}


type QRegExpPatternSyntaxEnum* = distinct cint
template RegExp*(_: type QRegExpPatternSyntaxEnum): untyped = 0
template Wildcard*(_: type QRegExpPatternSyntaxEnum): untyped = 1
template FixedString*(_: type QRegExpPatternSyntaxEnum): untyped = 2
template RegExp2*(_: type QRegExpPatternSyntaxEnum): untyped = 3
template WildcardUnix*(_: type QRegExpPatternSyntaxEnum): untyped = 4
template W3CXmlSchema11*(_: type QRegExpPatternSyntaxEnum): untyped = 5


type QRegExpCaretModeEnum* = distinct cint
template CaretAtZero*(_: type QRegExpCaretModeEnum): untyped = 0
template CaretAtOffset*(_: type QRegExpCaretModeEnum): untyped = 1
template CaretWontMatch*(_: type QRegExpCaretModeEnum): untyped = 2


import ./gen_qregexp_types
export gen_qregexp_types


type cQRegExp*{.exportc: "QRegExp", incompleteStruct.} = object

proc fcQRegExp_operatorAssign(self: pointer, rx: pointer): void {.importc: "QRegExp_operatorAssign".}
proc fcQRegExp_swap(self: pointer, other: pointer): void {.importc: "QRegExp_swap".}
proc fcQRegExp_operatorEqual(self: pointer, rx: pointer): bool {.importc: "QRegExp_operatorEqual".}
proc fcQRegExp_operatorNotEqual(self: pointer, rx: pointer): bool {.importc: "QRegExp_operatorNotEqual".}
proc fcQRegExp_isEmpty(self: pointer, ): bool {.importc: "QRegExp_isEmpty".}
proc fcQRegExp_isValid(self: pointer, ): bool {.importc: "QRegExp_isValid".}
proc fcQRegExp_pattern(self: pointer, ): struct_miqt_string {.importc: "QRegExp_pattern".}
proc fcQRegExp_setPattern(self: pointer, pattern: struct_miqt_string): void {.importc: "QRegExp_setPattern".}
proc fcQRegExp_caseSensitivity(self: pointer, ): cint {.importc: "QRegExp_caseSensitivity".}
proc fcQRegExp_setCaseSensitivity(self: pointer, cs: cint): void {.importc: "QRegExp_setCaseSensitivity".}
proc fcQRegExp_patternSyntax(self: pointer, ): cint {.importc: "QRegExp_patternSyntax".}
proc fcQRegExp_setPatternSyntax(self: pointer, syntax: cint): void {.importc: "QRegExp_setPatternSyntax".}
proc fcQRegExp_isMinimal(self: pointer, ): bool {.importc: "QRegExp_isMinimal".}
proc fcQRegExp_setMinimal(self: pointer, minimal: bool): void {.importc: "QRegExp_setMinimal".}
proc fcQRegExp_exactMatch(self: pointer, str: struct_miqt_string): bool {.importc: "QRegExp_exactMatch".}
proc fcQRegExp_indexIn(self: pointer, str: struct_miqt_string): cint {.importc: "QRegExp_indexIn".}
proc fcQRegExp_lastIndexIn(self: pointer, str: struct_miqt_string): cint {.importc: "QRegExp_lastIndexIn".}
proc fcQRegExp_matchedLength(self: pointer, ): cint {.importc: "QRegExp_matchedLength".}
proc fcQRegExp_captureCount(self: pointer, ): cint {.importc: "QRegExp_captureCount".}
proc fcQRegExp_capturedTexts(self: pointer, ): struct_miqt_array {.importc: "QRegExp_capturedTexts".}
proc fcQRegExp_capturedTexts2(self: pointer, ): struct_miqt_array {.importc: "QRegExp_capturedTexts2".}
proc fcQRegExp_cap(self: pointer, ): struct_miqt_string {.importc: "QRegExp_cap".}
proc fcQRegExp_cap2(self: pointer, ): struct_miqt_string {.importc: "QRegExp_cap2".}
proc fcQRegExp_pos(self: pointer, ): cint {.importc: "QRegExp_pos".}
proc fcQRegExp_pos2(self: pointer, ): cint {.importc: "QRegExp_pos2".}
proc fcQRegExp_errorString(self: pointer, ): struct_miqt_string {.importc: "QRegExp_errorString".}
proc fcQRegExp_errorString2(self: pointer, ): struct_miqt_string {.importc: "QRegExp_errorString2".}
proc fcQRegExp_escape(str: struct_miqt_string): struct_miqt_string {.importc: "QRegExp_escape".}
proc fcQRegExp_indexIn2(self: pointer, str: struct_miqt_string, offset: cint): cint {.importc: "QRegExp_indexIn2".}
proc fcQRegExp_indexIn3(self: pointer, str: struct_miqt_string, offset: cint, caretMode: cint): cint {.importc: "QRegExp_indexIn3".}
proc fcQRegExp_lastIndexIn2(self: pointer, str: struct_miqt_string, offset: cint): cint {.importc: "QRegExp_lastIndexIn2".}
proc fcQRegExp_lastIndexIn3(self: pointer, str: struct_miqt_string, offset: cint, caretMode: cint): cint {.importc: "QRegExp_lastIndexIn3".}
proc fcQRegExp_cap1(self: pointer, nth: cint): struct_miqt_string {.importc: "QRegExp_cap1".}
proc fcQRegExp_cap1WithNth(self: pointer, nth: cint): struct_miqt_string {.importc: "QRegExp_cap1WithNth".}
proc fcQRegExp_pos1(self: pointer, nth: cint): cint {.importc: "QRegExp_pos1".}
proc fcQRegExp_pos1WithNth(self: pointer, nth: cint): cint {.importc: "QRegExp_pos1WithNth".}
proc fcQRegExp_new(): ptr cQRegExp {.importc: "QRegExp_new".}
proc fcQRegExp_new2(pattern: struct_miqt_string): ptr cQRegExp {.importc: "QRegExp_new2".}
proc fcQRegExp_new3(rx: pointer): ptr cQRegExp {.importc: "QRegExp_new3".}
proc fcQRegExp_new4(pattern: struct_miqt_string, cs: cint): ptr cQRegExp {.importc: "QRegExp_new4".}
proc fcQRegExp_new5(pattern: struct_miqt_string, cs: cint, syntax: cint): ptr cQRegExp {.importc: "QRegExp_new5".}
proc fcQRegExp_delete(self: pointer) {.importc: "QRegExp_delete".}

proc operatorAssign*(self: gen_qregexp_types.QRegExp, rx: gen_qregexp_types.QRegExp): void =
  fcQRegExp_operatorAssign(self.h, rx.h)

proc swap*(self: gen_qregexp_types.QRegExp, other: gen_qregexp_types.QRegExp): void =
  fcQRegExp_swap(self.h, other.h)

proc operatorEqual*(self: gen_qregexp_types.QRegExp, rx: gen_qregexp_types.QRegExp): bool =
  fcQRegExp_operatorEqual(self.h, rx.h)

proc operatorNotEqual*(self: gen_qregexp_types.QRegExp, rx: gen_qregexp_types.QRegExp): bool =
  fcQRegExp_operatorNotEqual(self.h, rx.h)

proc isEmpty*(self: gen_qregexp_types.QRegExp, ): bool =
  fcQRegExp_isEmpty(self.h)

proc isValid*(self: gen_qregexp_types.QRegExp, ): bool =
  fcQRegExp_isValid(self.h)

proc pattern*(self: gen_qregexp_types.QRegExp, ): string =
  let v_ms = fcQRegExp_pattern(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPattern*(self: gen_qregexp_types.QRegExp, pattern: string): void =
  fcQRegExp_setPattern(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc caseSensitivity*(self: gen_qregexp_types.QRegExp, ): cint =
  cint(fcQRegExp_caseSensitivity(self.h))

proc setCaseSensitivity*(self: gen_qregexp_types.QRegExp, cs: cint): void =
  fcQRegExp_setCaseSensitivity(self.h, cint(cs))

proc patternSyntax*(self: gen_qregexp_types.QRegExp, ): cint =
  cint(fcQRegExp_patternSyntax(self.h))

proc setPatternSyntax*(self: gen_qregexp_types.QRegExp, syntax: cint): void =
  fcQRegExp_setPatternSyntax(self.h, cint(syntax))

proc isMinimal*(self: gen_qregexp_types.QRegExp, ): bool =
  fcQRegExp_isMinimal(self.h)

proc setMinimal*(self: gen_qregexp_types.QRegExp, minimal: bool): void =
  fcQRegExp_setMinimal(self.h, minimal)

proc exactMatch*(self: gen_qregexp_types.QRegExp, str: string): bool =
  fcQRegExp_exactMatch(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

proc indexIn*(self: gen_qregexp_types.QRegExp, str: string): cint =
  fcQRegExp_indexIn(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

proc lastIndexIn*(self: gen_qregexp_types.QRegExp, str: string): cint =
  fcQRegExp_lastIndexIn(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

proc matchedLength*(self: gen_qregexp_types.QRegExp, ): cint =
  fcQRegExp_matchedLength(self.h)

proc captureCount*(self: gen_qregexp_types.QRegExp, ): cint =
  fcQRegExp_captureCount(self.h)

proc capturedTexts*(self: gen_qregexp_types.QRegExp, ): seq[string] =
  var v_ma = fcQRegExp_capturedTexts(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc capturedTexts2*(self: gen_qregexp_types.QRegExp, ): seq[string] =
  var v_ma = fcQRegExp_capturedTexts2(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cap*(self: gen_qregexp_types.QRegExp, ): string =
  let v_ms = fcQRegExp_cap(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cap2*(self: gen_qregexp_types.QRegExp, ): string =
  let v_ms = fcQRegExp_cap2(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pos*(self: gen_qregexp_types.QRegExp, ): cint =
  fcQRegExp_pos(self.h)

proc pos2*(self: gen_qregexp_types.QRegExp, ): cint =
  fcQRegExp_pos2(self.h)

proc errorString*(self: gen_qregexp_types.QRegExp, ): string =
  let v_ms = fcQRegExp_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc errorString2*(self: gen_qregexp_types.QRegExp, ): string =
  let v_ms = fcQRegExp_errorString2(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc escape*(_: type gen_qregexp_types.QRegExp, str: string): string =
  let v_ms = fcQRegExp_escape(struct_miqt_string(data: str, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc indexIn*(self: gen_qregexp_types.QRegExp, str: string, offset: cint): cint =
  fcQRegExp_indexIn2(self.h, struct_miqt_string(data: str, len: csize_t(len(str))), offset)

proc indexIn*(self: gen_qregexp_types.QRegExp, str: string, offset: cint, caretMode: cint): cint =
  fcQRegExp_indexIn3(self.h, struct_miqt_string(data: str, len: csize_t(len(str))), offset, cint(caretMode))

proc lastIndexIn*(self: gen_qregexp_types.QRegExp, str: string, offset: cint): cint =
  fcQRegExp_lastIndexIn2(self.h, struct_miqt_string(data: str, len: csize_t(len(str))), offset)

proc lastIndexIn*(self: gen_qregexp_types.QRegExp, str: string, offset: cint, caretMode: cint): cint =
  fcQRegExp_lastIndexIn3(self.h, struct_miqt_string(data: str, len: csize_t(len(str))), offset, cint(caretMode))

proc cap*(self: gen_qregexp_types.QRegExp, nth: cint): string =
  let v_ms = fcQRegExp_cap1(self.h, nth)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cap2*(self: gen_qregexp_types.QRegExp, nth: cint): string =
  let v_ms = fcQRegExp_cap1WithNth(self.h, nth)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pos*(self: gen_qregexp_types.QRegExp, nth: cint): cint =
  fcQRegExp_pos1(self.h, nth)

proc pos2*(self: gen_qregexp_types.QRegExp, nth: cint): cint =
  fcQRegExp_pos1WithNth(self.h, nth)

proc create*(T: type gen_qregexp_types.QRegExp): gen_qregexp_types.QRegExp =
  gen_qregexp_types.QRegExp(h: fcQRegExp_new())

proc create*(T: type gen_qregexp_types.QRegExp,
    pattern: string): gen_qregexp_types.QRegExp =
  gen_qregexp_types.QRegExp(h: fcQRegExp_new2(struct_miqt_string(data: pattern, len: csize_t(len(pattern)))))

proc create*(T: type gen_qregexp_types.QRegExp,
    rx: gen_qregexp_types.QRegExp): gen_qregexp_types.QRegExp =
  gen_qregexp_types.QRegExp(h: fcQRegExp_new3(rx.h))

proc create*(T: type gen_qregexp_types.QRegExp,
    pattern: string, cs: cint): gen_qregexp_types.QRegExp =
  gen_qregexp_types.QRegExp(h: fcQRegExp_new4(struct_miqt_string(data: pattern, len: csize_t(len(pattern))), cint(cs)))

proc create*(T: type gen_qregexp_types.QRegExp,
    pattern: string, cs: cint, syntax: cint): gen_qregexp_types.QRegExp =
  gen_qregexp_types.QRegExp(h: fcQRegExp_new5(struct_miqt_string(data: pattern, len: csize_t(len(pattern))), cint(cs), cint(syntax)))

proc delete*(self: gen_qregexp_types.QRegExp) =
  fcQRegExp_delete(self.h)
