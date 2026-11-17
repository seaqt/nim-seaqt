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


import ./gen_qcbormap_types
export gen_qcbormap_types

import
  ./gen_qcborvalue_types,
  ./gen_qjsonobject_types,
  ./gen_qvariant_types,
  std/tables
export
  gen_qcborvalue_types,
  gen_qjsonobject_types,
  gen_qvariant_types

type cQCborMap*{.exportc: "QCborMap", incompleteStruct.} = object
type cQCborMapIterator*{.exportc: "QCborMap__Iterator", incompleteStruct.} = object
type cQCborMapConstIterator*{.exportc: "QCborMap__ConstIterator", incompleteStruct.} = object

proc fcQCborMap_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QCborMap_operatorAssign".}
proc fcQCborMap_swap(self: pointer, other: pointer): void {.importc: "QCborMap_swap".}
proc fcQCborMap_toCborValue(self: pointer): pointer {.importc: "QCborMap_toCborValue".}
proc fcQCborMap_size(self: pointer): int64 {.importc: "QCborMap_size".}
proc fcQCborMap_isEmpty(self: pointer): bool {.importc: "QCborMap_isEmpty".}
proc fcQCborMap_clear(self: pointer): void {.importc: "QCborMap_clear".}
proc fcQCborMap_keys(self: pointer): struct_seaqt_array {.importc: "QCborMap_keys".}
proc fcQCborMap_valueQint64(self: pointer, key: clonglong): pointer {.importc: "QCborMap_value_qint64".}
proc fcQCborMap_value_QString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QCborMap_value_QString".}
proc fcQCborMap_value_QCborValue(self: pointer, key: pointer): pointer {.importc: "QCborMap_value_QCborValue".}
proc fcQCborMap_operatorSubscriptConstQint64(self: pointer, key: clonglong): pointer {.importc: "QCborMap_operatorSubscript_const_qint64".}
proc fcQCborMap_operatorSubscriptConstCQString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QCborMap_operatorSubscript_const_cQString".}
proc fcQCborMap_operatorSubscriptConstCQCborValue(self: pointer, key: pointer): pointer {.importc: "QCborMap_operatorSubscript_const_cQCborValue".}
proc fcQCborMap_operatorSubscriptQint64(self: pointer, key: clonglong): pointer {.importc: "QCborMap_operatorSubscript_qint64".}
proc fcQCborMap_operatorSubscriptCQString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QCborMap_operatorSubscript_cQString".}
proc fcQCborMap_operatorSubscriptCQCborValue(self: pointer, key: pointer): pointer {.importc: "QCborMap_operatorSubscript_cQCborValue".}
proc fcQCborMap_takeQint64(self: pointer, key: clonglong): pointer {.importc: "QCborMap_take_qint64".}
proc fcQCborMap_take_QString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QCborMap_take_QString".}
proc fcQCborMap_take_QCborValue(self: pointer, key: pointer): pointer {.importc: "QCborMap_take_QCborValue".}
proc fcQCborMap_removeQint64(self: pointer, key: clonglong): void {.importc: "QCborMap_remove_qint64".}
proc fcQCborMap_remove_QString(self: pointer, key: struct_seaqt_string): void {.importc: "QCborMap_remove_QString".}
proc fcQCborMap_remove_QCborValue(self: pointer, key: pointer): void {.importc: "QCborMap_remove_QCborValue".}
proc fcQCborMap_containsQint64(self: pointer, key: clonglong): bool {.importc: "QCborMap_contains_qint64".}
proc fcQCborMap_contains_QString(self: pointer, key: struct_seaqt_string): bool {.importc: "QCborMap_contains_QString".}
proc fcQCborMap_contains_QCborValue(self: pointer, key: pointer): bool {.importc: "QCborMap_contains_QCborValue".}
proc fcQCborMap_compare(self: pointer, other: pointer): cint {.importc: "QCborMap_compare".}
proc fcQCborMap_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCborMap_operatorEqual".}
proc fcQCborMap_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCborMap_operatorNotEqual".}
proc fcQCborMap_operatorLesser(self: pointer, other: pointer): bool {.importc: "QCborMap_operatorLesser".}
proc fcQCborMap_begin(self: pointer): pointer {.importc: "QCborMap_begin".}
proc fcQCborMap_constBegin(self: pointer): pointer {.importc: "QCborMap_constBegin".}
proc fcQCborMap_beginConst(self: pointer): pointer {.importc: "QCborMap_begin_const".}
proc fcQCborMap_cbegin(self: pointer): pointer {.importc: "QCborMap_cbegin".}
proc fcQCborMap_endX(self: pointer): pointer {.importc: "QCborMap_end".}
proc fcQCborMap_constEnd(self: pointer): pointer {.importc: "QCborMap_constEnd".}
proc fcQCborMap_endConst(self: pointer): pointer {.importc: "QCborMap_end_const".}
proc fcQCborMap_cend(self: pointer): pointer {.importc: "QCborMap_cend".}
proc fcQCborMap_erase_QCborMapIterator(self: pointer, it: pointer): pointer {.importc: "QCborMap_erase_QCborMap_iterator".}
proc fcQCborMap_erase_QCborMapConstIterator(self: pointer, it: pointer): pointer {.importc: "QCborMap_erase_QCborMap_const_iterator".}
proc fcQCborMap_extract_QCborMapIterator(self: pointer, it: pointer): pointer {.importc: "QCborMap_extract_QCborMap_iterator".}
proc fcQCborMap_extract_QCborMapConstIterator(self: pointer, it: pointer): pointer {.importc: "QCborMap_extract_QCborMap_const_iterator".}
proc fcQCborMap_empty(self: pointer): bool {.importc: "QCborMap_empty".}
proc fcQCborMap_findQint64(self: pointer, key: clonglong): pointer {.importc: "QCborMap_find_qint64".}
proc fcQCborMap_findCQString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QCborMap_find_cQString".}
proc fcQCborMap_findCQCborValue(self: pointer, key: pointer): pointer {.importc: "QCborMap_find_cQCborValue".}
proc fcQCborMap_constFindQint64(self: pointer, key: clonglong): pointer {.importc: "QCborMap_constFind_qint64".}
proc fcQCborMap_constFind_QString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QCborMap_constFind_QString".}
proc fcQCborMap_constFind_QCborValue(self: pointer, key: pointer): pointer {.importc: "QCborMap_constFind_QCborValue".}
proc fcQCborMap_findConstQint64(self: pointer, key: clonglong): pointer {.importc: "QCborMap_find_const_qint64".}
proc fcQCborMap_findConstCQString(self: pointer, key: struct_seaqt_string): pointer {.importc: "QCborMap_find_const_cQString".}
proc fcQCborMap_findConstCQCborValue(self: pointer, key: pointer): pointer {.importc: "QCborMap_find_const_cQCborValue".}
proc fcQCborMap_insertQint64_QCborValue(self: pointer, key: clonglong, value_x: pointer): pointer {.importc: "QCborMap_insert_qint64_QCborValue".}
proc fcQCborMap_insert_QString_QCborValue(self: pointer, key: struct_seaqt_string, value_x: pointer): pointer {.importc: "QCborMap_insert_QString_QCborValue".}
proc fcQCborMap_insert_QCborValue_QCborValue(self: pointer, key: pointer, value_x: pointer): pointer {.importc: "QCborMap_insert_QCborValue_QCborValue".}
proc fcQCborMap_insert_QCborMapValueType(self: pointer, v: struct_seaqt_map): pointer {.importc: "QCborMap_insert_QCborMap_value_type".}
proc fcQCborMap_fromVariantMap(map: struct_seaqt_map): pointer {.importc: "QCborMap_fromVariantMap".}
proc fcQCborMap_fromVariantHash(hash: struct_seaqt_map): pointer {.importc: "QCborMap_fromVariantHash".}
proc fcQCborMap_fromJsonObject(o: pointer): pointer {.importc: "QCborMap_fromJsonObject".}
proc fcQCborMap_toVariantMap(self: pointer): struct_seaqt_map {.importc: "QCborMap_toVariantMap".}
proc fcQCborMap_toVariantHash(self: pointer): struct_seaqt_map {.importc: "QCborMap_toVariantHash".}
proc fcQCborMap_toJsonObject(self: pointer): pointer {.importc: "QCborMap_toJsonObject".}
proc fcQCborMap_new(): ptr cQCborMap {.importc: "QCborMap_new".}
proc fcQCborMap_new2(fromVal: pointer): ptr cQCborMap {.importc: "QCborMap_new_from".}
proc fcQCborMapIterator_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QCborMap__Iterator_operatorAssign".}
proc fcQCborMapIterator_operatorMultiply(self: pointer): struct_seaqt_map {.importc: "QCborMap__Iterator_operatorMultiply".}
proc fcQCborMapIterator_operatorMinusGreater(self: pointer): pointer {.importc: "QCborMap__Iterator_operatorMinusGreater".}
proc fcQCborMapIterator_key(self: pointer): pointer {.importc: "QCborMap__Iterator_key".}
proc fcQCborMapIterator_value(self: pointer): pointer {.importc: "QCborMap__Iterator_value".}
proc fcQCborMapIterator_operatorEqual_QCborMap_Iterator(self: pointer, o: pointer): bool {.importc: "QCborMap__Iterator_operatorEqual_QCborMap_Iterator".}
proc fcQCborMapIterator_operatorNotEqual_QCborMap_Iterator(self: pointer, o: pointer): bool {.importc: "QCborMap__Iterator_operatorNotEqual_QCborMap_Iterator".}
proc fcQCborMapIterator_operatorLesser_QCborMap_Iterator(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorLesser_QCborMap_Iterator".}
proc fcQCborMapIterator_operatorLesserOrEqual_QCborMap_Iterator(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorLesserOrEqual_QCborMap_Iterator".}
proc fcQCborMapIterator_operatorGreater_QCborMap_Iterator(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorGreater_QCborMap_Iterator".}
proc fcQCborMapIterator_operatorGreaterOrEqual_QCborMap_Iterator(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorGreaterOrEqual_QCborMap_Iterator".}
proc fcQCborMapIterator_operatorEqual_QCborMap_ConstIterator(self: pointer, o: pointer): bool {.importc: "QCborMap__Iterator_operatorEqual_QCborMap_ConstIterator".}
proc fcQCborMapIterator_operatorNotEqual_QCborMap_ConstIterator(self: pointer, o: pointer): bool {.importc: "QCborMap__Iterator_operatorNotEqual_QCborMap_ConstIterator".}
proc fcQCborMapIterator_operatorLesser_QCborMap_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorLesser_QCborMap_ConstIterator".}
proc fcQCborMapIterator_operatorLesserOrEqual_QCborMap_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorLesserOrEqual_QCborMap_ConstIterator".}
proc fcQCborMapIterator_operatorGreater_QCborMap_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorGreater_QCborMap_ConstIterator".}
proc fcQCborMapIterator_operatorGreaterOrEqual_QCborMap_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorGreaterOrEqual_QCborMap_ConstIterator".}
proc fcQCborMapIterator_operatorPlusPlus(self: pointer): pointer {.importc: "QCborMap__Iterator_operatorPlusPlus".}
proc fcQCborMapIterator_operatorPlusPlusInt(self: pointer, param1: cint): pointer {.importc: "QCborMap__Iterator_operatorPlusPlus_int".}
proc fcQCborMapIterator_operatorMinusMinus(self: pointer): pointer {.importc: "QCborMap__Iterator_operatorMinusMinus".}
proc fcQCborMapIterator_operatorMinusMinusInt(self: pointer, param1: cint): pointer {.importc: "QCborMap__Iterator_operatorMinusMinus_int".}
proc fcQCborMapIterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QCborMap__Iterator_operatorPlusAssign".}
proc fcQCborMapIterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QCborMap__Iterator_operatorMinusAssign".}
proc fcQCborMapIterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QCborMap__Iterator_operatorPlus".}
proc fcQCborMapIterator_operatorMinusQsizetype(self: pointer, j: int64): pointer {.importc: "QCborMap__Iterator_operatorMinus_qsizetype".}
proc fcQCborMapIterator_operatorMinus_QCborMap_Iterator(self: pointer, j: pointer): int64 {.importc: "QCborMap__Iterator_operatorMinus_QCborMap_Iterator".}
proc fcQCborMapIterator_new(): ptr cQCborMapIterator {.importc: "QCborMap__Iterator_new".}
proc fcQCborMapIterator_new2(fromVal: pointer): ptr cQCborMapIterator {.importc: "QCborMap__Iterator_new_from".}
proc fcQCborMapConstIterator_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QCborMap__ConstIterator_operatorAssign".}
proc fcQCborMapConstIterator_operatorMultiply(self: pointer): struct_seaqt_map {.importc: "QCborMap__ConstIterator_operatorMultiply".}
proc fcQCborMapConstIterator_operatorMinusGreater(self: pointer): pointer {.importc: "QCborMap__ConstIterator_operatorMinusGreater".}
proc fcQCborMapConstIterator_key(self: pointer): pointer {.importc: "QCborMap__ConstIterator_key".}
proc fcQCborMapConstIterator_value(self: pointer): pointer {.importc: "QCborMap__ConstIterator_value".}
proc fcQCborMapConstIterator_operatorEqual_QCborMap_Iterator(self: pointer, o: pointer): bool {.importc: "QCborMap__ConstIterator_operatorEqual_QCborMap_Iterator".}
proc fcQCborMapConstIterator_operatorNotEqual_QCborMap_Iterator(self: pointer, o: pointer): bool {.importc: "QCborMap__ConstIterator_operatorNotEqual_QCborMap_Iterator".}
proc fcQCborMapConstIterator_operatorLesser_QCborMap_Iterator(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorLesser_QCborMap_Iterator".}
proc fcQCborMapConstIterator_operatorLesserOrEqual_QCborMap_Iterator(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorLesserOrEqual_QCborMap_Iterator".}
proc fcQCborMapConstIterator_operatorGreater_QCborMap_Iterator(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorGreater_QCborMap_Iterator".}
proc fcQCborMapConstIterator_operatorGreaterOrEqual_QCborMap_Iterator(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorGreaterOrEqual_QCborMap_Iterator".}
proc fcQCborMapConstIterator_operatorEqual_QCborMap_ConstIterator(self: pointer, o: pointer): bool {.importc: "QCborMap__ConstIterator_operatorEqual_QCborMap_ConstIterator".}
proc fcQCborMapConstIterator_operatorNotEqual_QCborMap_ConstIterator(self: pointer, o: pointer): bool {.importc: "QCborMap__ConstIterator_operatorNotEqual_QCborMap_ConstIterator".}
proc fcQCborMapConstIterator_operatorLesser_QCborMap_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorLesser_QCborMap_ConstIterator".}
proc fcQCborMapConstIterator_operatorLesserOrEqual_QCborMap_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorLesserOrEqual_QCborMap_ConstIterator".}
proc fcQCborMapConstIterator_operatorGreater_QCborMap_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorGreater_QCborMap_ConstIterator".}
proc fcQCborMapConstIterator_operatorGreaterOrEqual_QCborMap_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorGreaterOrEqual_QCborMap_ConstIterator".}
proc fcQCborMapConstIterator_operatorPlusPlus(self: pointer): pointer {.importc: "QCborMap__ConstIterator_operatorPlusPlus".}
proc fcQCborMapConstIterator_operatorPlusPlusInt(self: pointer, param1: cint): pointer {.importc: "QCborMap__ConstIterator_operatorPlusPlus_int".}
proc fcQCborMapConstIterator_operatorMinusMinus(self: pointer): pointer {.importc: "QCborMap__ConstIterator_operatorMinusMinus".}
proc fcQCborMapConstIterator_operatorMinusMinusInt(self: pointer, param1: cint): pointer {.importc: "QCborMap__ConstIterator_operatorMinusMinus_int".}
proc fcQCborMapConstIterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QCborMap__ConstIterator_operatorPlusAssign".}
proc fcQCborMapConstIterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QCborMap__ConstIterator_operatorMinusAssign".}
proc fcQCborMapConstIterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QCborMap__ConstIterator_operatorPlus".}
proc fcQCborMapConstIterator_operatorMinusQsizetype(self: pointer, j: int64): pointer {.importc: "QCborMap__ConstIterator_operatorMinus_qsizetype".}
proc fcQCborMapConstIterator_operatorMinus_QCborMap_ConstIterator(self: pointer, j: pointer): int64 {.importc: "QCborMap__ConstIterator_operatorMinus_QCborMap_ConstIterator".}
proc fcQCborMapConstIterator_new(): ptr cQCborMapConstIterator {.importc: "QCborMap__ConstIterator_new".}
proc fcQCborMapConstIterator_new2(fromVal: pointer): ptr cQCborMapConstIterator {.importc: "QCborMap__ConstIterator_new_from".}

proc operatorAssign*(self: gen_qcbormap_types.QCborMap, fromVal: gen_qcbormap_types.QCborMap): void =
  fcQCborMap_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qcbormap_types.QCborMap, other: gen_qcbormap_types.QCborMap): void =
  fcQCborMap_swap(self.h, other.h)

proc toCborValue*(self: gen_qcbormap_types.QCborMap): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_toCborValue(self.h), owned: true)

proc size*(self: gen_qcbormap_types.QCborMap): int64 =
  fcQCborMap_size(self.h)

proc isEmpty*(self: gen_qcbormap_types.QCborMap): bool =
  fcQCborMap_isEmpty(self.h)

proc clear*(self: gen_qcbormap_types.QCborMap): void =
  fcQCborMap_clear(self.h)

proc keys*(self: gen_qcbormap_types.QCborMap): seq[gen_qcborvalue_types.QCborValue] =
  var v_ma = fcQCborMap_keys(self.h)
  var vx_ret = newSeq[gen_qcborvalue_types.QCborValue](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcborvalue_types.QCborValue(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc value*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_valueQint64(self.h, key), owned: true)

proc value*(self: gen_qcbormap_types.QCborMap, key: openArray[char]): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_value_QString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc value*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_value_QCborValue(self.h, key.h), owned: true)

proc operatorSubscript*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_operatorSubscriptConstQint64(self.h, key), owned: true)

proc operatorSubscript*(self: gen_qcbormap_types.QCborMap, key: openArray[char]): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_operatorSubscriptConstCQString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc operatorSubscript*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_operatorSubscriptConstCQCborValue(self.h, key.h), owned: true)

proc operatorSubscript2*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMap_operatorSubscriptQint64(self.h, key), owned: true)

proc operatorSubscript2*(self: gen_qcbormap_types.QCborMap, key: openArray[char]): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMap_operatorSubscriptCQString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc operatorSubscript2*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMap_operatorSubscriptCQCborValue(self.h, key.h), owned: true)

proc take*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_takeQint64(self.h, key), owned: true)

proc take*(self: gen_qcbormap_types.QCborMap, key: openArray[char]): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_take_QString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc take*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_take_QCborValue(self.h, key.h), owned: true)

