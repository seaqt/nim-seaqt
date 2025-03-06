import ./Qt5Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

proc fcQCborMap_operatorAssign(self: pointer, other: pointer): void {.importc: "QCborMap_operatorAssign".}
proc fcQCborMap_swap(self: pointer, other: pointer): void {.importc: "QCborMap_swap".}
proc fcQCborMap_toCborValue(self: pointer, ): pointer {.importc: "QCborMap_toCborValue".}
proc fcQCborMap_size(self: pointer, ): int64 {.importc: "QCborMap_size".}
proc fcQCborMap_isEmpty(self: pointer, ): bool {.importc: "QCborMap_isEmpty".}
proc fcQCborMap_clear(self: pointer, ): void {.importc: "QCborMap_clear".}
proc fcQCborMap_keys(self: pointer, ): struct_miqt_array {.importc: "QCborMap_keys".}
proc fcQCborMap_value(self: pointer, key: clonglong): pointer {.importc: "QCborMap_value".}
proc fcQCborMap_value2(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborMap_value2".}
proc fcQCborMap_value3(self: pointer, key: pointer): pointer {.importc: "QCborMap_value3".}
proc fcQCborMap_operatorSubscript(self: pointer, key: clonglong): pointer {.importc: "QCborMap_operatorSubscript".}
proc fcQCborMap_operatorSubscript2(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborMap_operatorSubscript2".}
proc fcQCborMap_operatorSubscript3(self: pointer, key: pointer): pointer {.importc: "QCborMap_operatorSubscript3".}
proc fcQCborMap_operatorSubscript4(self: pointer, key: clonglong): pointer {.importc: "QCborMap_operatorSubscript4".}
proc fcQCborMap_operatorSubscript6(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborMap_operatorSubscript6".}
proc fcQCborMap_operatorSubscript7(self: pointer, key: pointer): pointer {.importc: "QCborMap_operatorSubscript7".}
proc fcQCborMap_take(self: pointer, key: clonglong): pointer {.importc: "QCborMap_take".}
proc fcQCborMap_take2(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborMap_take2".}
proc fcQCborMap_take3(self: pointer, key: pointer): pointer {.importc: "QCborMap_take3".}
proc fcQCborMap_remove(self: pointer, key: clonglong): void {.importc: "QCborMap_remove".}
proc fcQCborMap_remove2(self: pointer, key: struct_miqt_string): void {.importc: "QCborMap_remove2".}
proc fcQCborMap_remove3(self: pointer, key: pointer): void {.importc: "QCborMap_remove3".}
proc fcQCborMap_contains(self: pointer, key: clonglong): bool {.importc: "QCborMap_contains".}
proc fcQCborMap_contains2(self: pointer, key: struct_miqt_string): bool {.importc: "QCborMap_contains2".}
proc fcQCborMap_contains3(self: pointer, key: pointer): bool {.importc: "QCborMap_contains3".}
proc fcQCborMap_compare(self: pointer, other: pointer): cint {.importc: "QCborMap_compare".}
proc fcQCborMap_operatorEqual(self: pointer, other: pointer): bool {.importc: "QCborMap_operatorEqual".}
proc fcQCborMap_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QCborMap_operatorNotEqual".}
proc fcQCborMap_operatorLesser(self: pointer, other: pointer): bool {.importc: "QCborMap_operatorLesser".}
proc fcQCborMap_begin(self: pointer, ): pointer {.importc: "QCborMap_begin".}
proc fcQCborMap_constBegin(self: pointer, ): pointer {.importc: "QCborMap_constBegin".}
proc fcQCborMap_begin2(self: pointer, ): pointer {.importc: "QCborMap_begin2".}
proc fcQCborMap_cbegin(self: pointer, ): pointer {.importc: "QCborMap_cbegin".}
proc fcQCborMap_endX(self: pointer, ): pointer {.importc: "QCborMap_end".}
proc fcQCborMap_constEnd(self: pointer, ): pointer {.importc: "QCborMap_constEnd".}
proc fcQCborMap_end2(self: pointer, ): pointer {.importc: "QCborMap_end2".}
proc fcQCborMap_cend(self: pointer, ): pointer {.importc: "QCborMap_cend".}
proc fcQCborMap_erase(self: pointer, it: pointer): pointer {.importc: "QCborMap_erase".}
proc fcQCborMap_eraseWithIt(self: pointer, it: pointer): pointer {.importc: "QCborMap_eraseWithIt".}
proc fcQCborMap_extract(self: pointer, it: pointer): pointer {.importc: "QCborMap_extract".}
proc fcQCborMap_extractWithIt(self: pointer, it: pointer): pointer {.importc: "QCborMap_extractWithIt".}
proc fcQCborMap_empty(self: pointer, ): bool {.importc: "QCborMap_empty".}
proc fcQCborMap_find(self: pointer, key: clonglong): pointer {.importc: "QCborMap_find".}
proc fcQCborMap_find2(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborMap_find2".}
proc fcQCborMap_find3(self: pointer, key: pointer): pointer {.importc: "QCborMap_find3".}
proc fcQCborMap_constFind(self: pointer, key: clonglong): pointer {.importc: "QCborMap_constFind".}
proc fcQCborMap_constFind2(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborMap_constFind2".}
proc fcQCborMap_constFind3(self: pointer, key: pointer): pointer {.importc: "QCborMap_constFind3".}
proc fcQCborMap_find4(self: pointer, key: clonglong): pointer {.importc: "QCborMap_find4".}
proc fcQCborMap_find6(self: pointer, key: struct_miqt_string): pointer {.importc: "QCborMap_find6".}
proc fcQCborMap_find7(self: pointer, key: pointer): pointer {.importc: "QCborMap_find7".}
proc fcQCborMap_insert(self: pointer, key: clonglong, value_x: pointer): pointer {.importc: "QCborMap_insert".}
proc fcQCborMap_insert3(self: pointer, key: struct_miqt_string, value_x: pointer): pointer {.importc: "QCborMap_insert3".}
proc fcQCborMap_insert4(self: pointer, key: pointer, value_x: pointer): pointer {.importc: "QCborMap_insert4".}
proc fcQCborMap_insertWithQCborMapvalueType(self: pointer, v: struct_miqt_map): pointer {.importc: "QCborMap_insertWithQCborMapvalueType".}
proc fcQCborMap_fromVariantMap(map: struct_miqt_map): pointer {.importc: "QCborMap_fromVariantMap".}
proc fcQCborMap_fromVariantHash(hash: struct_miqt_map): pointer {.importc: "QCborMap_fromVariantHash".}
proc fcQCborMap_fromJsonObject(o: pointer): pointer {.importc: "QCborMap_fromJsonObject".}
proc fcQCborMap_toVariantMap(self: pointer, ): struct_miqt_map {.importc: "QCborMap_toVariantMap".}
proc fcQCborMap_toVariantHash(self: pointer, ): struct_miqt_map {.importc: "QCborMap_toVariantHash".}
proc fcQCborMap_toJsonObject(self: pointer, ): pointer {.importc: "QCborMap_toJsonObject".}
proc fcQCborMap_new(): ptr cQCborMap {.importc: "QCborMap_new".}
proc fcQCborMap_new2(other: pointer): ptr cQCborMap {.importc: "QCborMap_new2".}
proc fcQCborMapIterator_operatorAssign(self: pointer, other: pointer): void {.importc: "QCborMap__Iterator_operatorAssign".}
proc fcQCborMapIterator_operatorMultiply(self: pointer, ): struct_miqt_map {.importc: "QCborMap__Iterator_operatorMultiply".}
proc fcQCborMapIterator_operatorMinusGreater(self: pointer, ): pointer {.importc: "QCborMap__Iterator_operatorMinusGreater".}
proc fcQCborMapIterator_key(self: pointer, ): pointer {.importc: "QCborMap__Iterator_key".}
proc fcQCborMapIterator_value(self: pointer, ): pointer {.importc: "QCborMap__Iterator_value".}
proc fcQCborMapIterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QCborMap__Iterator_operatorEqual".}
proc fcQCborMapIterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QCborMap__Iterator_operatorNotEqual".}
proc fcQCborMapIterator_operatorLesser(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorLesser".}
proc fcQCborMapIterator_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorLesserOrEqual".}
proc fcQCborMapIterator_operatorGreater(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorGreater".}
proc fcQCborMapIterator_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorGreaterOrEqual".}
proc fcQCborMapIterator_operatorEqualWithQCborMapConstIterator(self: pointer, o: pointer): bool {.importc: "QCborMap__Iterator_operatorEqualWithQCborMapConstIterator".}
proc fcQCborMapIterator_operatorNotEqualWithQCborMapConstIterator(self: pointer, o: pointer): bool {.importc: "QCborMap__Iterator_operatorNotEqualWithQCborMapConstIterator".}
proc fcQCborMapIterator_operatorLesserWithOther(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorLesserWithOther".}
proc fcQCborMapIterator_operatorLesserOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorLesserOrEqualWithOther".}
proc fcQCborMapIterator_operatorGreaterWithOther(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorGreaterWithOther".}
proc fcQCborMapIterator_operatorGreaterOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QCborMap__Iterator_operatorGreaterOrEqualWithOther".}
proc fcQCborMapIterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QCborMap__Iterator_operatorPlusPlus".}
proc fcQCborMapIterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QCborMap__Iterator_operatorPlusPlusWithInt".}
proc fcQCborMapIterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QCborMap__Iterator_operatorMinusMinus".}
proc fcQCborMapIterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QCborMap__Iterator_operatorMinusMinusWithInt".}
proc fcQCborMapIterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QCborMap__Iterator_operatorPlusAssign".}
proc fcQCborMapIterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QCborMap__Iterator_operatorMinusAssign".}
proc fcQCborMapIterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QCborMap__Iterator_operatorPlus".}
proc fcQCborMapIterator_operatorMinus(self: pointer, j: int64): pointer {.importc: "QCborMap__Iterator_operatorMinus".}
proc fcQCborMapIterator_operatorMinusWithQCborMapIterator(self: pointer, j: pointer): int64 {.importc: "QCborMap__Iterator_operatorMinusWithQCborMapIterator".}
proc fcQCborMapIterator_new(): ptr cQCborMapIterator {.importc: "QCborMap__Iterator_new".}
proc fcQCborMapIterator_new2(param1: pointer): ptr cQCborMapIterator {.importc: "QCborMap__Iterator_new2".}
proc fcQCborMapConstIterator_operatorAssign(self: pointer, other: pointer): void {.importc: "QCborMap__ConstIterator_operatorAssign".}
proc fcQCborMapConstIterator_operatorMultiply(self: pointer, ): struct_miqt_map {.importc: "QCborMap__ConstIterator_operatorMultiply".}
proc fcQCborMapConstIterator_operatorMinusGreater(self: pointer, ): pointer {.importc: "QCborMap__ConstIterator_operatorMinusGreater".}
proc fcQCborMapConstIterator_key(self: pointer, ): pointer {.importc: "QCborMap__ConstIterator_key".}
proc fcQCborMapConstIterator_value(self: pointer, ): pointer {.importc: "QCborMap__ConstIterator_value".}
proc fcQCborMapConstIterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QCborMap__ConstIterator_operatorEqual".}
proc fcQCborMapConstIterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QCborMap__ConstIterator_operatorNotEqual".}
proc fcQCborMapConstIterator_operatorLesser(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorLesser".}
proc fcQCborMapConstIterator_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorLesserOrEqual".}
proc fcQCborMapConstIterator_operatorGreater(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorGreater".}
proc fcQCborMapConstIterator_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorGreaterOrEqual".}
proc fcQCborMapConstIterator_operatorEqualWithQCborMapConstIterator(self: pointer, o: pointer): bool {.importc: "QCborMap__ConstIterator_operatorEqualWithQCborMapConstIterator".}
proc fcQCborMapConstIterator_operatorNotEqualWithQCborMapConstIterator(self: pointer, o: pointer): bool {.importc: "QCborMap__ConstIterator_operatorNotEqualWithQCborMapConstIterator".}
proc fcQCborMapConstIterator_operatorLesserWithOther(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorLesserWithOther".}
proc fcQCborMapConstIterator_operatorLesserOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorLesserOrEqualWithOther".}
proc fcQCborMapConstIterator_operatorGreaterWithOther(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorGreaterWithOther".}
proc fcQCborMapConstIterator_operatorGreaterOrEqualWithOther(self: pointer, other: pointer): bool {.importc: "QCborMap__ConstIterator_operatorGreaterOrEqualWithOther".}
proc fcQCborMapConstIterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QCborMap__ConstIterator_operatorPlusPlus".}
proc fcQCborMapConstIterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QCborMap__ConstIterator_operatorPlusPlusWithInt".}
proc fcQCborMapConstIterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QCborMap__ConstIterator_operatorMinusMinus".}
proc fcQCborMapConstIterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QCborMap__ConstIterator_operatorMinusMinusWithInt".}
proc fcQCborMapConstIterator_operatorPlusAssign(self: pointer, j: int64): pointer {.importc: "QCborMap__ConstIterator_operatorPlusAssign".}
proc fcQCborMapConstIterator_operatorMinusAssign(self: pointer, j: int64): pointer {.importc: "QCborMap__ConstIterator_operatorMinusAssign".}
proc fcQCborMapConstIterator_operatorPlus(self: pointer, j: int64): pointer {.importc: "QCborMap__ConstIterator_operatorPlus".}
proc fcQCborMapConstIterator_operatorMinus(self: pointer, j: int64): pointer {.importc: "QCborMap__ConstIterator_operatorMinus".}
proc fcQCborMapConstIterator_operatorMinusWithQCborMapConstIterator(self: pointer, j: pointer): int64 {.importc: "QCborMap__ConstIterator_operatorMinusWithQCborMapConstIterator".}
proc fcQCborMapConstIterator_new(): ptr cQCborMapConstIterator {.importc: "QCborMap__ConstIterator_new".}
proc fcQCborMapConstIterator_new2(param1: pointer): ptr cQCborMapConstIterator {.importc: "QCborMap__ConstIterator_new2".}

proc operatorAssign*(self: gen_qcbormap_types.QCborMap, other: gen_qcbormap_types.QCborMap): void =
  fcQCborMap_operatorAssign(self.h, other.h)

proc swap*(self: gen_qcbormap_types.QCborMap, other: gen_qcbormap_types.QCborMap): void =
  fcQCborMap_swap(self.h, other.h)

proc toCborValue*(self: gen_qcbormap_types.QCborMap, ): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_toCborValue(self.h), owned: true)

proc size*(self: gen_qcbormap_types.QCborMap, ): int64 =
  fcQCborMap_size(self.h)

proc isEmpty*(self: gen_qcbormap_types.QCborMap, ): bool =
  fcQCborMap_isEmpty(self.h)

proc clear*(self: gen_qcbormap_types.QCborMap, ): void =
  fcQCborMap_clear(self.h)

proc keys*(self: gen_qcbormap_types.QCborMap, ): seq[gen_qcborvalue_types.QCborValue] =
  var v_ma = fcQCborMap_keys(self.h)
  var vx_ret = newSeq[gen_qcborvalue_types.QCborValue](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcborvalue_types.QCborValue(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc value*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_value(self.h, key), owned: true)

proc value*(self: gen_qcbormap_types.QCborMap, key: string): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_value2(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))), owned: true)

proc value*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_value3(self.h, key.h), owned: true)

proc operatorSubscript*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_operatorSubscript(self.h, key), owned: true)

proc operatorSubscript*(self: gen_qcbormap_types.QCborMap, key: string): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_operatorSubscript2(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))), owned: true)

proc operatorSubscript*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_operatorSubscript3(self.h, key.h), owned: true)

proc operatorSubscript2*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMap_operatorSubscript4(self.h, key), owned: true)

proc operatorSubscript2*(self: gen_qcbormap_types.QCborMap, key: string): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMap_operatorSubscript6(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))), owned: true)

proc operatorSubscript2*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMap_operatorSubscript7(self.h, key.h), owned: true)

