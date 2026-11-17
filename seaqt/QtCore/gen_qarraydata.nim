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


{.compile("gen_qarraydata.cpp", QtCoreCFlags).}


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




