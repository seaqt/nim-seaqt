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


import ./gen_qjsonobject_types
export gen_qjsonobject_types

import
  ./gen_qjsonvalue_types,
  ./gen_qvariant_types,
  std/tables
export
  gen_qjsonvalue_types,
  gen_qvariant_types

type cQJsonObject*{.exportc: "QJsonObject", incompleteStruct.} = object
type cQJsonObjectiterator*{.exportc: "QJsonObject__iterator", incompleteStruct.} = object
type cQJsonObjectconst_iterator*{.exportc: "QJsonObject__const_iterator", incompleteStruct.} = object

proc fcQJsonObject_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QJsonObject_operatorAssign".}
proc fcQJsonObject_swap(self: pointer, other: pointer): void {.importc: "QJsonObject_swap".}
proc fcQJsonObject_fromVariantMap(map: struct_seaqt_map): pointer {.importc: "QJsonObject_fromVariantMap".}
proc fcQJsonObject_toVariantMap(self: pointer): struct_seaqt_map {.importc: "QJsonObject_toVariantMap".}
proc fcQJsonObject_fromVariantHash(map: struct_seaqt_map): pointer {.importc: "QJsonObject_fromVariantHash".}
proc fcQJsonObject_toVariantHash(self: pointer): struct_seaqt_map {.importc: "QJsonObject_toVariantHash".}
proc fcQJsonObject_keys(self: pointer): struct_seaqt_array {.importc: "QJsonObject_keys".}
proc fcQJsonObject_size(self: pointer): int64 {.importc: "QJsonObject_size".}
proc fcQJsonObject_count(self: pointer): int64 {.importc: "QJsonObject_count".}
proc fcQJsonObject_length(self: pointer): int64 {.importc: "QJsonObject_length".}
proc fcQJsonObject_isEmpty(self: pointer): bool {.importc: "QJsonObject_isEmpty".}
proc fcQJsonObject_value_QString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QJsonObject_value_QString".}
proc fcQJsonObject_operatorSubscriptConstCQString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QJsonObject_operatorSubscript_const_cQString".}
proc fcQJsonObject_operatorSubscriptCQString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QJsonObject_operatorSubscript_cQString".}
proc fcQJsonObject_remove_QString(self: pointer, key: struct_seaqt_string): void {.importc: "QJsonObject_remove_QString".}
proc fcQJsonObject_take_QString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QJsonObject_take_QString".}
proc fcQJsonObject_contains_QString(self: pointer, key: struct_seaqt_string): bool {.importc: "QJsonObject_contains_QString".}
proc fcQJsonObject_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonObject_operatorEqual".}
proc fcQJsonObject_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonObject_operatorNotEqual".}
proc fcQJsonObject_begin(self: pointer): pointer {.importc: "QJsonObject_begin".}
proc fcQJsonObject_beginConst(self: pointer): pointer {.importc: "QJsonObject_begin_const".}
proc fcQJsonObject_constBegin(self: pointer): pointer {.importc: "QJsonObject_constBegin".}
proc fcQJsonObject_endX(self: pointer): pointer {.importc: "QJsonObject_end".}
proc fcQJsonObject_endConst(self: pointer): pointer {.importc: "QJsonObject_end_const".}
proc fcQJsonObject_constEnd(self: pointer): pointer {.importc: "QJsonObject_constEnd".}
proc fcQJsonObject_erase(self: pointer, it: pointer): pointer {.importc: "QJsonObject_erase".}
proc fcQJsonObject_findCQString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QJsonObject_find_cQString".}
proc fcQJsonObject_findConstCQString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QJsonObject_find_const_cQString".}
proc fcQJsonObject_constFind_QString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QJsonObject_constFind_QString".}
proc fcQJsonObject_insert_QString_QJsonValue(self: pointer, key: struct_seaqt_string, value: pointer): pointer {.importc: "QJsonObject_insert_QString_QJsonValue".}
proc fcQJsonObject_empty(self: pointer): bool {.importc: "QJsonObject_empty".}
proc fcQJsonObject_new(): ptr cQJsonObject {.importc: "QJsonObject_new".}
proc fcQJsonObject_new2(fromVal: pointer): ptr cQJsonObject {.importc: "QJsonObject_new_from".}
proc fcQJsonObjectiterator_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QJsonObject__iterator_operatorAssign".}
proc fcQJsonObjectiterator_key(self: pointer): struct_seaqt_string {.importc: "QJsonObject__iterator_key".}
proc fcQJsonObjectiterator_value(self: pointer): pointer {.importc: "QJsonObject__iterator_value".}
proc fcQJsonObjectiterator_operatorMultiply(self: pointer): pointer {.importc: "QJsonObject__iterator_operatorMultiply".}
proc fcQJsonObjectiterator_operatorMinusGreaterConst(self: pointer): pointer {.importc: "QJsonObject__iterator_operatorMinusGreater_const".}
proc fcQJsonObjectiterator_operatorMinusGreater(self: pointer): pointer {.importc: "QJsonObject__iterator_operatorMinusGreater".}
proc fcQJsonObjectiterator_operatorSubscript(self: pointer, j: int64): pointer {.importc: "QJsonObject__iterator_operatorSubscript".}
proc fcQJsonObjectiterator_operatorEqual_QJsonObjectIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorEqual_QJsonObject_iterator".}
proc fcQJsonObjectiterator_operatorNotEqual_QJsonObjectIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorNotEqual_QJsonObject_iterator".}
proc fcQJsonObjectiterator_operatorLesser_QJsonObjectIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorLesser_QJsonObject_iterator".}
proc fcQJsonObjectiterator_operatorLesserOrEqual_QJsonObjectIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorLesserOrEqual_QJsonObject_iterator".}
proc fcQJsonObjectiterator_operatorGreater_QJsonObjectIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorGreater_QJsonObject_iterator".}
proc fcQJsonObjectiterator_operatorGreaterOrEqual_QJsonObjectIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorGreaterOrEqual_QJsonObject_iterator".}
proc fcQJsonObjectiterator_operatorPlusPlus(self: pointer): pointer {.importc: "QJsonObject__iterator_operatorPlusPlus".}
proc fcQJsonObjectiterator_operatorPlusPlusInt(self: pointer, param1: cint): pointer {.importc: "QJsonObject__iterator_operatorPlusPlus_int".}
proc fcQJsonObjectiterator_operatorMinusMinus(self: pointer): pointer {.importc: "QJsonObject__iterator_operatorMinusMinus".}
proc fcQJsonObjectiterator_operatorMinusMinusInt(self: pointer, param1: cint): pointer {.importc: "QJsonObject__iterator_operatorMinusMinus_int".}
proc fcQJsonObjectiterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QJsonObject__iterator_operatorPlus".}
proc fcQJsonObjectiterator_operatorMinusQsizetype(self: pointer, j: int64): pointer {.importc: "QJsonObject__iterator_operatorMinus_qsizetype".}
proc fcQJsonObjectiterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QJsonObject__iterator_operatorPlusAssign".}
proc fcQJsonObjectiterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QJsonObject__iterator_operatorMinusAssign".}
proc fcQJsonObjectiterator_operatorMinus_QJsonObjectIterator(self: pointer, j: pointer): int64 {.importc: "QJsonObject__iterator_operatorMinus_QJsonObject_iterator".}
proc fcQJsonObjectiterator_operatorEqual_QJsonObjectConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorEqual_QJsonObject_const_iterator".}
proc fcQJsonObjectiterator_operatorNotEqual_QJsonObjectConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorNotEqual_QJsonObject_const_iterator".}
proc fcQJsonObjectiterator_operatorLesser_QJsonObjectConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorLesser_QJsonObject_const_iterator".}
proc fcQJsonObjectiterator_operatorLesserOrEqual_QJsonObjectConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorLesserOrEqual_QJsonObject_const_iterator".}
proc fcQJsonObjectiterator_operatorGreater_QJsonObjectConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorGreater_QJsonObject_const_iterator".}
proc fcQJsonObjectiterator_operatorGreaterOrEqual_QJsonObjectConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__iterator_operatorGreaterOrEqual_QJsonObject_const_iterator".}
proc fcQJsonObjectiterator_new(): ptr cQJsonObjectiterator {.importc: "QJsonObject__iterator_new".}
proc fcQJsonObjectiterator_new2(obj: pointer, index: int64): ptr cQJsonObjectiterator {.importc: "QJsonObject__iterator_new_obj_index".}
proc fcQJsonObjectiterator_new3(fromVal: pointer): ptr cQJsonObjectiterator {.importc: "QJsonObject__iterator_new_from".}
proc fcQJsonObjectconst_iterator_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QJsonObject__const_iterator_operatorAssign".}
proc fcQJsonObjectconst_iterator_key(self: pointer): struct_seaqt_string {.importc: "QJsonObject__const_iterator_key".}
proc fcQJsonObjectconst_iterator_value(self: pointer): pointer {.importc: "QJsonObject__const_iterator_value".}
proc fcQJsonObjectconst_iterator_operatorMultiply(self: pointer): pointer {.importc: "QJsonObject__const_iterator_operatorMultiply".}
proc fcQJsonObjectconst_iterator_operatorMinusGreater(self: pointer): pointer {.importc: "QJsonObject__const_iterator_operatorMinusGreater".}
proc fcQJsonObjectconst_iterator_operatorSubscript(self: pointer, j: int64): pointer {.importc: "QJsonObject__const_iterator_operatorSubscript".}
proc fcQJsonObjectconst_iterator_operatorEqual_QJsonObjectConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorEqual_QJsonObject_const_iterator".}
proc fcQJsonObjectconst_iterator_operatorNotEqual_QJsonObjectConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorNotEqual_QJsonObject_const_iterator".}
proc fcQJsonObjectconst_iterator_operatorLesser_QJsonObjectConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorLesser_QJsonObject_const_iterator".}
proc fcQJsonObjectconst_iterator_operatorLesserOrEqual_QJsonObjectConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorLesserOrEqual_QJsonObject_const_iterator".}
proc fcQJsonObjectconst_iterator_operatorGreater_QJsonObjectConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorGreater_QJsonObject_const_iterator".}
proc fcQJsonObjectconst_iterator_operatorGreaterOrEqual_QJsonObjectConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorGreaterOrEqual_QJsonObject_const_iterator".}
proc fcQJsonObjectconst_iterator_operatorPlusPlus(self: pointer): pointer {.importc: "QJsonObject__const_iterator_operatorPlusPlus".}
proc fcQJsonObjectconst_iterator_operatorPlusPlusInt(self: pointer, param1: cint): pointer {.importc: "QJsonObject__const_iterator_operatorPlusPlus_int".}
proc fcQJsonObjectconst_iterator_operatorMinusMinus(self: pointer): pointer {.importc: "QJsonObject__const_iterator_operatorMinusMinus".}
proc fcQJsonObjectconst_iterator_operatorMinusMinusInt(self: pointer, param1: cint): pointer {.importc: "QJsonObject__const_iterator_operatorMinusMinus_int".}
proc fcQJsonObjectconst_iterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QJsonObject__const_iterator_operatorPlus".}
proc fcQJsonObjectconst_iterator_operatorMinusQsizetype(self: pointer, j: int64): pointer {.importc: "QJsonObject__const_iterator_operatorMinus_qsizetype".}
proc fcQJsonObjectconst_iterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QJsonObject__const_iterator_operatorPlusAssign".}
proc fcQJsonObjectconst_iterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QJsonObject__const_iterator_operatorMinusAssign".}
proc fcQJsonObjectconst_iterator_operatorMinus_QJsonObjectConstIterator(self: pointer, j: pointer): int64 {.importc: "QJsonObject__const_iterator_operatorMinus_QJsonObject_const_iterator".}
proc fcQJsonObjectconst_iterator_operatorEqual_QJsonObjectIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorEqual_QJsonObject_iterator".}
proc fcQJsonObjectconst_iterator_operatorNotEqual_QJsonObjectIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorNotEqual_QJsonObject_iterator".}
proc fcQJsonObjectconst_iterator_operatorLesser_QJsonObjectIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorLesser_QJsonObject_iterator".}
proc fcQJsonObjectconst_iterator_operatorLesserOrEqual_QJsonObjectIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorLesserOrEqual_QJsonObject_iterator".}
proc fcQJsonObjectconst_iterator_operatorGreater_QJsonObjectIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorGreater_QJsonObject_iterator".}
proc fcQJsonObjectconst_iterator_operatorGreaterOrEqual_QJsonObjectIterator(self: pointer, other: pointer): bool {.importc: "QJsonObject__const_iterator_operatorGreaterOrEqual_QJsonObject_iterator".}
proc fcQJsonObjectconst_iterator_new(): ptr cQJsonObjectconst_iterator {.importc: "QJsonObject__const_iterator_new".}
proc fcQJsonObjectconst_iterator_new2(obj: pointer, index: int64): ptr cQJsonObjectconst_iterator {.importc: "QJsonObject__const_iterator_new_obj_index".}
proc fcQJsonObjectconst_iterator_new3(other: pointer): ptr cQJsonObjectconst_iterator {.importc: "QJsonObject__const_iterator_new_other".}
proc fcQJsonObjectconst_iterator_new4(fromVal: pointer): ptr cQJsonObjectconst_iterator {.importc: "QJsonObject__const_iterator_new_from".}

