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


import ./gen_qjsonarray_types
export gen_qjsonarray_types

import
  ./gen_qjsonvalue_types,
  ./gen_qvariant_types
export
  gen_qjsonvalue_types,
  gen_qvariant_types

type cQJsonArray*{.exportc: "QJsonArray", incompleteStruct.} = object
type cQJsonArrayiterator*{.exportc: "QJsonArray__iterator", incompleteStruct.} = object
type cQJsonArrayconst_iterator*{.exportc: "QJsonArray__const_iterator", incompleteStruct.} = object

proc fcQJsonArray_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QJsonArray_operatorAssign".}
proc fcQJsonArray_fromStringList(list: struct_seaqt_array): pointer {.importc: "QJsonArray_fromStringList".}
proc fcQJsonArray_fromVariantList(list: struct_seaqt_array): pointer {.importc: "QJsonArray_fromVariantList".}
proc fcQJsonArray_toVariantList(self: pointer): struct_seaqt_array {.importc: "QJsonArray_toVariantList".}
proc fcQJsonArray_size(self: pointer): int64 {.importc: "QJsonArray_size".}
proc fcQJsonArray_count(self: pointer): int64 {.importc: "QJsonArray_count".}
proc fcQJsonArray_isEmpty(self: pointer): bool {.importc: "QJsonArray_isEmpty".}
proc fcQJsonArray_at(self: pointer, i: int64): pointer {.importc: "QJsonArray_at".}
proc fcQJsonArray_first(self: pointer): pointer {.importc: "QJsonArray_first".}
proc fcQJsonArray_last(self: pointer): pointer {.importc: "QJsonArray_last".}
proc fcQJsonArray_prepend(self: pointer, value: pointer): void {.importc: "QJsonArray_prepend".}
proc fcQJsonArray_append(self: pointer, value: pointer): void {.importc: "QJsonArray_append".}
proc fcQJsonArray_removeAt(self: pointer, i: int64): void {.importc: "QJsonArray_removeAt".}
proc fcQJsonArray_takeAt(self: pointer, i: int64): pointer {.importc: "QJsonArray_takeAt".}
proc fcQJsonArray_removeFirst(self: pointer): void {.importc: "QJsonArray_removeFirst".}
proc fcQJsonArray_removeLast(self: pointer): void {.importc: "QJsonArray_removeLast".}
proc fcQJsonArray_insertIValue(self: pointer, i: int64, value: pointer): void {.importc: "QJsonArray_insert_i_value".}
proc fcQJsonArray_replace(self: pointer, i: int64, value: pointer): void {.importc: "QJsonArray_replace".}
proc fcQJsonArray_contains(self: pointer, element: pointer): bool {.importc: "QJsonArray_contains".}
proc fcQJsonArray_operatorSubscriptQsizetype(self: pointer, i: int64): pointer {.importc: "QJsonArray_operatorSubscript_qsizetype".}
proc fcQJsonArray_operatorSubscriptConstQsizetype(self: pointer, i: int64): pointer {.importc: "QJsonArray_operatorSubscript_const_qsizetype".}
proc fcQJsonArray_operatorEqual(self: pointer, other: pointer): bool {.importc: "QJsonArray_operatorEqual".}
proc fcQJsonArray_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QJsonArray_operatorNotEqual".}
proc fcQJsonArray_swap(self: pointer, other: pointer): void {.importc: "QJsonArray_swap".}
proc fcQJsonArray_begin(self: pointer): pointer {.importc: "QJsonArray_begin".}
proc fcQJsonArray_beginConst(self: pointer): pointer {.importc: "QJsonArray_begin_const".}
proc fcQJsonArray_constBegin(self: pointer): pointer {.importc: "QJsonArray_constBegin".}
proc fcQJsonArray_cbegin(self: pointer): pointer {.importc: "QJsonArray_cbegin".}
proc fcQJsonArray_endX(self: pointer): pointer {.importc: "QJsonArray_end".}
proc fcQJsonArray_endConst(self: pointer): pointer {.importc: "QJsonArray_end_const".}
proc fcQJsonArray_constEnd(self: pointer): pointer {.importc: "QJsonArray_constEnd".}
proc fcQJsonArray_cend(self: pointer): pointer {.importc: "QJsonArray_cend".}
proc fcQJsonArray_insertBeforeValue(self: pointer, before: pointer, value: pointer): pointer {.importc: "QJsonArray_insert_before_value".}
proc fcQJsonArray_erase(self: pointer, it: pointer): pointer {.importc: "QJsonArray_erase".}
proc fcQJsonArray_operatorPlus(self: pointer, v: pointer): pointer {.importc: "QJsonArray_operatorPlus".}
proc fcQJsonArray_operatorPlusAssign(self: pointer, v: pointer): pointer {.importc: "QJsonArray_operatorPlusAssign".}
proc fcQJsonArray_operatorShiftLeft(self: pointer, v: pointer): pointer {.importc: "QJsonArray_operatorShiftLeft".}
proc fcQJsonArray_pushBack(self: pointer, t: pointer): void {.importc: "QJsonArray_push_back".}
proc fcQJsonArray_pushFront(self: pointer, t: pointer): void {.importc: "QJsonArray_push_front".}
proc fcQJsonArray_popFront(self: pointer): void {.importc: "QJsonArray_pop_front".}
proc fcQJsonArray_popBack(self: pointer): void {.importc: "QJsonArray_pop_back".}
proc fcQJsonArray_empty(self: pointer): bool {.importc: "QJsonArray_empty".}
proc fcQJsonArray_new(): ptr cQJsonArray {.importc: "QJsonArray_new".}
proc fcQJsonArray_new2(fromVal: pointer): ptr cQJsonArray {.importc: "QJsonArray_new_from".}
proc fcQJsonArrayiterator_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QJsonArray__iterator_operatorAssign".}
proc fcQJsonArrayiterator_operatorMultiply(self: pointer): pointer {.importc: "QJsonArray__iterator_operatorMultiply".}
proc fcQJsonArrayiterator_operatorMinusGreaterConst(self: pointer): pointer {.importc: "QJsonArray__iterator_operatorMinusGreater_const".}
proc fcQJsonArrayiterator_operatorMinusGreater(self: pointer): pointer {.importc: "QJsonArray__iterator_operatorMinusGreater".}
proc fcQJsonArrayiterator_operatorSubscript(self: pointer, j: int64): pointer {.importc: "QJsonArray__iterator_operatorSubscript".}
proc fcQJsonArrayiterator_operatorEqual_QJsonArrayIterator(self: pointer, o: pointer): bool {.importc: "QJsonArray__iterator_operatorEqual_QJsonArray_iterator".}
proc fcQJsonArrayiterator_operatorNotEqual_QJsonArrayIterator(self: pointer, o: pointer): bool {.importc: "QJsonArray__iterator_operatorNotEqual_QJsonArray_iterator".}
proc fcQJsonArrayiterator_operatorLesser_QJsonArrayIterator(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorLesser_QJsonArray_iterator".}
proc fcQJsonArrayiterator_operatorLesserOrEqual_QJsonArrayIterator(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorLesserOrEqual_QJsonArray_iterator".}
proc fcQJsonArrayiterator_operatorGreater_QJsonArrayIterator(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorGreater_QJsonArray_iterator".}
proc fcQJsonArrayiterator_operatorGreaterOrEqual_QJsonArrayIterator(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorGreaterOrEqual_QJsonArray_iterator".}
proc fcQJsonArrayiterator_operatorEqual_QJsonArrayConstIterator(self: pointer, o: pointer): bool {.importc: "QJsonArray__iterator_operatorEqual_QJsonArray_const_iterator".}
proc fcQJsonArrayiterator_operatorNotEqual_QJsonArrayConstIterator(self: pointer, o: pointer): bool {.importc: "QJsonArray__iterator_operatorNotEqual_QJsonArray_const_iterator".}
proc fcQJsonArrayiterator_operatorLesser_QJsonArrayConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorLesser_QJsonArray_const_iterator".}
proc fcQJsonArrayiterator_operatorLesserOrEqual_QJsonArrayConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorLesserOrEqual_QJsonArray_const_iterator".}
proc fcQJsonArrayiterator_operatorGreater_QJsonArrayConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorGreater_QJsonArray_const_iterator".}
proc fcQJsonArrayiterator_operatorGreaterOrEqual_QJsonArrayConstIterator(self: pointer, other: pointer): bool {.importc: "QJsonArray__iterator_operatorGreaterOrEqual_QJsonArray_const_iterator".}
proc fcQJsonArrayiterator_operatorPlusPlus(self: pointer): pointer {.importc: "QJsonArray__iterator_operatorPlusPlus".}
proc fcQJsonArrayiterator_operatorPlusPlusInt(self: pointer, param1: cint): pointer {.importc: "QJsonArray__iterator_operatorPlusPlus_int".}
proc fcQJsonArrayiterator_operatorMinusMinus(self: pointer): pointer {.importc: "QJsonArray__iterator_operatorMinusMinus".}
proc fcQJsonArrayiterator_operatorMinusMinusInt(self: pointer, param1: cint): pointer {.importc: "QJsonArray__iterator_operatorMinusMinus_int".}
proc fcQJsonArrayiterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QJsonArray__iterator_operatorPlusAssign".}
proc fcQJsonArrayiterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QJsonArray__iterator_operatorMinusAssign".}
proc fcQJsonArrayiterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QJsonArray__iterator_operatorPlus".}
proc fcQJsonArrayiterator_operatorMinusQsizetype(self: pointer, j: int64): pointer {.importc: "QJsonArray__iterator_operatorMinus_qsizetype".}
proc fcQJsonArrayiterator_operatorMinus_QJsonArrayIterator(self: pointer, j: pointer): int64 {.importc: "QJsonArray__iterator_operatorMinus_QJsonArray_iterator".}
proc fcQJsonArrayiterator_new(): ptr cQJsonArrayiterator {.importc: "QJsonArray__iterator_new".}
proc fcQJsonArrayiterator_new2(array: pointer, index: int64): ptr cQJsonArrayiterator {.importc: "QJsonArray__iterator_new_array_index".}
proc fcQJsonArrayiterator_new3(fromVal: pointer): ptr cQJsonArrayiterator {.importc: "QJsonArray__iterator_new_from".}
proc fcQJsonArrayconst_iterator_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QJsonArray__const_iterator_operatorAssign".}
proc fcQJsonArrayconst_iterator_operatorMultiply(self: pointer): pointer {.importc: "QJsonArray__const_iterator_operatorMultiply".}
proc fcQJsonArrayconst_iterator_operatorMinusGreater(self: pointer): pointer {.importc: "QJsonArray__const_iterator_operatorMinusGreater".}
proc fcQJsonArrayconst_iterator_operatorSubscript(self: pointer, j: int64): pointer {.importc: "QJsonArray__const_iterator_operatorSubscript".}
proc fcQJsonArrayconst_iterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QJsonArray__const_iterator_operatorEqual".}
proc fcQJsonArrayconst_iterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QJsonArray__const_iterator_operatorNotEqual".}
proc fcQJsonArrayconst_iterator_operatorLesser(self: pointer, other: pointer): bool {.importc: "QJsonArray__const_iterator_operatorLesser".}
proc fcQJsonArrayconst_iterator_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QJsonArray__const_iterator_operatorLesserOrEqual".}
proc fcQJsonArrayconst_iterator_operatorGreater(self: pointer, other: pointer): bool {.importc: "QJsonArray__const_iterator_operatorGreater".}
proc fcQJsonArrayconst_iterator_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QJsonArray__const_iterator_operatorGreaterOrEqual".}
proc fcQJsonArrayconst_iterator_operatorPlusPlus(self: pointer): pointer {.importc: "QJsonArray__const_iterator_operatorPlusPlus".}
proc fcQJsonArrayconst_iterator_operatorPlusPlusInt(self: pointer, param1: cint): pointer {.importc: "QJsonArray__const_iterator_operatorPlusPlus_int".}
proc fcQJsonArrayconst_iterator_operatorMinusMinus(self: pointer): pointer {.importc: "QJsonArray__const_iterator_operatorMinusMinus".}
proc fcQJsonArrayconst_iterator_operatorMinusMinusInt(self: pointer, param1: cint): pointer {.importc: "QJsonArray__const_iterator_operatorMinusMinus_int".}
proc fcQJsonArrayconst_iterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QJsonArray__const_iterator_operatorPlusAssign".}
proc fcQJsonArrayconst_iterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QJsonArray__const_iterator_operatorMinusAssign".}
proc fcQJsonArrayconst_iterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QJsonArray__const_iterator_operatorPlus".}
proc fcQJsonArrayconst_iterator_operatorMinusQsizetype(self: pointer, j: int64): pointer {.importc: "QJsonArray__const_iterator_operatorMinus_qsizetype".}
proc fcQJsonArrayconst_iterator_operatorMinus_QJsonArrayConstIterator(self: pointer, j: pointer): int64 {.importc: "QJsonArray__const_iterator_operatorMinus_QJsonArray_const_iterator".}
proc fcQJsonArrayconst_iterator_new(): ptr cQJsonArrayconst_iterator {.importc: "QJsonArray__const_iterator_new".}
proc fcQJsonArrayconst_iterator_new2(array: pointer, index: int64): ptr cQJsonArrayconst_iterator {.importc: "QJsonArray__const_iterator_new_array_index".}
proc fcQJsonArrayconst_iterator_new3(o: pointer): ptr cQJsonArrayconst_iterator {.importc: "QJsonArray__const_iterator_new_o".}
proc fcQJsonArrayconst_iterator_new4(fromVal: pointer): ptr cQJsonArrayconst_iterator {.importc: "QJsonArray__const_iterator_new_from".}

proc operatorAssign*(self: gen_qjsonarray_types.QJsonArray, fromVal: gen_qjsonarray_types.QJsonArray): void =
  fcQJsonArray_operatorAssign(self.h, fromVal.h)

proc fromStringList*(_: type gen_qjsonarray_types.QJsonArray, list: openArray[string]): gen_qjsonarray_types.QJsonArray =
  var list_CArray = newSeq[struct_seaqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_seaqt_string(data: if len(list[i]) > 0: addr list[i][0] else: nil, len: csize_t(len(list[i])))

  gen_qjsonarray_types.QJsonArray(h: fcQJsonArray_fromStringList(struct_seaqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0]))), owned: true)

proc fromVariantList*(_: type gen_qjsonarray_types.QJsonArray, list: openArray[gen_qvariant_types.QVariant]): gen_qjsonarray_types.QJsonArray =
  var list_CArray = newSeq[pointer](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i].h

  gen_qjsonarray_types.QJsonArray(h: fcQJsonArray_fromVariantList(struct_seaqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0]))), owned: true)

