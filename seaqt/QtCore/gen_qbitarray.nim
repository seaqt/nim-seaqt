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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qbitarray.cpp", cflags).}


import ./gen_qbitarray_types
export gen_qbitarray_types


type cQBitArray*{.exportc: "QBitArray", incompleteStruct.} = object
type cQBitRef*{.exportc: "QBitRef", incompleteStruct.} = object

proc fcQBitArray_operatorAssign(self: pointer, other: pointer): void {.importc: "QBitArray_operatorAssign".}
proc fcQBitArray_swap(self: pointer, other: pointer): void {.importc: "QBitArray_swap".}
proc fcQBitArray_size(self: pointer, ): cint {.importc: "QBitArray_size".}
proc fcQBitArray_count(self: pointer, ): cint {.importc: "QBitArray_count".}
proc fcQBitArray_countWithOn(self: pointer, on: bool): cint {.importc: "QBitArray_countWithOn".}
proc fcQBitArray_isEmpty(self: pointer, ): bool {.importc: "QBitArray_isEmpty".}
proc fcQBitArray_isNull(self: pointer, ): bool {.importc: "QBitArray_isNull".}
proc fcQBitArray_resize(self: pointer, size: cint): void {.importc: "QBitArray_resize".}
proc fcQBitArray_detach(self: pointer, ): void {.importc: "QBitArray_detach".}
proc fcQBitArray_isDetached(self: pointer, ): bool {.importc: "QBitArray_isDetached".}
proc fcQBitArray_clear(self: pointer, ): void {.importc: "QBitArray_clear".}
proc fcQBitArray_testBit(self: pointer, i: cint): bool {.importc: "QBitArray_testBit".}
proc fcQBitArray_setBit(self: pointer, i: cint): void {.importc: "QBitArray_setBit".}
proc fcQBitArray_setBit2(self: pointer, i: cint, val: bool): void {.importc: "QBitArray_setBit2".}
proc fcQBitArray_clearBit(self: pointer, i: cint): void {.importc: "QBitArray_clearBit".}
proc fcQBitArray_toggleBit(self: pointer, i: cint): bool {.importc: "QBitArray_toggleBit".}
proc fcQBitArray_at(self: pointer, i: cint): bool {.importc: "QBitArray_at".}
proc fcQBitArray_operatorSubscript(self: pointer, i: cint): pointer {.importc: "QBitArray_operatorSubscript".}
proc fcQBitArray_operatorSubscriptWithInt(self: pointer, i: cint): bool {.importc: "QBitArray_operatorSubscriptWithInt".}
proc fcQBitArray_operatorSubscriptWithUint(self: pointer, i: cuint): pointer {.importc: "QBitArray_operatorSubscriptWithUint".}
proc fcQBitArray_operatorSubscript2(self: pointer, i: cuint): bool {.importc: "QBitArray_operatorSubscript2".}
proc fcQBitArray_operatorBitwiseAndAssign(self: pointer, param1: pointer): void {.importc: "QBitArray_operatorBitwiseAndAssign".}
proc fcQBitArray_operatorBitwiseOrAssign(self: pointer, param1: pointer): void {.importc: "QBitArray_operatorBitwiseOrAssign".}
proc fcQBitArray_operatorBitwiseNotAssign(self: pointer, param1: pointer): void {.importc: "QBitArray_operatorBitwiseNotAssign".}
proc fcQBitArray_operatorEqual(self: pointer, other: pointer): bool {.importc: "QBitArray_operatorEqual".}
proc fcQBitArray_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QBitArray_operatorNotEqual".}
proc fcQBitArray_fill(self: pointer, val: bool): bool {.importc: "QBitArray_fill".}
proc fcQBitArray_fill2(self: pointer, val: bool, first: cint, last: cint): void {.importc: "QBitArray_fill2".}
proc fcQBitArray_truncate(self: pointer, pos: cint): void {.importc: "QBitArray_truncate".}
proc fcQBitArray_bits(self: pointer, ): cstring {.importc: "QBitArray_bits".}
proc fcQBitArray_fromBits(data: cstring, len: int64): pointer {.importc: "QBitArray_fromBits".}
proc fcQBitArray_fill22(self: pointer, val: bool, size: cint): bool {.importc: "QBitArray_fill22".}
proc fcQBitArray_new(): ptr cQBitArray {.importc: "QBitArray_new".}
proc fcQBitArray_new2(size: cint): ptr cQBitArray {.importc: "QBitArray_new2".}
proc fcQBitArray_new3(other: pointer): ptr cQBitArray {.importc: "QBitArray_new3".}
proc fcQBitArray_new4(size: cint, val: bool): ptr cQBitArray {.importc: "QBitArray_new4".}
proc fcQBitArray_delete(self: pointer) {.importc: "QBitArray_delete".}
proc fcQBitRef_ToBool(self: pointer, ): bool {.importc: "QBitRef_ToBool".}
proc fcQBitRef_operatorNot(self: pointer, ): bool {.importc: "QBitRef_operatorNot".}
proc fcQBitRef_operatorAssign(self: pointer, val: pointer): void {.importc: "QBitRef_operatorAssign".}
proc fcQBitRef_operatorAssignWithVal(self: pointer, val: bool): void {.importc: "QBitRef_operatorAssignWithVal".}
proc fcQBitRef_new(param1: pointer): ptr cQBitRef {.importc: "QBitRef_new".}
proc fcQBitRef_delete(self: pointer) {.importc: "QBitRef_delete".}

