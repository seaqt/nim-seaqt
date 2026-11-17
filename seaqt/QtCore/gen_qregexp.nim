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

proc fcQRegExp_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QRegExp_operatorAssign".}
proc fcQRegExp_swap(self: pointer, other: pointer): void {.importc: "QRegExp_swap".}
proc fcQRegExp_operatorEqual(self: pointer, rx: pointer): bool {.importc: "QRegExp_operatorEqual".}
proc fcQRegExp_operatorNotEqual(self: pointer, rx: pointer): bool {.importc: "QRegExp_operatorNotEqual".}
proc fcQRegExp_isEmpty(self: pointer): bool {.importc: "QRegExp_isEmpty".}
proc fcQRegExp_isValid(self: pointer): bool {.importc: "QRegExp_isValid".}
proc fcQRegExp_pattern(self: pointer): struct_seaqt_string {.importc: "QRegExp_pattern".}
proc fcQRegExp_setPattern(self: pointer, pattern: struct_seaqt_string): void {.importc: "QRegExp_setPattern".}
proc fcQRegExp_caseSensitivity(self: pointer): cint {.importc: "QRegExp_caseSensitivity".}
proc fcQRegExp_setCaseSensitivity(self: pointer, cs: cint): void {.importc: "QRegExp_setCaseSensitivity".}
proc fcQRegExp_patternSyntax(self: pointer): cint {.importc: "QRegExp_patternSyntax".}
proc fcQRegExp_setPatternSyntax(self: pointer, syntax: cint): void {.importc: "QRegExp_setPatternSyntax".}
proc fcQRegExp_isMinimal(self: pointer): bool {.importc: "QRegExp_isMinimal".}
proc fcQRegExp_setMinimal(self: pointer, minimal: bool): void {.importc: "QRegExp_setMinimal".}
proc fcQRegExp_exactMatch(self: pointer, str: struct_seaqt_string): bool {.importc: "QRegExp_exactMatch".}
proc fcQRegExp_indexInStr(self: pointer, str: struct_seaqt_string): cint {.importc: "QRegExp_indexIn_str".}
proc fcQRegExp_lastIndexInStr(self: pointer, str: struct_seaqt_string): cint {.importc: "QRegExp_lastIndexIn_str".}
proc fcQRegExp_matchedLength(self: pointer): cint {.importc: "QRegExp_matchedLength".}
proc fcQRegExp_captureCount(self: pointer): cint {.importc: "QRegExp_captureCount".}
proc fcQRegExp_capturedTextsConst(self: pointer): struct_seaqt_array {.importc: "QRegExp_capturedTexts_const".}
proc fcQRegExp_capturedTexts(self: pointer): struct_seaqt_array {.importc: "QRegExp_capturedTexts".}
proc fcQRegExp_capConst(self: pointer): struct_seaqt_string {.importc: "QRegExp_cap_const".}
proc fcQRegExp_cap(self: pointer): struct_seaqt_string {.importc: "QRegExp_cap".}
proc fcQRegExp_posConst(self: pointer): cint {.importc: "QRegExp_pos_const".}
proc fcQRegExp_pos(self: pointer): cint {.importc: "QRegExp_pos".}
proc fcQRegExp_errorStringConst(self: pointer): struct_seaqt_string {.importc: "QRegExp_errorString_const".}
proc fcQRegExp_errorString(self: pointer): struct_seaqt_string {.importc: "QRegExp_errorString".}
proc fcQRegExp_escape(str: struct_seaqt_string): struct_seaqt_string {.importc: "QRegExp_escape".}
proc fcQRegExp_indexInStrOffset(self: pointer, str: struct_seaqt_string, offset: cint): cint {.importc: "QRegExp_indexIn_str_offset".}
proc fcQRegExp_indexInStrOffsetCaretMode(self: pointer, str: struct_seaqt_string, offset: cint, caretMode: cint): cint {.importc: "QRegExp_indexIn_str_offset_caretMode".}
proc fcQRegExp_lastIndexInStrOffset(self: pointer, str: struct_seaqt_string, offset: cint): cint {.importc: "QRegExp_lastIndexIn_str_offset".}
proc fcQRegExp_lastIndexInStrOffsetCaretMode(self: pointer, str: struct_seaqt_string, offset: cint, caretMode: cint): cint {.importc: "QRegExp_lastIndexIn_str_offset_caretMode".}
proc fcQRegExp_capConstInt(self: pointer, nth: cint): struct_seaqt_string {.importc: "QRegExp_cap_const_int".}
proc fcQRegExp_capInt(self: pointer, nth: cint): struct_seaqt_string {.importc: "QRegExp_cap_int".}
proc fcQRegExp_posConstInt(self: pointer, nth: cint): cint {.importc: "QRegExp_pos_const_int".}
proc fcQRegExp_posInt(self: pointer, nth: cint): cint {.importc: "QRegExp_pos_int".}
proc fcQRegExp_new(): ptr cQRegExp {.importc: "QRegExp_new".}
proc fcQRegExp_new2(pattern: struct_seaqt_string): ptr cQRegExp {.importc: "QRegExp_new_pattern".}
proc fcQRegExp_new3(fromVal: pointer): ptr cQRegExp {.importc: "QRegExp_new_from".}
proc fcQRegExp_new4(pattern: struct_seaqt_string, cs: cint): ptr cQRegExp {.importc: "QRegExp_new_pattern_cs".}
proc fcQRegExp_new5(pattern: struct_seaqt_string, cs: cint, syntax: cint): ptr cQRegExp {.importc: "QRegExp_new_pattern_cs_syntax".}

