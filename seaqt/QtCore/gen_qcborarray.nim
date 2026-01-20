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


import ./gen_qcborarray_types
export gen_qcborarray_types

import
  ./gen_qcborvalue_types,
  ./gen_qjsonarray_types,
  ./gen_qvariant_types
export
  gen_qcborvalue_types,
  gen_qjsonarray_types,
  gen_qvariant_types

type cQCborArray*{.exportc: "QCborArray", incompleteStruct.} = object
type cQCborArrayIterator*{.exportc: "QCborArray__Iterator", incompleteStruct.} = object
type cQCborArrayConstIterator*{.exportc: "QCborArray__ConstIterator", incompleteStruct.} = object

proc fcQCborArray_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QCborArray_operatorAssign".}
proc fcQCborArray_swap(self: pointer, other: pointer): void {.importc: "QCborArray_swap".}
proc fcQCborArray_toCborValue(self: pointer): pointer {.importc: "QCborArray_toCborValue".}
proc fcQCborArray_size(self: pointer): int64 {.importc: "QCborArray_size".}
proc fcQCborArray_isEmpty(self: pointer): bool {.importc: "QCborArray_isEmpty".}
proc fcQCborArray_clear(self: pointer): void {.importc: "QCborArray_clear".}
proc fcQCborArray_at(self: pointer, i: int64): pointer {.importc: "QCborArray_at".}
proc fcQCborArray_firstConst(self: pointer): pointer {.importc: "QCborArray_first_const".}
proc fcQCborArray_lastConst(self: pointer): pointer {.importc: "QCborArray_last_const".}
proc fcQCborArray_operatorSubscriptConstQsizetype(self: pointer, i: int64): pointer {.importc: "QCborArray_operatorSubscript_const_qsizetype".}
proc fcQCborArray_first(self: pointer): pointer {.importc: "QCborArray_first".}
proc fcQCborArray_last(self: pointer): pointer {.importc: "QCborArray_last".}
proc fcQCborArray_operatorSubscriptQsizetype(self: pointer, i: int64): pointer {.importc: "QCborArray_operatorSubscript_qsizetype".}
proc fcQCborArray_insertQsizetype_QCborValue(self: pointer, i: int64, value: pointer): void {.importc: "QCborArray_insert_qsizetype_QCborValue".}
proc fcQCborArray_prepend(self: pointer, value: pointer): void {.importc: "QCborArray_prepend".}
proc fcQCborArray_append(self: pointer, value: pointer): void {.importc: "QCborArray_append".}
proc fcQCborArray_extract_QCborArray_ConstIterator(self: pointer, it: pointer): pointer {.importc: "QCborArray_extract_QCborArray_ConstIterator".}
proc fcQCborArray_extract_QCborArray_Iterator(self: pointer, it: pointer): pointer {.importc: "QCborArray_extract_QCborArray_Iterator".}
proc fcQCborArray_removeAt(self: pointer, i: int64): void {.importc: "QCborArray_removeAt".}
proc fcQCborArray_takeAt(self: pointer, i: int64): pointer {.importc: "QCborArray_takeAt".}
proc fcQCborArray_removeFirst(self: pointer): void {.importc: "QCborArray_removeFirst".}
proc fcQCborArray_removeLast(self: pointer): void {.importc: "QCborArray_removeLast".}
proc fcQCborArray_takeFirst(self: pointer): pointer {.importc: "QCborArray_takeFirst".}
proc fcQCborArray_takeLast(self: pointer): pointer {.importc: "QCborArray_takeLast".}
proc fcQCborArray_contains(self: pointer, value: pointer): bool {.importc: "QCborArray_contains".}
proc fcQCborArray_compare(self: pointer, other: pointer): cint {.importc: "QCborArray_compare".}
proc fcQCborArray_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCborArray_operatorEqual".}
proc fcQCborArray_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCborArray_operatorNotEqual".}
proc fcQCborArray_operatorLesser(self: pointer, other: pointer): bool {.importc: "QCborArray_operatorLesser".}
proc fcQCborArray_begin(self: pointer): pointer {.importc: "QCborArray_begin".}
proc fcQCborArray_constBegin(self: pointer): pointer {.importc: "QCborArray_constBegin".}
proc fcQCborArray_beginConst(self: pointer): pointer {.importc: "QCborArray_begin_const".}
proc fcQCborArray_cbegin(self: pointer): pointer {.importc: "QCborArray_cbegin".}
proc fcQCborArray_endX(self: pointer): pointer {.importc: "QCborArray_end".}
proc fcQCborArray_constEnd(self: pointer): pointer {.importc: "QCborArray_constEnd".}
proc fcQCborArray_endConst(self: pointer): pointer {.importc: "QCborArray_end_const".}
proc fcQCborArray_cend(self: pointer): pointer {.importc: "QCborArray_cend".}
proc fcQCborArray_insert_QCborArrayIterator_QCborValue(self: pointer, before: pointer, value: pointer): pointer {.importc: "QCborArray_insert_QCborArray_iterator_QCborValue".}
proc fcQCborArray_insert_QCborArrayConstIterator_QCborValue(self: pointer, before: pointer, value: pointer): pointer {.importc: "QCborArray_insert_QCborArray_const_iterator_QCborValue".}
proc fcQCborArray_erase_QCborArrayIterator(self: pointer, it: pointer): pointer {.importc: "QCborArray_erase_QCborArray_iterator".}
proc fcQCborArray_erase_QCborArrayConstIterator(self: pointer, it: pointer): pointer {.importc: "QCborArray_erase_QCborArray_const_iterator".}
proc fcQCborArray_pushBack(self: pointer, t: pointer): void {.importc: "QCborArray_push_back".}
proc fcQCborArray_pushFront(self: pointer, t: pointer): void {.importc: "QCborArray_push_front".}
proc fcQCborArray_popFront(self: pointer): void {.importc: "QCborArray_pop_front".}
proc fcQCborArray_popBack(self: pointer): void {.importc: "QCborArray_pop_back".}
proc fcQCborArray_empty(self: pointer): bool {.importc: "QCborArray_empty".}
proc fcQCborArray_operatorPlus(self: pointer, v: pointer): pointer {.importc: "QCborArray_operatorPlus".}
proc fcQCborArray_operatorPlusAssign(self: pointer, v: pointer): pointer {.importc: "QCborArray_operatorPlusAssign".}
proc fcQCborArray_operatorShiftLeft(self: pointer, v: pointer): pointer {.importc: "QCborArray_operatorShiftLeft".}
proc fcQCborArray_fromStringList(list: struct_seaqt_array): pointer {.importc: "QCborArray_fromStringList".}
proc fcQCborArray_fromVariantList(list: struct_seaqt_array): pointer {.importc: "QCborArray_fromVariantList".}
proc fcQCborArray_fromJsonArray(array: pointer): pointer {.importc: "QCborArray_fromJsonArray".}
proc fcQCborArray_toVariantList(self: pointer): struct_seaqt_array {.importc: "QCborArray_toVariantList".}
proc fcQCborArray_toJsonArray(self: pointer): pointer {.importc: "QCborArray_toJsonArray".}
proc fcQCborArray_new(): ptr cQCborArray {.importc: "QCborArray_new".}
proc fcQCborArray_new2(fromVal: pointer): ptr cQCborArray {.importc: "QCborArray_new_from".}
proc fcQCborArrayIterator_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QCborArray__Iterator_operatorAssign".}
proc fcQCborArrayIterator_operatorMultiply(self: pointer): pointer {.importc: "QCborArray__Iterator_operatorMultiply".}
proc fcQCborArrayIterator_operatorMinusGreater(self: pointer): pointer {.importc: "QCborArray__Iterator_operatorMinusGreater".}
proc fcQCborArrayIterator_operatorMinusGreaterConst(self: pointer): pointer {.importc: "QCborArray__Iterator_operatorMinusGreater_const".}
proc fcQCborArrayIterator_operatorSubscript(self: pointer, j: int64): pointer {.importc: "QCborArray__Iterator_operatorSubscript".}
proc fcQCborArrayIterator_operatorEqual_QCborArray_Iterator(self: pointer, o: pointer): bool {.importc: "QCborArray__Iterator_operatorEqual_QCborArray_Iterator".}
proc fcQCborArrayIterator_operatorNotEqual_QCborArray_Iterator(self: pointer, o: pointer): bool {.importc: "QCborArray__Iterator_operatorNotEqual_QCborArray_Iterator".}
proc fcQCborArrayIterator_operatorLesser_QCborArray_Iterator(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorLesser_QCborArray_Iterator".}
proc fcQCborArrayIterator_operatorLesserOrEqual_QCborArray_Iterator(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorLesserOrEqual_QCborArray_Iterator".}
proc fcQCborArrayIterator_operatorGreater_QCborArray_Iterator(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorGreater_QCborArray_Iterator".}
proc fcQCborArrayIterator_operatorGreaterOrEqual_QCborArray_Iterator(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorGreaterOrEqual_QCborArray_Iterator".}
proc fcQCborArrayIterator_operatorEqual_QCborArray_ConstIterator(self: pointer, o: pointer): bool {.importc: "QCborArray__Iterator_operatorEqual_QCborArray_ConstIterator".}
proc fcQCborArrayIterator_operatorNotEqual_QCborArray_ConstIterator(self: pointer, o: pointer): bool {.importc: "QCborArray__Iterator_operatorNotEqual_QCborArray_ConstIterator".}
proc fcQCborArrayIterator_operatorLesser_QCborArray_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorLesser_QCborArray_ConstIterator".}
proc fcQCborArrayIterator_operatorLesserOrEqual_QCborArray_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorLesserOrEqual_QCborArray_ConstIterator".}
proc fcQCborArrayIterator_operatorGreater_QCborArray_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorGreater_QCborArray_ConstIterator".}
proc fcQCborArrayIterator_operatorGreaterOrEqual_QCborArray_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorGreaterOrEqual_QCborArray_ConstIterator".}
proc fcQCborArrayIterator_operatorPlusPlus(self: pointer): pointer {.importc: "QCborArray__Iterator_operatorPlusPlus".}
proc fcQCborArrayIterator_operatorPlusPlusInt(self: pointer, param1: cint): pointer {.importc: "QCborArray__Iterator_operatorPlusPlus_int".}
proc fcQCborArrayIterator_operatorMinusMinus(self: pointer): pointer {.importc: "QCborArray__Iterator_operatorMinusMinus".}
proc fcQCborArrayIterator_operatorMinusMinusInt(self: pointer, param1: cint): pointer {.importc: "QCborArray__Iterator_operatorMinusMinus_int".}
proc fcQCborArrayIterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QCborArray__Iterator_operatorPlusAssign".}
proc fcQCborArrayIterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QCborArray__Iterator_operatorMinusAssign".}
proc fcQCborArrayIterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QCborArray__Iterator_operatorPlus".}
proc fcQCborArrayIterator_operatorMinusQsizetype(self: pointer, j: int64): pointer {.importc: "QCborArray__Iterator_operatorMinus_qsizetype".}
proc fcQCborArrayIterator_operatorMinus_QCborArray_Iterator(self: pointer, j: pointer): int64 {.importc: "QCborArray__Iterator_operatorMinus_QCborArray_Iterator".}
proc fcQCborArrayIterator_new(): ptr cQCborArrayIterator {.importc: "QCborArray__Iterator_new".}
proc fcQCborArrayIterator_new2(fromVal: pointer): ptr cQCborArrayIterator {.importc: "QCborArray__Iterator_new_from".}
proc fcQCborArrayConstIterator_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QCborArray__ConstIterator_operatorAssign".}
proc fcQCborArrayConstIterator_operatorMultiply(self: pointer): pointer {.importc: "QCborArray__ConstIterator_operatorMultiply".}
proc fcQCborArrayConstIterator_operatorMinusGreater(self: pointer): pointer {.importc: "QCborArray__ConstIterator_operatorMinusGreater".}
proc fcQCborArrayConstIterator_operatorSubscript(self: pointer, j: int64): pointer {.importc: "QCborArray__ConstIterator_operatorSubscript".}
proc fcQCborArrayConstIterator_operatorEqual_QCborArray_Iterator(self: pointer, o: pointer): bool {.importc: "QCborArray__ConstIterator_operatorEqual_QCborArray_Iterator".}
proc fcQCborArrayConstIterator_operatorNotEqual_QCborArray_Iterator(self: pointer, o: pointer): bool {.importc: "QCborArray__ConstIterator_operatorNotEqual_QCborArray_Iterator".}
proc fcQCborArrayConstIterator_operatorLesser_QCborArray_Iterator(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorLesser_QCborArray_Iterator".}
proc fcQCborArrayConstIterator_operatorLesserOrEqual_QCborArray_Iterator(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorLesserOrEqual_QCborArray_Iterator".}
proc fcQCborArrayConstIterator_operatorGreater_QCborArray_Iterator(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorGreater_QCborArray_Iterator".}
proc fcQCborArrayConstIterator_operatorGreaterOrEqual_QCborArray_Iterator(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorGreaterOrEqual_QCborArray_Iterator".}
proc fcQCborArrayConstIterator_operatorEqual_QCborArray_ConstIterator(self: pointer, o: pointer): bool {.importc: "QCborArray__ConstIterator_operatorEqual_QCborArray_ConstIterator".}
proc fcQCborArrayConstIterator_operatorNotEqual_QCborArray_ConstIterator(self: pointer, o: pointer): bool {.importc: "QCborArray__ConstIterator_operatorNotEqual_QCborArray_ConstIterator".}
proc fcQCborArrayConstIterator_operatorLesser_QCborArray_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorLesser_QCborArray_ConstIterator".}
proc fcQCborArrayConstIterator_operatorLesserOrEqual_QCborArray_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorLesserOrEqual_QCborArray_ConstIterator".}
proc fcQCborArrayConstIterator_operatorGreater_QCborArray_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorGreater_QCborArray_ConstIterator".}
proc fcQCborArrayConstIterator_operatorGreaterOrEqual_QCborArray_ConstIterator(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorGreaterOrEqual_QCborArray_ConstIterator".}
proc fcQCborArrayConstIterator_operatorPlusPlus(self: pointer): pointer {.importc: "QCborArray__ConstIterator_operatorPlusPlus".}
proc fcQCborArrayConstIterator_operatorPlusPlusInt(self: pointer, param1: cint): pointer {.importc: "QCborArray__ConstIterator_operatorPlusPlus_int".}
proc fcQCborArrayConstIterator_operatorMinusMinus(self: pointer): pointer {.importc: "QCborArray__ConstIterator_operatorMinusMinus".}
proc fcQCborArrayConstIterator_operatorMinusMinusInt(self: pointer, param1: cint): pointer {.importc: "QCborArray__ConstIterator_operatorMinusMinus_int".}
proc fcQCborArrayConstIterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QCborArray__ConstIterator_operatorPlusAssign".}
proc fcQCborArrayConstIterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QCborArray__ConstIterator_operatorMinusAssign".}
proc fcQCborArrayConstIterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QCborArray__ConstIterator_operatorPlus".}
proc fcQCborArrayConstIterator_operatorMinusQsizetype(self: pointer, j: int64): pointer {.importc: "QCborArray__ConstIterator_operatorMinus_qsizetype".}
proc fcQCborArrayConstIterator_operatorMinus_QCborArray_ConstIterator(self: pointer, j: pointer): int64 {.importc: "QCborArray__ConstIterator_operatorMinus_QCborArray_ConstIterator".}
proc fcQCborArrayConstIterator_new(): ptr cQCborArrayConstIterator {.importc: "QCborArray__ConstIterator_new".}
proc fcQCborArrayConstIterator_new2(fromVal: pointer): ptr cQCborArrayConstIterator {.importc: "QCborArray__ConstIterator_new_from".}

proc operatorAssign*(self: gen_qcborarray_types.QCborArray, fromVal: gen_qcborarray_types.QCborArray): void =
  fcQCborArray_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qcborarray_types.QCborArray, other: gen_qcborarray_types.QCborArray): void =
  fcQCborArray_swap(self.h, other.h)

proc toCborValue*(self: gen_qcborarray_types.QCborArray): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_toCborValue(self.h), owned: true)

proc size*(self: gen_qcborarray_types.QCborArray): int64 =
  fcQCborArray_size(self.h)

proc isEmpty*(self: gen_qcborarray_types.QCborArray): bool =
  fcQCborArray_isEmpty(self.h)

proc clear*(self: gen_qcborarray_types.QCborArray): void =
  fcQCborArray_clear(self.h)

proc at*(self: gen_qcborarray_types.QCborArray, i: int64): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_at(self.h, i), owned: true)

proc first*(self: gen_qcborarray_types.QCborArray): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_firstConst(self.h), owned: true)

proc last*(self: gen_qcborarray_types.QCborArray): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_lastConst(self.h), owned: true)

proc operatorSubscript*(self: gen_qcborarray_types.QCborArray, i: int64): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_operatorSubscriptConstQsizetype(self.h, i), owned: true)

proc first2*(self: gen_qcborarray_types.QCborArray): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArray_first(self.h), owned: true)

proc last2*(self: gen_qcborarray_types.QCborArray): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArray_last(self.h), owned: true)

proc operatorSubscript2*(self: gen_qcborarray_types.QCborArray, i: int64): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArray_operatorSubscriptQsizetype(self.h, i), owned: true)

