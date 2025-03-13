import ./Qt5Core_libs

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


type QArrayDataAllocationOptionEnum* = distinct cint
template CapacityReserved*(_: type QArrayDataAllocationOptionEnum): untyped = 1
template Unsharable*(_: type QArrayDataAllocationOptionEnum): untyped = 2
template RawData*(_: type QArrayDataAllocationOptionEnum): untyped = 4
template Grow*(_: type QArrayDataAllocationOptionEnum): untyped = 8
template Default*(_: type QArrayDataAllocationOptionEnum): untyped = 0


type QtPrivateQContainerImplHelperCutResultEnum* = distinct cint
template Null*(_: type QtPrivateQContainerImplHelperCutResultEnum): untyped = 0
template Empty*(_: type QtPrivateQContainerImplHelperCutResultEnum): untyped = 1
template Full*(_: type QtPrivateQContainerImplHelperCutResultEnum): untyped = 2
template Subset*(_: type QtPrivateQContainerImplHelperCutResultEnum): untyped = 3


import ./gen_qarraydata_types
export gen_qarraydata_types


type cQArrayData*{.exportc: "QArrayData", incompleteStruct.} = object

proc fcQArrayData_data(self: pointer): pointer {.importc: "QArrayData_data".}
proc fcQArrayData_data2(self: pointer): pointer {.importc: "QArrayData_data2".}
proc fcQArrayData_isMutable(self: pointer): bool {.importc: "QArrayData_isMutable".}
proc fcQArrayData_detachCapacity(self: pointer, newSize: csize_t): csize_t {.importc: "QArrayData_detachCapacity".}
proc fcQArrayData_detachFlags(self: pointer): cint {.importc: "QArrayData_detachFlags".}
proc fcQArrayData_cloneFlags(self: pointer): cint {.importc: "QArrayData_cloneFlags".}
proc fcQArrayData_allocate(objectSize: csize_t, alignment: csize_t, capacity: csize_t): pointer {.importc: "QArrayData_allocate".}
proc fcQArrayData_reallocateUnaligned(data: pointer, objectSize: csize_t, newCapacity: csize_t): pointer {.importc: "QArrayData_reallocateUnaligned".}
proc fcQArrayData_deallocate(data: pointer, objectSize: csize_t, alignment: csize_t): void {.importc: "QArrayData_deallocate".}
proc fcQArrayData_sharedNull(): pointer {.importc: "QArrayData_sharedNull".}
proc fcQArrayData_allocate4(objectSize: csize_t, alignment: csize_t, capacity: csize_t, options: cint): pointer {.importc: "QArrayData_allocate4".}
proc fcQArrayData_reallocateUnaligned4(data: pointer, objectSize: csize_t, newCapacity: csize_t, newOptions: cint): pointer {.importc: "QArrayData_reallocateUnaligned4".}

proc data*(self: gen_qarraydata_types.QArrayData): pointer =
  fcQArrayData_data(self.h)

proc data2*(self: gen_qarraydata_types.QArrayData): pointer =
  fcQArrayData_data2(self.h)

proc isMutable*(self: gen_qarraydata_types.QArrayData): bool =
  fcQArrayData_isMutable(self.h)

proc detachCapacity*(self: gen_qarraydata_types.QArrayData, newSize: csize_t): csize_t =
  fcQArrayData_detachCapacity(self.h, newSize)

proc detachFlags*(self: gen_qarraydata_types.QArrayData): cint =
  cint(fcQArrayData_detachFlags(self.h))

proc cloneFlags*(self: gen_qarraydata_types.QArrayData): cint =
  cint(fcQArrayData_cloneFlags(self.h))

proc allocate*(_: type gen_qarraydata_types.QArrayData, objectSize: csize_t, alignment: csize_t, capacity: csize_t): gen_qarraydata_types.QArrayData =
  gen_qarraydata_types.QArrayData(h: fcQArrayData_allocate(objectSize, alignment, capacity), owned: false)

proc reallocateUnaligned*(_: type gen_qarraydata_types.QArrayData, data: gen_qarraydata_types.QArrayData, objectSize: csize_t, newCapacity: csize_t): gen_qarraydata_types.QArrayData =
  gen_qarraydata_types.QArrayData(h: fcQArrayData_reallocateUnaligned(data.h, objectSize, newCapacity), owned: false)

proc deallocate*(_: type gen_qarraydata_types.QArrayData, data: gen_qarraydata_types.QArrayData, objectSize: csize_t, alignment: csize_t): void =
  fcQArrayData_deallocate(data.h, objectSize, alignment)

proc sharedNull*(_: type gen_qarraydata_types.QArrayData): gen_qarraydata_types.QArrayData =
  gen_qarraydata_types.QArrayData(h: fcQArrayData_sharedNull(), owned: false)

proc allocate*(_: type gen_qarraydata_types.QArrayData, objectSize: csize_t, alignment: csize_t, capacity: csize_t, options: cint): gen_qarraydata_types.QArrayData =
  gen_qarraydata_types.QArrayData(h: fcQArrayData_allocate4(objectSize, alignment, capacity, cint(options)), owned: false)

proc reallocateUnaligned*(_: type gen_qarraydata_types.QArrayData, data: gen_qarraydata_types.QArrayData, objectSize: csize_t, newCapacity: csize_t, newOptions: cint): gen_qarraydata_types.QArrayData =
  gen_qarraydata_types.QArrayData(h: fcQArrayData_reallocateUnaligned4(data.h, objectSize, newCapacity, cint(newOptions)), owned: false)

