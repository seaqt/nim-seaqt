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
{.compile("gen_qthreadstorage.cpp", cflags).}


import ./gen_qthreadstorage_types
export gen_qthreadstorage_types


type cQThreadStorageData*{.exportc: "QThreadStorageData", incompleteStruct.} = object

proc fcQThreadStorageData_new(param1: pointer): ptr cQThreadStorageData {.importc: "QThreadStorageData_new".}
proc fcQThreadStorageData_delete(self: pointer) {.importc: "QThreadStorageData_delete".}


func init*(T: type gen_qthreadstorage_types.QThreadStorageData, h: ptr cQThreadStorageData): gen_qthreadstorage_types.QThreadStorageData =
  T(h: h)
proc create*(T: type gen_qthreadstorage_types.QThreadStorageData, param1: gen_qthreadstorage_types.QThreadStorageData): gen_qthreadstorage_types.QThreadStorageData =
  gen_qthreadstorage_types.QThreadStorageData.init(fcQThreadStorageData_new(param1.h))

proc delete*(self: gen_qthreadstorage_types.QThreadStorageData) =
  fcQThreadStorageData_delete(self.h)