proc toVariantList*(self: gen_qjsonarray_types.QJsonArray): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQJsonArray_toVariantList(self.h)
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc size*(self: gen_qjsonarray_types.QJsonArray): int64 =
  fcQJsonArray_size(self.h)

proc count*(self: gen_qjsonarray_types.QJsonArray): int64 =
  fcQJsonArray_count(self.h)

proc isEmpty*(self: gen_qjsonarray_types.QJsonArray): bool =
  fcQJsonArray_isEmpty(self.h)

proc at*(self: gen_qjsonarray_types.QJsonArray, i: int64): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonArray_at(self.h, i), owned: true)

proc first*(self: gen_qjsonarray_types.QJsonArray): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonArray_first(self.h), owned: true)

proc last*(self: gen_qjsonarray_types.QJsonArray): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonArray_last(self.h), owned: true)

proc prepend*(self: gen_qjsonarray_types.QJsonArray, value: gen_qjsonvalue_types.QJsonValue): void =
  fcQJsonArray_prepend(self.h, value.h)

proc append*(self: gen_qjsonarray_types.QJsonArray, value: gen_qjsonvalue_types.QJsonValue): void =
  fcQJsonArray_append(self.h, value.h)

proc removeAt*(self: gen_qjsonarray_types.QJsonArray, i: int64): void =
  fcQJsonArray_removeAt(self.h, i)