proc insert*(self: gen_qcborarray_types.QCborArray, i: int64, value: gen_qcborvalue_types.QCborValue): void =
  fcQCborArray_insertQsizetype_QCborValue(self.h, i, value.h)

proc prepend*(self: gen_qcborarray_types.QCborArray, value: gen_qcborvalue_types.QCborValue): void =
  fcQCborArray_prepend(self.h, value.h)

proc append*(self: gen_qcborarray_types.QCborArray, value: gen_qcborvalue_types.QCborValue): void =
  fcQCborArray_append(self.h, value.h)

proc extract*(self: gen_qcborarray_types.QCborArray, it: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_extract_QCborArray_ConstIterator(self.h, it.h), owned: true)

proc extract*(self: gen_qcborarray_types.QCborArray, it: gen_qcborarray_types.QCborArrayIterator): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_extract_QCborArray_Iterator(self.h, it.h), owned: true)

proc removeAt*(self: gen_qcborarray_types.QCborArray, i: int64): void =
  fcQCborArray_removeAt(self.h, i)

proc takeAt*(self: gen_qcborarray_types.QCborArray, i: int64): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_takeAt(self.h, i), owned: true)

proc removeFirst*(self: gen_qcborarray_types.QCborArray): void =
  fcQCborArray_removeFirst(self.h)

