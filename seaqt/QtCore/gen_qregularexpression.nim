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
{.compile("gen_qregularexpression.cpp", cflags).}


type QRegularExpressionPatternOptionEnum* = distinct cint
template NoPatternOption*(_: type QRegularExpressionPatternOptionEnum): untyped = 0
template CaseInsensitiveOption*(_: type QRegularExpressionPatternOptionEnum): untyped = 1
template DotMatchesEverythingOption*(_: type QRegularExpressionPatternOptionEnum): untyped = 2
template MultilineOption*(_: type QRegularExpressionPatternOptionEnum): untyped = 4
template ExtendedPatternSyntaxOption*(_: type QRegularExpressionPatternOptionEnum): untyped = 8
template InvertedGreedinessOption*(_: type QRegularExpressionPatternOptionEnum): untyped = 16
template DontCaptureOption*(_: type QRegularExpressionPatternOptionEnum): untyped = 32
template UseUnicodePropertiesOption*(_: type QRegularExpressionPatternOptionEnum): untyped = 64
template OptimizeOnFirstUsageOption*(_: type QRegularExpressionPatternOptionEnum): untyped = 128
template DontAutomaticallyOptimizeOption*(_: type QRegularExpressionPatternOptionEnum): untyped = 256


type QRegularExpressionMatchTypeEnum* = distinct cint
template NormalMatch*(_: type QRegularExpressionMatchTypeEnum): untyped = 0
template PartialPreferCompleteMatch*(_: type QRegularExpressionMatchTypeEnum): untyped = 1
template PartialPreferFirstMatch*(_: type QRegularExpressionMatchTypeEnum): untyped = 2
template NoMatch*(_: type QRegularExpressionMatchTypeEnum): untyped = 3


type QRegularExpressionMatchOptionEnum* = distinct cint
template NoMatchOption*(_: type QRegularExpressionMatchOptionEnum): untyped = 0
template AnchoredMatchOption*(_: type QRegularExpressionMatchOptionEnum): untyped = 1
template DontCheckSubjectStringMatchOption*(_: type QRegularExpressionMatchOptionEnum): untyped = 2


import ./gen_qregularexpression_types
export gen_qregularexpression_types


type cQRegularExpression*{.exportc: "QRegularExpression", incompleteStruct.} = object
type cQRegularExpressionMatch*{.exportc: "QRegularExpressionMatch", incompleteStruct.} = object
type cQRegularExpressionMatchIterator*{.exportc: "QRegularExpressionMatchIterator", incompleteStruct.} = object