proc take*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_take(self.h, key), owned: true)

proc take*(self: gen_qcbormap_types.QCborMap, key: string): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_take2(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))), owned: true)

proc take*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_take3(self.h, key.h), owned: true)

proc remove*(self: gen_qcbormap_types.QCborMap, key: clonglong): void =
  fcQCborMap_remove(self.h, key)

proc remove*(self: gen_qcbormap_types.QCborMap, key: string): void =
  fcQCborMap_remove2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc remove*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): void =
  fcQCborMap_remove3(self.h, key.h)

proc contains*(self: gen_qcbormap_types.QCborMap, key: clonglong): bool =
  fcQCborMap_contains(self.h, key)

proc contains*(self: gen_qcbormap_types.QCborMap, key: string): bool =
  fcQCborMap_contains2(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc contains*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): bool =
  fcQCborMap_contains3(self.h, key.h)

proc compare*(self: gen_qcbormap_types.QCborMap, other: gen_qcbormap_types.QCborMap): cint =
  fcQCborMap_compare(self.h, other.h)

proc operatorEqual*(self: gen_qcbormap_types.QCborMap, other: gen_qcbormap_types.QCborMap): bool =
  fcQCborMap_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qcbormap_types.QCborMap, other: gen_qcbormap_types.QCborMap): bool =
  fcQCborMap_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: gen_qcbormap_types.QCborMap, other: gen_qcbormap_types.QCborMap): bool =
  fcQCborMap_operatorLesser(self.h, other.h)