proc removeLast*(self: gen_qcborarray_types.QCborArray): void =
  fcQCborArray_removeLast(self.h)

proc takeFirst*(self: gen_qcborarray_types.QCborArray): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_takeFirst(self.h), owned: true)

proc takeLast*(self: gen_qcborarray_types.QCborArray): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_takeLast(self.h), owned: true)

proc contains*(self: gen_qcborarray_types.QCborArray, value: gen_qcborvalue_types.QCborValue): bool =
  fcQCborArray_contains(self.h, value.h)

proc compare*(self: gen_qcborarray_types.QCborArray, other: gen_qcborarray_types.QCborArray): cint =
  fcQCborArray_compare(self.h, other.h)

proc operatorEqual*(self: gen_qcborarray_types.QCborArray, other: gen_qcborarray_types.QCborArray): bool =
  fcQCborArray_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qcborarray_types.QCborArray, other: gen_qcborarray_types.QCborArray): bool =
  fcQCborArray_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: gen_qcborarray_types.QCborArray, other: gen_qcborarray_types.QCborArray): bool =
  fcQCborArray_operatorLesser(self.h, other.h)

proc begin*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArray_begin(self.h), owned: true)

proc constBegin*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArray_constBegin(self.h), owned: true)

proc begin2*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArray_beginConst(self.h), owned: true)

