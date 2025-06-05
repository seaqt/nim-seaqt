import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


import ./gen_qstringlist_types
export gen_qstringlist_types

import
  ./gen_qregexp_types,
  ./gen_qregularexpression_types
export
  gen_qregexp_types,
  gen_qregularexpression_types

type cQStringList*{.exportc: "QStringList", incompleteStruct.} = object

proc fcQStringList_operatorAssign(self: pointer, other: struct_seaqt_array): void {.importc: "QStringList_operatorAssign".}
proc fcQStringList_contains(self: pointer, str: struct_seaqt_string): bool {.importc: "QStringList_contains".}
proc fcQStringList_operatorPlus(self: pointer, other: struct_seaqt_array): struct_seaqt_array {.importc: "QStringList_operatorPlus".}
proc fcQStringList_operatorShiftLeft(self: pointer, str: struct_seaqt_string): struct_seaqt_array {.importc: "QStringList_operatorShiftLeft".}
proc fcQStringList_operatorShiftLeftWithQStringList(self: pointer, l: struct_seaqt_array): struct_seaqt_array {.importc: "QStringList_operatorShiftLeftWithQStringList".}
proc fcQStringList_operatorShiftLeftWithQListLesserQStringGreater(self: pointer, l: struct_seaqt_array): struct_seaqt_array {.importc: "QStringList_operatorShiftLeftWithQListLesserQStringGreater".}
proc fcQStringList_indexOfWithRx(self: pointer, rx: pointer): cint {.importc: "QStringList_indexOfWithRx".}
proc fcQStringList_lastIndexOfWithRx(self: pointer, rx: pointer): cint {.importc: "QStringList_lastIndexOfWithRx".}
proc fcQStringList_indexOf2(self: pointer, rx: pointer): cint {.importc: "QStringList_indexOf2".}
proc fcQStringList_lastIndexOf2(self: pointer, rx: pointer): cint {.importc: "QStringList_lastIndexOf2".}
proc fcQStringList_indexOfWithRe(self: pointer, re: pointer): cint {.importc: "QStringList_indexOfWithRe".}
proc fcQStringList_lastIndexOfWithRe(self: pointer, re: pointer): cint {.importc: "QStringList_lastIndexOfWithRe".}
proc fcQStringList_operatorAssignWithQStringList(self: pointer, param1: struct_seaqt_array): void {.importc: "QStringList_operatorAssignWithQStringList".}
proc fcQStringList_contains3(self: pointer, str: struct_seaqt_string, cs: cint): bool {.importc: "QStringList_contains3".}
proc fcQStringList_indexOf5(self: pointer, rx: pointer, fromVal: cint): cint {.importc: "QStringList_indexOf5".}
proc fcQStringList_lastIndexOf5(self: pointer, rx: pointer, fromVal: cint): cint {.importc: "QStringList_lastIndexOf5".}
proc fcQStringList_indexOf6(self: pointer, rx: pointer, fromVal: cint): cint {.importc: "QStringList_indexOf6".}
proc fcQStringList_lastIndexOf6(self: pointer, rx: pointer, fromVal: cint): cint {.importc: "QStringList_lastIndexOf6".}
proc fcQStringList_indexOf7(self: pointer, re: pointer, fromVal: cint): cint {.importc: "QStringList_indexOf7".}
proc fcQStringList_lastIndexOf7(self: pointer, re: pointer, fromVal: cint): cint {.importc: "QStringList_lastIndexOf7".}
proc fcQStringList_new(): ptr cQStringList {.importc: "QStringList_new".}
proc fcQStringList_new2(i: struct_seaqt_string): ptr cQStringList {.importc: "QStringList_new2".}
proc fcQStringList_new3(l: struct_seaqt_array): ptr cQStringList {.importc: "QStringList_new3".}
proc fcQStringList_new4(param1: struct_seaqt_array): ptr cQStringList {.importc: "QStringList_new4".}
proc fcQStringList_delete(self: pointer) {.importc: "QStringList_delete".}