proc fcQRegularExpression_patternOptions(self: pointer, ): cint {.importc: "QRegularExpression_patternOptions".}
proc fcQRegularExpression_setPatternOptions(self: pointer, options: cint): void {.importc: "QRegularExpression_setPatternOptions".}
proc fcQRegularExpression_operatorAssign(self: pointer, re: pointer): void {.importc: "QRegularExpression_operatorAssign".}
proc fcQRegularExpression_swap(self: pointer, other: pointer): void {.importc: "QRegularExpression_swap".}
proc fcQRegularExpression_pattern(self: pointer, ): struct_miqt_string {.importc: "QRegularExpression_pattern".}
proc fcQRegularExpression_setPattern(self: pointer, pattern: struct_miqt_string): void {.importc: "QRegularExpression_setPattern".}
proc fcQRegularExpression_isValid(self: pointer, ): bool {.importc: "QRegularExpression_isValid".}
proc fcQRegularExpression_patternErrorOffset(self: pointer, ): cint {.importc: "QRegularExpression_patternErrorOffset".}
proc fcQRegularExpression_errorString(self: pointer, ): struct_miqt_string {.importc: "QRegularExpression_errorString".}
proc fcQRegularExpression_captureCount(self: pointer, ): cint {.importc: "QRegularExpression_captureCount".}
proc fcQRegularExpression_namedCaptureGroups(self: pointer, ): struct_miqt_array {.importc: "QRegularExpression_namedCaptureGroups".}
proc fcQRegularExpression_match(self: pointer, subject: struct_miqt_string): pointer {.importc: "QRegularExpression_match".}
proc fcQRegularExpression_globalMatch(self: pointer, subject: struct_miqt_string): pointer {.importc: "QRegularExpression_globalMatch".}
proc fcQRegularExpression_optimize(self: pointer, ): void {.importc: "QRegularExpression_optimize".}
proc fcQRegularExpression_escape(str: struct_miqt_string): struct_miqt_string {.importc: "QRegularExpression_escape".}
proc fcQRegularExpression_wildcardToRegularExpression(str: struct_miqt_string): struct_miqt_string {.importc: "QRegularExpression_wildcardToRegularExpression".}
proc fcQRegularExpression_anchoredPattern(expression: struct_miqt_string): struct_miqt_string {.importc: "QRegularExpression_anchoredPattern".}
proc fcQRegularExpression_operatorEqual(self: pointer, re: pointer): bool {.importc: "QRegularExpression_operatorEqual".}
proc fcQRegularExpression_operatorNotEqual(self: pointer, re: pointer): bool {.importc: "QRegularExpression_operatorNotEqual".}
proc fcQRegularExpression_match2(self: pointer, subject: struct_miqt_string, offset: cint): pointer {.importc: "QRegularExpression_match2".}
proc fcQRegularExpression_match3(self: pointer, subject: struct_miqt_string, offset: cint, matchType: cint): pointer {.importc: "QRegularExpression_match3".}
proc fcQRegularExpression_match4(self: pointer, subject: struct_miqt_string, offset: cint, matchType: cint, matchOptions: cint): pointer {.importc: "QRegularExpression_match4".}
proc fcQRegularExpression_globalMatch2(self: pointer, subject: struct_miqt_string, offset: cint): pointer {.importc: "QRegularExpression_globalMatch2".}
proc fcQRegularExpression_globalMatch3(self: pointer, subject: struct_miqt_string, offset: cint, matchType: cint): pointer {.importc: "QRegularExpression_globalMatch3".}
proc fcQRegularExpression_globalMatch4(self: pointer, subject: struct_miqt_string, offset: cint, matchType: cint, matchOptions: cint): pointer {.importc: "QRegularExpression_globalMatch4".}
proc fcQRegularExpression_new(): ptr cQRegularExpression {.importc: "QRegularExpression_new".}
proc fcQRegularExpression_new2(pattern: struct_miqt_string): ptr cQRegularExpression {.importc: "QRegularExpression_new2".}
proc fcQRegularExpression_new3(re: pointer): ptr cQRegularExpression {.importc: "QRegularExpression_new3".}
proc fcQRegularExpression_new4(pattern: struct_miqt_string, options: cint): ptr cQRegularExpression {.importc: "QRegularExpression_new4".}
proc fcQRegularExpression_delete(self: pointer) {.importc: "QRegularExpression_delete".}
proc fcQRegularExpressionMatch_operatorAssign(self: pointer, match: pointer): void {.importc: "QRegularExpressionMatch_operatorAssign".}
proc fcQRegularExpressionMatch_swap(self: pointer, other: pointer): void {.importc: "QRegularExpressionMatch_swap".}
proc fcQRegularExpressionMatch_regularExpression(self: pointer, ): pointer {.importc: "QRegularExpressionMatch_regularExpression".}
proc fcQRegularExpressionMatch_matchType(self: pointer, ): cint {.importc: "QRegularExpressionMatch_matchType".}
proc fcQRegularExpressionMatch_matchOptions(self: pointer, ): cint {.importc: "QRegularExpressionMatch_matchOptions".}
proc fcQRegularExpressionMatch_hasMatch(self: pointer, ): bool {.importc: "QRegularExpressionMatch_hasMatch".}
proc fcQRegularExpressionMatch_hasPartialMatch(self: pointer, ): bool {.importc: "QRegularExpressionMatch_hasPartialMatch".}
proc fcQRegularExpressionMatch_isValid(self: pointer, ): bool {.importc: "QRegularExpressionMatch_isValid".}
proc fcQRegularExpressionMatch_lastCapturedIndex(self: pointer, ): cint {.importc: "QRegularExpressionMatch_lastCapturedIndex".}
proc fcQRegularExpressionMatch_captured(self: pointer, ): struct_miqt_string {.importc: "QRegularExpressionMatch_captured".}
proc fcQRegularExpressionMatch_capturedWithName(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QRegularExpressionMatch_capturedWithName".}
proc fcQRegularExpressionMatch_capturedTexts(self: pointer, ): struct_miqt_array {.importc: "QRegularExpressionMatch_capturedTexts".}
proc fcQRegularExpressionMatch_capturedStart(self: pointer, ): cint {.importc: "QRegularExpressionMatch_capturedStart".}
proc fcQRegularExpressionMatch_capturedLength(self: pointer, ): cint {.importc: "QRegularExpressionMatch_capturedLength".}
proc fcQRegularExpressionMatch_capturedEnd(self: pointer, ): cint {.importc: "QRegularExpressionMatch_capturedEnd".}
proc fcQRegularExpressionMatch_capturedStartWithName(self: pointer, name: struct_miqt_string): cint {.importc: "QRegularExpressionMatch_capturedStartWithName".}
proc fcQRegularExpressionMatch_capturedLengthWithName(self: pointer, name: struct_miqt_string): cint {.importc: "QRegularExpressionMatch_capturedLengthWithName".}
proc fcQRegularExpressionMatch_capturedEndWithName(self: pointer, name: struct_miqt_string): cint {.importc: "QRegularExpressionMatch_capturedEndWithName".}
proc fcQRegularExpressionMatch_captured1(self: pointer, nth: cint): struct_miqt_string {.importc: "QRegularExpressionMatch_captured1".}
proc fcQRegularExpressionMatch_capturedStart1(self: pointer, nth: cint): cint {.importc: "QRegularExpressionMatch_capturedStart1".}
proc fcQRegularExpressionMatch_capturedLength1(self: pointer, nth: cint): cint {.importc: "QRegularExpressionMatch_capturedLength1".}
proc fcQRegularExpressionMatch_capturedEnd1(self: pointer, nth: cint): cint {.importc: "QRegularExpressionMatch_capturedEnd1".}
proc fcQRegularExpressionMatch_new(): ptr cQRegularExpressionMatch {.importc: "QRegularExpressionMatch_new".}
proc fcQRegularExpressionMatch_new2(match: pointer): ptr cQRegularExpressionMatch {.importc: "QRegularExpressionMatch_new2".}
proc fcQRegularExpressionMatch_delete(self: pointer) {.importc: "QRegularExpressionMatch_delete".}
proc fcQRegularExpressionMatchIterator_operatorAssign(self: pointer, iteratorVal: pointer): void {.importc: "QRegularExpressionMatchIterator_operatorAssign".}
proc fcQRegularExpressionMatchIterator_swap(self: pointer, other: pointer): void {.importc: "QRegularExpressionMatchIterator_swap".}
proc fcQRegularExpressionMatchIterator_isValid(self: pointer, ): bool {.importc: "QRegularExpressionMatchIterator_isValid".}
proc fcQRegularExpressionMatchIterator_hasNext(self: pointer, ): bool {.importc: "QRegularExpressionMatchIterator_hasNext".}
proc fcQRegularExpressionMatchIterator_next(self: pointer, ): pointer {.importc: "QRegularExpressionMatchIterator_next".}
proc fcQRegularExpressionMatchIterator_peekNext(self: pointer, ): pointer {.importc: "QRegularExpressionMatchIterator_peekNext".}
proc fcQRegularExpressionMatchIterator_regularExpression(self: pointer, ): pointer {.importc: "QRegularExpressionMatchIterator_regularExpression".}
proc fcQRegularExpressionMatchIterator_matchType(self: pointer, ): cint {.importc: "QRegularExpressionMatchIterator_matchType".}
proc fcQRegularExpressionMatchIterator_matchOptions(self: pointer, ): cint {.importc: "QRegularExpressionMatchIterator_matchOptions".}
proc fcQRegularExpressionMatchIterator_new(): ptr cQRegularExpressionMatchIterator {.importc: "QRegularExpressionMatchIterator_new".}
proc fcQRegularExpressionMatchIterator_new2(iteratorVal: pointer): ptr cQRegularExpressionMatchIterator {.importc: "QRegularExpressionMatchIterator_new2".}
proc fcQRegularExpressionMatchIterator_delete(self: pointer) {.importc: "QRegularExpressionMatchIterator_delete".}

proc patternOptions*(self: gen_qregularexpression_types.QRegularExpression, ): cint =
  cint(fcQRegularExpression_patternOptions(self.h))

proc setPatternOptions*(self: gen_qregularexpression_types.QRegularExpression, options: cint): void =
  fcQRegularExpression_setPatternOptions(self.h, cint(options))

proc operatorAssign*(self: gen_qregularexpression_types.QRegularExpression, re: gen_qregularexpression_types.QRegularExpression): void =
  fcQRegularExpression_operatorAssign(self.h, re.h)

proc swap*(self: gen_qregularexpression_types.QRegularExpression, other: gen_qregularexpression_types.QRegularExpression): void =
  fcQRegularExpression_swap(self.h, other.h)

proc pattern*(self: gen_qregularexpression_types.QRegularExpression, ): string =
  let v_ms = fcQRegularExpression_pattern(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPattern*(self: gen_qregularexpression_types.QRegularExpression, pattern: string): void =
  fcQRegularExpression_setPattern(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc isValid*(self: gen_qregularexpression_types.QRegularExpression, ): bool =
  fcQRegularExpression_isValid(self.h)

proc patternErrorOffset*(self: gen_qregularexpression_types.QRegularExpression, ): cint =
  fcQRegularExpression_patternErrorOffset(self.h)

proc errorString*(self: gen_qregularexpression_types.QRegularExpression, ): string =
  let v_ms = fcQRegularExpression_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc captureCount*(self: gen_qregularexpression_types.QRegularExpression, ): cint =
  fcQRegularExpression_captureCount(self.h)

proc namedCaptureGroups*(self: gen_qregularexpression_types.QRegularExpression, ): seq[string] =
  var v_ma = fcQRegularExpression_namedCaptureGroups(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc match*(self: gen_qregularexpression_types.QRegularExpression, subject: string): gen_qregularexpression_types.QRegularExpressionMatch =
  gen_qregularexpression_types.QRegularExpressionMatch(h: fcQRegularExpression_match(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject)))))

proc globalMatch*(self: gen_qregularexpression_types.QRegularExpression, subject: string): gen_qregularexpression_types.QRegularExpressionMatchIterator =
  gen_qregularexpression_types.QRegularExpressionMatchIterator(h: fcQRegularExpression_globalMatch(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject)))))

