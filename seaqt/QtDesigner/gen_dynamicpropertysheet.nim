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


import ./gen_dynamicpropertysheet_types
export gen_dynamicpropertysheet_types

import
  ../QtCore/gen_qvariant_types
export
  gen_qvariant_types

type cQDesignerDynamicPropertySheetExtension*{.exportc: "QDesignerDynamicPropertySheetExtension", incompleteStruct.} = object

proc fcQDesignerDynamicPropertySheetExtension_dynamicPropertiesAllowed(self: pointer): bool {.importc: "QDesignerDynamicPropertySheetExtension_dynamicPropertiesAllowed".}
proc fcQDesignerDynamicPropertySheetExtension_addDynamicProperty(self: pointer, propertyName: struct_seaqt_string, value: pointer): cint {.importc: "QDesignerDynamicPropertySheetExtension_addDynamicProperty".}
proc fcQDesignerDynamicPropertySheetExtension_removeDynamicProperty(self: pointer, index: cint): bool {.importc: "QDesignerDynamicPropertySheetExtension_removeDynamicProperty".}
proc fcQDesignerDynamicPropertySheetExtension_isDynamicProperty(self: pointer, index: cint): bool {.importc: "QDesignerDynamicPropertySheetExtension_isDynamicProperty".}
proc fcQDesignerDynamicPropertySheetExtension_canAddDynamicProperty(self: pointer, propertyName: struct_seaqt_string): bool {.importc: "QDesignerDynamicPropertySheetExtension_canAddDynamicProperty".}
proc fcQDesignerDynamicPropertySheetExtension_vdata(self: pointer): ptr pointer {.importc: "QDesignerDynamicPropertySheetExtension_vdata".}
proc fvdata_cQDesignerDynamicPropertySheetExtension(self: pointer): pointer {.importc: "vdata_QDesignerDynamicPropertySheetExtension".}

type cQDesignerDynamicPropertySheetExtensionVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  dynamicPropertiesAllowed*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  addDynamicProperty*: proc(self: pointer, propertyName: struct_seaqt_string, value: pointer): cint {.cdecl, raises: [], gcsafe.}
  removeDynamicProperty*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
  isDynamicProperty*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
  canAddDynamicProperty*: proc(self: pointer, propertyName: struct_seaqt_string): bool {.cdecl, raises: [], gcsafe.}
proc fcQDesignerDynamicPropertySheetExtension_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerDynamicPropertySheetExtension {.importc: "QDesignerDynamicPropertySheetExtension_new".}

proc dynamicPropertiesAllowed*(self: gen_dynamicpropertysheet_types.QDesignerDynamicPropertySheetExtension): bool =
  fcQDesignerDynamicPropertySheetExtension_dynamicPropertiesAllowed(self.h)

proc addDynamicProperty*(self: gen_dynamicpropertysheet_types.QDesignerDynamicPropertySheetExtension, propertyName: openArray[char], value: gen_qvariant_types.QVariant): cint =
  fcQDesignerDynamicPropertySheetExtension_addDynamicProperty(self.h, struct_seaqt_string(data: if len(propertyName) > 0: addr propertyName[0] else: nil, len: csize_t(len(propertyName))), value.h)

proc removeDynamicProperty*(self: gen_dynamicpropertysheet_types.QDesignerDynamicPropertySheetExtension, index: cint): bool =
  fcQDesignerDynamicPropertySheetExtension_removeDynamicProperty(self.h, index)

proc isDynamicProperty*(self: gen_dynamicpropertysheet_types.QDesignerDynamicPropertySheetExtension, index: cint): bool =
  fcQDesignerDynamicPropertySheetExtension_isDynamicProperty(self.h, index)

proc canAddDynamicProperty*(self: gen_dynamicpropertysheet_types.QDesignerDynamicPropertySheetExtension, propertyName: openArray[char]): bool =
  fcQDesignerDynamicPropertySheetExtension_canAddDynamicProperty(self.h, struct_seaqt_string(data: if len(propertyName) > 0: addr propertyName[0] else: nil, len: csize_t(len(propertyName))))

type QDesignerDynamicPropertySheetExtensiondynamicPropertiesAllowedProc* = proc(self: QDesignerDynamicPropertySheetExtension): bool {.raises: [], gcsafe.}
type QDesignerDynamicPropertySheetExtensionaddDynamicPropertyProc* = proc(self: QDesignerDynamicPropertySheetExtension, propertyName: openArray[char], value: gen_qvariant_types.QVariant): cint {.raises: [], gcsafe.}
type QDesignerDynamicPropertySheetExtensionremoveDynamicPropertyProc* = proc(self: QDesignerDynamicPropertySheetExtension, index: cint): bool {.raises: [], gcsafe.}
type QDesignerDynamicPropertySheetExtensionisDynamicPropertyProc* = proc(self: QDesignerDynamicPropertySheetExtension, index: cint): bool {.raises: [], gcsafe.}
type QDesignerDynamicPropertySheetExtensioncanAddDynamicPropertyProc* = proc(self: QDesignerDynamicPropertySheetExtension, propertyName: openArray[char]): bool {.raises: [], gcsafe.}