proc operatorAssign*(self: gen_qjsonobject_types.QJsonObject, fromVal: gen_qjsonobject_types.QJsonObject): void =
  fcQJsonObject_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qjsonobject_types.QJsonObject, other: gen_qjsonobject_types.QJsonObject): void =
  fcQJsonObject_swap(self.h, other.h)

proc fromVariantMap*(_: type gen_qjsonobject_types.QJsonObject, map: Table[string,gen_qvariant_types.QVariant]): gen_qjsonobject_types.QJsonObject =
  var map_Keys_CArray = newSeq[struct_seaqt_string](len(map))
  var map_Values_CArray = newSeq[pointer](len(map))
  var map_ctr = 0
  for map_k in map.keys():
    map_Keys_CArray[map_ctr] = struct_seaqt_string(data: if len(map_k) > 0: addr map_k[0] else: nil, len: csize_t(len(map_k)))
    map_ctr += 1
  map_ctr = 0
  for map_v in map.values():
    map_Values_CArray[map_ctr] = map_v.h
    map_ctr += 1

  gen_qjsonobject_types.QJsonObject(h: fcQJsonObject_fromVariantMap(struct_seaqt_map(len: csize_t(len(map)),keys: if len(map) == 0: nil else: addr(map_Keys_CArray[0]), values: if len(map) == 0: nil else: addr(map_Values_CArray[0]),)), owned: true)

