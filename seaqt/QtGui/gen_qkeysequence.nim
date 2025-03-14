import ./qtgui_pkg

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


type QKeySequenceStandardKeyEnum* = distinct cint
template UnknownKey*(_: type QKeySequenceStandardKeyEnum): untyped = 0
template HelpContents*(_: type QKeySequenceStandardKeyEnum): untyped = 1
template WhatsThis*(_: type QKeySequenceStandardKeyEnum): untyped = 2
template Open*(_: type QKeySequenceStandardKeyEnum): untyped = 3
template Close*(_: type QKeySequenceStandardKeyEnum): untyped = 4
template Save*(_: type QKeySequenceStandardKeyEnum): untyped = 5
template New*(_: type QKeySequenceStandardKeyEnum): untyped = 6
template Delete*(_: type QKeySequenceStandardKeyEnum): untyped = 7
template Cut*(_: type QKeySequenceStandardKeyEnum): untyped = 8
template Copy*(_: type QKeySequenceStandardKeyEnum): untyped = 9
template Paste*(_: type QKeySequenceStandardKeyEnum): untyped = 10
template Undo*(_: type QKeySequenceStandardKeyEnum): untyped = 11
template Redo*(_: type QKeySequenceStandardKeyEnum): untyped = 12
template Back*(_: type QKeySequenceStandardKeyEnum): untyped = 13
template Forward*(_: type QKeySequenceStandardKeyEnum): untyped = 14
template Refresh*(_: type QKeySequenceStandardKeyEnum): untyped = 15
template ZoomIn*(_: type QKeySequenceStandardKeyEnum): untyped = 16
template ZoomOut*(_: type QKeySequenceStandardKeyEnum): untyped = 17
template Print*(_: type QKeySequenceStandardKeyEnum): untyped = 18
template AddTab*(_: type QKeySequenceStandardKeyEnum): untyped = 19
template NextChild*(_: type QKeySequenceStandardKeyEnum): untyped = 20
template PreviousChild*(_: type QKeySequenceStandardKeyEnum): untyped = 21
template Find*(_: type QKeySequenceStandardKeyEnum): untyped = 22
template FindNext*(_: type QKeySequenceStandardKeyEnum): untyped = 23
template FindPrevious*(_: type QKeySequenceStandardKeyEnum): untyped = 24
template Replace*(_: type QKeySequenceStandardKeyEnum): untyped = 25
template SelectAll*(_: type QKeySequenceStandardKeyEnum): untyped = 26
template Bold*(_: type QKeySequenceStandardKeyEnum): untyped = 27
template Italic*(_: type QKeySequenceStandardKeyEnum): untyped = 28
template Underline*(_: type QKeySequenceStandardKeyEnum): untyped = 29
template MoveToNextChar*(_: type QKeySequenceStandardKeyEnum): untyped = 30
template MoveToPreviousChar*(_: type QKeySequenceStandardKeyEnum): untyped = 31
template MoveToNextWord*(_: type QKeySequenceStandardKeyEnum): untyped = 32
template MoveToPreviousWord*(_: type QKeySequenceStandardKeyEnum): untyped = 33
template MoveToNextLine*(_: type QKeySequenceStandardKeyEnum): untyped = 34
template MoveToPreviousLine*(_: type QKeySequenceStandardKeyEnum): untyped = 35
template MoveToNextPage*(_: type QKeySequenceStandardKeyEnum): untyped = 36
template MoveToPreviousPage*(_: type QKeySequenceStandardKeyEnum): untyped = 37
template MoveToStartOfLine*(_: type QKeySequenceStandardKeyEnum): untyped = 38
template MoveToEndOfLine*(_: type QKeySequenceStandardKeyEnum): untyped = 39
template MoveToStartOfBlock*(_: type QKeySequenceStandardKeyEnum): untyped = 40
template MoveToEndOfBlock*(_: type QKeySequenceStandardKeyEnum): untyped = 41
template MoveToStartOfDocument*(_: type QKeySequenceStandardKeyEnum): untyped = 42
template MoveToEndOfDocument*(_: type QKeySequenceStandardKeyEnum): untyped = 43
template SelectNextChar*(_: type QKeySequenceStandardKeyEnum): untyped = 44
template SelectPreviousChar*(_: type QKeySequenceStandardKeyEnum): untyped = 45
template SelectNextWord*(_: type QKeySequenceStandardKeyEnum): untyped = 46
template SelectPreviousWord*(_: type QKeySequenceStandardKeyEnum): untyped = 47
template SelectNextLine*(_: type QKeySequenceStandardKeyEnum): untyped = 48
template SelectPreviousLine*(_: type QKeySequenceStandardKeyEnum): untyped = 49
template SelectNextPage*(_: type QKeySequenceStandardKeyEnum): untyped = 50
template SelectPreviousPage*(_: type QKeySequenceStandardKeyEnum): untyped = 51
template SelectStartOfLine*(_: type QKeySequenceStandardKeyEnum): untyped = 52
template SelectEndOfLine*(_: type QKeySequenceStandardKeyEnum): untyped = 53
template SelectStartOfBlock*(_: type QKeySequenceStandardKeyEnum): untyped = 54
template SelectEndOfBlock*(_: type QKeySequenceStandardKeyEnum): untyped = 55
template SelectStartOfDocument*(_: type QKeySequenceStandardKeyEnum): untyped = 56
template SelectEndOfDocument*(_: type QKeySequenceStandardKeyEnum): untyped = 57
template DeleteStartOfWord*(_: type QKeySequenceStandardKeyEnum): untyped = 58
template DeleteEndOfWord*(_: type QKeySequenceStandardKeyEnum): untyped = 59
template DeleteEndOfLine*(_: type QKeySequenceStandardKeyEnum): untyped = 60
template InsertParagraphSeparator*(_: type QKeySequenceStandardKeyEnum): untyped = 61
template InsertLineSeparator*(_: type QKeySequenceStandardKeyEnum): untyped = 62
template SaveAs*(_: type QKeySequenceStandardKeyEnum): untyped = 63
template Preferences*(_: type QKeySequenceStandardKeyEnum): untyped = 64
template Quit*(_: type QKeySequenceStandardKeyEnum): untyped = 65
template FullScreen*(_: type QKeySequenceStandardKeyEnum): untyped = 66
template Deselect*(_: type QKeySequenceStandardKeyEnum): untyped = 67
template DeleteCompleteLine*(_: type QKeySequenceStandardKeyEnum): untyped = 68
template Backspace*(_: type QKeySequenceStandardKeyEnum): untyped = 69
template Cancel*(_: type QKeySequenceStandardKeyEnum): untyped = 70