type QDesignerDynamicPropertySheetExtensionVTable* {.inheritable, pure.} = object
  vtbl: cQDesignerDynamicPropertySheetExtensionVTable
  dynamicPropertiesAllowed*: QDesignerDynamicPropertySheetExtensiondynamicPropertiesAllowedProc
  addDynamicProperty*: QDesignerDynamicPropertySheetExtensionaddDynamicPropertyProc
  removeDynamicProperty*: QDesignerDynamicPropertySheetExtensionremoveDynamicPropertyProc
  isDynamicProperty*: QDesignerDynamicPropertySheetExtensionisDynamicPropertyProc
  canAddDynamicProperty*: QDesignerDynamicPropertySheetExtensioncanAddDynamicPropertyProc


proc fcQDesignerDynamicPropertySheetExtension_vtable_callback_dynamicPropertiesAllowed(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerDynamicPropertySheetExtensionVTable](fcQDesignerDynamicPropertySheetExtension_vdata(self)[])
  let self = QDesignerDynamicPropertySheetExtension(h: self)
  var virtualReturn = vtbl[].dynamicPropertiesAllowed(self)
  virtualReturn

proc fcQDesignerDynamicPropertySheetExtension_vtable_callback_addDynamicProperty(self: pointer, propertyName: struct_seaqt_string, value: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerDynamicPropertySheetExtensionVTable](fcQDesignerDynamicPropertySheetExtension_vdata(self)[])
  let self = QDesignerDynamicPropertySheetExtension(h: self)
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(vpropertyName_ms)
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = vtbl[].addDynamicProperty(self, slotval1, slotval2)
  virtualReturn

proc fcQDesignerDynamicPropertySheetExtension_vtable_callback_removeDynamicProperty(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerDynamicPropertySheetExtensionVTable](fcQDesignerDynamicPropertySheetExtension_vdata(self)[])
  let self = QDesignerDynamicPropertySheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].removeDynamicProperty(self, slotval1)
  virtualReturn

proc fcQDesignerDynamicPropertySheetExtension_vtable_callback_isDynamicProperty(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerDynamicPropertySheetExtensionVTable](fcQDesignerDynamicPropertySheetExtension_vdata(self)[])
  let self = QDesignerDynamicPropertySheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].isDynamicProperty(self, slotval1)
  virtualReturn

proc fcQDesignerDynamicPropertySheetExtension_vtable_callback_canAddDynamicProperty(self: pointer, propertyName: struct_seaqt_string): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerDynamicPropertySheetExtensionVTable](fcQDesignerDynamicPropertySheetExtension_vdata(self)[])
  let self = QDesignerDynamicPropertySheetExtension(h: self)
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(vpropertyName_ms)
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret
  var virtualReturn = vtbl[].canAddDynamicProperty(self, slotval1)
  virtualReturn

type VirtualQDesignerDynamicPropertySheetExtension* {.inheritable.} = ref object of QDesignerDynamicPropertySheetExtension
  vtbl*: cQDesignerDynamicPropertySheetExtensionVTable

method dynamicPropertiesAllowed*(self: VirtualQDesignerDynamicPropertySheetExtension): bool {.base.} =
  raiseAssert("missing implementation of QDesignerDynamicPropertySheetExtension.dynamicPropertiesAllowed")
method addDynamicProperty*(self: VirtualQDesignerDynamicPropertySheetExtension, propertyName: openArray[char], value: gen_qvariant_types.QVariant): cint {.base.} =
  raiseAssert("missing implementation of QDesignerDynamicPropertySheetExtension.addDynamicProperty")
