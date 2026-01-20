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


import ./gen_qcontiguouscache_types
export gen_qcontiguouscache_types


type cQContiguousCacheData*{.exportc: "QContiguousCacheData", incompleteStruct.} = object

proc fcQContiguousCacheData_alloc(self: pointer): int64 {.importc: "QContiguousCacheData_alloc".}
proc fcQContiguousCacheData_setAlloc(self: pointer, alloc: int64): void {.importc: "QContiguousCacheData_setAlloc".}
proc fcQContiguousCacheData_count(self: pointer): int64 {.importc: "QContiguousCacheData_count".}
proc fcQContiguousCacheData_setCount(self: pointer, count: int64): void {.importc: "QContiguousCacheData_setCount".}
proc fcQContiguousCacheData_start(self: pointer): int64 {.importc: "QContiguousCacheData_start".}
proc fcQContiguousCacheData_setStart(self: pointer, start: int64): void {.importc: "QContiguousCacheData_setStart".}
proc fcQContiguousCacheData_offset(self: pointer): int64 {.importc: "QContiguousCacheData_offset".}
proc fcQContiguousCacheData_setOffset(self: pointer, offset: int64): void {.importc: "QContiguousCacheData_setOffset".}
proc fcQContiguousCacheData_allocateData(size: int64, alignment: int64): pointer {.importc: "QContiguousCacheData_allocateData".}
proc fcQContiguousCacheData_freeData(data: pointer): void {.importc: "QContiguousCacheData_freeData".}
proc fcQContiguousCacheData_delete(self: pointer) {.importc: "QContiguousCacheData_delete".}

proc alloc*(self: gen_qcontiguouscache_types.QContiguousCacheData): int64 =
  fcQContiguousCacheData_alloc(self.h)

proc setAlloc*(self: gen_qcontiguouscache_types.QContiguousCacheData, alloc: int64): void =
  fcQContiguousCacheData_setAlloc(self.h, alloc)

proc count*(self: gen_qcontiguouscache_types.QContiguousCacheData): int64 =
  fcQContiguousCacheData_count(self.h)

proc setCount*(self: gen_qcontiguouscache_types.QContiguousCacheData, count: int64): void =
  fcQContiguousCacheData_setCount(self.h, count)

proc start*(self: gen_qcontiguouscache_types.QContiguousCacheData): int64 =
  fcQContiguousCacheData_start(self.h)

proc setStart*(self: gen_qcontiguouscache_types.QContiguousCacheData, start: int64): void =
  fcQContiguousCacheData_setStart(self.h, start)

proc offset*(self: gen_qcontiguouscache_types.QContiguousCacheData): int64 =
  fcQContiguousCacheData_offset(self.h)

proc setOffset*(self: gen_qcontiguouscache_types.QContiguousCacheData, offset: int64): void =
  fcQContiguousCacheData_setOffset(self.h, offset)

proc allocateData*(_: type gen_qcontiguouscache_types.QContiguousCacheData, size: int64, alignment: int64): gen_qcontiguouscache_types.QContiguousCacheData =
  gen_qcontiguouscache_types.QContiguousCacheData(h: fcQContiguousCacheData_allocateData(size, alignment))

proc freeData*(_: type gen_qcontiguouscache_types.QContiguousCacheData, data: gen_qcontiguouscache_types.QContiguousCacheData): void =
  fcQContiguousCacheData_freeData(data.h)

proc delete*(self: gen_qcontiguouscache_types.QContiguousCacheData) =
  fcQContiguousCacheData_delete(self.h)