proc begin*(self: gen_qcbormap_types.QCborMap, ): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_begin(self.h), owned: true)

proc constBegin*(self: gen_qcbormap_types.QCborMap, ): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_constBegin(self.h), owned: true)

proc begin2*(self: gen_qcbormap_types.QCborMap, ): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_begin2(self.h), owned: true)

proc cbegin*(self: gen_qcbormap_types.QCborMap, ): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_cbegin(self.h), owned: true)

proc endX*(self: gen_qcbormap_types.QCborMap, ): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_endX(self.h), owned: true)

proc constEnd*(self: gen_qcbormap_types.QCborMap, ): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_constEnd(self.h), owned: true)

proc endX2*(self: gen_qcbormap_types.QCborMap, ): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_end2(self.h), owned: true)

proc cend*(self: gen_qcbormap_types.QCborMap, ): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_cend(self.h), owned: true)

proc erase*(self: gen_qcbormap_types.QCborMap, it: gen_qcbormap_types.QCborMapIterator): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_erase(self.h, it.h), owned: true)

proc erase*(self: gen_qcbormap_types.QCborMap, it: gen_qcbormap_types.QCborMapConstIterator): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_eraseWithIt(self.h, it.h), owned: true)

proc extract*(self: gen_qcbormap_types.QCborMap, it: gen_qcbormap_types.QCborMapIterator): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_extract(self.h, it.h), owned: true)