type QKeySequenceSequenceFormatEnum* = distinct cint
template NativeText*(_: type QKeySequenceSequenceFormatEnum): untyped = 0
template PortableText*(_: type QKeySequenceSequenceFormatEnum): untyped = 1


type QKeySequenceSequenceMatchEnum* = distinct cint
template NoMatch*(_: type QKeySequenceSequenceMatchEnum): untyped = 0
template PartialMatch*(_: type QKeySequenceSequenceMatchEnum): untyped = 1
template ExactMatch*(_: type QKeySequenceSequenceMatchEnum): untyped = 2


import ./gen_qkeysequence_types
export gen_qkeysequence_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types
export
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQKeySequence*{.exportc: "QKeySequence", incompleteStruct.} = object

proc fcQKeySequence_count(self: pointer): cint {.importc: "QKeySequence_count".}
proc fcQKeySequence_isEmpty(self: pointer): bool {.importc: "QKeySequence_isEmpty".}
proc fcQKeySequence_toString(self: pointer): struct_miqt_string {.importc: "QKeySequence_toString".}
proc fcQKeySequence_fromString(str: struct_miqt_string): pointer {.importc: "QKeySequence_fromString".}
proc fcQKeySequence_listFromString(str: struct_miqt_string): struct_miqt_array {.importc: "QKeySequence_listFromString".}
proc fcQKeySequence_listToString(list: struct_miqt_array): struct_miqt_string {.importc: "QKeySequence_listToString".}
proc fcQKeySequence_matches(self: pointer, seqVal: pointer): cint {.importc: "QKeySequence_matches".}
proc fcQKeySequence_mnemonic(text: struct_miqt_string): pointer {.importc: "QKeySequence_mnemonic".}
proc fcQKeySequence_keyBindings(key: cint): struct_miqt_array {.importc: "QKeySequence_keyBindings".}
proc fcQKeySequence_ToQVariant(self: pointer): pointer {.importc: "QKeySequence_ToQVariant".}
proc fcQKeySequence_operatorSubscript(self: pointer, i: cuint): cint {.importc: "QKeySequence_operatorSubscript".}
proc fcQKeySequence_operatorAssign(self: pointer, other: pointer): void {.importc: "QKeySequence_operatorAssign".}
proc fcQKeySequence_swap(self: pointer, other: pointer): void {.importc: "QKeySequence_swap".}
proc fcQKeySequence_operatorEqual(self: pointer, other: pointer): bool {.importc: "QKeySequence_operatorEqual".}
proc fcQKeySequence_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QKeySequence_operatorNotEqual".}
proc fcQKeySequence_operatorLesser(self: pointer, ks: pointer): bool {.importc: "QKeySequence_operatorLesser".}
proc fcQKeySequence_operatorGreater(self: pointer, other: pointer): bool {.importc: "QKeySequence_operatorGreater".}
proc fcQKeySequence_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QKeySequence_operatorLesserOrEqual".}
proc fcQKeySequence_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QKeySequence_operatorGreaterOrEqual".}
proc fcQKeySequence_isDetached(self: pointer): bool {.importc: "QKeySequence_isDetached".}
proc fcQKeySequence_toString1(self: pointer, format: cint): struct_miqt_string {.importc: "QKeySequence_toString1".}
proc fcQKeySequence_fromString2(str: struct_miqt_string, format: cint): pointer {.importc: "QKeySequence_fromString2".}
proc fcQKeySequence_listFromString2(str: struct_miqt_string, format: cint): struct_miqt_array {.importc: "QKeySequence_listFromString2".}
proc fcQKeySequence_listToString2(list: struct_miqt_array, format: cint): struct_miqt_string {.importc: "QKeySequence_listToString2".}
proc fcQKeySequence_new(): ptr cQKeySequence {.importc: "QKeySequence_new".}
proc fcQKeySequence_new2(key: struct_miqt_string): ptr cQKeySequence {.importc: "QKeySequence_new2".}
proc fcQKeySequence_new3(k1: cint): ptr cQKeySequence {.importc: "QKeySequence_new3".}
proc fcQKeySequence_new4(ks: pointer): ptr cQKeySequence {.importc: "QKeySequence_new4".}
proc fcQKeySequence_new5(key: cint): ptr cQKeySequence {.importc: "QKeySequence_new5".}
proc fcQKeySequence_new6(key: struct_miqt_string, format: cint): ptr cQKeySequence {.importc: "QKeySequence_new6".}
proc fcQKeySequence_new7(k1: cint, k2: cint): ptr cQKeySequence {.importc: "QKeySequence_new7".}
proc fcQKeySequence_new8(k1: cint, k2: cint, k3: cint): ptr cQKeySequence {.importc: "QKeySequence_new8".}
proc fcQKeySequence_new9(k1: cint, k2: cint, k3: cint, k4: cint): ptr cQKeySequence {.importc: "QKeySequence_new9".}
proc fcQKeySequence_staticMetaObject(): pointer {.importc: "QKeySequence_staticMetaObject".}