proc operatorAssign*(self: gen_qstringlist_types.QStringList, other: openArray[string]): void =
  var other_CArray = newSeq[struct_seaqt_string](len(other))
  for i in 0..<len(other):
    other_CArray[i] = struct_seaqt_string(data: if len(other[i]) > 0: addr other[i][0] else: nil, len: csize_t(len(other[i])))

  fcQStringList_operatorAssign(self.h, struct_seaqt_array(len: csize_t(len(other)), data: if len(other) == 0: nil else: addr(other_CArray[0])))

proc contains*(self: gen_qstringlist_types.QStringList, str: openArray[char]): bool =
  fcQStringList_contains(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))

proc operatorPlus*(self: gen_qstringlist_types.QStringList, other: openArray[string]): seq[string] =
  var other_CArray = newSeq[struct_seaqt_string](len(other))
  for i in 0..<len(other):
    other_CArray[i] = struct_seaqt_string(data: if len(other[i]) > 0: addr other[i][0] else: nil, len: csize_t(len(other[i])))

  var v_ma = fcQStringList_operatorPlus(self.h, struct_seaqt_array(len: csize_t(len(other)), data: if len(other) == 0: nil else: addr(other_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc operatorShiftLeft*(self: gen_qstringlist_types.QStringList, str: openArray[char]): seq[string] =
  var v_ma = fcQStringList_operatorShiftLeft(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc operatorShiftLeft*(self: gen_qstringlist_types.QStringList, l: openArray[string]): seq[string] =
  var l_CArray = newSeq[struct_seaqt_string](len(l))
  for i in 0..<len(l):
    l_CArray[i] = struct_seaqt_string(data: if len(l[i]) > 0: addr l[i][0] else: nil, len: csize_t(len(l[i])))

  var v_ma = fcQStringList_operatorShiftLeftWithQStringList(self.h, struct_seaqt_array(len: csize_t(len(l)), data: if len(l) == 0: nil else: addr(l_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc operatorShiftLeft2*(self: gen_qstringlist_types.QStringList, l: openArray[string]): seq[string] =
  var l_CArray = newSeq[struct_seaqt_string](len(l))
  for i in 0..<len(l):
    l_CArray[i] = struct_seaqt_string(data: if len(l[i]) > 0: addr l[i][0] else: nil, len: csize_t(len(l[i])))

  var v_ma = fcQStringList_operatorShiftLeftWithQListLesserQStringGreater(self.h, struct_seaqt_array(len: csize_t(len(l)), data: if len(l) == 0: nil else: addr(l_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc indexOf*(self: gen_qstringlist_types.QStringList, rx: gen_qregexp_types.QRegExp): cint =
  fcQStringList_indexOfWithRx(self.h, rx.h)

proc lastIndexOf*(self: gen_qstringlist_types.QStringList, rx: gen_qregexp_types.QRegExp): cint =
  fcQStringList_lastIndexOfWithRx(self.h, rx.h)

proc indexOf2*(self: gen_qstringlist_types.QStringList, rx: gen_qregexp_types.QRegExp): cint =
  fcQStringList_indexOf2(self.h, rx.h)

proc lastIndexOf2*(self: gen_qstringlist_types.QStringList, rx: gen_qregexp_types.QRegExp): cint =
  fcQStringList_lastIndexOf2(self.h, rx.h)

proc indexOf*(self: gen_qstringlist_types.QStringList, re: gen_qregularexpression_types.QRegularExpression): cint =
  fcQStringList_indexOfWithRe(self.h, re.h)

proc lastIndexOf*(self: gen_qstringlist_types.QStringList, re: gen_qregularexpression_types.QRegularExpression): cint =
  fcQStringList_lastIndexOfWithRe(self.h, re.h)

proc operatorAssign2*(self: gen_qstringlist_types.QStringList, param1: openArray[string]): void =
  var param1_CArray = newSeq[struct_seaqt_string](len(param1))
  for i in 0..<len(param1):
    param1_CArray[i] = struct_seaqt_string(data: if len(param1[i]) > 0: addr param1[i][0] else: nil, len: csize_t(len(param1[i])))

  fcQStringList_operatorAssignWithQStringList(self.h, struct_seaqt_array(len: csize_t(len(param1)), data: if len(param1) == 0: nil else: addr(param1_CArray[0])))

proc contains*(self: gen_qstringlist_types.QStringList, str: openArray[char], cs: cint): bool =
  fcQStringList_contains3(self.h, struct_seaqt_string(data: if len(str) > 0: addr str[0] else: nil, len: csize_t(len(str))), cint(cs))

proc indexOf*(self: gen_qstringlist_types.QStringList, rx: gen_qregexp_types.QRegExp, fromVal: cint): cint =
  fcQStringList_indexOf5(self.h, rx.h, fromVal)

proc lastIndexOf*(self: gen_qstringlist_types.QStringList, rx: gen_qregexp_types.QRegExp, fromVal: cint): cint =
  fcQStringList_lastIndexOf5(self.h, rx.h, fromVal)

proc indexOf2*(self: gen_qstringlist_types.QStringList, rx: gen_qregexp_types.QRegExp, fromVal: cint): cint =
  fcQStringList_indexOf6(self.h, rx.h, fromVal)

proc lastIndexOf2*(self: gen_qstringlist_types.QStringList, rx: gen_qregexp_types.QRegExp, fromVal: cint): cint =
  fcQStringList_lastIndexOf6(self.h, rx.h, fromVal)

proc indexOf*(self: gen_qstringlist_types.QStringList, re: gen_qregularexpression_types.QRegularExpression, fromVal: cint): cint =
  fcQStringList_indexOf7(self.h, re.h, fromVal)

proc lastIndexOf*(self: gen_qstringlist_types.QStringList, re: gen_qregularexpression_types.QRegularExpression, fromVal: cint): cint =
  fcQStringList_lastIndexOf7(self.h, re.h, fromVal)

proc create*(T: type gen_qstringlist_types.QStringList): gen_qstringlist_types.QStringList =
  let tmp = gen_qstringlist_types.QStringList(h: fcQStringList_new())
  tmp
proc create*(T: type gen_qstringlist_types.QStringList,
    i: openArray[char]): gen_qstringlist_types.QStringList =
  let tmp = gen_qstringlist_types.QStringList(h: fcQStringList_new2(struct_seaqt_string(data: if len(i) > 0: addr i[0] else: nil, len: csize_t(len(i)))))
  tmp
proc create*(T: type gen_qstringlist_types.QStringList,
    l: openArray[string]): gen_qstringlist_types.QStringList =
  var l_CArray = newSeq[struct_seaqt_string](len(l))
  for i in 0..<len(l):
    l_CArray[i] = struct_seaqt_string(data: if len(l[i]) > 0: addr l[i][0] else: nil, len: csize_t(len(l[i])))

  let tmp = gen_qstringlist_types.QStringList(h: fcQStringList_new3(struct_seaqt_array(len: csize_t(len(l)), data: if len(l) == 0: nil else: addr(l_CArray[0]))))
  tmp
proc create2*(T: type gen_qstringlist_types.QStringList,
    param1: openArray[string]): gen_qstringlist_types.QStringList =
  var param1_CArray = newSeq[struct_seaqt_string](len(param1))
  for i in 0..<len(param1):
    param1_CArray[i] = struct_seaqt_string(data: if len(param1[i]) > 0: addr param1[i][0] else: nil, len: csize_t(len(param1[i])))

  let tmp = gen_qstringlist_types.QStringList(h: fcQStringList_new4(struct_seaqt_array(len: csize_t(len(param1)), data: if len(param1) == 0: nil else: addr(param1_CArray[0]))))
  tmp
proc delete*(self: gen_qstringlist_types.QStringList) =
  fcQStringList_delete(self.h)