proc remove*(self: gen_qcbormap_types.QCborMap, key: clonglong): void =
  fcQCborMap_removeQint64(self.h, key)

proc remove*(self: gen_qcbormap_types.QCborMap, key: openArray[char]): void =
  fcQCborMap_remove_QString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))

proc remove*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): void =
  fcQCborMap_remove_QCborValue(self.h, key.h)

proc contains*(self: gen_qcbormap_types.QCborMap, key: clonglong): bool =
  fcQCborMap_containsQint64(self.h, key)

proc contains*(self: gen_qcbormap_types.QCborMap, key: openArray[char]): bool =
  fcQCborMap_contains_QString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))

proc contains*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): bool =
  fcQCborMap_contains_QCborValue(self.h, key.h)

proc compare*(self: gen_qcbormap_types.QCborMap, other: gen_qcbormap_types.QCborMap): cint =
  fcQCborMap_compare(self.h, other.h)

proc operatorEqual*(self: gen_qcbormap_types.QCborMap, other: gen_qcbormap_types.QCborMap): bool =
  fcQCborMap_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qcbormap_types.QCborMap, other: gen_qcbormap_types.QCborMap): bool =
  fcQCborMap_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: gen_qcbormap_types.QCborMap, other: gen_qcbormap_types.QCborMap): bool =
  fcQCborMap_operatorLesser(self.h, other.h)