proc cbegin*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArray_cbegin(self.h), owned: true)

proc endX*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArray_endX(self.h), owned: true)

proc constEnd*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArray_constEnd(self.h), owned: true)

proc endX2*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArray_endConst(self.h), owned: true)

proc cend*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArray_cend(self.h), owned: true)

proc insert*(self: gen_qcborarray_types.QCborArray, before: gen_qcborarray_types.QCborArrayIterator, value: gen_qcborvalue_types.QCborValue): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArray_insert_QCborArrayIterator_QCborValue(self.h, before.h, value.h), owned: true)

proc insert*(self: gen_qcborarray_types.QCborArray, before: gen_qcborarray_types.QCborArrayConstIterator, value: gen_qcborvalue_types.QCborValue): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArray_insert_QCborArrayConstIterator_QCborValue(self.h, before.h, value.h), owned: true)

proc erase*(self: gen_qcborarray_types.QCborArray, it: gen_qcborarray_types.QCborArrayIterator): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArray_erase_QCborArrayIterator(self.h, it.h), owned: true)

proc erase*(self: gen_qcborarray_types.QCborArray, it: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArray_erase_QCborArrayConstIterator(self.h, it.h), owned: true)

proc pushBack*(self: gen_qcborarray_types.QCborArray, t: gen_qcborvalue_types.QCborValue): void =
  fcQCborArray_pushBack(self.h, t.h)

