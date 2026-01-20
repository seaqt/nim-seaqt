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


import ./gen_qbindingstorage_types
export gen_qbindingstorage_types

import
  ./gen_qpropertyprivate_types
export
  gen_qpropertyprivate_types

type cQBindingStatus*{.exportc: "QBindingStatus", incompleteStruct.} = object
type cQBindingStorage*{.exportc: "QBindingStorage", incompleteStruct.} = object

proc fcQBindingStatus_currentlyEvaluatingBinding(self: pointer): pointer {.importc: "QBindingStatus_currentlyEvaluatingBinding".}
proc fcQBindingStatus_setCurrentlyEvaluatingBinding(self: pointer, currentlyEvaluatingBinding: pointer): void {.importc: "QBindingStatus_setCurrentlyEvaluatingBinding".}
proc fcQBindingStatus_currentCompatProperty(self: pointer): pointer {.importc: "QBindingStatus_currentCompatProperty".}
proc fcQBindingStatus_setCurrentCompatProperty(self: pointer, currentCompatProperty: pointer): void {.importc: "QBindingStatus_setCurrentCompatProperty".}
proc fcQBindingStatus_threadId(self: pointer): pointer {.importc: "QBindingStatus_threadId".}
proc fcQBindingStatus_setThreadId(self: pointer, threadId: pointer): void {.importc: "QBindingStatus_setThreadId".}
proc fcQBindingStatus_delete(self: pointer) {.importc: "QBindingStatus_delete".}
proc fcQBindingStorage_isEmpty(self: pointer): bool {.importc: "QBindingStorage_isEmpty".}
proc fcQBindingStorage_isValid(self: pointer): bool {.importc: "QBindingStorage_isValid".}
proc fcQBindingStorage_registerDependency(self: pointer, data: pointer): void {.importc: "QBindingStorage_registerDependency".}
proc fcQBindingStorage_bindingData(self: pointer, data: pointer): pointer {.importc: "QBindingStorage_bindingData".}
proc fcQBindingStorage_bindingData2(self: pointer, data: pointer, createVal: bool): pointer {.importc: "QBindingStorage_bindingData2".}
proc fcQBindingStorage_new(): ptr cQBindingStorage {.importc: "QBindingStorage_new".}
proc fcQBindingStorage_delete(self: pointer) {.importc: "QBindingStorage_delete".}

proc currentlyEvaluatingBinding*(self: gen_qbindingstorage_types.QBindingStatus): pointer =
  fcQBindingStatus_currentlyEvaluatingBinding(self.h)

proc setCurrentlyEvaluatingBinding*(self: gen_qbindingstorage_types.QBindingStatus, currentlyEvaluatingBinding: pointer): void =
  fcQBindingStatus_setCurrentlyEvaluatingBinding(self.h, currentlyEvaluatingBinding)

proc currentCompatProperty*(self: gen_qbindingstorage_types.QBindingStatus): pointer =
  fcQBindingStatus_currentCompatProperty(self.h)

proc setCurrentCompatProperty*(self: gen_qbindingstorage_types.QBindingStatus, currentCompatProperty: pointer): void =
  fcQBindingStatus_setCurrentCompatProperty(self.h, currentCompatProperty)

proc threadId*(self: gen_qbindingstorage_types.QBindingStatus): pointer =
  fcQBindingStatus_threadId(self.h)

proc setThreadId*(self: gen_qbindingstorage_types.QBindingStatus, threadId: pointer): void =
  fcQBindingStatus_setThreadId(self.h, threadId)

proc delete*(self: gen_qbindingstorage_types.QBindingStatus) =
  fcQBindingStatus_delete(self.h)
proc isEmpty*(self: gen_qbindingstorage_types.QBindingStorage): bool =
  fcQBindingStorage_isEmpty(self.h)

proc isValid*(self: gen_qbindingstorage_types.QBindingStorage): bool =
  fcQBindingStorage_isValid(self.h)

proc registerDependency*(self: gen_qbindingstorage_types.QBindingStorage, data: gen_qpropertyprivate_types.QUntypedPropertyData): void =
  fcQBindingStorage_registerDependency(self.h, data.h)

proc bindingData*(self: gen_qbindingstorage_types.QBindingStorage, data: gen_qpropertyprivate_types.QUntypedPropertyData): pointer =
  fcQBindingStorage_bindingData(self.h, data.h)

proc bindingData*(self: gen_qbindingstorage_types.QBindingStorage, data: gen_qpropertyprivate_types.QUntypedPropertyData, createVal: bool): pointer =
  fcQBindingStorage_bindingData2(self.h, data.h, createVal)

proc create*(T: type gen_qbindingstorage_types.QBindingStorage): gen_qbindingstorage_types.QBindingStorage =
  let tmp = gen_qbindingstorage_types.QBindingStorage(h: fcQBindingStorage_new())
  tmp
proc delete*(self: gen_qbindingstorage_types.QBindingStorage) =
  fcQBindingStorage_delete(self.h)
