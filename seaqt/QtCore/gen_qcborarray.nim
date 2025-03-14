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


import ./gen_qcborarray_types
export gen_qcborarray_types

import
  ./gen_qcborvalue_types,
  ./gen_qjsonarray_types
export
  gen_qcborvalue_types,
  gen_qjsonarray_types

type cQCborArray*{.exportc: "QCborArray", incompleteStruct.} = object
type cQCborArrayIterator*{.exportc: "QCborArray__Iterator", incompleteStruct.} = object
type cQCborArrayConstIterator*{.exportc: "QCborArray__ConstIterator", incompleteStruct.} = object

proc fcQCborArray_operatorAssign(self: pointer, other: pointer): void {.importc: "QCborArray_operatorAssign".}
proc fcQCborArray_swap(self: pointer, other: pointer): void {.importc: "QCborArray_swap".}
proc fcQCborArray_toCborValue(self: pointer): pointer {.importc: "QCborArray_toCborValue".}
proc fcQCborArray_size(self: pointer): int64 {.importc: "QCborArray_size".}
proc fcQCborArray_isEmpty(self: pointer): bool {.importc: "QCborArray_isEmpty".}
proc fcQCborArray_clear(self: pointer): void {.importc: "QCborArray_clear".}
proc fcQCborArray_at(self: pointer, i: int64): pointer {.importc: "QCborArray_at".}
proc fcQCborArray_first(self: pointer): pointer {.importc: "QCborArray_first".}
proc fcQCborArray_last(self: pointer): pointer {.importc: "QCborArray_last".}
proc fcQCborArray_operatorSubscript(self: pointer, i: int64): pointer {.importc: "QCborArray_operatorSubscript".}
proc fcQCborArray_first2(self: pointer): pointer {.importc: "QCborArray_first2".}
proc fcQCborArray_last2(self: pointer): pointer {.importc: "QCborArray_last2".}
proc fcQCborArray_operatorSubscriptWithQsizetype(self: pointer, i: int64): pointer {.importc: "QCborArray_operatorSubscriptWithQsizetype".}
proc fcQCborArray_insert(self: pointer, i: int64, value: pointer): void {.importc: "QCborArray_insert".}
proc fcQCborArray_prepend(self: pointer, value: pointer): void {.importc: "QCborArray_prepend".}
proc fcQCborArray_append(self: pointer, value: pointer): void {.importc: "QCborArray_append".}
proc fcQCborArray_extract(self: pointer, it: pointer): pointer {.importc: "QCborArray_extract".}
proc fcQCborArray_extractWithIt(self: pointer, it: pointer): pointer {.importc: "QCborArray_extractWithIt".}
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
proc fcQCborArray_begin2(self: pointer): pointer {.importc: "QCborArray_begin2".}
proc fcQCborArray_cbegin(self: pointer): pointer {.importc: "QCborArray_cbegin".}
proc fcQCborArray_endX(self: pointer): pointer {.importc: "QCborArray_end".}
proc fcQCborArray_constEnd(self: pointer): pointer {.importc: "QCborArray_constEnd".}
proc fcQCborArray_end2(self: pointer): pointer {.importc: "QCborArray_end2".}
proc fcQCborArray_cend(self: pointer): pointer {.importc: "QCborArray_cend".}
proc fcQCborArray_insert2(self: pointer, before: pointer, value: pointer): pointer {.importc: "QCborArray_insert2".}
proc fcQCborArray_insert3(self: pointer, before: pointer, value: pointer): pointer {.importc: "QCborArray_insert3".}
proc fcQCborArray_erase(self: pointer, it: pointer): pointer {.importc: "QCborArray_erase".}
proc fcQCborArray_eraseWithIt(self: pointer, it: pointer): pointer {.importc: "QCborArray_eraseWithIt".}
proc fcQCborArray_pushBack(self: pointer, t: pointer): void {.importc: "QCborArray_pushBack".}
proc fcQCborArray_pushFront(self: pointer, t: pointer): void {.importc: "QCborArray_pushFront".}
proc fcQCborArray_popFront(self: pointer): void {.importc: "QCborArray_popFront".}
proc fcQCborArray_popBack(self: pointer): void {.importc: "QCborArray_popBack".}
proc fcQCborArray_empty(self: pointer): bool {.importc: "QCborArray_empty".}
proc fcQCborArray_operatorPlus(self: pointer, v: pointer): pointer {.importc: "QCborArray_operatorPlus".}
proc fcQCborArray_operatorPlusAssign(self: pointer, v: pointer): pointer {.importc: "QCborArray_operatorPlusAssign".}
proc fcQCborArray_operatorShiftLeft(self: pointer, v: pointer): pointer {.importc: "QCborArray_operatorShiftLeft".}
proc fcQCborArray_fromStringList(list: struct_miqt_array): pointer {.importc: "QCborArray_fromStringList".}
proc fcQCborArray_fromJsonArray(array: pointer): pointer {.importc: "QCborArray_fromJsonArray".}
proc fcQCborArray_toJsonArray(self: pointer): pointer {.importc: "QCborArray_toJsonArray".}
proc fcQCborArray_new(): ptr cQCborArray {.importc: "QCborArray_new".}
proc fcQCborArray_new2(other: pointer): ptr cQCborArray {.importc: "QCborArray_new2".}
proc fcQCborArrayIterator_operatorAssign(self: pointer, other: pointer): void {.importc: "QCborArray__Iterator_operatorAssign".}
proc fcQCborArrayIterator_operatorMultiply(self: pointer): pointer {.importc: "QCborArray__Iterator_operatorMultiply".}
proc fcQCborArrayIterator_operatorMinusGreater(self: pointer): pointer {.importc: "QCborArray__Iterator_operatorMinusGreater".}
proc fcQCborArrayIterator_operatorSubscript(self: pointer, j: int64): pointer {.importc: "QCborArray__Iterator_operatorSubscript".}
proc fcQCborArrayIterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QCborArray__Iterator_operatorEqual".}
proc fcQCborArrayIterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QCborArray__Iterator_operatorNotEqual".}
proc fcQCborArrayIterator_operatorLesser(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorLesser".}
proc fcQCborArrayIterator_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorLesserOrEqual".}
proc fcQCborArrayIterator_operatorGreater(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorGreater".}
proc fcQCborArrayIterator_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorGreaterOrEqual".}
proc fcQCborArrayIterator_operatorEqualWithQCborArrayConstIterator(self: pointer, o: pointer): bool {.importc: "QCborArray__Iterator_operatorEqualWithQCborArrayConstIterator".}
proc fcQCborArrayIterator_operatorNotEqualWithQCborArrayConstIterator(self: pointer, o: pointer): bool {.importc: "QCborArray__Iterator_operatorNotEqualWithQCborArrayConstIterator".}
proc fcQCborArrayIterator_operatorLesserWithOther(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorLesserWithOther".}
proc fcQCborArrayIterator_operatorLesserOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorLesserOrEqualWithOther".}
proc fcQCborArrayIterator_operatorGreaterWithOther(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorGreaterWithOther".}
proc fcQCborArrayIterator_operatorGreaterOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QCborArray__Iterator_operatorGreaterOrEqualWithOther".}
proc fcQCborArrayIterator_operatorPlusPlus(self: pointer): pointer {.importc: "QCborArray__Iterator_operatorPlusPlus".}
proc fcQCborArrayIterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QCborArray__Iterator_operatorPlusPlusWithInt".}
proc fcQCborArrayIterator_operatorMinusMinus(self: pointer): pointer {.importc: "QCborArray__Iterator_operatorMinusMinus".}
proc fcQCborArrayIterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QCborArray__Iterator_operatorMinusMinusWithInt".}
proc fcQCborArrayIterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QCborArray__Iterator_operatorPlusAssign".}
proc fcQCborArrayIterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QCborArray__Iterator_operatorMinusAssign".}
proc fcQCborArrayIterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QCborArray__Iterator_operatorPlus".}
proc fcQCborArrayIterator_operatorMinus(self: pointer, j: int64): pointer {.importc: "QCborArray__Iterator_operatorMinus".}
proc fcQCborArrayIterator_operatorMinusWithQCborArrayIterator(self: pointer, j: pointer): int64 {.importc: "QCborArray__Iterator_operatorMinusWithQCborArrayIterator".}
proc fcQCborArrayIterator_new(): ptr cQCborArrayIterator {.importc: "QCborArray__Iterator_new".}
proc fcQCborArrayIterator_new2(param1: pointer): ptr cQCborArrayIterator {.importc: "QCborArray__Iterator_new2".}
proc fcQCborArrayConstIterator_operatorAssign(self: pointer, other: pointer): void {.importc: "QCborArray__ConstIterator_operatorAssign".}
proc fcQCborArrayConstIterator_operatorMultiply(self: pointer): pointer {.importc: "QCborArray__ConstIterator_operatorMultiply".}
proc fcQCborArrayConstIterator_operatorMinusGreater(self: pointer): pointer {.importc: "QCborArray__ConstIterator_operatorMinusGreater".}
proc fcQCborArrayConstIterator_operatorSubscript(self: pointer, j: int64): pointer {.importc: "QCborArray__ConstIterator_operatorSubscript".}
proc fcQCborArrayConstIterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QCborArray__ConstIterator_operatorEqual".}
proc fcQCborArrayConstIterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QCborArray__ConstIterator_operatorNotEqual".}
proc fcQCborArrayConstIterator_operatorLesser(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorLesser".}
proc fcQCborArrayConstIterator_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorLesserOrEqual".}
proc fcQCborArrayConstIterator_operatorGreater(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorGreater".}
proc fcQCborArrayConstIterator_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorGreaterOrEqual".}
proc fcQCborArrayConstIterator_operatorEqualWithQCborArrayConstIterator(self: pointer, o: pointer): bool {.importc: "QCborArray__ConstIterator_operatorEqualWithQCborArrayConstIterator".}
proc fcQCborArrayConstIterator_operatorNotEqualWithQCborArrayConstIterator(self: pointer, o: pointer): bool {.importc: "QCborArray__ConstIterator_operatorNotEqualWithQCborArrayConstIterator".}
proc fcQCborArrayConstIterator_operatorLesserWithOther(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorLesserWithOther".}
proc fcQCborArrayConstIterator_operatorLesserOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorLesserOrEqualWithOther".}
proc fcQCborArrayConstIterator_operatorGreaterWithOther(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorGreaterWithOther".}
proc fcQCborArrayConstIterator_operatorGreaterOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QCborArray__ConstIterator_operatorGreaterOrEqualWithOther".}
proc fcQCborArrayConstIterator_operatorPlusPlus(self: pointer): pointer {.importc: "QCborArray__ConstIterator_operatorPlusPlus".}
proc fcQCborArrayConstIterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QCborArray__ConstIterator_operatorPlusPlusWithInt".}
proc fcQCborArrayConstIterator_operatorMinusMinus(self: pointer): pointer {.importc: "QCborArray__ConstIterator_operatorMinusMinus".}
proc fcQCborArrayConstIterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QCborArray__ConstIterator_operatorMinusMinusWithInt".}
proc fcQCborArrayConstIterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QCborArray__ConstIterator_operatorPlusAssign".}
proc fcQCborArrayConstIterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QCborArray__ConstIterator_operatorMinusAssign".}
proc fcQCborArrayConstIterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QCborArray__ConstIterator_operatorPlus".}
proc fcQCborArrayConstIterator_operatorMinus(self: pointer, j: int64): pointer {.importc: "QCborArray__ConstIterator_operatorMinus".}
proc fcQCborArrayConstIterator_operatorMinusWithQCborArrayConstIterator(self: pointer, j: pointer): int64 {.importc: "QCborArray__ConstIterator_operatorMinusWithQCborArrayConstIterator".}
proc fcQCborArrayConstIterator_new(): ptr cQCborArrayConstIterator {.importc: "QCborArray__ConstIterator_new".}
proc fcQCborArrayConstIterator_new2(param1: pointer): ptr cQCborArrayConstIterator {.importc: "QCborArray__ConstIterator_new2".}

proc operatorAssign*(self: gen_qcborarray_types.QCborArray, other: gen_qcborarray_types.QCborArray): void =
  fcQCborArray_operatorAssign(self.h, other.h)

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
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_first(self.h), owned: true)

proc last*(self: gen_qcborarray_types.QCborArray): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_last(self.h), owned: true)

proc operatorSubscript*(self: gen_qcborarray_types.QCborArray, i: int64): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_operatorSubscript(self.h, i), owned: true)

proc first2*(self: gen_qcborarray_types.QCborArray): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArray_first2(self.h), owned: true)

proc last2*(self: gen_qcborarray_types.QCborArray): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArray_last2(self.h), owned: true)

proc operatorSubscript2*(self: gen_qcborarray_types.QCborArray, i: int64): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArray_operatorSubscriptWithQsizetype(self.h, i), owned: true)

proc insert*(self: gen_qcborarray_types.QCborArray, i: int64, value: gen_qcborvalue_types.QCborValue): void =
  fcQCborArray_insert(self.h, i, value.h)

proc prepend*(self: gen_qcborarray_types.QCborArray, value: gen_qcborvalue_types.QCborValue): void =
  fcQCborArray_prepend(self.h, value.h)

proc append*(self: gen_qcborarray_types.QCborArray, value: gen_qcborvalue_types.QCborValue): void =
  fcQCborArray_append(self.h, value.h)

proc extract*(self: gen_qcborarray_types.QCborArray, it: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_extract(self.h, it.h), owned: true)

proc extract*(self: gen_qcborarray_types.QCborArray, it: gen_qcborarray_types.QCborArrayIterator): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborArray_extractWithIt(self.h, it.h), owned: true)

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
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArray_begin2(self.h), owned: true)