proc count*(self: gen_qkeysequence_types.QKeySequence): cint =
  fcQKeySequence_count(self.h)

proc isEmpty*(self: gen_qkeysequence_types.QKeySequence): bool =
  fcQKeySequence_isEmpty(self.h)

proc toString*(self: gen_qkeysequence_types.QKeySequence): string =
  let v_ms = fcQKeySequence_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromString*(_: type gen_qkeysequence_types.QKeySequence, str: openArray[char]): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequence_fromString(struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str)))), owned: true)

proc listFromString*(_: type gen_qkeysequence_types.QKeySequence, str: openArray[char]): seq[gen_qkeysequence_types.QKeySequence] =
  var v_ma = fcQKeySequence_listFromString(struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))
  var vx_ret = newSeq[gen_qkeysequence_types.QKeySequence](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qkeysequence_types.QKeySequence(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc listToString*(_: type gen_qkeysequence_types.QKeySequence, list: openArray[gen_qkeysequence_types.QKeySequence]): string =
  var list_CArray = newSeq[pointer](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i].h

  let v_ms = fcQKeySequence_listToString(struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc matches*(self: gen_qkeysequence_types.QKeySequence, seqVal: gen_qkeysequence_types.QKeySequence): cint =
  cint(fcQKeySequence_matches(self.h, seqVal.h))

proc mnemonic*(_: type gen_qkeysequence_types.QKeySequence, text: openArray[char]): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequence_mnemonic(struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc keyBindings*(_: type gen_qkeysequence_types.QKeySequence, key: cint): seq[gen_qkeysequence_types.QKeySequence] =
  var v_ma = fcQKeySequence_keyBindings(cint(key))
  var vx_ret = newSeq[gen_qkeysequence_types.QKeySequence](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qkeysequence_types.QKeySequence(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc ToQVariant*(self: gen_qkeysequence_types.QKeySequence): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQKeySequence_ToQVariant(self.h), owned: true)

proc operatorSubscript*(self: gen_qkeysequence_types.QKeySequence, i: cuint): cint =
  fcQKeySequence_operatorSubscript(self.h, i)

proc operatorAssign*(self: gen_qkeysequence_types.QKeySequence, other: gen_qkeysequence_types.QKeySequence): void =
  fcQKeySequence_operatorAssign(self.h, other.h)

proc swap*(self: gen_qkeysequence_types.QKeySequence, other: gen_qkeysequence_types.QKeySequence): void =
  fcQKeySequence_swap(self.h, other.h)

proc operatorEqual*(self: gen_qkeysequence_types.QKeySequence, other: gen_qkeysequence_types.QKeySequence): bool =
  fcQKeySequence_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qkeysequence_types.QKeySequence, other: gen_qkeysequence_types.QKeySequence): bool =
  fcQKeySequence_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: gen_qkeysequence_types.QKeySequence, ks: gen_qkeysequence_types.QKeySequence): bool =
  fcQKeySequence_operatorLesser(self.h, ks.h)

proc operatorGreater*(self: gen_qkeysequence_types.QKeySequence, other: gen_qkeysequence_types.QKeySequence): bool =
  fcQKeySequence_operatorGreater(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qkeysequence_types.QKeySequence, other: gen_qkeysequence_types.QKeySequence): bool =
  fcQKeySequence_operatorLesserOrEqual(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qkeysequence_types.QKeySequence, other: gen_qkeysequence_types.QKeySequence): bool =
  fcQKeySequence_operatorGreaterOrEqual(self.h, other.h)

proc isDetached*(self: gen_qkeysequence_types.QKeySequence): bool =
  fcQKeySequence_isDetached(self.h)

proc toString*(self: gen_qkeysequence_types.QKeySequence, format: cint): string =
  let v_ms = fcQKeySequence_toString1(self.h, cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromString*(_: type gen_qkeysequence_types.QKeySequence, str: openArray[char], format: cint): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequence_fromString2(struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), cint(format)), owned: true)

proc listFromString*(_: type gen_qkeysequence_types.QKeySequence, str: openArray[char], format: cint): seq[gen_qkeysequence_types.QKeySequence] =
  var v_ma = fcQKeySequence_listFromString2(struct_miqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), cint(format))
  var vx_ret = newSeq[gen_qkeysequence_types.QKeySequence](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qkeysequence_types.QKeySequence(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc listToString*(_: type gen_qkeysequence_types.QKeySequence, list: openArray[gen_qkeysequence_types.QKeySequence], format: cint): string =
  var list_CArray = newSeq[pointer](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i].h

  let v_ms = fcQKeySequence_listToString2(struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])), cint(format))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qkeysequence_types.QKeySequence): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequence_new(), owned: true)