proc optimize*(self: gen_qregularexpression_types.QRegularExpression, ): void =
  fcQRegularExpression_optimize(self.h)

proc escape*(_: type gen_qregularexpression_types.QRegularExpression, str: string): string =
  let v_ms = fcQRegularExpression_escape(struct_miqt_string(data: str, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc wildcardToRegularExpression*(_: type gen_qregularexpression_types.QRegularExpression, str: string): string =
  let v_ms = fcQRegularExpression_wildcardToRegularExpression(struct_miqt_string(data: str, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc anchoredPattern*(_: type gen_qregularexpression_types.QRegularExpression, expression: string): string =
  let v_ms = fcQRegularExpression_anchoredPattern(struct_miqt_string(data: expression, len: csize_t(len(expression))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc operatorEqual*(self: gen_qregularexpression_types.QRegularExpression, re: gen_qregularexpression_types.QRegularExpression): bool =
  fcQRegularExpression_operatorEqual(self.h, re.h)

proc operatorNotEqual*(self: gen_qregularexpression_types.QRegularExpression, re: gen_qregularexpression_types.QRegularExpression): bool =
  fcQRegularExpression_operatorNotEqual(self.h, re.h)

proc match*(self: gen_qregularexpression_types.QRegularExpression, subject: string, offset: cint): gen_qregularexpression_types.QRegularExpressionMatch =
  gen_qregularexpression_types.QRegularExpressionMatch(h: fcQRegularExpression_match2(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject))), offset))

proc match*(self: gen_qregularexpression_types.QRegularExpression, subject: string, offset: cint, matchType: cint): gen_qregularexpression_types.QRegularExpressionMatch =
  gen_qregularexpression_types.QRegularExpressionMatch(h: fcQRegularExpression_match3(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject))), offset, cint(matchType)))