method removeDynamicProperty*(self: VirtualQDesignerDynamicPropertySheetExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerDynamicPropertySheetExtension.removeDynamicProperty")
method isDynamicProperty*(self: VirtualQDesignerDynamicPropertySheetExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerDynamicPropertySheetExtension.isDynamicProperty")
method canAddDynamicProperty*(self: VirtualQDesignerDynamicPropertySheetExtension, propertyName: openArray[char]): bool {.base.} =
  raiseAssert("missing implementation of QDesignerDynamicPropertySheetExtension.canAddDynamicProperty")

proc fcQDesignerDynamicPropertySheetExtension_method_callback_dynamicPropertiesAllowed(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerDynamicPropertySheetExtension](fcQDesignerDynamicPropertySheetExtension_vdata(self)[])
  var virtualReturn = inst.dynamicPropertiesAllowed()
  virtualReturn

proc fcQDesignerDynamicPropertySheetExtension_method_callback_addDynamicProperty(self: pointer, propertyName: struct_seaqt_string, value: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerDynamicPropertySheetExtension](fcQDesignerDynamicPropertySheetExtension_vdata(self)[])
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(vpropertyName_ms)
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  var virtualReturn = inst.addDynamicProperty(slotval1, slotval2)
  virtualReturn

proc fcQDesignerDynamicPropertySheetExtension_method_callback_removeDynamicProperty(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerDynamicPropertySheetExtension](fcQDesignerDynamicPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.removeDynamicProperty(slotval1)
  virtualReturn

proc fcQDesignerDynamicPropertySheetExtension_method_callback_isDynamicProperty(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerDynamicPropertySheetExtension](fcQDesignerDynamicPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.isDynamicProperty(slotval1)
  virtualReturn

proc fcQDesignerDynamicPropertySheetExtension_method_callback_canAddDynamicProperty(self: pointer, propertyName: struct_seaqt_string): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerDynamicPropertySheetExtension](fcQDesignerDynamicPropertySheetExtension_vdata(self)[])
  let vpropertyName_ms = propertyName
  let vpropertyNamex_ret = string.fromBytes(vpropertyName_ms)
  c_free(vpropertyName_ms.data)
  let slotval1 = vpropertyNamex_ret
  var virtualReturn = inst.canAddDynamicProperty(slotval1)
  virtualReturn


proc create*(T: type gen_dynamicpropertysheet_types.QDesignerDynamicPropertySheetExtension,
    vtbl: ref QDesignerDynamicPropertySheetExtensionVTable = nil): gen_dynamicpropertysheet_types.QDesignerDynamicPropertySheetExtension =
  let vtbl = if vtbl == nil: new QDesignerDynamicPropertySheetExtensionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerDynamicPropertySheetExtensionVTable](fcQDesignerDynamicPropertySheetExtension_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].dynamicPropertiesAllowed):
    vtbl[].vtbl.dynamicPropertiesAllowed = fcQDesignerDynamicPropertySheetExtension_vtable_callback_dynamicPropertiesAllowed
  if not isNil(vtbl[].addDynamicProperty):
    vtbl[].vtbl.addDynamicProperty = fcQDesignerDynamicPropertySheetExtension_vtable_callback_addDynamicProperty
  if not isNil(vtbl[].removeDynamicProperty):
    vtbl[].vtbl.removeDynamicProperty = fcQDesignerDynamicPropertySheetExtension_vtable_callback_removeDynamicProperty
  if not isNil(vtbl[].isDynamicProperty):
    vtbl[].vtbl.isDynamicProperty = fcQDesignerDynamicPropertySheetExtension_vtable_callback_isDynamicProperty
  if not isNil(vtbl[].canAddDynamicProperty):
    vtbl[].vtbl.canAddDynamicProperty = fcQDesignerDynamicPropertySheetExtension_vtable_callback_canAddDynamicProperty
  let tmp = gen_dynamicpropertysheet_types.QDesignerDynamicPropertySheetExtension(h: fcQDesignerDynamicPropertySheetExtension_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQDesignerDynamicPropertySheetExtension_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerDynamicPropertySheetExtension_mvtbl = cQDesignerDynamicPropertySheetExtensionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerDynamicPropertySheetExtension()[])](self.fcQDesignerDynamicPropertySheetExtension_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  dynamicPropertiesAllowed: fcQDesignerDynamicPropertySheetExtension_method_callback_dynamicPropertiesAllowed,
  addDynamicProperty: fcQDesignerDynamicPropertySheetExtension_method_callback_addDynamicProperty,
  removeDynamicProperty: fcQDesignerDynamicPropertySheetExtension_method_callback_removeDynamicProperty,
  isDynamicProperty: fcQDesignerDynamicPropertySheetExtension_method_callback_isDynamicProperty,
  canAddDynamicProperty: fcQDesignerDynamicPropertySheetExtension_method_callback_canAddDynamicProperty,
)
proc create*(T: type gen_dynamicpropertysheet_types.QDesignerDynamicPropertySheetExtension,
    inst: VirtualQDesignerDynamicPropertySheetExtension) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerDynamicPropertySheetExtension_new(addr(cQDesignerDynamicPropertySheetExtension_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerDynamicPropertySheetExtension_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

