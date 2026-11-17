import ./qtdesigner_pkg

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


import ./gen_abstractsettings_types
export gen_abstractsettings_types

import
  ../QtCore/gen_qvariant_types
export
  gen_qvariant_types

type cQDesignerSettingsInterface*{.exportc: "QDesignerSettingsInterface", incompleteStruct.} = object

proc fcQDesignerSettingsInterface_beginGroup(self: pointer, prefix: struct_seaqt_string): void {.importc: "QDesignerSettingsInterface_beginGroup".}
proc fcQDesignerSettingsInterface_endGroup(self: pointer): void {.importc: "QDesignerSettingsInterface_endGroup".}
proc fcQDesignerSettingsInterface_contains(self: pointer, key: struct_seaqt_string): bool {.importc: "QDesignerSettingsInterface_contains".}
proc fcQDesignerSettingsInterface_setValue(self: pointer, key: struct_seaqt_string, value: pointer): void {.importc: "QDesignerSettingsInterface_setValue".}
proc fcQDesignerSettingsInterface_value(self: pointer, key: struct_seaqt_string, defaultValue: pointer): pointer {.importc: "QDesignerSettingsInterface_value".}
proc fcQDesignerSettingsInterface_remove(self: pointer, key: struct_seaqt_string): void {.importc: "QDesignerSettingsInterface_remove".}
proc fcQDesignerSettingsInterface_vdata(self: pointer): ptr pointer {.importc: "QDesignerSettingsInterface_vdata".}
proc fvdata_cQDesignerSettingsInterface(self: pointer): pointer {.importc: "vdata_QDesignerSettingsInterface".}

type cQDesignerSettingsInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  beginGroup*: proc(self: pointer, prefix: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  endGroup*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  contains*: proc(self: pointer, key: struct_seaqt_string): bool {.cdecl, raises: [], gcsafe.}
  setValue*: proc(self: pointer, key: struct_seaqt_string, value: pointer): void {.cdecl, raises: [], gcsafe.}
  value*: proc(self: pointer, key: struct_seaqt_string, defaultValue: pointer): pointer {.cdecl, raises: [], gcsafe.}
  remove*: proc(self: pointer, key: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
proc fcQDesignerSettingsInterface_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerSettingsInterface {.importc: "QDesignerSettingsInterface_new".}
proc fcQDesignerSettingsInterface_delete(self: pointer) {.importc: "QDesignerSettingsInterface_delete".}

proc beginGroup*(self: gen_abstractsettings_types.QDesignerSettingsInterface, prefix: openArray[char]): void =
  fcQDesignerSettingsInterface_beginGroup(self.h, struct_seaqt_string(data: if len(prefix) > 0: addr prefix[0] else: nil, len: csize_t(len(prefix))))

proc endGroup*(self: gen_abstractsettings_types.QDesignerSettingsInterface): void =
  fcQDesignerSettingsInterface_endGroup(self.h)

proc contains*(self: gen_abstractsettings_types.QDesignerSettingsInterface, key: openArray[char]): bool =
  fcQDesignerSettingsInterface_contains(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))

proc setValue*(self: gen_abstractsettings_types.QDesignerSettingsInterface, key: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQDesignerSettingsInterface_setValue(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), value.h)

proc value*(self: gen_abstractsettings_types.QDesignerSettingsInterface, key: openArray[char], defaultValue: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDesignerSettingsInterface_value(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), defaultValue.h))

proc remove*(self: gen_abstractsettings_types.QDesignerSettingsInterface, key: openArray[char]): void =
  fcQDesignerSettingsInterface_remove(self.h, struct_seaqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))))