proc pushFront*(self: gen_qcborarray_types.QCborArray, t: gen_qcborvalue_types.QCborValue): void =
  fcQCborArray_pushFront(self.h, t.h)

proc popFront*(self: gen_qcborarray_types.QCborArray): void =
  fcQCborArray_popFront(self.h)

proc popBack*(self: gen_qcborarray_types.QCborArray): void =
  fcQCborArray_popBack(self.h)

proc empty*(self: gen_qcborarray_types.QCborArray): bool =
  fcQCborArray_empty(self.h)

proc operatorPlus*(self: gen_qcborarray_types.QCborArray, v: gen_qcborvalue_types.QCborValue): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborArray_operatorPlus(self.h, v.h), owned: true)

proc operatorPlusAssign*(self: gen_qcborarray_types.QCborArray, v: gen_qcborvalue_types.QCborValue): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborArray_operatorPlusAssign(self.h, v.h), owned: false)

proc operatorShiftLeft*(self: gen_qcborarray_types.QCborArray, v: gen_qcborvalue_types.QCborValue): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborArray_operatorShiftLeft(self.h, v.h), owned: false)

proc fromStringList*(_: type gen_qcborarray_types.QCborArray, list: openArray[string]): gen_qcborarray_types.QCborArray =
  var list_CArray = newSeq[struct_seaqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_seaqt_string(data: if len(list[i]) > 0: addr list[i][0] else: nil, len: csize_t(len(list[i])))

  gen_qcborarray_types.QCborArray(h: fcQCborArray_fromStringList(struct_seaqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0]))), owned: true)