proc operatorAssign*(self: gen_qregexp_types.QRegExp, fromVal: gen_qregexp_types.QRegExp): void =
  fcQRegExp_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qregexp_types.QRegExp, other: gen_qregexp_types.QRegExp): void =
  fcQRegExp_swap(self.h, other.h)

proc operatorEqual*(self: gen_qregexp_types.QRegExp, rx: gen_qregexp_types.QRegExp): bool =
  fcQRegExp_operatorEqual(self.h, rx.h)

proc operatorNotEqual*(self: gen_qregexp_types.QRegExp, rx: gen_qregexp_types.QRegExp): bool =
  fcQRegExp_operatorNotEqual(self.h, rx.h)

proc isEmpty*(self: gen_qregexp_types.QRegExp): bool =
  fcQRegExp_isEmpty(self.h)

proc isValid*(self: gen_qregexp_types.QRegExp): bool =
  fcQRegExp_isValid(self.h)

proc pattern*(self: gen_qregexp_types.QRegExp): string =
  let v_ms = fcQRegExp_pattern(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPattern*(self: gen_qregexp_types.QRegExp, pattern: openArray[char]): void =
  fcQRegExp_setPattern(self.h, struct_seaqt_string(data: if len(pattern) > 0: addr pattern[0] else: nil, len: csize_t(len(pattern))))

proc caseSensitivity*(self: gen_qregexp_types.QRegExp): cint =
  cint(fcQRegExp_caseSensitivity(self.h))

proc setCaseSensitivity*(self: gen_qregexp_types.QRegExp, cs: cint): void =
  fcQRegExp_setCaseSensitivity(self.h, cint(cs))

proc patternSyntax*(self: gen_qregexp_types.QRegExp): cint =
  cint(fcQRegExp_patternSyntax(self.h))

proc setPatternSyntax*(self: gen_qregexp_types.QRegExp, syntax: cint): void =
  fcQRegExp_setPatternSyntax(self.h, cint(syntax))

proc isMinimal*(self: gen_qregexp_types.QRegExp): bool =
  fcQRegExp_isMinimal(self.h)

proc setMinimal*(self: gen_qregexp_types.QRegExp, minimal: bool): void =
  fcQRegExp_setMinimal(self.h, minimal)

proc exactMatch*(self: gen_qregexp_types.QRegExp, str: openArray[char]): bool =
  fcQRegExp_exactMatch(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))

proc indexIn*(self: gen_qregexp_types.QRegExp, str: openArray[char]): cint =
  fcQRegExp_indexInStr(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))

proc lastIndexIn*(self: gen_qregexp_types.QRegExp, str: openArray[char]): cint =
  fcQRegExp_lastIndexInStr(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))

proc matchedLength*(self: gen_qregexp_types.QRegExp): cint =
  fcQRegExp_matchedLength(self.h)

proc captureCount*(self: gen_qregexp_types.QRegExp): cint =
  fcQRegExp_captureCount(self.h)