proc operatorAssign*(self: gen_qbitarray_types.QBitArray, other: gen_qbitarray_types.QBitArray): void =
  fcQBitArray_operatorAssign(self.h, other.h)

proc swap*(self: gen_qbitarray_types.QBitArray, other: gen_qbitarray_types.QBitArray): void =
  fcQBitArray_swap(self.h, other.h)

proc size*(self: gen_qbitarray_types.QBitArray, ): cint =
  fcQBitArray_size(self.h)

proc count*(self: gen_qbitarray_types.QBitArray, ): cint =
  fcQBitArray_count(self.h)

proc count*(self: gen_qbitarray_types.QBitArray, on: bool): cint =
  fcQBitArray_countWithOn(self.h, on)

proc isEmpty*(self: gen_qbitarray_types.QBitArray, ): bool =
  fcQBitArray_isEmpty(self.h)

proc isNull*(self: gen_qbitarray_types.QBitArray, ): bool =
  fcQBitArray_isNull(self.h)

proc resize*(self: gen_qbitarray_types.QBitArray, size: cint): void =
  fcQBitArray_resize(self.h, size)

proc detach*(self: gen_qbitarray_types.QBitArray, ): void =
  fcQBitArray_detach(self.h)

proc isDetached*(self: gen_qbitarray_types.QBitArray, ): bool =
  fcQBitArray_isDetached(self.h)

proc clear*(self: gen_qbitarray_types.QBitArray, ): void =
  fcQBitArray_clear(self.h)

proc testBit*(self: gen_qbitarray_types.QBitArray, i: cint): bool =
  fcQBitArray_testBit(self.h, i)

proc setBit*(self: gen_qbitarray_types.QBitArray, i: cint): void =
  fcQBitArray_setBit(self.h, i)

proc setBit*(self: gen_qbitarray_types.QBitArray, i: cint, val: bool): void =
  fcQBitArray_setBit2(self.h, i, val)

proc clearBit*(self: gen_qbitarray_types.QBitArray, i: cint): void =
  fcQBitArray_clearBit(self.h, i)

proc toggleBit*(self: gen_qbitarray_types.QBitArray, i: cint): bool =
  fcQBitArray_toggleBit(self.h, i)

proc at*(self: gen_qbitarray_types.QBitArray, i: cint): bool =
  fcQBitArray_at(self.h, i)

proc operatorSubscript*(self: gen_qbitarray_types.QBitArray, i: cint): gen_qbitarray_types.QBitRef =
  gen_qbitarray_types.QBitRef(h: fcQBitArray_operatorSubscript(self.h, i))

proc operatorSubscript2*(self: gen_qbitarray_types.QBitArray, i: cint): bool =
  fcQBitArray_operatorSubscriptWithInt(self.h, i)

proc operatorSubscript*(self: gen_qbitarray_types.QBitArray, i: cuint): gen_qbitarray_types.QBitRef =
  gen_qbitarray_types.QBitRef(h: fcQBitArray_operatorSubscriptWithUint(self.h, i))

