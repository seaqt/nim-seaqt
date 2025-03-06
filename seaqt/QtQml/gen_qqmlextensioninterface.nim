import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
{.compile("gen_qqmlextensioninterface.cpp", cflags).}


import ./gen_qqmlextensioninterface_types
export gen_qqmlextensioninterface_types

import
  ./gen_qqmlengine_types
export
  gen_qqmlengine_types

type cQQmlTypesExtensionInterface*{.exportc: "QQmlTypesExtensionInterface", incompleteStruct.} = object
type cQQmlExtensionInterface*{.exportc: "QQmlExtensionInterface", incompleteStruct.} = object
type cQQmlEngineExtensionInterface*{.exportc: "QQmlEngineExtensionInterface", incompleteStruct.} = object

proc fcQQmlTypesExtensionInterface_registerTypes(self: pointer, uri: cstring): void {.importc: "QQmlTypesExtensionInterface_registerTypes".}
proc fcQQmlTypesExtensionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlTypesExtensionInterface_operatorAssign".}
type cQQmlTypesExtensionInterfaceVTable = object
  destructor*: proc(vtbl: ptr cQQmlTypesExtensionInterfaceVTable, self: ptr cQQmlTypesExtensionInterface) {.cdecl, raises:[], gcsafe.}
  registerTypes*: proc(vtbl, self: pointer, uri: cstring): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlTypesExtensionInterface_new(vtbl: pointer, param1: pointer): ptr cQQmlTypesExtensionInterface {.importc: "QQmlTypesExtensionInterface_new".}
proc fcQQmlTypesExtensionInterface_delete(self: pointer) {.importc: "QQmlTypesExtensionInterface_delete".}
proc fcQQmlExtensionInterface_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlExtensionInterface_initializeEngine".}
proc fcQQmlExtensionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlExtensionInterface_operatorAssign".}
type cQQmlExtensionInterfaceVTable = object
  destructor*: proc(vtbl: ptr cQQmlExtensionInterfaceVTable, self: ptr cQQmlExtensionInterface) {.cdecl, raises:[], gcsafe.}
  initializeEngine*: proc(vtbl, self: pointer, engine: pointer, uri: cstring): void {.cdecl, raises: [], gcsafe.}
  registerTypes*: proc(vtbl, self: pointer, uri: cstring): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlExtensionInterface_new(vtbl: pointer, param1: pointer): ptr cQQmlExtensionInterface {.importc: "QQmlExtensionInterface_new".}
proc fcQQmlExtensionInterface_delete(self: pointer) {.importc: "QQmlExtensionInterface_delete".}
proc fcQQmlEngineExtensionInterface_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlEngineExtensionInterface_initializeEngine".}
proc fcQQmlEngineExtensionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlEngineExtensionInterface_operatorAssign".}
proc fcQQmlEngineExtensionInterface_delete(self: pointer) {.importc: "QQmlEngineExtensionInterface_delete".}

proc registerTypes*(self: gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface, uri: cstring): void =
  fcQQmlTypesExtensionInterface_registerTypes(self.h, uri)

proc operatorAssign*(self: gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface, param1: gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface): void =
  fcQQmlTypesExtensionInterface_operatorAssign(self.h, param1.h)

type QQmlTypesExtensionInterfaceregisterTypesProc* = proc(self: QQmlTypesExtensionInterface, uri: cstring): void {.raises: [], gcsafe.}
type QQmlTypesExtensionInterfaceVTable* = object
  vtbl: cQQmlTypesExtensionInterfaceVTable
  registerTypes*: QQmlTypesExtensionInterfaceregisterTypesProc
proc miqt_exec_callback_cQQmlTypesExtensionInterface_registerTypes(vtbl: pointer, self: pointer, uri: cstring): void {.cdecl.} =
  let vtbl = cast[ptr QQmlTypesExtensionInterfaceVTable](vtbl)
  let self = QQmlTypesExtensionInterface(h: self)
  let slotval1 = (uri)
  vtbl[].registerTypes(self, slotval1)

