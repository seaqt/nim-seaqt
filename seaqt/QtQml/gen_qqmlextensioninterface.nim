import ./Qt6Qml_libs

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
proc fcQQmlTypesExtensionInterface_vtbl(self: pointer): pointer {.importc: "QQmlTypesExtensionInterface_vtbl".}
proc fcQQmlTypesExtensionInterface_vdata(self: pointer): pointer {.importc: "QQmlTypesExtensionInterface_vdata".}
type cQQmlTypesExtensionInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  registerTypes*: proc(self: pointer, uri: cstring): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlTypesExtensionInterface_new(vtbl, vdata: pointer, param1: pointer): ptr cQQmlTypesExtensionInterface {.importc: "QQmlTypesExtensionInterface_new".}
proc fcQQmlExtensionInterface_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlExtensionInterface_initializeEngine".}
proc fcQQmlExtensionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlExtensionInterface_operatorAssign".}
proc fcQQmlExtensionInterface_vtbl(self: pointer): pointer {.importc: "QQmlExtensionInterface_vtbl".}
proc fcQQmlExtensionInterface_vdata(self: pointer): pointer {.importc: "QQmlExtensionInterface_vdata".}
type cQQmlExtensionInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  initializeEngine*: proc(self: pointer, engine: pointer, uri: cstring): void {.cdecl, raises: [], gcsafe.}
  registerTypes*: proc(self: pointer, uri: cstring): void {.cdecl, raises: [], gcsafe.}
proc fcQQmlExtensionInterface_new(vtbl, vdata: pointer, param1: pointer): ptr cQQmlExtensionInterface {.importc: "QQmlExtensionInterface_new".}
proc fcQQmlEngineExtensionInterface_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.importc: "QQmlEngineExtensionInterface_initializeEngine".}
proc fcQQmlEngineExtensionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QQmlEngineExtensionInterface_operatorAssign".}

proc registerTypes*(self: gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface, uri: cstring): void =
  fcQQmlTypesExtensionInterface_registerTypes(self.h, uri)

proc operatorAssign*(self: gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface, param1: gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface): void =
  fcQQmlTypesExtensionInterface_operatorAssign(self.h, param1.h)

type QQmlTypesExtensionInterfaceregisterTypesProc* = proc(self: QQmlTypesExtensionInterface, uri: cstring): void {.raises: [], gcsafe.}
type QQmlTypesExtensionInterfaceVTable* {.inheritable, pure.} = object
  vtbl: cQQmlTypesExtensionInterfaceVTable
  registerTypes*: QQmlTypesExtensionInterfaceregisterTypesProc
proc cQQmlTypesExtensionInterface_vtable_callback_registerTypes(self: pointer, uri: cstring): void {.cdecl.} =
  let vtbl = cast[ptr QQmlTypesExtensionInterfaceVTable](fcQQmlTypesExtensionInterface_vdata(self))
  let self = QQmlTypesExtensionInterface(h: self)
  let slotval1 = (uri)
  vtbl[].registerTypes(self, slotval1)

type VirtualQQmlTypesExtensionInterface* {.inheritable.} = ref object of QQmlTypesExtensionInterface
  vtbl*: cQQmlTypesExtensionInterfaceVTable
method registerTypes*(self: VirtualQQmlTypesExtensionInterface, uri: cstring): void {.base.} =
  raiseAssert("missing implementation of QQmlTypesExtensionInterface_virtualbase_registerTypes")
proc cQQmlTypesExtensionInterface_method_callback_registerTypes(self: pointer, uri: cstring): void {.cdecl.} =
  let inst = cast[VirtualQQmlTypesExtensionInterface](fcQQmlTypesExtensionInterface_vdata(self))
  let slotval1 = (uri)
  inst.registerTypes(slotval1)

