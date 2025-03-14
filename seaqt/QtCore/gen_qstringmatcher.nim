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


import ./gen_qstringmatcher_types
export gen_qstringmatcher_types

import
  ./gen_qchar_types
export
  gen_qchar_types

type cQStringMatcher*{.exportc: "QStringMatcher", incompleteStruct.} = object

proc fcQStringMatcher_operatorAssign(self: pointer, other: pointer): void {.importc: "QStringMatcher_operatorAssign".}
proc fcQStringMatcher_setPattern(self: pointer, pattern: struct_miqt_string): void {.importc: "QStringMatcher_setPattern".}
proc fcQStringMatcher_setCaseSensitivity(self: pointer, cs: cint): void {.importc: "QStringMatcher_setCaseSensitivity".}
proc fcQStringMatcher_indexIn(self: pointer, str: struct_miqt_string): int64 {.importc: "QStringMatcher_indexIn".}
proc fcQStringMatcher_indexIn2(self: pointer, str: pointer, length: int64): int64 {.importc: "QStringMatcher_indexIn2".}
proc fcQStringMatcher_pattern(self: pointer): struct_miqt_string {.importc: "QStringMatcher_pattern".}
proc fcQStringMatcher_caseSensitivity(self: pointer): cint {.importc: "QStringMatcher_caseSensitivity".}
proc fcQStringMatcher_indexIn22(self: pointer, str: struct_miqt_string, fromVal: int64): int64 {.importc: "QStringMatcher_indexIn22".}
proc fcQStringMatcher_indexIn3(self: pointer, str: pointer, length: int64, fromVal: int64): int64 {.importc: "QStringMatcher_indexIn3".}
proc fcQStringMatcher_new(): ptr cQStringMatcher {.importc: "QStringMatcher_new".}
proc fcQStringMatcher_new2(pattern: struct_miqt_string): ptr cQStringMatcher {.importc: "QStringMatcher_new2".}
proc fcQStringMatcher_new3(uc: pointer, len: int64): ptr cQStringMatcher {.importc: "QStringMatcher_new3".}
proc fcQStringMatcher_new4(other: pointer): ptr cQStringMatcher {.importc: "QStringMatcher_new4".}
proc fcQStringMatcher_new5(pattern: struct_miqt_string, cs: cint): ptr cQStringMatcher {.importc: "QStringMatcher_new5".}
proc fcQStringMatcher_new6(uc: pointer, len: int64, cs: cint): ptr cQStringMatcher {.importc: "QStringMatcher_new6".}

proc operatorAssign*(self: gen_qstringmatcher_types.QStringMatcher, other: gen_qstringmatcher_types.QStringMatcher): void =
  fcQStringMatcher_operatorAssign(self.h, other.h)

proc setPattern*(self: gen_qstringmatcher_types.QStringMatcher, pattern: openArray[char]): void =
  fcQStringMatcher_setPattern(self.h, struct_miqt_string(data: if len(pattern) > 0: addr pattern[0] else: nil, len: csize_t(len(pattern))))

proc setCaseSensitivity*(self: gen_qstringmatcher_types.QStringMatcher, cs: cint): void =
  fcQStringMatcher_setCaseSensitivity(self.h, cint(cs))

proc indexIn*(self: gen_qstringmatcher_types.QStringMatcher, str: openArray[char]): int64 =
  fcQStringMatcher_indexIn(self.h, struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))

proc indexIn*(self: gen_qstringmatcher_types.QStringMatcher, str: gen_qchar_types.QChar, length: int64): int64 =
  fcQStringMatcher_indexIn2(self.h, str.h, length)

proc pattern*(self: gen_qstringmatcher_types.QStringMatcher): string =
  let v_ms = fcQStringMatcher_pattern(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc caseSensitivity*(self: gen_qstringmatcher_types.QStringMatcher): cint =
  cint(fcQStringMatcher_caseSensitivity(self.h))

proc indexIn*(self: gen_qstringmatcher_types.QStringMatcher, str: openArray[char], fromVal: int64): int64 =
  fcQStringMatcher_indexIn22(self.h, struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), fromVal)

proc indexIn*(self: gen_qstringmatcher_types.QStringMatcher, str: gen_qchar_types.QChar, length: int64, fromVal: int64): int64 =
  fcQStringMatcher_indexIn3(self.h, str.h, length, fromVal)

proc create*(T: type gen_qstringmatcher_types.QStringMatcher): gen_qstringmatcher_types.QStringMatcher =
  gen_qstringmatcher_types.QStringMatcher(h: fcQStringMatcher_new(), owned: true)

proc create*(T: type gen_qstringmatcher_types.QStringMatcher,
    pattern: openArray[char]): gen_qstringmatcher_types.QStringMatcher =
  gen_qstringmatcher_types.QStringMatcher(h: fcQStringMatcher_new2(struct_miqt_string(data: if len(pattern) > 0: addr pattern[0] else: nil, len: csize_t(len(pattern)))), owned: true)

proc create*(T: type gen_qstringmatcher_types.QStringMatcher,
    uc: gen_qchar_types.QChar, len: int64): gen_qstringmatcher_types.QStringMatcher =
  gen_qstringmatcher_types.QStringMatcher(h: fcQStringMatcher_new3(uc.h, len), owned: true)

proc create*(T: type gen_qstringmatcher_types.QStringMatcher,
    other: gen_qstringmatcher_types.QStringMatcher): gen_qstringmatcher_types.QStringMatcher =
  gen_qstringmatcher_types.QStringMatcher(h: fcQStringMatcher_new4(other.h), owned: true)

proc create*(T: type gen_qstringmatcher_types.QStringMatcher,
    pattern: openArray[char], cs: cint): gen_qstringmatcher_types.QStringMatcher =
  gen_qstringmatcher_types.QStringMatcher(h: fcQStringMatcher_new5(struct_miqt_string(data: if len(pattern) > 0: addr pattern[0] else: nil, len: csize_t(len(pattern))), cint(cs)), owned: true)

proc create*(T: type gen_qstringmatcher_types.QStringMatcher,
    uc: gen_qchar_types.QChar, len: int64, cs: cint): gen_qstringmatcher_types.QStringMatcher =
  gen_qstringmatcher_types.QStringMatcher(h: fcQStringMatcher_new6(uc.h, len, cint(cs)), owned: true)