proc create*(T: type gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface,
    param1: gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface,
    vtbl: ref QQmlTypesExtensionInterfaceVTable = nil): gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface =
  let vtbl = if vtbl == nil: new QQmlTypesExtensionInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlTypesExtensionInterfaceVTable, _: ptr cQQmlTypesExtensionInterface) {.cdecl.} =
    let vtbl = cast[ref QQmlTypesExtensionInterfaceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.registerTypes):
    vtbl[].vtbl.registerTypes = miqt_exec_callback_cQQmlTypesExtensionInterface_registerTypes
  gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface(h: fcQQmlTypesExtensionInterface_new(addr(vtbl[]), param1.h))

proc delete*(self: gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface) =
  fcQQmlTypesExtensionInterface_delete(self.h)
proc initializeEngine*(self: gen_qqmlextensioninterface_types.QQmlExtensionInterface, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fcQQmlExtensionInterface_initializeEngine(self.h, engine.h, uri)

proc operatorAssign*(self: gen_qqmlextensioninterface_types.QQmlExtensionInterface, param1: gen_qqmlextensioninterface_types.QQmlExtensionInterface): void =
  fcQQmlExtensionInterface_operatorAssign(self.h, param1.h)

type QQmlExtensionInterfaceinitializeEngineProc* = proc(self: QQmlExtensionInterface, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void {.raises: [], gcsafe.}
type QQmlExtensionInterfaceregisterTypesProc* = proc(self: QQmlExtensionInterface, uri: cstring): void {.raises: [], gcsafe.}
type QQmlExtensionInterfaceVTable* = object
  vtbl: cQQmlExtensionInterfaceVTable
  initializeEngine*: QQmlExtensionInterfaceinitializeEngineProc
  registerTypes*: QQmlExtensionInterfaceregisterTypesProc
proc miqt_exec_callback_cQQmlExtensionInterface_initializeEngine(vtbl: pointer, self: pointer, engine: pointer, uri: cstring): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionInterfaceVTable](vtbl)
  let self = QQmlExtensionInterface(h: self)
  let slotval1 = gen_qqmlengine_types.QQmlEngine(h: engine)
  let slotval2 = (uri)
  vtbl[].initializeEngine(self, slotval1, slotval2)

proc miqt_exec_callback_cQQmlExtensionInterface_registerTypes(vtbl: pointer, self: pointer, uri: cstring): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionInterfaceVTable](vtbl)
  let self = QQmlExtensionInterface(h: self)
  let slotval1 = (uri)
  vtbl[].registerTypes(self, slotval1)

proc create*(T: type gen_qqmlextensioninterface_types.QQmlExtensionInterface,
    param1: gen_qqmlextensioninterface_types.QQmlExtensionInterface,
    vtbl: ref QQmlExtensionInterfaceVTable = nil): gen_qqmlextensioninterface_types.QQmlExtensionInterface =
  let vtbl = if vtbl == nil: new QQmlExtensionInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQmlExtensionInterfaceVTable, _: ptr cQQmlExtensionInterface) {.cdecl.} =
    let vtbl = cast[ref QQmlExtensionInterfaceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.initializeEngine):
    vtbl[].vtbl.initializeEngine = miqt_exec_callback_cQQmlExtensionInterface_initializeEngine
  if not isNil(vtbl.registerTypes):
    vtbl[].vtbl.registerTypes = miqt_exec_callback_cQQmlExtensionInterface_registerTypes
  gen_qqmlextensioninterface_types.QQmlExtensionInterface(h: fcQQmlExtensionInterface_new(addr(vtbl[]), param1.h))

proc delete*(self: gen_qqmlextensioninterface_types.QQmlExtensionInterface) =
  fcQQmlExtensionInterface_delete(self.h)
proc initializeEngine*(self: gen_qqmlextensioninterface_types.QQmlEngineExtensionInterface, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fcQQmlEngineExtensionInterface_initializeEngine(self.h, engine.h, uri)

proc operatorAssign*(self: gen_qqmlextensioninterface_types.QQmlEngineExtensionInterface, param1: gen_qqmlextensioninterface_types.QQmlEngineExtensionInterface): void =
  fcQQmlEngineExtensionInterface_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qqmlextensioninterface_types.QQmlEngineExtensionInterface) =
  fcQQmlEngineExtensionInterface_delete(self.h)
