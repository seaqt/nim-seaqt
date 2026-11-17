import ./qtdesigner_pkg

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


import ./gen_extension_types
export gen_extension_types

import
  ../QtCore/gen_qobject_types
export
  gen_qobject_types

type cQAbstractExtensionFactory*{.exportc: "QAbstractExtensionFactory", incompleteStruct.} = object
type cQAbstractExtensionManager*{.exportc: "QAbstractExtensionManager", incompleteStruct.} = object

proc fcQAbstractExtensionFactory_extension(self: pointer, objectVal: pointer, iid: struct_seaqt_string): pointer {.importc: "QAbstractExtensionFactory_extension".}
proc fcQAbstractExtensionFactory_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAbstractExtensionFactory_operatorAssign".}
proc fcQAbstractExtensionFactory_delete(self: pointer) {.importc: "QAbstractExtensionFactory_delete".}
proc fcQAbstractExtensionManager_registerExtensions(self: pointer, factory: pointer, iid: struct_seaqt_string): void {.importc: "QAbstractExtensionManager_registerExtensions".}
proc fcQAbstractExtensionManager_unregisterExtensions(self: pointer, factory: pointer, iid: struct_seaqt_string): void {.importc: "QAbstractExtensionManager_unregisterExtensions".}
proc fcQAbstractExtensionManager_extension(self: pointer, objectVal: pointer, iid: struct_seaqt_string): pointer {.importc: "QAbstractExtensionManager_extension".}
proc fcQAbstractExtensionManager_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAbstractExtensionManager_operatorAssign".}
proc fcQAbstractExtensionManager_delete(self: pointer) {.importc: "QAbstractExtensionManager_delete".}

proc extension*(self: gen_extension_types.QAbstractExtensionFactory, objectVal: gen_qobject_types.QObject, iid: openArray[char]): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractExtensionFactory_extension(self.h, objectVal.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid)))))

proc operatorAssign*(self: gen_extension_types.QAbstractExtensionFactory, param1: gen_extension_types.QAbstractExtensionFactory): void =
  fcQAbstractExtensionFactory_operatorAssign(self.h, param1.h)

proc delete*(self: gen_extension_types.QAbstractExtensionFactory) =
  fcQAbstractExtensionFactory_delete(self.h)
proc registerExtensions*(self: gen_extension_types.QAbstractExtensionManager, factory: gen_extension_types.QAbstractExtensionFactory, iid: openArray[char]): void =
  fcQAbstractExtensionManager_registerExtensions(self.h, factory.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid))))

proc unregisterExtensions*(self: gen_extension_types.QAbstractExtensionManager, factory: gen_extension_types.QAbstractExtensionFactory, iid: openArray[char]): void =
  fcQAbstractExtensionManager_unregisterExtensions(self.h, factory.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid))))

proc extension*(self: gen_extension_types.QAbstractExtensionManager, objectVal: gen_qobject_types.QObject, iid: openArray[char]): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractExtensionManager_extension(self.h, objectVal.h, struct_seaqt_string(data: if len(iid) > 0: addr iid[0] else: nil, len: csize_t(len(iid)))))

proc operatorAssign*(self: gen_extension_types.QAbstractExtensionManager, param1: gen_extension_types.QAbstractExtensionManager): void =
  fcQAbstractExtensionManager_operatorAssign(self.h, param1.h)

proc delete*(self: gen_extension_types.QAbstractExtensionManager) =
  fcQAbstractExtensionManager_delete(self.h)
