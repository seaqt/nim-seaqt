import ./qtscript_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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


{.compile("gen_qscriptextensioninterface.cpp", QtScriptCFlags).}


import ./gen_qscriptextensioninterface_types
export gen_qscriptextensioninterface_types

import
  ../QtCore/gen_qfactoryinterface,
  ./gen_qscriptengine_types
export
  gen_qfactoryinterface,
  gen_qscriptengine_types

type cQScriptExtensionInterface*{.exportc: "QScriptExtensionInterface", incompleteStruct.} = object

proc fcQScriptExtensionInterface_initialize(self: pointer, key: struct_seaqt_string, engine: pointer): void {.importc: "QScriptExtensionInterface_initialize".}
proc fcQScriptExtensionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QScriptExtensionInterface_operatorAssign".}
proc fcQScriptExtensionInterface_vdata(self: pointer): ptr pointer {.importc: "QScriptExtensionInterface_vdata".}
proc fvdata_cQScriptExtensionInterface(self: pointer): pointer {.importc: "vdata_QScriptExtensionInterface".}

type cQScriptExtensionInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  initialize*: proc(self: pointer, key: struct_seaqt_string, engine: pointer): void {.cdecl, raises: [], gcsafe.}
  keys*: proc(self: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
proc fcQScriptExtensionInterface_new(vtbl: pointer, vdata: csize_t, param1: pointer): ptr cQScriptExtensionInterface {.importc: "QScriptExtensionInterface_new".}

proc initialize*(self: gen_qscriptextensioninterface_types.QScriptExtensionInterface, key: openArray[char], engine: gen_qscriptengine_types.QScriptEngine): void =
  fcQScriptExtensionInterface_initialize(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), engine.h)

proc operatorAssign*(self: gen_qscriptextensioninterface_types.QScriptExtensionInterface, param1: gen_qscriptextensioninterface_types.QScriptExtensionInterface): void =
  fcQScriptExtensionInterface_operatorAssign(self.h, param1.h)

type QScriptExtensionInterfaceinitializeProc* = proc(self: QScriptExtensionInterface, key: openArray[char], engine: gen_qscriptengine_types.QScriptEngine): void {.raises: [], gcsafe.}
type QScriptExtensionInterfacekeysProc* = proc(self: QScriptExtensionInterface): seq[string] {.raises: [], gcsafe.}

type QScriptExtensionInterfaceVTable* {.inheritable, pure.} = object
  vtbl: cQScriptExtensionInterfaceVTable
  initialize*: QScriptExtensionInterfaceinitializeProc
  keys*: QScriptExtensionInterfacekeysProc


proc fcQScriptExtensionInterface_vtable_callback_initialize(self: pointer, key: struct_seaqt_string, engine: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionInterfaceVTable](fcQScriptExtensionInterface_vdata(self)[])
  let self = QScriptExtensionInterface(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qscriptengine_types.QScriptEngine(h: engine, owned: false)
  vtbl[].initialize(self, slotval1, slotval2)

proc fcQScriptExtensionInterface_vtable_callback_keys(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionInterfaceVTable](fcQScriptExtensionInterface_vdata(self)[])
  let self = QScriptExtensionInterface(h: self)
  var virtualReturn = vtbl[].keys(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

type VirtualQScriptExtensionInterface* {.inheritable.} = ref object of QScriptExtensionInterface
  vtbl*: cQScriptExtensionInterfaceVTable

method initialize*(self: VirtualQScriptExtensionInterface, key: openArray[char], engine: gen_qscriptengine_types.QScriptEngine): void {.base.} =
  raiseAssert("missing implementation of QScriptExtensionInterface.initialize")
method keys*(self: VirtualQScriptExtensionInterface): seq[string] {.base.} =
  raiseAssert("missing implementation of QScriptExtensionInterface.keys")

proc fcQScriptExtensionInterface_method_callback_initialize(self: pointer, key: struct_seaqt_string, engine: pointer): void {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionInterface](fcQScriptExtensionInterface_vdata(self)[])
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qscriptengine_types.QScriptEngine(h: engine, owned: false)
  inst.initialize(slotval1, slotval2)

proc fcQScriptExtensionInterface_method_callback_keys(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQScriptExtensionInterface](fcQScriptExtensionInterface_vdata(self)[])
  var virtualReturn = inst.keys()
  var virtualReturn_CArray = cast[ptr UncheckedArray[struct_seaqt_string]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(struct_seaqt_string) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    var virtualReturn_i_copy = if len(virtualReturn[i]) > 0: c_malloc(csize_t(len(virtualReturn[i]))) else: nil
    if len(virtualReturn[i]) > 0: copyMem(virtualReturn_i_copy, addr virtualReturn[i][0], csize_t(len(virtualReturn[i])))
    virtualReturn_CArray[i] = struct_seaqt_string(data: virtualReturn_i_copy, len: csize_t(len(virtualReturn[i])))

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))


proc create*(T: type gen_qscriptextensioninterface_types.QScriptExtensionInterface,
    param1: gen_qscriptextensioninterface_types.QScriptExtensionInterface,
    vtbl: ref QScriptExtensionInterfaceVTable = nil): gen_qscriptextensioninterface_types.QScriptExtensionInterface =
  let vtbl = if vtbl == nil: new QScriptExtensionInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QScriptExtensionInterfaceVTable](fcQScriptExtensionInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].initialize):
    vtbl[].vtbl.initialize = fcQScriptExtensionInterface_vtable_callback_initialize
  if not isNil(vtbl[].keys):
    vtbl[].vtbl.keys = fcQScriptExtensionInterface_vtable_callback_keys
  let tmp = gen_qscriptextensioninterface_types.QScriptExtensionInterface(h: fcQScriptExtensionInterface_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), param1.h), owned: true)
  fcQScriptExtensionInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQScriptExtensionInterface_mvtbl = cQScriptExtensionInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQScriptExtensionInterface()[])](self.fcQScriptExtensionInterface_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  initialize: fcQScriptExtensionInterface_method_callback_initialize,
  keys: fcQScriptExtensionInterface_method_callback_keys,
)
proc create*(T: type gen_qscriptextensioninterface_types.QScriptExtensionInterface,
    param1: gen_qscriptextensioninterface_types.QScriptExtensionInterface,
    inst: VirtualQScriptExtensionInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQScriptExtensionInterface_new(addr(cQScriptExtensionInterface_mvtbl), csize_t(sizeof(pointer)), param1.h)
  fcQScriptExtensionInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