proc operatorSubscript2*(self: gen_qbitarray_types.QBitArray, i: cuint): bool =
  fcQBitArray_operatorSubscript2(self.h, i)

proc operatorBitwiseAndAssign*(self: gen_qbitarray_types.QBitArray, param1: gen_qbitarray_types.QBitArray): void =
  fcQBitArray_operatorBitwiseAndAssign(self.h, param1.h)

proc operatorBitwiseOrAssign*(self: gen_qbitarray_types.QBitArray, param1: gen_qbitarray_types.QBitArray): void =
  fcQBitArray_operatorBitwiseOrAssign(self.h, param1.h)

proc operatorBitwiseNotAssign*(self: gen_qbitarray_types.QBitArray, param1: gen_qbitarray_types.QBitArray): void =
  fcQBitArray_operatorBitwiseNotAssign(self.h, param1.h)

proc operatorEqual*(self: gen_qbitarray_types.QBitArray, other: gen_qbitarray_types.QBitArray): bool =
  fcQBitArray_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qbitarray_types.QBitArray, other: gen_qbitarray_types.QBitArray): bool =
  fcQBitArray_operatorNotEqual(self.h, other.h)

proc fill*(self: gen_qbitarray_types.QBitArray, val: bool): bool =
  fcQBitArray_fill(self.h, val)

proc fill*(self: gen_qbitarray_types.QBitArray, val: bool, first: cint, last: cint): void =
  fcQBitArray_fill2(self.h, val, first, last)

proc truncate*(self: gen_qbitarray_types.QBitArray, pos: cint): void =
  fcQBitArray_truncate(self.h, pos)

proc bits*(self: gen_qbitarray_types.QBitArray, ): cstring =
  (fcQBitArray_bits(self.h))

proc fromBits*(_: type gen_qbitarray_types.QBitArray, data: cstring, len: int64): gen_qbitarray_types.QBitArray =
  gen_qbitarray_types.QBitArray(h: fcQBitArray_fromBits(data, len))

proc fill*(self: gen_qbitarray_types.QBitArray, val: bool, size: cint): bool =
  fcQBitArray_fill22(self.h, val, size)

proc create*(T: type gen_qbitarray_types.QBitArray): gen_qbitarray_types.QBitArray =
  gen_qbitarray_types.QBitArray(h: fcQBitArray_new())

proc create*(T: type gen_qbitarray_types.QBitArray,
    size: cint): gen_qbitarray_types.QBitArray =
  gen_qbitarray_types.QBitArray(h: fcQBitArray_new2(size))

proc create*(T: type gen_qbitarray_types.QBitArray,
    other: gen_qbitarray_types.QBitArray): gen_qbitarray_types.QBitArray =
  gen_qbitarray_types.QBitArray(h: fcQBitArray_new3(other.h))

proc create*(T: type gen_qbitarray_types.QBitArray,
    size: cint, val: bool): gen_qbitarray_types.QBitArray =
  gen_qbitarray_types.QBitArray(h: fcQBitArray_new4(size, val))

proc delete*(self: gen_qbitarray_types.QBitArray) =
  fcQBitArray_delete(self.h)
proc ToBool*(self: gen_qbitarray_types.QBitRef, ): bool =
  fcQBitRef_ToBool(self.h)

proc operatorNot*(self: gen_qbitarray_types.QBitRef, ): bool =
  fcQBitRef_operatorNot(self.h)

proc operatorAssign*(self: gen_qbitarray_types.QBitRef, val: gen_qbitarray_types.QBitRef): void =
  fcQBitRef_operatorAssign(self.h, val.h)

proc operatorAssign*(self: gen_qbitarray_types.QBitRef, val: bool): void =
  fcQBitRef_operatorAssignWithVal(self.h, val)

proc create*(T: type gen_qbitarray_types.QBitRef,
    param1: gen_qbitarray_types.QBitRef): gen_qbitarray_types.QBitRef =
  gen_qbitarray_types.QBitRef(h: fcQBitRef_new(param1.h))

proc delete*(self: gen_qbitarray_types.QBitRef) =
  fcQBitRef_delete(self.h)