proc toVariantMap*(self: gen_qjsonobject_types.QJsonObject): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQJsonObject_toVariantMap(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_seaqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(vx_mapkey_ms)
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc fromVariantHash*(_: type gen_qjsonobject_types.QJsonObject, map: Table[string,gen_qvariant_types.QVariant]): gen_qjsonobject_types.QJsonObject =
  var map_Keys_CArray = newSeq[struct_seaqt_string](len(map))
  var map_Values_CArray = newSeq[pointer](len(map))
  var map_ctr = 0
  for map_k in map.keys():
    map_Keys_CArray[map_ctr] = struct_seaqt_string(data: if len(map_k) > 0: addr map_k[0] else: nil, len: csize_t(len(map_k)))
    map_ctr += 1
  map_ctr = 0
  for map_v in map.values():
    map_Values_CArray[map_ctr] = map_v.h
    map_ctr += 1

  gen_qjsonobject_types.QJsonObject(h: fcQJsonObject_fromVariantHash(struct_seaqt_map(len: csize_t(len(map)),keys: if len(map) == 0: nil else: addr(map_Keys_CArray[0]), values: if len(map) == 0: nil else: addr(map_Values_CArray[0]),)), owned: true)

proc toVariantHash*(self: gen_qjsonobject_types.QJsonObject): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQJsonObject_toVariantHash(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_seaqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_hashkey_ms = v_Keys[i]
    let vx_hashkeyx_ret = string.fromBytes(vx_hashkey_ms)
    c_free(vx_hashkey_ms.data)
    var v_entry_Key = vx_hashkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc keys*(self: gen_qjsonobject_types.QJsonObject): seq[string] =
  var v_ma = fcQJsonObject_keys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc size*(self: gen_qjsonobject_types.QJsonObject): int64 =
  fcQJsonObject_size(self.h)

proc count*(self: gen_qjsonobject_types.QJsonObject): int64 =
  fcQJsonObject_count(self.h)

proc length*(self: gen_qjsonobject_types.QJsonObject): int64 =
  fcQJsonObject_length(self.h)

proc isEmpty*(self: gen_qjsonobject_types.QJsonObject): bool =
  fcQJsonObject_isEmpty(self.h)

proc value*(self: gen_qjsonobject_types.QJsonObject, key: openArray[char]): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonObject_value_QString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc operatorSubscript*(self: gen_qjsonobject_types.QJsonObject, key: openArray[char]): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonObject_operatorSubscriptConstCQString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc operatorSubscript2*(self: gen_qjsonobject_types.QJsonObject, key: openArray[char]): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonObject_operatorSubscriptCQString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc remove*(self: gen_qjsonobject_types.QJsonObject, key: openArray[char]): void =
  fcQJsonObject_remove_QString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))