proc takeAt*(self: gen_qjsonarray_types.QJsonArray, i: int64): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonArray_takeAt(self.h, i), owned: true)

proc removeFirst*(self: gen_qjsonarray_types.QJsonArray): void =
  fcQJsonArray_removeFirst(self.h)

proc removeLast*(self: gen_qjsonarray_types.QJsonArray): void =
  fcQJsonArray_removeLast(self.h)

proc insert*(self: gen_qjsonarray_types.QJsonArray, i: int64, value: gen_qjsonvalue_types.QJsonValue): void =
  fcQJsonArray_insertIValue(self.h, i, value.h)

proc replace*(self: gen_qjsonarray_types.QJsonArray, i: int64, value: gen_qjsonvalue_types.QJsonValue): void =
  fcQJsonArray_replace(self.h, i, value.h)

proc contains*(self: gen_qjsonarray_types.QJsonArray, element: gen_qjsonvalue_types.QJsonValue): bool =
  fcQJsonArray_contains(self.h, element.h)

proc operatorSubscript*(self: gen_qjsonarray_types.QJsonArray, i: int64): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonArray_operatorSubscriptQsizetype(self.h, i), owned: true)

proc operatorSubscript2*(self: gen_qjsonarray_types.QJsonArray, i: int64): gen_qjsonvalue_types.QJsonValue =
  gen_qjsonvalue_types.QJsonValue(h: fcQJsonArray_operatorSubscriptConstQsizetype(self.h, i), owned: true)