proc create*(T: type gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface,
    param1: gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface,
    vtbl: ref QQmlTypesExtensionInterfaceVTable = nil): gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface =
  let vtbl = if vtbl == nil: new QQmlTypesExtensionInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlTypesExtensionInterfaceVTable](fcQQmlTypesExtensionInterface_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].registerTypes):
    vtbl[].vtbl.registerTypes = cQQmlTypesExtensionInterface_vtable_callback_registerTypes
  gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface(h: fcQQmlTypesExtensionInterface_new(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

const cQQmlTypesExtensionInterface_mvtbl = cQQmlTypesExtensionInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlTypesExtensionInterface()[])](self.fcQQmlTypesExtensionInterface_vtbl())
    inst[].h = nil
    inst[].owned = false,
  registerTypes: cQQmlTypesExtensionInterface_method_callback_registerTypes,
)
proc create*(T: type gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface,
    param1: gen_qqmlextensioninterface_types.QQmlTypesExtensionInterface,
    inst: VirtualQQmlTypesExtensionInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlTypesExtensionInterface_new(addr(cQQmlTypesExtensionInterface_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

proc initializeEngine*(self: gen_qqmlextensioninterface_types.QQmlExtensionInterface, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fcQQmlExtensionInterface_initializeEngine(self.h, engine.h, uri)

proc operatorAssign*(self: gen_qqmlextensioninterface_types.QQmlExtensionInterface, param1: gen_qqmlextensioninterface_types.QQmlExtensionInterface): void =
  fcQQmlExtensionInterface_operatorAssign(self.h, param1.h)

type QQmlExtensionInterfaceinitializeEngineProc* = proc(self: QQmlExtensionInterface, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void {.raises: [], gcsafe.}
type QQmlExtensionInterfaceregisterTypesProc* = proc(self: QQmlExtensionInterface, uri: cstring): void {.raises: [], gcsafe.}
type QQmlExtensionInterfaceVTable* {.inheritable, pure.} = object
  vtbl: cQQmlExtensionInterfaceVTable
  initializeEngine*: QQmlExtensionInterfaceinitializeEngineProc
  registerTypes*: QQmlExtensionInterfaceregisterTypesProc
proc cQQmlExtensionInterface_vtable_callback_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionInterfaceVTable](fcQQmlExtensionInterface_vdata(self))
  let self = QQmlExtensionInterface(h: self)
  let slotval1 = gen_qqmlengine_types.QQmlEngine(h: engine, owned: false)
  let slotval2 = (uri)
  vtbl[].initializeEngine(self, slotval1, slotval2)

proc cQQmlExtensionInterface_vtable_callback_registerTypes(self: pointer, uri: cstring): void {.cdecl.} =
  let vtbl = cast[ptr QQmlExtensionInterfaceVTable](fcQQmlExtensionInterface_vdata(self))
  let self = QQmlExtensionInterface(h: self)
  let slotval1 = (uri)
  vtbl[].registerTypes(self, slotval1)

type VirtualQQmlExtensionInterface* {.inheritable.} = ref object of QQmlExtensionInterface
  vtbl*: cQQmlExtensionInterfaceVTable
method initializeEngine*(self: VirtualQQmlExtensionInterface, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void {.base.} =
  raiseAssert("missing implementation of QQmlExtensionInterface_virtualbase_initializeEngine")
proc cQQmlExtensionInterface_method_callback_initializeEngine(self: pointer, engine: pointer, uri: cstring): void {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionInterface](fcQQmlExtensionInterface_vdata(self))
  let slotval1 = gen_qqmlengine_types.QQmlEngine(h: engine, owned: false)
  let slotval2 = (uri)
  inst.initializeEngine(slotval1, slotval2)

method registerTypes*(self: VirtualQQmlExtensionInterface, uri: cstring): void {.base.} =
  raiseAssert("missing implementation of QQmlExtensionInterface_virtualbase_registerTypes")
proc cQQmlExtensionInterface_method_callback_registerTypes(self: pointer, uri: cstring): void {.cdecl.} =
  let inst = cast[VirtualQQmlExtensionInterface](fcQQmlExtensionInterface_vdata(self))
  let slotval1 = (uri)
  inst.registerTypes(slotval1)

proc create*(T: type gen_qqmlextensioninterface_types.QQmlExtensionInterface,
    param1: gen_qqmlextensioninterface_types.QQmlExtensionInterface,
    vtbl: ref QQmlExtensionInterfaceVTable = nil): gen_qqmlextensioninterface_types.QQmlExtensionInterface =
  let vtbl = if vtbl == nil: new QQmlExtensionInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QQmlExtensionInterfaceVTable](fcQQmlExtensionInterface_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].initializeEngine):
    vtbl[].vtbl.initializeEngine = cQQmlExtensionInterface_vtable_callback_initializeEngine
  if not isNil(vtbl[].registerTypes):
    vtbl[].vtbl.registerTypes = cQQmlExtensionInterface_vtable_callback_registerTypes
  gen_qqmlextensioninterface_types.QQmlExtensionInterface(h: fcQQmlExtensionInterface_new(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

const cQQmlExtensionInterface_mvtbl = cQQmlExtensionInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQQmlExtensionInterface()[])](self.fcQQmlExtensionInterface_vtbl())
    inst[].h = nil
    inst[].owned = false,
  initializeEngine: cQQmlExtensionInterface_method_callback_initializeEngine,
  registerTypes: cQQmlExtensionInterface_method_callback_registerTypes,
)
proc create*(T: type gen_qqmlextensioninterface_types.QQmlExtensionInterface,
    param1: gen_qqmlextensioninterface_types.QQmlExtensionInterface,
    inst: VirtualQQmlExtensionInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQQmlExtensionInterface_new(addr(cQQmlExtensionInterface_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

proc initializeEngine*(self: gen_qqmlextensioninterface_types.QQmlEngineExtensionInterface, engine: gen_qqmlengine_types.QQmlEngine, uri: cstring): void =
  fcQQmlEngineExtensionInterface_initializeEngine(self.h, engine.h, uri)

proc operatorAssign*(self: gen_qqmlextensioninterface_types.QQmlEngineExtensionInterface, param1: gen_qqmlextensioninterface_types.QQmlEngineExtensionInterface): void =
  fcQQmlEngineExtensionInterface_operatorAssign(self.h, param1.h)