proc begin*(self: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_begin(self.h), owned: true)

proc constBegin*(self: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_constBegin(self.h), owned: true)

proc begin2*(self: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_beginConst(self.h), owned: true)

proc cbegin*(self: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_cbegin(self.h), owned: true)

proc endX*(self: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_endX(self.h), owned: true)

proc constEnd*(self: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_constEnd(self.h), owned: true)

proc endX2*(self: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_endConst(self.h), owned: true)

proc cend*(self: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_cend(self.h), owned: true)

proc erase*(self: gen_qcbormap_types.QCborMap, it: gen_qcbormap_types.QCborMapIterator): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_erase_QCborMapIterator(self.h, it.h), owned: true)

proc erase*(self: gen_qcbormap_types.QCborMap, it: gen_qcbormap_types.QCborMapConstIterator): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_erase_QCborMapConstIterator(self.h, it.h), owned: true)

proc extract*(self: gen_qcbormap_types.QCborMap, it: gen_qcbormap_types.QCborMapIterator): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_extract_QCborMapIterator(self.h, it.h), owned: true)

proc extract*(self: gen_qcbormap_types.QCborMap, it: gen_qcbormap_types.QCborMapConstIterator): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_extract_QCborMapConstIterator(self.h, it.h), owned: true)

proc empty*(self: gen_qcbormap_types.QCborMap): bool =
  fcQCborMap_empty(self.h)