proc operatorEqual*(self: gen_qjsonarray_types.QJsonArray, other: gen_qjsonarray_types.QJsonArray): bool =
  fcQJsonArray_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qjsonarray_types.QJsonArray, other: gen_qjsonarray_types.QJsonArray): bool =
  fcQJsonArray_operatorNotEqual(self.h, other.h)

proc swap*(self: gen_qjsonarray_types.QJsonArray, other: gen_qjsonarray_types.QJsonArray): void =
  fcQJsonArray_swap(self.h, other.h)

proc begin*(self: gen_qjsonarray_types.QJsonArray): gen_qjsonarray_types.QJsonArrayiterator =
  gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArray_begin(self.h), owned: true)

proc begin2*(self: gen_qjsonarray_types.QJsonArray): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArray_beginConst(self.h), owned: true)

proc constBegin*(self: gen_qjsonarray_types.QJsonArray): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArray_constBegin(self.h), owned: true)

proc cbegin*(self: gen_qjsonarray_types.QJsonArray): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArray_cbegin(self.h), owned: true)

proc endX*(self: gen_qjsonarray_types.QJsonArray): gen_qjsonarray_types.QJsonArrayiterator =
  gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArray_endX(self.h), owned: true)

proc endX2*(self: gen_qjsonarray_types.QJsonArray): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArray_endConst(self.h), owned: true)

