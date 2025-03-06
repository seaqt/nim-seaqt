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
{.compile("gen_qstringmatcher.cpp", cflags).}


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
proc fcQStringMatcher_indexIn(self: pointer, str: struct_miqt_string): cint {.importc: "QStringMatcher_indexIn".}
proc fcQStringMatcher_indexIn2(self: pointer, str: pointer, length: cint): cint {.importc: "QStringMatcher_indexIn2".}
proc fcQStringMatcher_pattern(self: pointer, ): struct_miqt_string {.importc: "QStringMatcher_pattern".}
proc fcQStringMatcher_caseSensitivity(self: pointer, ): cint {.importc: "QStringMatcher_caseSensitivity".}
proc fcQStringMatcher_indexIn22(self: pointer, str: struct_miqt_string, fromVal: cint): cint {.importc: "QStringMatcher_indexIn22".}
proc fcQStringMatcher_indexIn3(self: pointer, str: pointer, length: cint, fromVal: cint): cint {.importc: "QStringMatcher_indexIn3".}
proc fcQStringMatcher_new(): ptr cQStringMatcher {.importc: "QStringMatcher_new".}
proc fcQStringMatcher_new2(pattern: struct_miqt_string): ptr cQStringMatcher {.importc: "QStringMatcher_new2".}
proc fcQStringMatcher_new3(uc: pointer, len: cint): ptr cQStringMatcher {.importc: "QStringMatcher_new3".}
proc fcQStringMatcher_new4(other: pointer): ptr cQStringMatcher {.importc: "QStringMatcher_new4".}
proc fcQStringMatcher_new5(pattern: struct_miqt_string, cs: cint): ptr cQStringMatcher {.importc: "QStringMatcher_new5".}
proc fcQStringMatcher_new6(uc: pointer, len: cint, cs: cint): ptr cQStringMatcher {.importc: "QStringMatcher_new6".}
proc fcQStringMatcher_delete(self: pointer) {.importc: "QStringMatcher_delete".}

proc operatorAssign*(self: gen_qstringmatcher_types.QStringMatcher, other: gen_qstringmatcher_types.QStringMatcher): void =
  fcQStringMatcher_operatorAssign(self.h, other.h)

proc setPattern*(self: gen_qstringmatcher_types.QStringMatcher, pattern: string): void =
  fcQStringMatcher_setPattern(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc setCaseSensitivity*(self: gen_qstringmatcher_types.QStringMatcher, cs: cint): void =
  fcQStringMatcher_setCaseSensitivity(self.h, cint(cs))

proc indexIn*(self: gen_qstringmatcher_types.QStringMatcher, str: string): cint =
  fcQStringMatcher_indexIn(self.h, struct_miqt_string(data: str, len: csize_t(len(str))))

proc indexIn*(self: gen_qstringmatcher_types.QStringMatcher, str: gen_qchar_types.QChar, length: cint): cint =
  fcQStringMatcher_indexIn2(self.h, str.h, length)

proc pattern*(self: gen_qstringmatcher_types.QStringMatcher, ): string =
  let v_ms = fcQStringMatcher_pattern(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc caseSensitivity*(self: gen_qstringmatcher_types.QStringMatcher, ): cint =
  cint(fcQStringMatcher_caseSensitivity(self.h))

proc indexIn*(self: gen_qstringmatcher_types.QStringMatcher, str: string, fromVal: cint): cint =
  fcQStringMatcher_indexIn22(self.h, struct_miqt_string(data: str, len: csize_t(len(str))), fromVal)

proc indexIn*(self: gen_qstringmatcher_types.QStringMatcher, str: gen_qchar_types.QChar, length: cint, fromVal: cint): cint =
  fcQStringMatcher_indexIn3(self.h, str.h, length, fromVal)

proc create*(T: type gen_qstringmatcher_types.QStringMatcher): gen_qstringmatcher_types.QStringMatcher =
  gen_qstringmatcher_types.QStringMatcher(h: fcQStringMatcher_new())

proc create*(T: type gen_qstringmatcher_types.QStringMatcher,
    pattern: string): gen_qstringmatcher_types.QStringMatcher =
  gen_qstringmatcher_types.QStringMatcher(h: fcQStringMatcher_new2(struct_miqt_string(data: pattern, len: csize_t(len(pattern)))))

proc create*(T: type gen_qstringmatcher_types.QStringMatcher,
    uc: gen_qchar_types.QChar, len: cint): gen_qstringmatcher_types.QStringMatcher =
  gen_qstringmatcher_types.QStringMatcher(h: fcQStringMatcher_new3(uc.h, len))

proc create*(T: type gen_qstringmatcher_types.QStringMatcher,
    other: gen_qstringmatcher_types.QStringMatcher): gen_qstringmatcher_types.QStringMatcher =
  gen_qstringmatcher_types.QStringMatcher(h: fcQStringMatcher_new4(other.h))

proc create*(T: type gen_qstringmatcher_types.QStringMatcher,
    pattern: string, cs: cint): gen_qstringmatcher_types.QStringMatcher =
  gen_qstringmatcher_types.QStringMatcher(h: fcQStringMatcher_new5(struct_miqt_string(data: pattern, len: csize_t(len(pattern))), cint(cs)))

proc create*(T: type gen_qstringmatcher_types.QStringMatcher,
    uc: gen_qchar_types.QChar, len: cint, cs: cint): gen_qstringmatcher_types.QStringMatcher =
  gen_qstringmatcher_types.QStringMatcher(h: fcQStringMatcher_new6(uc.h, len, cint(cs)))

proc delete*(self: gen_qstringmatcher_types.QStringMatcher) =
  fcQStringMatcher_delete(self.h)