proc find*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_findQint64(self.h, key), owned: true)

proc find*(self: gen_qcbormap_types.QCborMap, key: openArray[char]): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_findCQString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc find*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_findCQCborValue(self.h, key.h), owned: true)

proc constFind*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_constFindQint64(self.h, key), owned: true)

proc constFind*(self: gen_qcbormap_types.QCborMap, key: openArray[char]): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_constFind_QString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc constFind*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_constFind_QCborValue(self.h, key.h), owned: true)

proc find2*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_findConstQint64(self.h, key), owned: true)

proc find2*(self: gen_qcbormap_types.QCborMap, key: openArray[char]): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_findConstCQString(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc find2*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_findConstCQCborValue(self.h, key.h), owned: true)

proc insert*(self: gen_qcbormap_types.QCborMap, key: clonglong, value_x: gen_qcborvalue_types.QCborValue): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_insertQint64_QCborValue(self.h, key, value_x.h), owned: true)

proc insert*(self: gen_qcbormap_types.QCborMap, key: openArray[char], value_x: gen_qcborvalue_types.QCborValue): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_insert_QString_QCborValue(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), value_x.h), owned: true)

proc insert*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue, value_x: gen_qcborvalue_types.QCborValue): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_insert_QCborValue_QCborValue(self.h, key.h, value_x.h), owned: true)