proc cbegin*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArray_cbegin(self.h), owned: true)

proc endX*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArray_endX(self.h), owned: true)

proc constEnd*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArray_constEnd(self.h), owned: true)

proc endX2*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArray_end2(self.h), owned: true)

proc cend*(self: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArray_cend(self.h), owned: true)

proc insert*(self: gen_qcborarray_types.QCborArray, before: gen_qcborarray_types.QCborArrayIterator, value: gen_qcborvalue_types.QCborValue): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArray_insert2(self.h, before.h, value.h), owned: true)

proc insert*(self: gen_qcborarray_types.QCborArray, before: gen_qcborarray_types.QCborArrayConstIterator, value: gen_qcborvalue_types.QCborValue): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArray_insert3(self.h, before.h, value.h), owned: true)

proc erase*(self: gen_qcborarray_types.QCborArray, it: gen_qcborarray_types.QCborArrayIterator): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArray_erase(self.h, it.h), owned: true)

proc erase*(self: gen_qcborarray_types.QCborArray, it: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArray_eraseWithIt(self.h, it.h), owned: true)

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
  var list_CArray = newSeq[struct_miqt_string](len(list))
  for i in 0..<len(list):
    list_CArray[i] = struct_miqt_string(data: if len(list[i]) > 0: addr list[i][0] else: nil, len: csize_t(len(list[i])))

  gen_qcborarray_types.QCborArray(h: fcQCborArray_fromStringList(struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0]))), owned: true)