proc fromVariantList*(_: type gen_qcborarray_types.QCborArray, list: openArray[gen_qvariant_types.QVariant]): gen_qcborarray_types.QCborArray =
  var list_CArray = newSeq[pointer](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i].h

  gen_qcborarray_types.QCborArray(h: fcQCborArray_fromVariantList(struct_seaqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0]))), owned: true)

proc fromJsonArray*(_: type gen_qcborarray_types.QCborArray, array: gen_qjsonarray_types.QJsonArray): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborArray_fromJsonArray(array.h), owned: true)

proc toVariantList*(self: gen_qcborarray_types.QCborArray): seq[gen_qvariant_types.QVariant] =
  var v_ma = fcQCborArray_toVariantList(self.h)
  var vx_ret = newSeq[gen_qvariant_types.QVariant](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qvariant_types.QVariant(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc toJsonArray*(self: gen_qcborarray_types.QCborArray): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQCborArray_toJsonArray(self.h), owned: true)

proc create*(T: type gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArray =
  let tmp = gen_qcborarray_types.QCborArray(h: fcQCborArray_new(), owned: true)
  tmp
proc create*(T: type gen_qcborarray_types.QCborArray,
    fromVal: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArray =
  let tmp = gen_qcborarray_types.QCborArray(h: fcQCborArray_new2(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qcborarray_types.QCborArrayIterator, fromVal: gen_qcborarray_types.QCborArrayIterator): void =
  fcQCborArrayIterator_operatorAssign(self.h, fromVal.h)

proc operatorMultiply*(self: gen_qcborarray_types.QCborArrayIterator): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArrayIterator_operatorMultiply(self.h), owned: true)

proc operatorMinusGreater*(self: gen_qcborarray_types.QCborArrayIterator): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArrayIterator_operatorMinusGreater(self.h), owned: false)

proc operatorMinusGreater2*(self: gen_qcborarray_types.QCborArrayIterator): gen_qcborvalue_types.QCborValueConstRef =
  gen_qcborvalue_types.QCborValueConstRef(h: fcQCborArrayIterator_operatorMinusGreaterConst(self.h), owned: false)

proc operatorSubscript*(self: gen_qcborarray_types.QCborArrayIterator, j: int64): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArrayIterator_operatorSubscript(self.h, j), owned: true)

proc operatorEqual*(self: gen_qcborarray_types.QCborArrayIterator, o: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayIterator_operatorEqual_QCborArray_Iterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qcborarray_types.QCborArrayIterator, o: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayIterator_operatorNotEqual_QCborArray_Iterator(self.h, o.h)

proc operatorLesser*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayIterator_operatorLesser_QCborArray_Iterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayIterator_operatorLesserOrEqual_QCborArray_Iterator(self.h, other.h)

proc operatorGreater*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayIterator_operatorGreater_QCborArray_Iterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayIterator_operatorGreaterOrEqual_QCborArray_Iterator(self.h, other.h)

proc operatorEqual*(self: gen_qcborarray_types.QCborArrayIterator, o: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayIterator_operatorEqual_QCborArray_ConstIterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qcborarray_types.QCborArrayIterator, o: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayIterator_operatorNotEqual_QCborArray_ConstIterator(self.h, o.h)

proc operatorLesser*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayIterator_operatorLesser_QCborArray_ConstIterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayIterator_operatorLesserOrEqual_QCborArray_ConstIterator(self.h, other.h)

proc operatorGreater*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayIterator_operatorGreater_QCborArray_ConstIterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayIterator_operatorGreaterOrEqual_QCborArray_ConstIterator(self.h, other.h)

proc operatorPlusPlus*(self: gen_qcborarray_types.QCborArrayIterator): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qcborarray_types.QCborArrayIterator, param1: cint): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorPlusPlusInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qcborarray_types.QCborArrayIterator): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qcborarray_types.QCborArrayIterator, param1: cint): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorMinusMinusInt(self.h, param1), owned: true)