proc insert*(self: gen_qcbormap_types.QCborMap, v: tuple[first: gen_qcborvalue_types.QCborValue, second: gen_qcborvalue_types.QCborValue]): gen_qcbormap_types.QCborMapIterator =
  var v_CArray_First: pointer
  var v_CArray_Second: pointer
  v_CArray_First = v.first.h
  v_CArray_Second = v.second.h
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_insert_QCborMapValueType(self.h, struct_seaqt_map(len: 1,keys: addr(v_CArray_First),values: addr(v_CArray_Second),)), owned: true)

proc fromVariantMap*(_: type gen_qcbormap_types.QCborMap, map: Table[string,gen_qvariant_types.QVariant]): gen_qcbormap_types.QCborMap =
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

  gen_qcbormap_types.QCborMap(h: fcQCborMap_fromVariantMap(struct_seaqt_map(len: csize_t(len(map)),keys: if len(map) == 0: nil else: addr(map_Keys_CArray[0]), values: if len(map) == 0: nil else: addr(map_Values_CArray[0]),)), owned: true)

proc fromVariantHash*(_: type gen_qcbormap_types.QCborMap, hash: Table[string,gen_qvariant_types.QVariant]): gen_qcbormap_types.QCborMap =
  var hash_Keys_CArray = newSeq[struct_seaqt_string](len(hash))
  var hash_Values_CArray = newSeq[pointer](len(hash))
  var hash_ctr = 0
  for hash_k in hash.keys():
    hash_Keys_CArray[hash_ctr] = struct_seaqt_string(data: if len(hash_k) > 0: addr hash_k[0] else: nil, len: csize_t(len(hash_k)))
    hash_ctr += 1
  hash_ctr = 0
  for hash_v in hash.values():
    hash_Values_CArray[hash_ctr] = hash_v.h
    hash_ctr += 1

  gen_qcbormap_types.QCborMap(h: fcQCborMap_fromVariantHash(struct_seaqt_map(len: csize_t(len(hash)),keys: if len(hash) == 0: nil else: addr(hash_Keys_CArray[0]), values: if len(hash) == 0: nil else: addr(hash_Values_CArray[0]),)), owned: true)