proc constEnd*(self: gen_qjsonarray_types.QJsonArray): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArray_constEnd(self.h), owned: true)

proc cend*(self: gen_qjsonarray_types.QJsonArray): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArray_cend(self.h), owned: true)

proc insert*(self: gen_qjsonarray_types.QJsonArray, before: gen_qjsonarray_types.QJsonArrayiterator, value: gen_qjsonvalue_types.QJsonValue): gen_qjsonarray_types.QJsonArrayiterator =
  gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArray_insertBeforeValue(self.h, before.h, value.h), owned: true)

proc erase*(self: gen_qjsonarray_types.QJsonArray, it: gen_qjsonarray_types.QJsonArrayiterator): gen_qjsonarray_types.QJsonArrayiterator =
  gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArray_erase(self.h, it.h), owned: true)

proc operatorPlus*(self: gen_qjsonarray_types.QJsonArray, v: gen_qjsonvalue_types.QJsonValue): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQJsonArray_operatorPlus(self.h, v.h), owned: true)

proc operatorPlusAssign*(self: gen_qjsonarray_types.QJsonArray, v: gen_qjsonvalue_types.QJsonValue): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQJsonArray_operatorPlusAssign(self.h, v.h), owned: false)

proc operatorShiftLeft*(self: gen_qjsonarray_types.QJsonArray, v: gen_qjsonvalue_types.QJsonValue): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQJsonArray_operatorShiftLeft(self.h, v.h), owned: false)