proc take*(self: gen_qjsonobject_types.QJsonObject, key: openArray[char]): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonObject_take_QString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc contains*(self: gen_qjsonobject_types.QJsonObject, key: openArray[char]): bool =
  fcQJsonObject_contains_QString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))

proc operatorEqual*(self: gen_qjsonobject_types.QJsonObject, other: gen_qjsonobject_types.QJsonObject): bool =
  fcQJsonObject_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qjsonobject_types.QJsonObject, other: gen_qjsonobject_types.QJsonObject): bool =
  fcQJsonObject_operatorNotEqual(self.h, other.h)

proc begin*(self: gen_qjsonobject_types.QJsonObject): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObject_begin(self.h), owned: true)

proc begin2*(self: gen_qjsonobject_types.QJsonObject): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObject_beginConst(self.h), owned: true)

proc constBegin*(self: gen_qjsonobject_types.QJsonObject): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObject_constBegin(self.h), owned: true)

proc endX*(self: gen_qjsonobject_types.QJsonObject): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObject_endX(self.h), owned: true)

proc endX2*(self: gen_qjsonobject_types.QJsonObject): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObject_endConst(self.h), owned: true)

proc constEnd*(self: gen_qjsonobject_types.QJsonObject): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObject_constEnd(self.h), owned: true)