proc fromJsonObject*(_: type gen_qcbormap_types.QCborMap, o: gen_qjsonobject_types.QJsonObject): gen_qcbormap_types.QCborMap =
  gen_qcbormap_types.QCborMap(h: fcQCborMap_fromJsonObject(o.h), owned: true)

proc toVariantMap*(self: gen_qcbormap_types.QCborMap): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQCborMap_toVariantMap(self.h)
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

proc toVariantHash*(self: gen_qcbormap_types.QCborMap): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQCborMap_toVariantHash(self.h)
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

proc toJsonObject*(self: gen_qcbormap_types.QCborMap): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQCborMap_toJsonObject(self.h), owned: true)

proc create*(T: type gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMap =
  let tmp = gen_qcbormap_types.QCborMap(h: fcQCborMap_new(), owned: true)
  tmp
proc create*(T: type gen_qcbormap_types.QCborMap,
    fromVal: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMap =
  let tmp = gen_qcbormap_types.QCborMap(h: fcQCborMap_new2(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qcbormap_types.QCborMapIterator, fromVal: gen_qcbormap_types.QCborMapIterator): void =
  fcQCborMapIterator_operatorAssign(self.h, fromVal.h)

proc operatorMultiply*(self: gen_qcbormap_types.QCborMapIterator): tuple[first: gen_qcborvalue_types.QCborValueRef, second: gen_qcborvalue_types.QCborValueRef] =
  var v_mm = fcQCborMapIterator_operatorMultiply(self.h)
  var v_First_CArray = cast[ptr UncheckedArray[pointer]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[pointer]](v_mm.values)
  var v_entry_First = gen_qcborvalue_types.QCborValueRef(h: v_First_CArray[0], owned: true)

  var v_entry_Second = gen_qcborvalue_types.QCborValueRef(h: v_Second_CArray[0], owned: true)

  c_free(v_mm.keys)
  c_free(v_mm.values)
  (first: v_entry_First , second: v_entry_Second )

proc operatorMinusGreater*(self: gen_qcbormap_types.QCborMapIterator): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMapIterator_operatorMinusGreater(self.h), owned: false)

proc key*(self: gen_qcbormap_types.QCborMapIterator): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMapIterator_key(self.h), owned: true)

proc value*(self: gen_qcbormap_types.QCborMapIterator): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMapIterator_value(self.h), owned: true)