proc extract*(self: gen_qcbormap_types.QCborMap, it: gen_qcbormap_types.QCborMapConstIterator): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMap_extractWithIt(self.h, it.h), owned: true)

proc empty*(self: gen_qcbormap_types.QCborMap, ): bool =
  fcQCborMap_empty(self.h)

proc find*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_find(self.h, key), owned: true)

proc find*(self: gen_qcbormap_types.QCborMap, key: string): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_find2(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))), owned: true)

proc find*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_find3(self.h, key.h), owned: true)

proc constFind*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_constFind(self.h, key), owned: true)

proc constFind*(self: gen_qcbormap_types.QCborMap, key: string): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_constFind2(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))), owned: true)

proc constFind*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_constFind3(self.h, key.h), owned: true)

proc find2*(self: gen_qcbormap_types.QCborMap, key: clonglong): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_find4(self.h, key), owned: true)

proc find2*(self: gen_qcbormap_types.QCborMap, key: string): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_find6(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))), owned: true)

proc find2*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMap_find7(self.h, key.h), owned: true)

proc insert*(self: gen_qcbormap_types.QCborMap, key: clonglong, value_x: gen_qcborvalue_types.QCborValue): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_insert(self.h, key, value_x.h), owned: true)

proc insert*(self: gen_qcbormap_types.QCborMap, key: string, value_x: gen_qcborvalue_types.QCborValue): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_insert3(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value_x.h), owned: true)