proc fromJsonArray*(_: type gen_qcborarray_types.QCborArray, array: gen_qjsonarray_types.QJsonArray): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborArray_fromJsonArray(array.h), owned: true)

proc toJsonArray*(self: gen_qcborarray_types.QCborArray): gen_qjsonarray_types.QJsonArray =
  gen_qjsonarray_types.QJsonArray(h: fcQCborArray_toJsonArray(self.h), owned: true)

proc create*(T: type gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborArray_new(), owned: true)

proc create*(T: type gen_qcborarray_types.QCborArray,
    other: gen_qcborarray_types.QCborArray): gen_qcborarray_types.QCborArray =
  gen_qcborarray_types.QCborArray(h: fcQCborArray_new2(other.h), owned: true)

proc operatorAssign*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayIterator): void =
  fcQCborArrayIterator_operatorAssign(self.h, other.h)

proc operatorMultiply*(self: gen_qcborarray_types.QCborArrayIterator): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArrayIterator_operatorMultiply(self.h), owned: true)

proc operatorMinusGreater*(self: gen_qcborarray_types.QCborArrayIterator): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArrayIterator_operatorMinusGreater(self.h), owned: false)

proc operatorSubscript*(self: gen_qcborarray_types.QCborArrayIterator, j: int64): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArrayIterator_operatorSubscript(self.h, j), owned: true)