type QDesignerSettingsInterfacebeginGroupProc* = proc(self: QDesignerSettingsInterface, prefix: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerSettingsInterfaceendGroupProc* = proc(self: QDesignerSettingsInterface): void {.raises: [], gcsafe.}
type QDesignerSettingsInterfacecontainsProc* = proc(self: QDesignerSettingsInterface, key: openArray[char]): bool {.raises: [], gcsafe.}
type QDesignerSettingsInterfacesetValueProc* = proc(self: QDesignerSettingsInterface, key: openArray[char], value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QDesignerSettingsInterfacevalueProc* = proc(self: QDesignerSettingsInterface, key: openArray[char], defaultValue: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDesignerSettingsInterfaceremoveProc* = proc(self: QDesignerSettingsInterface, key: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerSettingsInterfaceVTable* = object
  vtbl: cQDesignerSettingsInterfaceVTable
  beginGroup*: QDesignerSettingsInterfacebeginGroupProc
  endGroup*: QDesignerSettingsInterfaceendGroupProc
  contains*: QDesignerSettingsInterfacecontainsProc
  setValue*: QDesignerSettingsInterfacesetValueProc
  value*: QDesignerSettingsInterfacevalueProc
  remove*: QDesignerSettingsInterfaceremoveProc


proc fcQDesignerSettingsInterface_vtable_callback_beginGroup(self: pointer, prefix: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerSettingsInterfaceVTable](fcQDesignerSettingsInterface_vdata(self)[])
  let self = QDesignerSettingsInterface(h: self)
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(vprefix_ms)
  c_free(vprefix_ms.data)
  let slotval1 = vprefixx_ret
  vtbl[].beginGroup(self, slotval1)

proc fcQDesignerSettingsInterface_vtable_callback_endGroup(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerSettingsInterfaceVTable](fcQDesignerSettingsInterface_vdata(self)[])
  let self = QDesignerSettingsInterface(h: self)
  vtbl[].endGroup(self)

proc fcQDesignerSettingsInterface_vtable_callback_contains(self: pointer, key: struct_seaqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerSettingsInterfaceVTable](fcQDesignerSettingsInterface_vdata(self)[])
  let self = QDesignerSettingsInterface(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  var virtualReturn = vtbl[].contains(self, slotval1)
  virtualReturn

proc fcQDesignerSettingsInterface_vtable_callback_setValue(self: pointer, key: struct_seaqt_string, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerSettingsInterfaceVTable](fcQDesignerSettingsInterface_vdata(self)[])
  let self = QDesignerSettingsInterface(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  vtbl[].setValue(self, slotval1, slotval2)

proc fcQDesignerSettingsInterface_vtable_callback_value(self: pointer, key: struct_seaqt_string, defaultValue: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerSettingsInterfaceVTable](fcQDesignerSettingsInterface_vdata(self)[])
  let self = QDesignerSettingsInterface(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qvariant_types.QVariant(h: defaultValue)
  var virtualReturn = vtbl[].value(self, slotval1, slotval2)
  virtualReturn.h

proc fcQDesignerSettingsInterface_vtable_callback_remove(self: pointer, key: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerSettingsInterfaceVTable](fcQDesignerSettingsInterface_vdata(self)[])
  let self = QDesignerSettingsInterface(h: self)
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  vtbl[].remove(self, slotval1)

type VirtualQDesignerSettingsInterface* {.inheritable.} = ref object of QDesignerSettingsInterface
  vtbl*: cQDesignerSettingsInterfaceVTable

method beginGroup*(self: VirtualQDesignerSettingsInterface, prefix: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerSettingsInterface.beginGroup")
method endGroup*(self: VirtualQDesignerSettingsInterface): void {.base.} =
  raiseAssert("missing implementation of QDesignerSettingsInterface.endGroup")
method contains*(self: VirtualQDesignerSettingsInterface, key: openArray[char]): bool {.base.} =
  raiseAssert("missing implementation of QDesignerSettingsInterface.contains")
method setValue*(self: VirtualQDesignerSettingsInterface, key: openArray[char], value: gen_qvariant_types.QVariant): void {.base.} =
  raiseAssert("missing implementation of QDesignerSettingsInterface.setValue")
method value*(self: VirtualQDesignerSettingsInterface, key: openArray[char], defaultValue: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant {.base.} =
  raiseAssert("missing implementation of QDesignerSettingsInterface.value")
method remove*(self: VirtualQDesignerSettingsInterface, key: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerSettingsInterface.remove")

proc fcQDesignerSettingsInterface_method_callback_beginGroup(self: pointer, prefix: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerSettingsInterface](fcQDesignerSettingsInterface_vdata(self)[])
  let vprefix_ms = prefix
  let vprefixx_ret = string.fromBytes(vprefix_ms)
  c_free(vprefix_ms.data)
  let slotval1 = vprefixx_ret
  inst.beginGroup(slotval1)

proc fcQDesignerSettingsInterface_method_callback_endGroup(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerSettingsInterface](fcQDesignerSettingsInterface_vdata(self)[])
  inst.endGroup()

proc fcQDesignerSettingsInterface_method_callback_contains(self: pointer, key: struct_seaqt_string): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerSettingsInterface](fcQDesignerSettingsInterface_vdata(self)[])
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  var virtualReturn = inst.contains(slotval1)
  virtualReturn

proc fcQDesignerSettingsInterface_method_callback_setValue(self: pointer, key: struct_seaqt_string, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerSettingsInterface](fcQDesignerSettingsInterface_vdata(self)[])
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  inst.setValue(slotval1, slotval2)

proc fcQDesignerSettingsInterface_method_callback_value(self: pointer, key: struct_seaqt_string, defaultValue: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerSettingsInterface](fcQDesignerSettingsInterface_vdata(self)[])
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  let slotval2 = gen_qvariant_types.QVariant(h: defaultValue)
  var virtualReturn = inst.value(slotval1, slotval2)
  virtualReturn.h

proc fcQDesignerSettingsInterface_method_callback_remove(self: pointer, key: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerSettingsInterface](fcQDesignerSettingsInterface_vdata(self)[])
  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(vkey_ms)
  c_free(vkey_ms.data)
  let slotval1 = vkeyx_ret
  inst.remove(slotval1)


proc create*(T: type gen_abstractsettings_types.QDesignerSettingsInterface,
    vtbl: ref QDesignerSettingsInterfaceVTable = nil): gen_abstractsettings_types.QDesignerSettingsInterface =
  let vtbl = if vtbl == nil: new QDesignerSettingsInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerSettingsInterfaceVTable](fcQDesignerSettingsInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].beginGroup):
    vtbl[].vtbl.beginGroup = fcQDesignerSettingsInterface_vtable_callback_beginGroup
  if not isNil(vtbl[].endGroup):
    vtbl[].vtbl.endGroup = fcQDesignerSettingsInterface_vtable_callback_endGroup
  if not isNil(vtbl[].contains):
    vtbl[].vtbl.contains = fcQDesignerSettingsInterface_vtable_callback_contains
  if not isNil(vtbl[].setValue):
    vtbl[].vtbl.setValue = fcQDesignerSettingsInterface_vtable_callback_setValue
  if not isNil(vtbl[].value):
    vtbl[].vtbl.value = fcQDesignerSettingsInterface_vtable_callback_value
  if not isNil(vtbl[].remove):
    vtbl[].vtbl.remove = fcQDesignerSettingsInterface_vtable_callback_remove
  let tmp = gen_abstractsettings_types.QDesignerSettingsInterface(h: fcQDesignerSettingsInterface_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQDesignerSettingsInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerSettingsInterface_mvtbl = cQDesignerSettingsInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerSettingsInterface()[])](self.fcQDesignerSettingsInterface_vdata()[])
    inst[].h = nil,

  beginGroup: fcQDesignerSettingsInterface_method_callback_beginGroup,
  endGroup: fcQDesignerSettingsInterface_method_callback_endGroup,
  contains: fcQDesignerSettingsInterface_method_callback_contains,
  setValue: fcQDesignerSettingsInterface_method_callback_setValue,
  value: fcQDesignerSettingsInterface_method_callback_value,
  remove: fcQDesignerSettingsInterface_method_callback_remove,
)
proc create*(T: type gen_abstractsettings_types.QDesignerSettingsInterface,
    inst: VirtualQDesignerSettingsInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerSettingsInterface_new(addr(cQDesignerSettingsInterface_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerSettingsInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc delete*(self: gen_abstractsettings_types.QDesignerSettingsInterface) =
  fcQDesignerSettingsInterface_delete(self.h)