proc match*(self: gen_qregularexpression_types.QRegularExpression, subject: string, offset: cint, matchType: cint, matchOptions: cint): gen_qregularexpression_types.QRegularExpressionMatch =
  gen_qregularexpression_types.QRegularExpressionMatch(h: fcQRegularExpression_match4(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject))), offset, cint(matchType), cint(matchOptions)))

proc globalMatch*(self: gen_qregularexpression_types.QRegularExpression, subject: string, offset: cint): gen_qregularexpression_types.QRegularExpressionMatchIterator =
  gen_qregularexpression_types.QRegularExpressionMatchIterator(h: fcQRegularExpression_globalMatch2(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject))), offset))

proc globalMatch*(self: gen_qregularexpression_types.QRegularExpression, subject: string, offset: cint, matchType: cint): gen_qregularexpression_types.QRegularExpressionMatchIterator =
  gen_qregularexpression_types.QRegularExpressionMatchIterator(h: fcQRegularExpression_globalMatch3(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject))), offset, cint(matchType)))

proc globalMatch*(self: gen_qregularexpression_types.QRegularExpression, subject: string, offset: cint, matchType: cint, matchOptions: cint): gen_qregularexpression_types.QRegularExpressionMatchIterator =
  gen_qregularexpression_types.QRegularExpressionMatchIterator(h: fcQRegularExpression_globalMatch4(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject))), offset, cint(matchType), cint(matchOptions)))