proc pushBack*(self: gen_qjsonarray_types.QJsonArray, t: gen_qjsonvalue_types.QJsonValue): void =
  fcQJsonArray_pushBack(self.h, t.h)

proc pushFront*(self: gen_qjsonarray_types.QJsonArray, t: gen_qjsonvalue_types.QJsonValue): void =
  fcQJsonArray_pushFront(self.h, t.h)

proc popFront*(self: gen_qjsonarray_types.QJsonArray): void =
  fcQJsonArray_popFront(self.h)

proc popBack*(self: gen_qjsonarray_types.QJsonArray): void =
  fcQJsonArray_popBack(self.h)

proc empty*(self: gen_qjsonarray_types.QJsonArray): bool =
  fcQJsonArray_empty(self.h)

proc create*(T: type gen_qjsonarray_types.QJsonArray): gen_qjsonarray_types.QJsonArray =
  let tmp = gen_qjsonarray_types.QJsonArray(h: fcQJsonArray_new(), owned: true)
  tmp
proc create*(T: type gen_qjsonarray_types.QJsonArray,
    fromVal: gen_qjsonarray_types.QJsonArray): gen_qjsonarray_types.QJsonArray =
  let tmp = gen_qjsonarray_types.QJsonArray(h: fcQJsonArray_new2(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qjsonarray_types.QJsonArrayiterator, fromVal: gen_qjsonarray_types.QJsonArrayiterator): void =
  fcQJsonArrayiterator_operatorAssign(self.h, fromVal.h)

proc operatorMultiply*(self: gen_qjsonarray_types.QJsonArrayiterator): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonArrayiterator_operatorMultiply(self.h), owned: true)

proc operatorMinusGreater*(self: gen_qjsonarray_types.QJsonArrayiterator): gen_qjsonvalue_types.QJsonValueConstRef =
  gen_qjsonvalue_types.QJsonValueConstRef(h: fcQJsonArrayiterator_operatorMinusGreaterConst(self.h), owned: false)

proc operatorMinusGreater2*(self: gen_qjsonarray_types.QJsonArrayiterator): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonArrayiterator_operatorMinusGreater(self.h), owned: false)

proc operatorSubscript*(self: gen_qjsonarray_types.QJsonArrayiterator, j: int64): gen_qjsonvalue_types.QJsonValueRef =
  gen_qjsonvalue_types.QJsonValueRef(h: fcQJsonArrayiterator_operatorSubscript(self.h, j), owned: true)

proc operatorEqual*(self: gen_qjsonarray_types.QJsonArrayiterator, o: gen_qjsonarray_types.QJsonArrayiterator): bool =
  fcQJsonArrayiterator_operatorEqual_QJsonArrayIterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qjsonarray_types.QJsonArrayiterator, o: gen_qjsonarray_types.QJsonArrayiterator): bool =
  fcQJsonArrayiterator_operatorNotEqual_QJsonArrayIterator(self.h, o.h)

proc operatorLesser*(self: gen_qjsonarray_types.QJsonArrayiterator, other: gen_qjsonarray_types.QJsonArrayiterator): bool =
  fcQJsonArrayiterator_operatorLesser_QJsonArrayIterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qjsonarray_types.QJsonArrayiterator, other: gen_qjsonarray_types.QJsonArrayiterator): bool =
  fcQJsonArrayiterator_operatorLesserOrEqual_QJsonArrayIterator(self.h, other.h)

proc operatorGreater*(self: gen_qjsonarray_types.QJsonArrayiterator, other: gen_qjsonarray_types.QJsonArrayiterator): bool =
  fcQJsonArrayiterator_operatorGreater_QJsonArrayIterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qjsonarray_types.QJsonArrayiterator, other: gen_qjsonarray_types.QJsonArrayiterator): bool =
  fcQJsonArrayiterator_operatorGreaterOrEqual_QJsonArrayIterator(self.h, other.h)

