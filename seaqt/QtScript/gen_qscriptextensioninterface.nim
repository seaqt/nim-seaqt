import ./Qt5Script_libs

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

const cflags = gorge("pkg-config --cflags Qt5Script")  & " -fPIC"
{.compile("gen_qscriptextensioninterface.cpp", cflags).}


import ./gen_qscriptextensioninterface_types
export gen_qscriptextensioninterface_types

import
  ../QtCore/gen_qfactoryinterface,
  ./gen_qscriptengine_types
export
  gen_qfactoryinterface,
  gen_qscriptengine_types

type cQScriptExtensionInterface*{.exportc: "QScriptExtensionInterface", incompleteStruct.} = object

proc fcQScriptExtensionInterface_initialize(self: pointer, key: struct_miqt_string, engine: pointer): void {.importc: "QScriptExtensionInterface_initialize".}
proc fcQScriptExtensionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QScriptExtensionInterface_operatorAssign".}
type cQScriptExtensionInterfaceVTable = object
  destructor*: proc(vtbl: ptr cQScriptExtensionInterfaceVTable, self: ptr cQScriptExtensionInterface) {.cdecl, raises:[], gcsafe.}
  initialize*: proc(vtbl, self: pointer, key: struct_miqt_string, engine: pointer): void {.cdecl, raises: [], gcsafe.}
  keys*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
proc fcQScriptExtensionInterface_new(vtbl: pointer, param1: pointer): ptr cQScriptExtensionInterface {.importc: "QScriptExtensionInterface_new".}
proc fcQScriptExtensionInterface_delete(self: pointer) {.importc: "QScriptExtensionInterface_delete".}

proc initialize*(self: gen_qscriptextensioninterface_types.QScriptExtensionInterface, key: string, engine: gen_qscriptengine_types.QScriptEngine): void =
  fcQScriptExtensionInterface_initialize(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), engine.h)

proc operatorAssign*(self: gen_qscriptextensioninterface_types.QScriptExtensionInterface, param1: gen_qscriptextensioninterface_types.QScriptExtensionInterface): void =
  fcQScriptExtensionInterface_operatorAssign(self.h, param1.h)

type QScriptExtensionInterfaceinitializeProc* = proc(self: QScriptExtensionInterface, key: string, engine: gen_qscriptengine_types.QScriptEngine): void {.raises: [], gcsafe.}
type QScriptExtensionInterfacekeysProc* = proc(self: QScriptExtensionInterface): seq[string] {.raises: [], gcsafe.}
type QScriptExtensionInterfaceVTable* = object
  vtbl: cQScriptExtensionInterfaceVTable
  initialize*: QScriptExtensionInterfaceinitializeProc
  keys*: QScriptExtensionInterfacekeysProc
proc miqt_exec_callback_cQScriptExtensionInterface_initialize(vtbl: pointer, self: pointer, key: struct_miqt_string, engine: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionInterfaceVTable](vtbl)
  let self = QScriptExtensionInterface(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qscriptengine_types.QScriptEngine(h: engine)
  vtbl[].initialize(self, slotval1, slotval2)

proc miqt_exec_callback_cQScriptExtensionInterface_keys(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QScriptExtensionInterfaceVTable](vtbl)
  let self = QScriptExtensionInterface(h: self)
  var virtualReturn = vtbl[].keys(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc create*(T: type gen_qscriptextensioninterface_types.QScriptExtensionInterface,
    param1: gen_qscriptextensioninterface_types.QScriptExtensionInterface,
    vtbl: ref QScriptExtensionInterfaceVTable = nil): gen_qscriptextensioninterface_types.QScriptExtensionInterface =
  let vtbl = if vtbl == nil: new QScriptExtensionInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQScriptExtensionInterfaceVTable, _: ptr cQScriptExtensionInterface) {.cdecl.} =
    let vtbl = cast[ref QScriptExtensionInterfaceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.initialize):
    vtbl[].vtbl.initialize = miqt_exec_callback_cQScriptExtensionInterface_initialize
  if not isNil(vtbl.keys):
    vtbl[].vtbl.keys = miqt_exec_callback_cQScriptExtensionInterface_keys
  gen_qscriptextensioninterface_types.QScriptExtensionInterface(h: fcQScriptExtensionInterface_new(addr(vtbl[]), param1.h))

proc delete*(self: gen_qscriptextensioninterface_types.QScriptExtensionInterface) =
  fcQScriptExtensionInterface_delete(self.h)