proc operatorEqual*(self: gen_qcbormap_types.QCborMapIterator, o: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapIterator_operatorEqual_QCborMap_Iterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qcbormap_types.QCborMapIterator, o: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapIterator_operatorNotEqual_QCborMap_Iterator(self.h, o.h)

proc operatorLesser*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapIterator_operatorLesser_QCborMap_Iterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapIterator_operatorLesserOrEqual_QCborMap_Iterator(self.h, other.h)

proc operatorGreater*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapIterator_operatorGreater_QCborMap_Iterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapIterator_operatorGreaterOrEqual_QCborMap_Iterator(self.h, other.h)

proc operatorEqual*(self: gen_qcbormap_types.QCborMapIterator, o: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapIterator_operatorEqual_QCborMap_ConstIterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qcbormap_types.QCborMapIterator, o: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapIterator_operatorNotEqual_QCborMap_ConstIterator(self.h, o.h)

proc operatorLesser*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapIterator_operatorLesser_QCborMap_ConstIterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapIterator_operatorLesserOrEqual_QCborMap_ConstIterator(self.h, other.h)

proc operatorGreater*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapIterator_operatorGreater_QCborMap_ConstIterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapIterator_operatorGreaterOrEqual_QCborMap_ConstIterator(self.h, other.h)

proc operatorPlusPlus*(self: gen_qcbormap_types.QCborMapIterator): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qcbormap_types.QCborMapIterator, param1: cint): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorPlusPlusInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qcbormap_types.QCborMapIterator): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qcbormap_types.QCborMapIterator, param1: cint): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorMinusMinusInt(self.h, param1), owned: true)

proc operatorPlusAssign*(self: gen_qcbormap_types.QCborMapIterator, j: int64): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qcbormap_types.QCborMapIterator, j: int64): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorPlus*(self: gen_qcbormap_types.QCborMapIterator, j: int64): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcbormap_types.QCborMapIterator, j: int64): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorMinusQsizetype(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcbormap_types.QCborMapIterator, j: gen_qcbormap_types.QCborMapIterator): int64 =
  fcQCborMapIterator_operatorMinus_QCborMap_Iterator(self.h, j.h)

proc create*(T: type gen_qcbormap_types.QCborMapIterator): gen_qcbormap_types.QCborMapIterator =
  let tmp = gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_new(), owned: true)
  tmp