proc insert*(self: gen_qcbormap_types.QCborMap, key: gen_qcborvalue_types.QCborValue, value_x: gen_qcborvalue_types.QCborValue): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_insert4(self.h, key.h, value_x.h), owned: true)

proc insert*(self: gen_qcbormap_types.QCborMap, v: tuple[first: gen_qcborvalue_types.QCborValue, second: gen_qcborvalue_types.QCborValue]): gen_qcbormap_types.QCborMapIterator =
  var v_CArray_First: pointer
  var v_CArray_Second: pointer
  v_CArray_First = v.first.h
  v_CArray_Second = v.second.h
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMap_insertWithQCborMapvalueType(self.h, struct_miqt_map(len: 1,keys: addr(v_CArray_First),values: addr(v_CArray_Second),)), owned: true)

proc fromVariantMap*(_: type gen_qcbormap_types.QCborMap, map: Table[string,gen_qvariant_types.QVariant]): gen_qcbormap_types.QCborMap =
  var map_Keys_CArray = newSeq[struct_miqt_string](len(map))
  var map_Values_CArray = newSeq[pointer](len(map))
  var map_ctr = 0
  for map_k in map.keys():
    map_Keys_CArray[map_ctr] = struct_miqt_string(data: map_k, len: csize_t(len(map_k)))
    map_ctr += 1
  map_ctr = 0
  for map_v in map.values():
    map_Values_CArray[map_ctr] = map_v.h
    map_ctr += 1

  gen_qcbormap_types.QCborMap(h: fcQCborMap_fromVariantMap(struct_miqt_map(len: csize_t(len(map)),keys: if len(map) == 0: nil else: addr(map_Keys_CArray[0]), values: if len(map) == 0: nil else: addr(map_Values_CArray[0]),)), owned: true)