proc erase*(self: gen_qjsonobject_types.QJsonObject, it: gen_qjsonobject_types.QJsonObjectiterator): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObject_erase(self.h, it.h), owned: true)

proc find*(self: gen_qjsonobject_types.QJsonObject, key: openArray[char]): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObject_findCQString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc find2*(self: gen_qjsonobject_types.QJsonObject, key: openArray[char]): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObject_findConstCQString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc constFind*(self: gen_qjsonobject_types.QJsonObject, key: openArray[char]): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObject_constFind_QString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc insert*(self: gen_qjsonobject_types.QJsonObject, key: openArray[char], value: gen_qjsonvalue_types.QJsonValue): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObject_insert_QString_QJsonValue(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), value.h), owned: true)

proc empty*(self: gen_qjsonobject_types.QJsonObject): bool =
  fcQJsonObject_empty(self.h)

proc create*(T: type gen_qjsonobject_types.QJsonObject): gen_qjsonobject_types.QJsonObject =
  let tmp = gen_qjsonobject_types.QJsonObject(h: fcQJsonObject_new(), owned: true)
  tmp
proc create*(T: type gen_qjsonobject_types.QJsonObject,
    fromVal: gen_qjsonobject_types.QJsonObject): gen_qjsonobject_types.QJsonObject =
  let tmp = gen_qjsonobject_types.QJsonObject(h: fcQJsonObject_new2(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qjsonobject_types.QJsonObjectiterator, fromVal: gen_qjsonobject_types.QJsonObjectiterator): void =
  fcQJsonObjectiterator_operatorAssign(self.h, fromVal.h)

proc key*(self: gen_qjsonobject_types.QJsonObjectiterator): string =
  let v_ms = fcQJsonObjectiterator_key(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc value*(self: gen_qjsonobject_types.QJsonObjectiterator): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonObjectiterator_value(self.h), owned: true)

proc operatorMultiply*(self: gen_qjsonobject_types.QJsonObjectiterator): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonObjectiterator_operatorMultiply(self.h), owned: true)

