import ./Qt6Core_libs

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


import ./gen_qbindingstorage_types
export gen_qbindingstorage_types

import
  ./gen_qpropertyprivate_types
export
  gen_qpropertyprivate_types

type cQBindingStatus*{.exportc: "QBindingStatus", incompleteStruct.} = object
type cQBindingStorage*{.exportc: "QBindingStorage", incompleteStruct.} = object

proc fcQBindingStorage_isEmpty(self: pointer, ): bool {.importc: "QBindingStorage_isEmpty".}
proc fcQBindingStorage_isValid(self: pointer, ): bool {.importc: "QBindingStorage_isValid".}
proc fcQBindingStorage_registerDependency(self: pointer, data: pointer): void {.importc: "QBindingStorage_registerDependency".}
proc fcQBindingStorage_new(): ptr cQBindingStorage {.importc: "QBindingStorage_new".}

proc isEmpty*(self: gen_qbindingstorage_types.QBindingStorage, ): bool =
  fcQBindingStorage_isEmpty(self.h)

proc isValid*(self: gen_qbindingstorage_types.QBindingStorage, ): bool =
  fcQBindingStorage_isValid(self.h)

proc registerDependency*(self: gen_qbindingstorage_types.QBindingStorage, data: gen_qpropertyprivate_types.QUntypedPropertyData): void =
  fcQBindingStorage_registerDependency(self.h, data.h)

proc create*(T: type gen_qbindingstorage_types.QBindingStorage): gen_qbindingstorage_types.QBindingStorage =
  gen_qbindingstorage_types.QBindingStorage(h: fcQBindingStorage_new(), owned: true)