proc fromVariantHash*(_: type gen_qcbormap_types.QCborMap, hash: Table[string,gen_qvariant_types.QVariant]): gen_qcbormap_types.QCborMap =
  var hash_Keys_CArray = newSeq[struct_miqt_string](len(hash))
  var hash_Values_CArray = newSeq[pointer](len(hash))
  var hash_ctr = 0
  for hash_k in hash.keys():
    hash_Keys_CArray[hash_ctr] = struct_miqt_string(data: hash_k, len: csize_t(len(hash_k)))
    hash_ctr += 1
  hash_ctr = 0
  for hash_v in hash.values():
    hash_Values_CArray[hash_ctr] = hash_v.h
    hash_ctr += 1

  gen_qcbormap_types.QCborMap(h: fcQCborMap_fromVariantHash(struct_miqt_map(len: csize_t(len(hash)),keys: if len(hash) == 0: nil else: addr(hash_Keys_CArray[0]), values: if len(hash) == 0: nil else: addr(hash_Values_CArray[0]),)), owned: true)

proc fromJsonObject*(_: type gen_qcbormap_types.QCborMap, o: gen_qjsonobject_types.QJsonObject): gen_qcbormap_types.QCborMap =
  gen_qcbormap_types.QCborMap(h: fcQCborMap_fromJsonObject(o.h), owned: true)

proc toVariantMap*(self: gen_qcbormap_types.QCborMap, ): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQCborMap_toVariantMap(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_mapkey_ms = v_Keys[i]
    let vx_mapkeyx_ret = string.fromBytes(toOpenArrayByte(vx_mapkey_ms.data, 0, int(vx_mapkey_ms.len)-1))
    c_free(vx_mapkey_ms.data)
    var v_entry_Key = vx_mapkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc toVariantHash*(self: gen_qcbormap_types.QCborMap, ): Table[string,gen_qvariant_types.QVariant] =
  var v_mm = fcQCborMap_toVariantHash(self.h)
  var vx_ret: Table[string, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    let vx_hashkey_ms = v_Keys[i]
    let vx_hashkeyx_ret = string.fromBytes(toOpenArrayByte(vx_hashkey_ms.data, 0, int(vx_hashkey_ms.len)-1))
    c_free(vx_hashkey_ms.data)
    var v_entry_Key = vx_hashkeyx_ret

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i], owned: true)

    vx_ret[v_entry_Key] = v_entry_Value
  c_free(v_mm.keys)
  c_free(v_mm.values)
  vx_ret

proc toJsonObject*(self: gen_qcbormap_types.QCborMap, ): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQCborMap_toJsonObject(self.h), owned: true)

proc create*(T: type gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMap =
  gen_qcbormap_types.QCborMap(h: fcQCborMap_new(), owned: true)

proc create*(T: type gen_qcbormap_types.QCborMap,
    other: gen_qcbormap_types.QCborMap): gen_qcbormap_types.QCborMap =
  gen_qcbormap_types.QCborMap(h: fcQCborMap_new2(other.h), owned: true)

proc operatorAssign*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapIterator): void =
  fcQCborMapIterator_operatorAssign(self.h, other.h)

