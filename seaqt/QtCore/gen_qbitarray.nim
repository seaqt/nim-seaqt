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


import ./gen_qbitarray_types
export gen_qbitarray_types


type cQBitArray*{.exportc: "QBitArray", incompleteStruct.} = object
type cQBitRef*{.exportc: "QBitRef", incompleteStruct.} = object

proc fcQBitArray_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QBitArray_operatorAssign".}
proc fcQBitArray_swap(self: pointer, other: pointer): void {.importc: "QBitArray_swap".}
proc fcQBitArray_size(self: pointer): int64 {.importc: "QBitArray_size".}
proc fcQBitArray_count(self: pointer): int64 {.importc: "QBitArray_count".}
proc fcQBitArray_countOn(self: pointer, on: bool): int64 {.importc: "QBitArray_count_on".}
proc fcQBitArray_isEmpty(self: pointer): bool {.importc: "QBitArray_isEmpty".}
proc fcQBitArray_isNull(self: pointer): bool {.importc: "QBitArray_isNull".}
proc fcQBitArray_resize(self: pointer, size: int64): void {.importc: "QBitArray_resize".}
proc fcQBitArray_detach(self: pointer): void {.importc: "QBitArray_detach".}
proc fcQBitArray_isDetached(self: pointer): bool {.importc: "QBitArray_isDetached".}
proc fcQBitArray_clear(self: pointer): void {.importc: "QBitArray_clear".}
proc fcQBitArray_testBit(self: pointer, i: int64): bool {.importc: "QBitArray_testBit".}
proc fcQBitArray_setBitI(self: pointer, i: int64): void {.importc: "QBitArray_setBit_i".}
proc fcQBitArray_setBitIVal(self: pointer, i: int64, val: bool): void {.importc: "QBitArray_setBit_i_val".}
proc fcQBitArray_clearBit(self: pointer, i: int64): void {.importc: "QBitArray_clearBit".}
proc fcQBitArray_toggleBit(self: pointer, i: int64): bool {.importc: "QBitArray_toggleBit".}
proc fcQBitArray_at(self: pointer, i: int64): bool {.importc: "QBitArray_at".}
proc fcQBitArray_operatorSubscriptQsizetype(self: pointer, i: int64): pointer {.importc: "QBitArray_operatorSubscript_qsizetype".}
proc fcQBitArray_operatorSubscriptConstQsizetype(self: pointer, i: int64): bool {.importc: "QBitArray_operatorSubscript_const_qsizetype".}
proc fcQBitArray_operatorBitwiseAndAssign(self: pointer, param1: pointer): void {.importc: "QBitArray_operatorBitwiseAndAssign".}
proc fcQBitArray_operatorBitwiseOrAssign(self: pointer, param1: pointer): void {.importc: "QBitArray_operatorBitwiseOrAssign".}
proc fcQBitArray_operatorBitwiseNotAssign(self: pointer, param1: pointer): void {.importc: "QBitArray_operatorBitwiseNotAssign".}
proc fcQBitArray_fillAval(self: pointer, aval: bool): bool {.importc: "QBitArray_fill_aval".}
proc fcQBitArray_fillValFirstLast(self: pointer, val: bool, first: int64, last: int64): void {.importc: "QBitArray_fill_val_first_last".}
proc fcQBitArray_truncate(self: pointer, pos: int64): void {.importc: "QBitArray_truncate".}
proc fcQBitArray_bits(self: pointer): cstring {.importc: "QBitArray_bits".}
proc fcQBitArray_fromBits(data: cstring, len: int64): pointer {.importc: "QBitArray_fromBits".}
proc fcQBitArray_toUInt32Endianness(self: pointer, endianness: cint): cuint {.importc: "QBitArray_toUInt32_endianness".}
proc fcQBitArray_fillAvalAsize(self: pointer, aval: bool, asize: int64): bool {.importc: "QBitArray_fill_aval_asize".}
proc fcQBitArray_toUInt32EndiannessOk(self: pointer, endianness: cint, ok: ptr bool): cuint {.importc: "QBitArray_toUInt32_endianness_ok".}
proc fcQBitArray_new(): ptr cQBitArray {.importc: "QBitArray_new".}
proc fcQBitArray_new2(size: int64): ptr cQBitArray {.importc: "QBitArray_new_size".}
proc fcQBitArray_new3(fromVal: pointer): ptr cQBitArray {.importc: "QBitArray_new_from".}
proc fcQBitArray_new4(size: int64, val: bool): ptr cQBitArray {.importc: "QBitArray_new_size_val".}
proc fcQBitRef_ToBool(self: pointer): bool {.importc: "QBitRef_ToBool".}
proc fcQBitRef_operatorNot(self: pointer): bool {.importc: "QBitRef_operatorNot".}
proc fcQBitRef_operatorAssignFrom(self: pointer, fromVal: pointer): void {.importc: "QBitRef_operatorAssign_from".}
proc fcQBitRef_operatorAssignVal(self: pointer, val: bool): void {.importc: "QBitRef_operatorAssign_val".}
proc fcQBitRef_new(fromVal: pointer): ptr cQBitRef {.importc: "QBitRef_new".}