proc capturedTexts*(self: gen_qregexp_types.QRegExp): seq[string] =
  var v_ma = fcQRegExp_capturedTextsConst(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc capturedTexts2*(self: gen_qregexp_types.QRegExp): seq[string] =
  var v_ma = fcQRegExp_capturedTexts(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc cap*(self: gen_qregexp_types.QRegExp): string =
  let v_ms = fcQRegExp_capConst(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc cap2*(self: gen_qregexp_types.QRegExp): string =
  let v_ms = fcQRegExp_cap(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc pos*(self: gen_qregexp_types.QRegExp): cint =
  fcQRegExp_posConst(self.h)

proc pos2*(self: gen_qregexp_types.QRegExp): cint =
  fcQRegExp_pos(self.h)

proc errorString*(self: gen_qregexp_types.QRegExp): string =
  let v_ms = fcQRegExp_errorStringConst(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc errorString2*(self: gen_qregexp_types.QRegExp): string =
  let v_ms = fcQRegExp_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc escape*(_: type gen_qregexp_types.QRegExp, str: openArray[char]): string =
  let v_ms = fcQRegExp_escape(struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc indexIn*(self: gen_qregexp_types.QRegExp, str: openArray[char], offset: cint): cint =
  fcQRegExp_indexInStrOffset(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), offset)

proc indexIn*(self: gen_qregexp_types.QRegExp, str: openArray[char], offset: cint, caretMode: cint): cint =
  fcQRegExp_indexInStrOffsetCaretMode(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), offset, cint(caretMode))

proc lastIndexIn*(self: gen_qregexp_types.QRegExp, str: openArray[char], offset: cint): cint =
  fcQRegExp_lastIndexInStrOffset(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), offset)

proc lastIndexIn*(self: gen_qregexp_types.QRegExp, str: openArray[char], offset: cint, caretMode: cint): cint =
  fcQRegExp_lastIndexInStrOffsetCaretMode(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), offset, cint(caretMode))

proc cap*(self: gen_qregexp_types.QRegExp, nth: cint): string =
  let v_ms = fcQRegExp_capConstInt(self.h, nth)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc cap2*(self: gen_qregexp_types.QRegExp, nth: cint): string =
  let v_ms = fcQRegExp_capInt(self.h, nth)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc pos*(self: gen_qregexp_types.QRegExp, nth: cint): cint =
  fcQRegExp_posConstInt(self.h, nth)

proc pos2*(self: gen_qregexp_types.QRegExp, nth: cint): cint =
  fcQRegExp_posInt(self.h, nth)

proc create*(T: type gen_qregexp_types.QRegExp): gen_qregexp_types.QRegExp =
  let tmp = gen_qregexp_types.QRegExp(h: fcQRegExp_new(), owned: true)
  tmp
proc create*(T: type gen_qregexp_types.QRegExp,
    pattern: openArray[char]): gen_qregexp_types.QRegExp =
  let tmp = gen_qregexp_types.QRegExp(h: fcQRegExp_new2(struct_seaqt_string(data: if len(pattern) > 0: addr pattern[0] else: nil, len: csize_t(len(pattern)))), owned: true)
  tmp
proc create*(T: type gen_qregexp_types.QRegExp,
    fromVal: gen_qregexp_types.QRegExp): gen_qregexp_types.QRegExp =
  let tmp = gen_qregexp_types.QRegExp(h: fcQRegExp_new3(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qregexp_types.QRegExp,
    pattern: openArray[char], cs: cint): gen_qregexp_types.QRegExp =
  let tmp = gen_qregexp_types.QRegExp(h: fcQRegExp_new4(struct_seaqt_string(data: if len(pattern) > 0: addr pattern[0] else: nil, len: csize_t(len(pattern))), cint(cs)), owned: true)
  tmp
proc create*(T: type gen_qregexp_types.QRegExp,
    pattern: openArray[char], cs: cint, syntax: cint): gen_qregexp_types.QRegExp =
  let tmp = gen_qregexp_types.QRegExp(h: fcQRegExp_new5(struct_seaqt_string(data: if len(pattern) > 0: addr pattern[0] else: nil, len: csize_t(len(pattern))), cint(cs), cint(syntax)), owned: true)
  tmp