proc create*(T: type gen_qregularexpression_types.QRegularExpression): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQRegularExpression_new())

proc create*(T: type gen_qregularexpression_types.QRegularExpression,
    pattern: string): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQRegularExpression_new2(struct_miqt_string(data: pattern, len: csize_t(len(pattern)))))

proc create*(T: type gen_qregularexpression_types.QRegularExpression,
    re: gen_qregularexpression_types.QRegularExpression): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQRegularExpression_new3(re.h))

proc create*(T: type gen_qregularexpression_types.QRegularExpression,
    pattern: string, options: cint): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQRegularExpression_new4(struct_miqt_string(data: pattern, len: csize_t(len(pattern))), cint(options)))

proc delete*(self: gen_qregularexpression_types.QRegularExpression) =
  fcQRegularExpression_delete(self.h)
proc operatorAssign*(self: gen_qregularexpression_types.QRegularExpressionMatch, match: gen_qregularexpression_types.QRegularExpressionMatch): void =
  fcQRegularExpressionMatch_operatorAssign(self.h, match.h)

proc swap*(self: gen_qregularexpression_types.QRegularExpressionMatch, other: gen_qregularexpression_types.QRegularExpressionMatch): void =
  fcQRegularExpressionMatch_swap(self.h, other.h)

proc regularExpression*(self: gen_qregularexpression_types.QRegularExpressionMatch, ): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQRegularExpressionMatch_regularExpression(self.h))

proc matchType*(self: gen_qregularexpression_types.QRegularExpressionMatch, ): cint =
  cint(fcQRegularExpressionMatch_matchType(self.h))

proc matchOptions*(self: gen_qregularexpression_types.QRegularExpressionMatch, ): cint =
  cint(fcQRegularExpressionMatch_matchOptions(self.h))

proc hasMatch*(self: gen_qregularexpression_types.QRegularExpressionMatch, ): bool =
  fcQRegularExpressionMatch_hasMatch(self.h)

proc hasPartialMatch*(self: gen_qregularexpression_types.QRegularExpressionMatch, ): bool =
  fcQRegularExpressionMatch_hasPartialMatch(self.h)

proc isValid*(self: gen_qregularexpression_types.QRegularExpressionMatch, ): bool =
  fcQRegularExpressionMatch_isValid(self.h)

proc lastCapturedIndex*(self: gen_qregularexpression_types.QRegularExpressionMatch, ): cint =
  fcQRegularExpressionMatch_lastCapturedIndex(self.h)

