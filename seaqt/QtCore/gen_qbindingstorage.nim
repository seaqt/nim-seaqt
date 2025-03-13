import ./Qt6Core_libs

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


import ./gen_qbindingstorage_types
export gen_qbindingstorage_types

import
  ./gen_qpropertyprivate_types
export
  gen_qpropertyprivate_types

type cQBindingStatus*{.exportc: "QBindingStatus", incompleteStruct.} = object
type cQBindingStorage*{.exportc: "QBindingStorage", incompleteStruct.} = object

proc fcQBindingStorage_isEmpty(self: pointer): bool {.importc: "QBindingStorage_isEmpty".}
proc fcQBindingStorage_isValid(self: pointer): bool {.importc: "QBindingStorage_isValid".}
proc fcQBindingStorage_registerDependency(self: pointer, data: pointer): void {.importc: "QBindingStorage_registerDependency".}
proc fcQBindingStorage_new(): ptr cQBindingStorage {.importc: "QBindingStorage_new".}

proc isEmpty*(self: gen_qbindingstorage_types.QBindingStorage): bool =
  fcQBindingStorage_isEmpty(self.h)

proc isValid*(self: gen_qbindingstorage_types.QBindingStorage): bool =
  fcQBindingStorage_isValid(self.h)

proc registerDependency*(self: gen_qbindingstorage_types.QBindingStorage, data: gen_qpropertyprivate_types.QUntypedPropertyData): void =
  fcQBindingStorage_registerDependency(self.h, data.h)

proc create*(T: type gen_qbindingstorage_types.QBindingStorage): gen_qbindingstorage_types.QBindingStorage =
  gen_qbindingstorage_types.QBindingStorage(h: fcQBindingStorage_new(), owned: true)

