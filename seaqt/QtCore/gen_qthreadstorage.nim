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


import ./gen_qthreadstorage_types
export gen_qthreadstorage_types


type cQThreadStorageData*{.exportc: "QThreadStorageData", incompleteStruct.} = object

proc fcQThreadStorageData_get(self: pointer, ): pointer {.importc: "QThreadStorageData_get".}
proc fcQThreadStorageData_set(self: pointer, p: pointer): pointer {.importc: "QThreadStorageData_set".}
proc fcQThreadStorageData_finish(param1: pointer): void {.importc: "QThreadStorageData_finish".}
proc fcQThreadStorageData_new(param1: pointer): ptr cQThreadStorageData {.importc: "QThreadStorageData_new".}

proc get*(self: gen_qthreadstorage_types.QThreadStorageData, ): pointer =
  fcQThreadStorageData_get(self.h)

proc set*(self: gen_qthreadstorage_types.QThreadStorageData, p: pointer): pointer =
  fcQThreadStorageData_set(self.h, p)

proc finish*(_: type gen_qthreadstorage_types.QThreadStorageData, param1: pointer): void =
  fcQThreadStorageData_finish(param1)

proc create*(T: type gen_qthreadstorage_types.QThreadStorageData,
    param1: gen_qthreadstorage_types.QThreadStorageData): gen_qthreadstorage_types.QThreadStorageData =
  gen_qthreadstorage_types.QThreadStorageData(h: fcQThreadStorageData_new(param1.h), owned: true)