proc captured*(self: gen_qregularexpression_types.QRegularExpressionMatch, ): string =
  let v_ms = fcQRegularExpressionMatch_captured(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc captured*(self: gen_qregularexpression_types.QRegularExpressionMatch, name: string): string =
  let v_ms = fcQRegularExpressionMatch_capturedWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc capturedTexts*(self: gen_qregularexpression_types.QRegularExpressionMatch, ): seq[string] =
  var v_ma = fcQRegularExpressionMatch_capturedTexts(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc capturedStart*(self: gen_qregularexpression_types.QRegularExpressionMatch, ): cint =
  fcQRegularExpressionMatch_capturedStart(self.h)

proc capturedLength*(self: gen_qregularexpression_types.QRegularExpressionMatch, ): cint =
  fcQRegularExpressionMatch_capturedLength(self.h)

proc capturedEnd*(self: gen_qregularexpression_types.QRegularExpressionMatch, ): cint =
  fcQRegularExpressionMatch_capturedEnd(self.h)

proc capturedStart*(self: gen_qregularexpression_types.QRegularExpressionMatch, name: string): cint =
  fcQRegularExpressionMatch_capturedStartWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc capturedLength*(self: gen_qregularexpression_types.QRegularExpressionMatch, name: string): cint =
  fcQRegularExpressionMatch_capturedLengthWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc capturedEnd*(self: gen_qregularexpression_types.QRegularExpressionMatch, name: string): cint =
  fcQRegularExpressionMatch_capturedEndWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc captured*(self: gen_qregularexpression_types.QRegularExpressionMatch, nth: cint): string =
  let v_ms = fcQRegularExpressionMatch_captured1(self.h, nth)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc capturedStart*(self: gen_qregularexpression_types.QRegularExpressionMatch, nth: cint): cint =
  fcQRegularExpressionMatch_capturedStart1(self.h, nth)

proc capturedLength*(self: gen_qregularexpression_types.QRegularExpressionMatch, nth: cint): cint =
  fcQRegularExpressionMatch_capturedLength1(self.h, nth)

proc capturedEnd*(self: gen_qregularexpression_types.QRegularExpressionMatch, nth: cint): cint =
  fcQRegularExpressionMatch_capturedEnd1(self.h, nth)

proc create*(T: type gen_qregularexpression_types.QRegularExpressionMatch): gen_qregularexpression_types.QRegularExpressionMatch =
  gen_qregularexpression_types.QRegularExpressionMatch(h: fcQRegularExpressionMatch_new())

proc create*(T: type gen_qregularexpression_types.QRegularExpressionMatch,
    match: gen_qregularexpression_types.QRegularExpressionMatch): gen_qregularexpression_types.QRegularExpressionMatch =
  gen_qregularexpression_types.QRegularExpressionMatch(h: fcQRegularExpressionMatch_new2(match.h))

proc delete*(self: gen_qregularexpression_types.QRegularExpressionMatch) =
  fcQRegularExpressionMatch_delete(self.h)
proc operatorAssign*(self: gen_qregularexpression_types.QRegularExpressionMatchIterator, iteratorVal: gen_qregularexpression_types.QRegularExpressionMatchIterator): void =
  fcQRegularExpressionMatchIterator_operatorAssign(self.h, iteratorVal.h)

proc swap*(self: gen_qregularexpression_types.QRegularExpressionMatchIterator, other: gen_qregularexpression_types.QRegularExpressionMatchIterator): void =
  fcQRegularExpressionMatchIterator_swap(self.h, other.h)

proc isValid*(self: gen_qregularexpression_types.QRegularExpressionMatchIterator, ): bool =
  fcQRegularExpressionMatchIterator_isValid(self.h)

proc hasNext*(self: gen_qregularexpression_types.QRegularExpressionMatchIterator, ): bool =
  fcQRegularExpressionMatchIterator_hasNext(self.h)

proc next*(self: gen_qregularexpression_types.QRegularExpressionMatchIterator, ): gen_qregularexpression_types.QRegularExpressionMatch =
  gen_qregularexpression_types.QRegularExpressionMatch(h: fcQRegularExpressionMatchIterator_next(self.h))

proc peekNext*(self: gen_qregularexpression_types.QRegularExpressionMatchIterator, ): gen_qregularexpression_types.QRegularExpressionMatch =
  gen_qregularexpression_types.QRegularExpressionMatch(h: fcQRegularExpressionMatchIterator_peekNext(self.h))

proc regularExpression*(self: gen_qregularexpression_types.QRegularExpressionMatchIterator, ): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQRegularExpressionMatchIterator_regularExpression(self.h))

proc matchType*(self: gen_qregularexpression_types.QRegularExpressionMatchIterator, ): cint =
  cint(fcQRegularExpressionMatchIterator_matchType(self.h))

proc matchOptions*(self: gen_qregularexpression_types.QRegularExpressionMatchIterator, ): cint =
  cint(fcQRegularExpressionMatchIterator_matchOptions(self.h))

proc create*(T: type gen_qregularexpression_types.QRegularExpressionMatchIterator): gen_qregularexpression_types.QRegularExpressionMatchIterator =
  gen_qregularexpression_types.QRegularExpressionMatchIterator(h: fcQRegularExpressionMatchIterator_new())

proc create*(T: type gen_qregularexpression_types.QRegularExpressionMatchIterator,
    iteratorVal: gen_qregularexpression_types.QRegularExpressionMatchIterator): gen_qregularexpression_types.QRegularExpressionMatchIterator =
  gen_qregularexpression_types.QRegularExpressionMatchIterator(h: fcQRegularExpressionMatchIterator_new2(iteratorVal.h))

proc delete*(self: gen_qregularexpression_types.QRegularExpressionMatchIterator) =
  fcQRegularExpressionMatchIterator_delete(self.h)