proc create*(T: type gen_qcbormap_types.QCborMapIterator,
    fromVal: gen_qcbormap_types.QCborMapIterator): gen_qcbormap_types.QCborMapIterator =
  let tmp = gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_new2(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qcbormap_types.QCborMapConstIterator, fromVal: gen_qcbormap_types.QCborMapConstIterator): void =
  fcQCborMapConstIterator_operatorAssign(self.h, fromVal.h)

proc operatorMultiply*(self: gen_qcbormap_types.QCborMapConstIterator): tuple[first: gen_qcborvalue_types.QCborValueRef, second: gen_qcborvalue_types.QCborValueRef] =
  var v_mm = fcQCborMapConstIterator_operatorMultiply(self.h)
  var v_First_CArray = cast[ptr UncheckedArray[pointer]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[pointer]](v_mm.values)
  var v_entry_First = gen_qcborvalue_types.QCborValueRef(h: v_First_CArray[0], owned: true)

  var v_entry_Second = gen_qcborvalue_types.QCborValueRef(h: v_Second_CArray[0], owned: true)

  c_free(v_mm.keys)
  c_free(v_mm.values)
  (first: v_entry_First , second: v_entry_Second )

proc operatorMinusGreater*(self: gen_qcbormap_types.QCborMapConstIterator): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMapConstIterator_operatorMinusGreater(self.h), owned: false)

proc key*(self: gen_qcbormap_types.QCborMapConstIterator): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMapConstIterator_key(self.h), owned: true)

proc value*(self: gen_qcbormap_types.QCborMapConstIterator): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMapConstIterator_value(self.h), owned: true)

proc operatorEqual*(self: gen_qcbormap_types.QCborMapConstIterator, o: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapConstIterator_operatorEqual_QCborMap_Iterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qcbormap_types.QCborMapConstIterator, o: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapConstIterator_operatorNotEqual_QCborMap_Iterator(self.h, o.h)

proc operatorLesser*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapConstIterator_operatorLesser_QCborMap_Iterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapConstIterator_operatorLesserOrEqual_QCborMap_Iterator(self.h, other.h)

proc operatorGreater*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapConstIterator_operatorGreater_QCborMap_Iterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapConstIterator_operatorGreaterOrEqual_QCborMap_Iterator(self.h, other.h)

proc operatorEqual*(self: gen_qcbormap_types.QCborMapConstIterator, o: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapConstIterator_operatorEqual_QCborMap_ConstIterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qcbormap_types.QCborMapConstIterator, o: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapConstIterator_operatorNotEqual_QCborMap_ConstIterator(self.h, o.h)

proc operatorLesser*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapConstIterator_operatorLesser_QCborMap_ConstIterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapConstIterator_operatorLesserOrEqual_QCborMap_ConstIterator(self.h, other.h)

proc operatorGreater*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapConstIterator_operatorGreater_QCborMap_ConstIterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapConstIterator_operatorGreaterOrEqual_QCborMap_ConstIterator(self.h, other.h)

proc operatorPlusPlus*(self: gen_qcbormap_types.QCborMapConstIterator): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qcbormap_types.QCborMapConstIterator, param1: cint): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorPlusPlusInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qcbormap_types.QCborMapConstIterator): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qcbormap_types.QCborMapConstIterator, param1: cint): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorMinusMinusInt(self.h, param1), owned: true)

proc operatorPlusAssign*(self: gen_qcbormap_types.QCborMapConstIterator, j: int64): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qcbormap_types.QCborMapConstIterator, j: int64): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorPlus*(self: gen_qcbormap_types.QCborMapConstIterator, j: int64): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcbormap_types.QCborMapConstIterator, j: int64): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorMinusQsizetype(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcbormap_types.QCborMapConstIterator, j: gen_qcbormap_types.QCborMapConstIterator): int64 =
  fcQCborMapConstIterator_operatorMinus_QCborMap_ConstIterator(self.h, j.h)

proc create*(T: type gen_qcbormap_types.QCborMapConstIterator): gen_qcbormap_types.QCborMapConstIterator =
  let tmp = gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_new(), owned: true)
  tmp
proc create*(T: type gen_qcbormap_types.QCborMapConstIterator,
    fromVal: gen_qcbormap_types.QCborMapConstIterator): gen_qcbormap_types.QCborMapConstIterator =
  let tmp = gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_new2(fromVal.h), owned: true)
  tmp