proc operatorMinusGreater*(self: gen_qjsonobject_types.QJsonObjectiterator): gen_qjsonvalue_types.QJsonValueConstRef =
  gen_qjsonvalue_types.QJsonValueConstRef(h: fcQJsonObjectiterator_operatorMinusGreaterConst(self.h), owned: false)

proc operatorMinusGreater2*(self: gen_qjsonobject_types.QJsonObjectiterator): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonObjectiterator_operatorMinusGreater(self.h), owned: false)

proc operatorSubscript*(self: gen_qjsonobject_types.QJsonObjectiterator, j: int64): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonObjectiterator_operatorSubscript(self.h, j), owned: true)

proc operatorEqual*(self: gen_qjsonobject_types.QJsonObjectiterator, other: gen_qjsonobject_types.QJsonObjectiterator): bool =
  fcQJsonObjectiterator_operatorEqual_QJsonObjectIterator(self.h, other.h)

proc operatorNotEqual*(self: gen_qjsonobject_types.QJsonObjectiterator, other: gen_qjsonobject_types.QJsonObjectiterator): bool =
  fcQJsonObjectiterator_operatorNotEqual_QJsonObjectIterator(self.h, other.h)

proc operatorLesser*(self: gen_qjsonobject_types.QJsonObjectiterator, other: gen_qjsonobject_types.QJsonObjectiterator): bool =
  fcQJsonObjectiterator_operatorLesser_QJsonObjectIterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qjsonobject_types.QJsonObjectiterator, other: gen_qjsonobject_types.QJsonObjectiterator): bool =
  fcQJsonObjectiterator_operatorLesserOrEqual_QJsonObjectIterator(self.h, other.h)

proc operatorGreater*(self: gen_qjsonobject_types.QJsonObjectiterator, other: gen_qjsonobject_types.QJsonObjectiterator): bool =
  fcQJsonObjectiterator_operatorGreater_QJsonObjectIterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qjsonobject_types.QJsonObjectiterator, other: gen_qjsonobject_types.QJsonObjectiterator): bool =
  fcQJsonObjectiterator_operatorGreaterOrEqual_QJsonObjectIterator(self.h, other.h)

proc operatorPlusPlus*(self: gen_qjsonobject_types.QJsonObjectiterator): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObjectiterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qjsonobject_types.QJsonObjectiterator, param1: cint): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObjectiterator_operatorPlusPlusInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qjsonobject_types.QJsonObjectiterator): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObjectiterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qjsonobject_types.QJsonObjectiterator, param1: cint): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObjectiterator_operatorMinusMinusInt(self.h, param1), owned: true)

proc operatorPlus*(self: gen_qjsonobject_types.QJsonObjectiterator, j: int64): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObjectiterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qjsonobject_types.QJsonObjectiterator, j: int64): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObjectiterator_operatorMinusQsizetype(self.h, j), owned: true)

proc operatorPlusAssign*(self: gen_qjsonobject_types.QJsonObjectiterator, j: int64): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObjectiterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qjsonobject_types.QJsonObjectiterator, j: int64): gen_qjsonobject_types.QJsonObjectiterator =
  gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObjectiterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorMinus*(self: gen_qjsonobject_types.QJsonObjectiterator, j: gen_qjsonobject_types.QJsonObjectiterator): int64 =
  fcQJsonObjectiterator_operatorMinus_QJsonObjectIterator(self.h, j.h)

proc operatorEqual*(self: gen_qjsonobject_types.QJsonObjectiterator, other: gen_qjsonobject_types.QJsonObjectconst_iterator): bool =
  fcQJsonObjectiterator_operatorEqual_QJsonObjectConstIterator(self.h, other.h)