proc operatorAssign*(self: gen_qbitarray_types.QBitArray, fromVal: gen_qbitarray_types.QBitArray): void =
  fcQBitArray_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qbitarray_types.QBitArray, other: gen_qbitarray_types.QBitArray): void =
  fcQBitArray_swap(self.h, other.h)

proc size*(self: gen_qbitarray_types.QBitArray): int64 =
  fcQBitArray_size(self.h)

proc count*(self: gen_qbitarray_types.QBitArray): int64 =
  fcQBitArray_count(self.h)

proc count*(self: gen_qbitarray_types.QBitArray, on: bool): int64 =
  fcQBitArray_countOn(self.h, on)

proc isEmpty*(self: gen_qbitarray_types.QBitArray): bool =
  fcQBitArray_isEmpty(self.h)

proc isNull*(self: gen_qbitarray_types.QBitArray): bool =
  fcQBitArray_isNull(self.h)

proc resize*(self: gen_qbitarray_types.QBitArray, size: int64): void =
  fcQBitArray_resize(self.h, size)

proc detach*(self: gen_qbitarray_types.QBitArray): void =
  fcQBitArray_detach(self.h)

proc isDetached*(self: gen_qbitarray_types.QBitArray): bool =
  fcQBitArray_isDetached(self.h)

proc clear*(self: gen_qbitarray_types.QBitArray): void =
  fcQBitArray_clear(self.h)

proc testBit*(self: gen_qbitarray_types.QBitArray, i: int64): bool =
  fcQBitArray_testBit(self.h, i)

proc setBit*(self: gen_qbitarray_types.QBitArray, i: int64): void =
  fcQBitArray_setBitI(self.h, i)

proc setBit*(self: gen_qbitarray_types.QBitArray, i: int64, val: bool): void =
  fcQBitArray_setBitIVal(self.h, i, val)

proc clearBit*(self: gen_qbitarray_types.QBitArray, i: int64): void =
  fcQBitArray_clearBit(self.h, i)

proc toggleBit*(self: gen_qbitarray_types.QBitArray, i: int64): bool =
  fcQBitArray_toggleBit(self.h, i)

proc at*(self: gen_qbitarray_types.QBitArray, i: int64): bool =
  fcQBitArray_at(self.h, i)

proc operatorSubscript*(self: gen_qbitarray_types.QBitArray, i: int64): gen_qbitarray_types.QBitRef =
  gen_qbitarray_types.QBitRef(h: fcQBitArray_operatorSubscriptQsizetype(self.h, i), owned: true)

proc operatorSubscript2*(self: gen_qbitarray_types.QBitArray, i: int64): bool =
  fcQBitArray_operatorSubscriptConstQsizetype(self.h, i)