proc operatorEqual*(self: gen_qcborarray_types.QCborArrayIterator, o: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayIterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: gen_qcborarray_types.QCborArrayIterator, o: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayIterator_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayIterator_operatorLesser(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayIterator_operatorLesserOrEqual(self.h, other.h)

proc operatorGreater*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayIterator_operatorGreater(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayIterator_operatorGreaterOrEqual(self.h, other.h)

proc operatorEqual*(self: gen_qcborarray_types.QCborArrayIterator, o: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayIterator_operatorEqualWithQCborArrayConstIterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qcborarray_types.QCborArrayIterator, o: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayIterator_operatorNotEqualWithQCborArrayConstIterator(self.h, o.h)

proc operatorLesser*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayIterator_operatorLesserWithOther(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayIterator_operatorLesserOrEqualWithOther(self.h, other.h)

proc operatorGreater*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayIterator_operatorGreaterWithOther(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcborarray_types.QCborArrayIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayIterator_operatorGreaterOrEqualWithOther(self.h, other.h)

proc operatorPlusPlus*(self: gen_qcborarray_types.QCborArrayIterator): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qcborarray_types.QCborArrayIterator, param1: cint): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorPlusPlusWithInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qcborarray_types.QCborArrayIterator): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qcborarray_types.QCborArrayIterator, param1: cint): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorMinusMinusWithInt(self.h, param1), owned: true)

proc operatorPlusAssign*(self: gen_qcborarray_types.QCborArrayIterator, j: int64): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qcborarray_types.QCborArrayIterator, j: int64): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorPlus*(self: gen_qcborarray_types.QCborArrayIterator, j: int64): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcborarray_types.QCborArrayIterator, j: int64): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_operatorMinus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcborarray_types.QCborArrayIterator, j: gen_qcborarray_types.QCborArrayIterator): int64 =
  fcQCborArrayIterator_operatorMinusWithQCborArrayIterator(self.h, j.h)