proc operatorEqual*(self: gen_qjsonarray_types.QJsonArrayiterator, o: gen_qjsonarray_types.QJsonArrayconst_iterator): bool =
  fcQJsonArrayiterator_operatorEqual_QJsonArrayConstIterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qjsonarray_types.QJsonArrayiterator, o: gen_qjsonarray_types.QJsonArrayconst_iterator): bool =
  fcQJsonArrayiterator_operatorNotEqual_QJsonArrayConstIterator(self.h, o.h)

proc operatorLesser*(self: gen_qjsonarray_types.QJsonArrayiterator, other: gen_qjsonarray_types.QJsonArrayconst_iterator): bool =
  fcQJsonArrayiterator_operatorLesser_QJsonArrayConstIterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qjsonarray_types.QJsonArrayiterator, other: gen_qjsonarray_types.QJsonArrayconst_iterator): bool =
  fcQJsonArrayiterator_operatorLesserOrEqual_QJsonArrayConstIterator(self.h, other.h)

proc operatorGreater*(self: gen_qjsonarray_types.QJsonArrayiterator, other: gen_qjsonarray_types.QJsonArrayconst_iterator): bool =
  fcQJsonArrayiterator_operatorGreater_QJsonArrayConstIterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qjsonarray_types.QJsonArrayiterator, other: gen_qjsonarray_types.QJsonArrayconst_iterator): bool =
  fcQJsonArrayiterator_operatorGreaterOrEqual_QJsonArrayConstIterator(self.h, other.h)

proc operatorPlusPlus*(self: gen_qjsonarray_types.QJsonArrayiterator): gen_qjsonarray_types.QJsonArrayiterator =
  gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArrayiterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qjsonarray_types.QJsonArrayiterator, param1: cint): gen_qjsonarray_types.QJsonArrayiterator =
  gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArrayiterator_operatorPlusPlusInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qjsonarray_types.QJsonArrayiterator): gen_qjsonarray_types.QJsonArrayiterator =
  gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArrayiterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qjsonarray_types.QJsonArrayiterator, param1: cint): gen_qjsonarray_types.QJsonArrayiterator =
  gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArrayiterator_operatorMinusMinusInt(self.h, param1), owned: true)

proc operatorPlusAssign*(self: gen_qjsonarray_types.QJsonArrayiterator, j: int64): gen_qjsonarray_types.QJsonArrayiterator =
  gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArrayiterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qjsonarray_types.QJsonArrayiterator, j: int64): gen_qjsonarray_types.QJsonArrayiterator =
  gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArrayiterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorPlus*(self: gen_qjsonarray_types.QJsonArrayiterator, j: int64): gen_qjsonarray_types.QJsonArrayiterator =
  gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArrayiterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qjsonarray_types.QJsonArrayiterator, j: int64): gen_qjsonarray_types.QJsonArrayiterator =
  gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArrayiterator_operatorMinusQsizetype(self.h, j), owned: true)

proc operatorMinus*(self: gen_qjsonarray_types.QJsonArrayiterator, j: gen_qjsonarray_types.QJsonArrayiterator): int64 =
  fcQJsonArrayiterator_operatorMinus_QJsonArrayIterator(self.h, j.h)

proc create*(T: type gen_qjsonarray_types.QJsonArrayiterator): gen_qjsonarray_types.QJsonArrayiterator =
  let tmp = gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArrayiterator_new(), owned: true)
  tmp
proc create*(T: type gen_qjsonarray_types.QJsonArrayiterator,
    array: gen_qjsonarray_types.QJsonArray, index: int64): gen_qjsonarray_types.QJsonArrayiterator =
  let tmp = gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArrayiterator_new2(array.h, index), owned: true)
  tmp