proc operatorBitwiseAndAssign*(self: gen_qbitarray_types.QBitArray, param1: gen_qbitarray_types.QBitArray): void =
  fcQBitArray_operatorBitwiseAndAssign(self.h, param1.h)

proc operatorBitwiseOrAssign*(self: gen_qbitarray_types.QBitArray, param1: gen_qbitarray_types.QBitArray): void =
  fcQBitArray_operatorBitwiseOrAssign(self.h, param1.h)

proc operatorBitwiseNotAssign*(self: gen_qbitarray_types.QBitArray, param1: gen_qbitarray_types.QBitArray): void =
  fcQBitArray_operatorBitwiseNotAssign(self.h, param1.h)

proc fill*(self: gen_qbitarray_types.QBitArray, aval: bool): bool =
  fcQBitArray_fillAval(self.h, aval)

proc fill*(self: gen_qbitarray_types.QBitArray, val: bool, first: int64, last: int64): void =
  fcQBitArray_fillValFirstLast(self.h, val, first, last)

proc truncate*(self: gen_qbitarray_types.QBitArray, pos: int64): void =
  fcQBitArray_truncate(self.h, pos)

proc bits*(self: gen_qbitarray_types.QBitArray): cstring =
  (fcQBitArray_bits(self.h))

proc fromBits*(_: type gen_qbitarray_types.QBitArray, data: cstring, len: int64): gen_qbitarray_types.QBitArray =
  gen_qbitarray_types.QBitArray(h: fcQBitArray_fromBits(data, len), owned: true)

proc toUInt32*(self: gen_qbitarray_types.QBitArray, endianness: cint): cuint =
  fcQBitArray_toUInt32Endianness(self.h, cint(endianness))

proc fill*(self: gen_qbitarray_types.QBitArray, aval: bool, asize: int64): bool =
  fcQBitArray_fillAvalAsize(self.h, aval, asize)

proc toUInt32*(self: gen_qbitarray_types.QBitArray, endianness: cint, ok: ptr bool): cuint =
  fcQBitArray_toUInt32EndiannessOk(self.h, cint(endianness), ok)

proc create*(T: type gen_qbitarray_types.QBitArray): gen_qbitarray_types.QBitArray =
  let tmp = gen_qbitarray_types.QBitArray(h: fcQBitArray_new(), owned: true)
  tmp
proc create*(T: type gen_qbitarray_types.QBitArray,
    size: int64): gen_qbitarray_types.QBitArray =
  let tmp = gen_qbitarray_types.QBitArray(h: fcQBitArray_new2(size), owned: true)
  tmp
proc create*(T: type gen_qbitarray_types.QBitArray,
    fromVal: gen_qbitarray_types.QBitArray): gen_qbitarray_types.QBitArray =
  let tmp = gen_qbitarray_types.QBitArray(h: fcQBitArray_new3(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qbitarray_types.QBitArray,
    size: int64, val: bool): gen_qbitarray_types.QBitArray =
  let tmp = gen_qbitarray_types.QBitArray(h: fcQBitArray_new4(size, val), owned: true)
  tmp
proc ToBool*(self: gen_qbitarray_types.QBitRef): bool =
  fcQBitRef_ToBool(self.h)

proc operatorNot*(self: gen_qbitarray_types.QBitRef): bool =
  fcQBitRef_operatorNot(self.h)

proc operatorAssign*(self: gen_qbitarray_types.QBitRef, fromVal: gen_qbitarray_types.QBitRef): void =
  fcQBitRef_operatorAssignFrom(self.h, fromVal.h)

proc operatorAssign*(self: gen_qbitarray_types.QBitRef, val: bool): void =
  fcQBitRef_operatorAssignVal(self.h, val)

proc create*(T: type gen_qbitarray_types.QBitRef,
    fromVal: gen_qbitarray_types.QBitRef): gen_qbitarray_types.QBitRef =
  let tmp = gen_qbitarray_types.QBitRef(h: fcQBitRef_new(fromVal.h), owned: true)
  tmp