proc operatorNotEqual*(self: gen_qjsonobject_types.QJsonObjectiterator, other: gen_qjsonobject_types.QJsonObjectconst_iterator): bool =
  fcQJsonObjectiterator_operatorNotEqual_QJsonObjectConstIterator(self.h, other.h)

proc operatorLesser*(self: gen_qjsonobject_types.QJsonObjectiterator, other: gen_qjsonobject_types.QJsonObjectconst_iterator): bool =
  fcQJsonObjectiterator_operatorLesser_QJsonObjectConstIterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qjsonobject_types.QJsonObjectiterator, other: gen_qjsonobject_types.QJsonObjectconst_iterator): bool =
  fcQJsonObjectiterator_operatorLesserOrEqual_QJsonObjectConstIterator(self.h, other.h)

proc operatorGreater*(self: gen_qjsonobject_types.QJsonObjectiterator, other: gen_qjsonobject_types.QJsonObjectconst_iterator): bool =
  fcQJsonObjectiterator_operatorGreater_QJsonObjectConstIterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qjsonobject_types.QJsonObjectiterator, other: gen_qjsonobject_types.QJsonObjectconst_iterator): bool =
  fcQJsonObjectiterator_operatorGreaterOrEqual_QJsonObjectConstIterator(self.h, other.h)

proc create*(T: type gen_qjsonobject_types.QJsonObjectiterator): gen_qjsonobject_types.QJsonObjectiterator =
  let tmp = gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObjectiterator_new(), owned: true)
  tmp
proc create*(T: type gen_qjsonobject_types.QJsonObjectiterator,
    obj: gen_qjsonobject_types.QJsonObject, index: int64): gen_qjsonobject_types.QJsonObjectiterator =
  let tmp = gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObjectiterator_new2(obj.h, index), owned: true)
  tmp
proc create*(T: type gen_qjsonobject_types.QJsonObjectiterator,
    fromVal: gen_qjsonobject_types.QJsonObjectiterator): gen_qjsonobject_types.QJsonObjectiterator =
  let tmp = gen_qjsonobject_types.QJsonObjectiterator(h: fcQJsonObjectiterator_new3(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, fromVal: gen_qjsonobject_types.QJsonObjectconst_iterator): void =
  fcQJsonObjectconst_iterator_operatorAssign(self.h, fromVal.h)

proc key*(self: gen_qjsonobject_types.QJsonObjectconst_iterator): string =
  let v_ms = fcQJsonObjectconst_iterator_key(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc value*(self: gen_qjsonobject_types.QJsonObjectconst_iterator): gen_qjsonvalue_types.QJsonValueConstRef =
  gen_qjsonvalue_types.QJsonValueConstRef(h: fcQJsonObjectconst_iterator_value(self.h), owned: true)

proc operatorMultiply*(self: gen_qjsonobject_types.QJsonObjectconst_iterator): gen_qjsonvalue_types.QJsonValueConstRef =
  gen_qjsonvalue_types.QJsonValueConstRef(h: fcQJsonObjectconst_iterator_operatorMultiply(self.h), owned: true)

proc operatorMinusGreater*(self: gen_qjsonobject_types.QJsonObjectconst_iterator): gen_qjsonvalue_types.QJsonValueConstRef =
  gen_qjsonvalue_types.QJsonValueConstRef(h: fcQJsonObjectconst_iterator_operatorMinusGreater(self.h), owned: false)

proc operatorSubscript*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, j: int64): gen_qjsonvalue_types.QJsonValueConstRef =
  gen_qjsonvalue_types.QJsonValueConstRef(h: fcQJsonObjectconst_iterator_operatorSubscript(self.h, j), owned: true)

proc operatorEqual*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, other: gen_qjsonobject_types.QJsonObjectconst_iterator): bool =
  fcQJsonObjectconst_iterator_operatorEqual_QJsonObjectConstIterator(self.h, other.h)

proc operatorNotEqual*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, other: gen_qjsonobject_types.QJsonObjectconst_iterator): bool =
  fcQJsonObjectconst_iterator_operatorNotEqual_QJsonObjectConstIterator(self.h, other.h)