proc operatorMultiply*(self: gen_qcbormap_types.QCborMapIterator, ): tuple[first: gen_qcborvalue_types.QCborValueRef, second: gen_qcborvalue_types.QCborValueRef] =
  var v_mm = fcQCborMapIterator_operatorMultiply(self.h)
  var v_First_CArray = cast[ptr UncheckedArray[pointer]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[pointer]](v_mm.values)
  var v_entry_First = gen_qcborvalue_types.QCborValueRef(h: v_First_CArray[0], owned: true)

  var v_entry_Second = gen_qcborvalue_types.QCborValueRef(h: v_Second_CArray[0], owned: true)

  c_free(v_mm.keys)
  c_free(v_mm.values)
  (first: v_entry_First , second: v_entry_Second )

proc operatorMinusGreater*(self: gen_qcbormap_types.QCborMapIterator, ): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMapIterator_operatorMinusGreater(self.h), owned: false)

proc key*(self: gen_qcbormap_types.QCborMapIterator, ): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMapIterator_key(self.h), owned: true)

proc value*(self: gen_qcbormap_types.QCborMapIterator, ): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMapIterator_value(self.h), owned: true)

proc operatorEqual*(self: gen_qcbormap_types.QCborMapIterator, o: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapIterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: gen_qcbormap_types.QCborMapIterator, o: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapIterator_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapIterator_operatorLesser(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapIterator_operatorLesserOrEqual(self.h, other.h)

proc operatorGreater*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapIterator_operatorGreater(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapIterator_operatorGreaterOrEqual(self.h, other.h)

proc operatorEqual*(self: gen_qcbormap_types.QCborMapIterator, o: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapIterator_operatorEqualWithQCborMapConstIterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qcbormap_types.QCborMapIterator, o: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapIterator_operatorNotEqualWithQCborMapConstIterator(self.h, o.h)

proc operatorLesser*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapIterator_operatorLesserWithOther(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapIterator_operatorLesserOrEqualWithOther(self.h, other.h)

proc operatorGreater*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapIterator_operatorGreaterWithOther(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcbormap_types.QCborMapIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapIterator_operatorGreaterOrEqualWithOther(self.h, other.h)

proc operatorPlusPlus*(self: gen_qcbormap_types.QCborMapIterator, ): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qcbormap_types.QCborMapIterator, param1: cint): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorPlusPlusWithInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qcbormap_types.QCborMapIterator, ): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qcbormap_types.QCborMapIterator, param1: cint): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorMinusMinusWithInt(self.h, param1), owned: true)

proc operatorPlusAssign*(self: gen_qcbormap_types.QCborMapIterator, j: int64): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qcbormap_types.QCborMapIterator, j: int64): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorPlus*(self: gen_qcbormap_types.QCborMapIterator, j: int64): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcbormap_types.QCborMapIterator, j: int64): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_operatorMinus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcbormap_types.QCborMapIterator, j: gen_qcbormap_types.QCborMapIterator): int64 =
  fcQCborMapIterator_operatorMinusWithQCborMapIterator(self.h, j.h)

proc create*(T: type gen_qcbormap_types.QCborMapIterator): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_new(), owned: true)

proc create*(T: type gen_qcbormap_types.QCborMapIterator,
    param1: gen_qcbormap_types.QCborMapIterator): gen_qcbormap_types.QCborMapIterator =
  gen_qcbormap_types.QCborMapIterator(h: fcQCborMapIterator_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapConstIterator): void =
  fcQCborMapConstIterator_operatorAssign(self.h, other.h)

proc operatorMultiply*(self: gen_qcbormap_types.QCborMapConstIterator, ): tuple[first: gen_qcborvalue_types.QCborValueRef, second: gen_qcborvalue_types.QCborValueRef] =
  var v_mm = fcQCborMapConstIterator_operatorMultiply(self.h)
  var v_First_CArray = cast[ptr UncheckedArray[pointer]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[pointer]](v_mm.values)
  var v_entry_First = gen_qcborvalue_types.QCborValueRef(h: v_First_CArray[0], owned: true)

  var v_entry_Second = gen_qcborvalue_types.QCborValueRef(h: v_Second_CArray[0], owned: true)

  c_free(v_mm.keys)
  c_free(v_mm.values)
  (first: v_entry_First , second: v_entry_Second )

