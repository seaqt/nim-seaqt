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
{.compile("gen_qcontiguouscache.cpp", cflags).}


import ./gen_qcontiguouscache_types
export gen_qcontiguouscache_types


type cQContiguousCacheData*{.exportc: "QContiguousCacheData", incompleteStruct.} = object

proc fcQContiguousCacheData_allocateData(size: int64, alignment: int64): pointer {.importc: "QContiguousCacheData_allocateData".}
proc fcQContiguousCacheData_freeData(data: pointer): void {.importc: "QContiguousCacheData_freeData".}
proc fcQContiguousCacheData_delete(self: pointer) {.importc: "QContiguousCacheData_delete".}

proc allocateData*(_: type gen_qcontiguouscache_types.QContiguousCacheData, size: int64, alignment: int64): gen_qcontiguouscache_types.QContiguousCacheData =
  gen_qcontiguouscache_types.QContiguousCacheData(h: fcQContiguousCacheData_allocateData(size, alignment))

proc freeData*(_: type gen_qcontiguouscache_types.QContiguousCacheData, data: gen_qcontiguouscache_types.QContiguousCacheData): void =
  fcQContiguousCacheData_freeData(data.h)

proc delete*(self: gen_qcontiguouscache_types.QContiguousCacheData) =
  fcQContiguousCacheData_delete(self.h)