proc create*(T: type gen_qcborarray_types.QCborArrayIterator): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_new(), owned: true)

proc create*(T: type gen_qcborarray_types.QCborArrayIterator,
    param1: gen_qcborarray_types.QCborArrayIterator): gen_qcborarray_types.QCborArrayIterator =
  gen_qcborarray_types.QCborArrayIterator(h: fcQCborArrayIterator_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayConstIterator): void =
  fcQCborArrayConstIterator_operatorAssign(self.h, other.h)

proc operatorMultiply*(self: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArrayConstIterator_operatorMultiply(self.h), owned: true)

proc operatorMinusGreater*(self: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArrayConstIterator_operatorMinusGreater(self.h), owned: false)

proc operatorSubscript*(self: gen_qcborarray_types.QCborArrayConstIterator, j: int64): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborArrayConstIterator_operatorSubscript(self.h, j), owned: true)

proc operatorEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, o: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayConstIterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, o: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayConstIterator_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayConstIterator_operatorLesser(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayConstIterator_operatorLesserOrEqual(self.h, other.h)

proc operatorGreater*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayConstIterator_operatorGreater(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayIterator): bool =
  fcQCborArrayConstIterator_operatorGreaterOrEqual(self.h, other.h)

proc operatorEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, o: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayConstIterator_operatorEqualWithQCborArrayConstIterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, o: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayConstIterator_operatorNotEqualWithQCborArrayConstIterator(self.h, o.h)

proc operatorLesser*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayConstIterator_operatorLesserWithOther(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayConstIterator_operatorLesserOrEqualWithOther(self.h, other.h)

proc operatorGreater*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayConstIterator_operatorGreaterWithOther(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcborarray_types.QCborArrayConstIterator, other: gen_qcborarray_types.QCborArrayConstIterator): bool =
  fcQCborArrayConstIterator_operatorGreaterOrEqualWithOther(self.h, other.h)

proc operatorPlusPlus*(self: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qcborarray_types.QCborArrayConstIterator, param1: cint): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorPlusPlusWithInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qcborarray_types.QCborArrayConstIterator, param1: cint): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorMinusMinusWithInt(self.h, param1), owned: true)

proc operatorPlusAssign*(self: gen_qcborarray_types.QCborArrayConstIterator, j: int64): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qcborarray_types.QCborArrayConstIterator, j: int64): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorPlus*(self: gen_qcborarray_types.QCborArrayConstIterator, j: int64): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcborarray_types.QCborArrayConstIterator, j: int64): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_operatorMinus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcborarray_types.QCborArrayConstIterator, j: gen_qcborarray_types.QCborArrayConstIterator): int64 =
  fcQCborArrayConstIterator_operatorMinusWithQCborArrayConstIterator(self.h, j.h)

proc create*(T: type gen_qcborarray_types.QCborArrayConstIterator): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_new(), owned: true)

proc create*(T: type gen_qcborarray_types.QCborArrayConstIterator,
    param1: gen_qcborarray_types.QCborArrayConstIterator): gen_qcborarray_types.QCborArrayConstIterator =
  gen_qcborarray_types.QCborArrayConstIterator(h: fcQCborArrayConstIterator_new2(param1.h), owned: true)

