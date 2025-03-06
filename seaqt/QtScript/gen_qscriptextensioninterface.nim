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

proc fcQScriptExtensionInterface_new(param1: pointer): ptr cQScriptExtensionInterface {.importc: "QScriptExtensionInterface_new".}
proc fcQScriptExtensionInterface_initialize(self: pointer, key: struct_miqt_string, engine: pointer): void {.importc: "QScriptExtensionInterface_initialize".}
proc fcQScriptExtensionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QScriptExtensionInterface_operatorAssign".}
proc fcQScriptExtensionInterface_override_virtual_initialize(self: pointer, slot: int) {.importc: "QScriptExtensionInterface_override_virtual_initialize".}
proc fcQScriptExtensionInterface_override_virtual_keys(self: pointer, slot: int) {.importc: "QScriptExtensionInterface_override_virtual_keys".}
proc fcQScriptExtensionInterface_delete(self: pointer) {.importc: "QScriptExtensionInterface_delete".}


func init*(T: type gen_qscriptextensioninterface_types.QScriptExtensionInterface, h: ptr cQScriptExtensionInterface): gen_qscriptextensioninterface_types.QScriptExtensionInterface =
  T(h: h)
proc create*(T: type gen_qscriptextensioninterface_types.QScriptExtensionInterface, param1: gen_qscriptextensioninterface_types.QScriptExtensionInterface): gen_qscriptextensioninterface_types.QScriptExtensionInterface =
  gen_qscriptextensioninterface_types.QScriptExtensionInterface.init(fcQScriptExtensionInterface_new(param1.h))

proc initialize*(self: gen_qscriptextensioninterface_types.QScriptExtensionInterface, key: string, engine: gen_qscriptengine_types.QScriptEngine): void =
  fcQScriptExtensionInterface_initialize(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), engine.h)

proc operatorAssign*(self: gen_qscriptextensioninterface_types.QScriptExtensionInterface, param1: gen_qscriptextensioninterface_types.QScriptExtensionInterface): void =
  fcQScriptExtensionInterface_operatorAssign(self.h, param1.h)

type QScriptExtensionInterfaceinitializeProc* = proc(key: string, engine: gen_qscriptengine_types.QScriptEngine): void
proc oninitialize*(self: gen_qscriptextensioninterface_types.QScriptExtensionInterface, slot: QScriptExtensionInterfaceinitializeProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionInterfaceinitializeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionInterface_override_virtual_initialize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionInterface_initialize(self: ptr cQScriptExtensionInterface, slot: int, key: struct_miqt_string, engine: pointer): void {.exportc: "miqt_exec_callback_QScriptExtensionInterface_initialize ".} =
  var nimfunc = cast[ptr QScriptExtensionInterfaceinitializeProc](cast[pointer](slot))
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret

  let slotval2 = gen_qscriptengine_types.QScriptEngine(h: engine)


  nimfunc[](slotval1, slotval2)
type QScriptExtensionInterfacekeysProc* = proc(): seq[string]
proc onkeys*(self: gen_qscriptextensioninterface_types.QScriptExtensionInterface, slot: QScriptExtensionInterfacekeysProc) =
  # TODO check subclass
  var tmp = new QScriptExtensionInterfacekeysProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptExtensionInterface_override_virtual_keys(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptExtensionInterface_keys(self: ptr cQScriptExtensionInterface, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QScriptExtensionInterface_keys ".} =
  var nimfunc = cast[ptr QScriptExtensionInterfacekeysProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc delete*(self: gen_qscriptextensioninterface_types.QScriptExtensionInterface) =
  fcQScriptExtensionInterface_delete(self.h)