proc operatorMinusGreater*(self: gen_qcbormap_types.QCborMapConstIterator, ): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMapConstIterator_operatorMinusGreater(self.h), owned: false)

proc key*(self: gen_qcbormap_types.QCborMapConstIterator, ): gen_qcborvalue_types.QCborValue =
  gen_qcborvalue_types.QCborValue(h: fcQCborMapConstIterator_key(self.h), owned: true)

proc value*(self: gen_qcbormap_types.QCborMapConstIterator, ): gen_qcborvalue_types.QCborValueRef =
  gen_qcborvalue_types.QCborValueRef(h: fcQCborMapConstIterator_value(self.h), owned: true)

proc operatorEqual*(self: gen_qcbormap_types.QCborMapConstIterator, o: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapConstIterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: gen_qcbormap_types.QCborMapConstIterator, o: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapConstIterator_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapConstIterator_operatorLesser(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapConstIterator_operatorLesserOrEqual(self.h, other.h)

proc operatorGreater*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapConstIterator_operatorGreater(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapIterator): bool =
  fcQCborMapConstIterator_operatorGreaterOrEqual(self.h, other.h)

proc operatorEqual*(self: gen_qcbormap_types.QCborMapConstIterator, o: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapConstIterator_operatorEqualWithQCborMapConstIterator(self.h, o.h)

proc operatorNotEqual*(self: gen_qcbormap_types.QCborMapConstIterator, o: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapConstIterator_operatorNotEqualWithQCborMapConstIterator(self.h, o.h)

proc operatorLesser*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapConstIterator_operatorLesserWithOther(self.h, other.h)

proc operatorLesserOrEqual*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapConstIterator_operatorLesserOrEqualWithOther(self.h, other.h)

proc operatorGreater*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapConstIterator_operatorGreaterWithOther(self.h, other.h)

proc operatorGreaterOrEqual*(self: gen_qcbormap_types.QCborMapConstIterator, other: gen_qcbormap_types.QCborMapConstIterator): bool =
  fcQCborMapConstIterator_operatorGreaterOrEqualWithOther(self.h, other.h)

proc operatorPlusPlus*(self: gen_qcbormap_types.QCborMapConstIterator, ): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorPlusPlus(self.h), owned: false)

proc operatorPlusPlus*(self: gen_qcbormap_types.QCborMapConstIterator, param1: cint): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorPlusPlusWithInt(self.h, param1), owned: true)

proc operatorMinusMinus*(self: gen_qcbormap_types.QCborMapConstIterator, ): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorMinusMinus(self.h), owned: false)

proc operatorMinusMinus*(self: gen_qcbormap_types.QCborMapConstIterator, param1: cint): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorMinusMinusWithInt(self.h, param1), owned: true)

proc operatorPlusAssign*(self: gen_qcbormap_types.QCborMapConstIterator, j: int64): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorPlusAssign(self.h, j), owned: false)

proc operatorMinusAssign*(self: gen_qcbormap_types.QCborMapConstIterator, j: int64): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorMinusAssign(self.h, j), owned: false)

proc operatorPlus*(self: gen_qcbormap_types.QCborMapConstIterator, j: int64): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorPlus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcbormap_types.QCborMapConstIterator, j: int64): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_operatorMinus(self.h, j), owned: true)

proc operatorMinus*(self: gen_qcbormap_types.QCborMapConstIterator, j: gen_qcbormap_types.QCborMapConstIterator): int64 =
  fcQCborMapConstIterator_operatorMinusWithQCborMapConstIterator(self.h, j.h)

proc create*(T: type gen_qcbormap_types.QCborMapConstIterator): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_new(), owned: true)

proc create*(T: type gen_qcbormap_types.QCborMapConstIterator,
    param1: gen_qcbormap_types.QCborMapConstIterator): gen_qcbormap_types.QCborMapConstIterator =
  gen_qcbormap_types.QCborMapConstIterator(h: fcQCborMapConstIterator_new2(param1.h), owned: true)