proc operatorLesser*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, other: gen_qjsonobject_types.QJsonObjectconst_iterator): bool =
  fcQJsonObjectconst_iterator_operatorLesser_QJsonObjectConstIterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, other: gen_qjsonobject_types.QJsonObjectconst_iterator): bool =
  fcQJsonObjectconst_iterator_operatorLesserOrEqual_QJsonObjectConstIterator(self.h, other.h)

proc operatorGreater*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, other: gen_qjsonobject_types.QJsonObjectconst_iterator): bool =
  fcQJsonObjectconst_iterator_operatorGreater_QJsonObjectConstIterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, other: gen_qjsonobject_types.QJsonObjectconst_iterator): bool =
  fcQJsonObjectconst_iterator_operatorGreaterOrEqual_QJsonObjectConstIterator(self.h, other.h)

proc operatorPlusPlus*(self: gen_qjsonobject_types.QJsonObjectconst_iterator): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, param1: cint): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorPlusPlusInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qjsonobject_types.QJsonObjectconst_iterator): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, param1: cint): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorMinusMinusInt(self.h, param1), owned: true)

proc operatorPlus*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, j: int64): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, j: int64): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorMinusQsizetype(self.h, j), owned: true)

proc operatorPlusAssign*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, j: int64): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, j: int64): gen_qjsonobject_types.QJsonObjectconst_iterator =
  gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorMinus*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, j: gen_qjsonobject_types.QJsonObjectconst_iterator): int64 =
  fcQJsonObjectconst_iterator_operatorMinus_QJsonObjectConstIterator(self.h, j.h)

proc operatorEqual*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, other: gen_qjsonobject_types.QJsonObjectiterator): bool =
  fcQJsonObjectconst_iterator_operatorEqual_QJsonObjectIterator(self.h, other.h)

proc operatorNotEqual*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, other: gen_qjsonobject_types.QJsonObjectiterator): bool =
  fcQJsonObjectconst_iterator_operatorNotEqual_QJsonObjectIterator(self.h, other.h)

proc operatorLesser*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, other: gen_qjsonobject_types.QJsonObjectiterator): bool =
  fcQJsonObjectconst_iterator_operatorLesser_QJsonObjectIterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, other: gen_qjsonobject_types.QJsonObjectiterator): bool =
  fcQJsonObjectconst_iterator_operatorLesserOrEqual_QJsonObjectIterator(self.h, other.h)

proc operatorGreater*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, other: gen_qjsonobject_types.QJsonObjectiterator): bool =
  fcQJsonObjectconst_iterator_operatorGreater_QJsonObjectIterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qjsonobject_types.QJsonObjectconst_iterator, other: gen_qjsonobject_types.QJsonObjectiterator): bool =
  fcQJsonObjectconst_iterator_operatorGreaterOrEqual_QJsonObjectIterator(self.h, other.h)

proc create*(T: type gen_qjsonobject_types.QJsonObjectconst_iterator): gen_qjsonobject_types.QJsonObjectconst_iterator =
  let tmp = gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_new(), owned: true)
  tmp
proc create*(T: type gen_qjsonobject_types.QJsonObjectconst_iterator,
    obj: gen_qjsonobject_types.QJsonObject, index: int64): gen_qjsonobject_types.QJsonObjectconst_iterator =
  let tmp = gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_new2(obj.h, index), owned: true)
  tmp
proc create*(T: type gen_qjsonobject_types.QJsonObjectconst_iterator,
    other: gen_qjsonobject_types.QJsonObjectiterator): gen_qjsonobject_types.QJsonObjectconst_iterator =
  let tmp = gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_new3(other.h), owned: true)
  tmp
proc create*(T: type gen_qjsonobject_types.QJsonObjectconst_iterator,
    fromVal: gen_qjsonobject_types.QJsonObjectconst_iterator): gen_qjsonobject_types.QJsonObjectconst_iterator =
  let tmp = gen_qjsonobject_types.QJsonObjectconst_iterator(h: fcQJsonObjectconst_iterator_new4(fromVal.h), owned: true)
  tmp