proc create*(T: type gen_qjsonarray_types.QJsonArrayiterator,
    fromVal: gen_qjsonarray_types.QJsonArrayiterator): gen_qjsonarray_types.QJsonArrayiterator =
  let tmp = gen_qjsonarray_types.QJsonArrayiterator(h: fcQJsonArrayiterator_new3(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, fromVal: gen_qjsonarray_types.QJsonArrayconst_iterator): void =
  fcQJsonArrayconst_iterator_operatorAssign(self.h, fromVal.h)

proc operatorMultiply*(self: gen_qjsonarray_types.QJsonArrayconst_iterator): gen_qjsonvalue_types.QJsonValueConstRef =
  gen_qjsonvalue_types.QJsonValueConstRef(h: fcQJsonArrayconst_iterator_operatorMultiply(self.h), owned: true)

proc operatorMinusGreater*(self: gen_qjsonarray_types.QJsonArrayconst_iterator): gen_qjsonvalue_types.QJsonValueConstRef =
  gen_qjsonvalue_types.QJsonValueConstRef(h: fcQJsonArrayconst_iterator_operatorMinusGreater(self.h), owned: false)

proc operatorSubscript*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, j: int64): gen_qjsonvalue_types.QJsonValueConstRef =
  gen_qjsonvalue_types.QJsonValueConstRef(h: fcQJsonArrayconst_iterator_operatorSubscript(self.h, j), owned: true)

proc operatorEqual*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, o: gen_qjsonarray_types.QJsonArrayconst_iterator): bool =
  fcQJsonArrayconst_iterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, o: gen_qjsonarray_types.QJsonArrayconst_iterator): bool =
  fcQJsonArrayconst_iterator_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, other: gen_qjsonarray_types.QJsonArrayconst_iterator): bool =
  fcQJsonArrayconst_iterator_operatorLesser(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, other: gen_qjsonarray_types.QJsonArrayconst_iterator): bool =
  fcQJsonArrayconst_iterator_operatorLesserOrEqual(self.h, other.h)

proc operatorGreater*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, other: gen_qjsonarray_types.QJsonArrayconst_iterator): bool =
  fcQJsonArrayconst_iterator_operatorGreater(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, other: gen_qjsonarray_types.QJsonArrayconst_iterator): bool =
  fcQJsonArrayconst_iterator_operatorGreaterOrEqual(self.h, other.h)

proc operatorPlusPlus*(self: gen_qjsonarray_types.QJsonArrayconst_iterator): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, param1: cint): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorPlusPlusInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qjsonarray_types.QJsonArrayconst_iterator): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, param1: cint): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorMinusMinusInt(self.h, param1), owned: true)

proc operatorPlusAssign*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, j: int64): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, j: int64): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorPlus*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, j: int64): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, j: int64): gen_qjsonarray_types.QJsonArrayconst_iterator =
  gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_operatorMinusQsizetype(self.h, j), owned: true)

proc operatorMinus*(self: gen_qjsonarray_types.QJsonArrayconst_iterator, j: gen_qjsonarray_types.QJsonArrayconst_iterator): int64 =
  fcQJsonArrayconst_iterator_operatorMinus_QJsonArrayConstIterator(self.h, j.h)

proc create*(T: type gen_qjsonarray_types.QJsonArrayconst_iterator): gen_qjsonarray_types.QJsonArrayconst_iterator =
  let tmp = gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_new(), owned: true)
  tmp
proc create*(T: type gen_qjsonarray_types.QJsonArrayconst_iterator,
    array: gen_qjsonarray_types.QJsonArray, index: int64): gen_qjsonarray_types.QJsonArrayconst_iterator =
  let tmp = gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_new2(array.h, index), owned: true)
  tmp
proc create*(T: type gen_qjsonarray_types.QJsonArrayconst_iterator,
    o: gen_qjsonarray_types.QJsonArrayiterator): gen_qjsonarray_types.QJsonArrayconst_iterator =
  let tmp = gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_new3(o.h), owned: true)
  tmp
proc create*(T: type gen_qjsonarray_types.QJsonArrayconst_iterator,
    fromVal: gen_qjsonarray_types.QJsonArrayconst_iterator): gen_qjsonarray_types.QJsonArrayconst_iterator =
  let tmp = gen_qjsonarray_types.QJsonArrayconst_iterator(h: fcQJsonArrayconst_iterator_new4(fromVal.h), owned: true)
  tmp