proc create*(T: type gen_qkeysequence_types.QKeySequence,
    key: openArray[char]): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequence_new2(struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc create*(T: type gen_qkeysequence_types.QKeySequence,
    k1: cint): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequence_new3(k1), owned: true)

proc create*(T: type gen_qkeysequence_types.QKeySequence,
    ks: gen_qkeysequence_types.QKeySequence): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequence_new4(ks.h), owned: true)

proc create2*(T: type gen_qkeysequence_types.QKeySequence,
    key: cint): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequence_new5(cint(key)), owned: true)

proc create*(T: type gen_qkeysequence_types.QKeySequence,
    key: openArray[char], format: cint): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequence_new6(struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), cint(format)), owned: true)

proc create*(T: type gen_qkeysequence_types.QKeySequence,
    k1: cint, k2: cint): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequence_new7(k1, k2), owned: true)

proc create*(T: type gen_qkeysequence_types.QKeySequence,
    k1: cint, k2: cint, k3: cint): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequence_new8(k1, k2, k3), owned: true)

proc create*(T: type gen_qkeysequence_types.QKeySequence,
    k1: cint, k2: cint, k3: cint, k4: cint): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequence_new9(k1, k2, k3, k4), owned: true)

proc staticMetaObject*(_: type gen_qkeysequence_types.QKeySequence): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeySequence_staticMetaObject())