proc operatorPlusAssign*(self: gen_qcborarray_types.QCborArrayIterator, j: int64): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qcborarray_types.QCborArrayIterator, j: int64): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorPlus*(self: gen_qcborarray_types.QCborArrayIterator, j: int64): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcborarray_types.QCborArrayIterator, j: int64): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorMinusQsizetype(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcborarray_types.QCborArrayIterator, j: gen_qcborarray_types.QCborArrayIterator): int64 =
  fcQCborArrayIterator_operatorMinus_QCborArray_Iterator(self.h, j.h)

proc create*(T: type gen_qcborarray_types.QCborArrayIterator): gen_qcborarray_types.QCborArrayIterator =
  let tmp = gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_new(), owned: true)
  tmp
proc create*(T: type gen_qcborarray_types.QCborArrayIterator,
    fromVal: gen_qcborarray_types.QCborArrayIterator): gen_qcborarray_types.QCborArrayIterator =
  let tmp = gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_new2(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qcborarray_types.QCborArrayConstIterator, fromVal: gen_qcborarray_types.QCborArrayConstIterator): void =
  fcQCborArrayConstIterator_operatorAssign(self.h, fromVal.h)

proc operatorMultiply*(self: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborvalue_types.QCborValueConstRef =
  gen_qcborvalue_types.QCborValueConstRef(h: fcQCborArrayConstIterator_operatorMultiply(self.h), owned: true)

proc operatorMinusGreater*(self: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborvalue_types.QCborValueConstRef =
  gen_qcborvalue_types.QCborValueConstRef(h: fcQCborArrayConstIterator_operatorMinusGreater(self.h), owned: false)

proc operatorSubscript*(self: gen_qcborarray_types.QCborArrayConstIterator, j: int64): gen_qcborvalue_types.QCborValueConstRef =
  gen_qcborvalue_types.QCborValueConstRef(h: fcQCborArrayConstIterator_operatorSubscript(self.h, j), owned: true)

proc operatorEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, o: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayConstIterator_operatorEqual_QCborArray_Iterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, o: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayConstIterator_operatorNotEqual_QCborArray_Iterator(self.h, o.h)

proc operatorLesser*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayConstIterator_operatorLesser_QCborArray_Iterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayConstIterator_operatorLesserOrEqual_QCborArray_Iterator(self.h, other.h)

proc operatorGreater*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayConstIterator_operatorGreater_QCborArray_Iterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayConstIterator_operatorGreaterOrEqual_QCborArray_Iterator(self.h, other.h)

proc operatorEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, o: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayConstIterator_operatorEqual_QCborArray_ConstIterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, o: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayConstIterator_operatorNotEqual_QCborArray_ConstIterator(self.h, o.h)

proc operatorLesser*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayConstIterator_operatorLesser_QCborArray_ConstIterator(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayConstIterator_operatorLesserOrEqual_QCborArray_ConstIterator(self.h, other.h)

proc operatorGreater*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayConstIterator_operatorGreater_QCborArray_ConstIterator(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayConstIterator_operatorGreaterOrEqual_QCborArray_ConstIterator(self.h, other.h)

proc operatorPlusPlus*(self: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qcborarray_types.QCborArrayConstIterator, param1: cint): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorPlusPlusInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qcborarray_types.QCborArrayConstIterator, param1: cint): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorMinusMinusInt(self.h, param1), owned: true)

proc operatorPlusAssign*(self: gen_qcborarray_types.QCborArrayConstIterator, j: int64): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qcborarray_types.QCborArrayConstIterator, j: int64): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorPlus*(self: gen_qcborarray_types.QCborArrayConstIterator, j: int64): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcborarray_types.QCborArrayConstIterator, j: int64): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorMinusQsizetype(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcborarray_types.QCborArrayConstIterator, j: gen_qcborarray_types.QCborArrayConstIterator): int64 =
  fcQCborArrayConstIterator_operatorMinus_QCborArray_ConstIterator(self.h, j.h)

proc create*(T: type gen_qcborarray_types.QCborArrayConstIterator): gen_qcborarray_types.QCborArrayConstIterator =
  let tmp = gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_new(), owned: true)
  tmp
proc create*(T: type gen_qcborarray_types.QCborArrayConstIterator,
    fromVal: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborarray_types.QCborArrayConstIterator =
  let tmp = gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_new2(fromVal.h), owned: true)
  tmp
