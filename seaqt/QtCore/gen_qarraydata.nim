import ./Qt6Core_libs

{.push raises: [].}

from system/ansi_c import c_free

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qarraydata.cpp", cflags).}


type QArrayDataAllocationOptionEnum* = distinct cint
template Grow*(_: type QArrayDataAllocationOptionEnum): untyped = 0
template KeepSize*(_: type QArrayDataAllocationOptionEnum): untyped = 1


type QArrayDataGrowthPositionEnum* = distinct cint
template GrowsAtEnd*(_: type QArrayDataGrowthPositionEnum): untyped = 0
template GrowsAtBeginning*(_: type QArrayDataGrowthPositionEnum): untyped = 1


type QArrayDataArrayOptionEnum* = distinct cint
template ArrayOptionDefault*(_: type QArrayDataArrayOptionEnum): untyped = 0
template CapacityReserved*(_: type QArrayDataArrayOptionEnum): untyped = 1


type QtPrivateQContainerImplHelperCutResultEnum* = distinct cint
template Null*(_: type QtPrivateQContainerImplHelperCutResultEnum): untyped = 0
template Empty*(_: type QtPrivateQContainerImplHelperCutResultEnum): untyped = 1
template Full*(_: type QtPrivateQContainerImplHelperCutResultEnum): untyped = 2
template Subset*(_: type QtPrivateQContainerImplHelperCutResultEnum): untyped = 3


import ./gen_qarraydata_types
export gen_qarraydata_types


type cQArrayData*{.exportc: "QArrayData", incompleteStruct.} = object

proc fcQArrayData_allocatedCapacity(self: pointer, ): int64 {.importc: "QArrayData_allocatedCapacity".}
proc fcQArrayData_constAllocatedCapacity(self: pointer, ): int64 {.importc: "QArrayData_constAllocatedCapacity".}
proc fcQArrayData_refX(self: pointer, ): bool {.importc: "QArrayData_ref".}
proc fcQArrayData_deref(self: pointer, ): bool {.importc: "QArrayData_deref".}
proc fcQArrayData_isShared(self: pointer, ): bool {.importc: "QArrayData_isShared".}
proc fcQArrayData_needsDetach(self: pointer, ): bool {.importc: "QArrayData_needsDetach".}
proc fcQArrayData_detachCapacity(self: pointer, newSize: int64): int64 {.importc: "QArrayData_detachCapacity".}
proc fcQArrayData_reallocateUnaligned(data: pointer, dataPointer: pointer, objectSize: int64, newCapacity: int64, option: cint): struct_miqt_map {.importc: "QArrayData_reallocateUnaligned".}
proc fcQArrayData_deallocate(data: pointer, objectSize: int64, alignment: int64): void {.importc: "QArrayData_deallocate".}
proc fcQArrayData_delete(self: pointer) {.importc: "QArrayData_delete".}


func init*(T: type gen_qarraydata_types.QArrayData, h: ptr cQArrayData): gen_qarraydata_types.QArrayData =
  T(h: h)
proc allocatedCapacity*(self: gen_qarraydata_types.QArrayData, ): int64 =
  fcQArrayData_allocatedCapacity(self.h)

proc constAllocatedCapacity*(self: gen_qarraydata_types.QArrayData, ): int64 =
  fcQArrayData_constAllocatedCapacity(self.h)

proc refX*(self: gen_qarraydata_types.QArrayData, ): bool =
  fcQArrayData_refX(self.h)

proc deref*(self: gen_qarraydata_types.QArrayData, ): bool =
  fcQArrayData_deref(self.h)

proc isShared*(self: gen_qarraydata_types.QArrayData, ): bool =
  fcQArrayData_isShared(self.h)

proc needsDetach*(self: gen_qarraydata_types.QArrayData, ): bool =
  fcQArrayData_needsDetach(self.h)

proc detachCapacity*(self: gen_qarraydata_types.QArrayData, newSize: int64): int64 =
  fcQArrayData_detachCapacity(self.h, newSize)

proc reallocateUnaligned*(_: type gen_qarraydata_types.QArrayData, data: gen_qarraydata_types.QArrayData, dataPointer: pointer, objectSize: int64, newCapacity: int64, option: cint): tuple[first: gen_qarraydata_types.QArrayData, second: pointer] =
  var v_mm = fcQArrayData_reallocateUnaligned(data.h, dataPointer, objectSize, newCapacity, cint(option))
  var v_First_CArray = cast[ptr UncheckedArray[pointer]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[pointer]](v_mm.values)
  var v_entry_First = gen_qarraydata_types.QArrayData(h: v_First_CArray[0])

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc deallocate*(_: type gen_qarraydata_types.QArrayData, data: gen_qarraydata_types.QArrayData, objectSize: int64, alignment: int64): void =
  fcQArrayData_deallocate(data.h, objectSize, alignment)

proc delete*(self: gen_qarraydata_types.QArrayData) =
  fcQArrayData_delete(self.h)
