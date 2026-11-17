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


import ./gen_propertysheet_types
export gen_propertysheet_types

import
  ../QtCore/gen_qvariant_types
export
  gen_qvariant_types

type cQDesignerPropertySheetExtension*{.exportc: "QDesignerPropertySheetExtension", incompleteStruct.} = object

proc fcQDesignerPropertySheetExtension_count(self: pointer): cint {.importc: "QDesignerPropertySheetExtension_count".}
proc fcQDesignerPropertySheetExtension_indexOf(self: pointer, name: struct_seaqt_string): cint {.importc: "QDesignerPropertySheetExtension_indexOf".}
proc fcQDesignerPropertySheetExtension_propertyName(self: pointer, index: cint): struct_seaqt_string {.importc: "QDesignerPropertySheetExtension_propertyName".}
proc fcQDesignerPropertySheetExtension_propertyGroup(self: pointer, index: cint): struct_seaqt_string {.importc: "QDesignerPropertySheetExtension_propertyGroup".}
proc fcQDesignerPropertySheetExtension_setPropertyGroup(self: pointer, index: cint, group: struct_seaqt_string): void {.importc: "QDesignerPropertySheetExtension_setPropertyGroup".}
proc fcQDesignerPropertySheetExtension_hasReset(self: pointer, index: cint): bool {.importc: "QDesignerPropertySheetExtension_hasReset".}
proc fcQDesignerPropertySheetExtension_reset(self: pointer, index: cint): bool {.importc: "QDesignerPropertySheetExtension_reset".}
proc fcQDesignerPropertySheetExtension_isVisible(self: pointer, index: cint): bool {.importc: "QDesignerPropertySheetExtension_isVisible".}
proc fcQDesignerPropertySheetExtension_setVisible(self: pointer, index: cint, b: bool): void {.importc: "QDesignerPropertySheetExtension_setVisible".}
proc fcQDesignerPropertySheetExtension_isAttribute(self: pointer, index: cint): bool {.importc: "QDesignerPropertySheetExtension_isAttribute".}
proc fcQDesignerPropertySheetExtension_setAttribute(self: pointer, index: cint, b: bool): void {.importc: "QDesignerPropertySheetExtension_setAttribute".}
proc fcQDesignerPropertySheetExtension_property(self: pointer, index: cint): pointer {.importc: "QDesignerPropertySheetExtension_property".}
proc fcQDesignerPropertySheetExtension_setProperty(self: pointer, index: cint, value: pointer): void {.importc: "QDesignerPropertySheetExtension_setProperty".}
proc fcQDesignerPropertySheetExtension_isChanged(self: pointer, index: cint): bool {.importc: "QDesignerPropertySheetExtension_isChanged".}
proc fcQDesignerPropertySheetExtension_setChanged(self: pointer, index: cint, changed: bool): void {.importc: "QDesignerPropertySheetExtension_setChanged".}
proc fcQDesignerPropertySheetExtension_isEnabled(self: pointer, index: cint): bool {.importc: "QDesignerPropertySheetExtension_isEnabled".}
proc fcQDesignerPropertySheetExtension_vdata(self: pointer): ptr pointer {.importc: "QDesignerPropertySheetExtension_vdata".}
proc fvdata_cQDesignerPropertySheetExtension(self: pointer): pointer {.importc: "vdata_QDesignerPropertySheetExtension".}

type cQDesignerPropertySheetExtensionVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  count*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(self: pointer, name: struct_seaqt_string): cint {.cdecl, raises: [], gcsafe.}
  propertyName*: proc(self: pointer, index: cint): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  propertyGroup*: proc(self: pointer, index: cint): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  setPropertyGroup*: proc(self: pointer, index: cint, group: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  hasReset*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
  isVisible*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, index: cint, b: bool): void {.cdecl, raises: [], gcsafe.}
  isAttribute*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
  setAttribute*: proc(self: pointer, index: cint, b: bool): void {.cdecl, raises: [], gcsafe.}
  property*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  setProperty*: proc(self: pointer, index: cint, value: pointer): void {.cdecl, raises: [], gcsafe.}
  isChanged*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
  setChanged*: proc(self: pointer, index: cint, changed: bool): void {.cdecl, raises: [], gcsafe.}
  isEnabled*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
proc fcQDesignerPropertySheetExtension_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerPropertySheetExtension {.importc: "QDesignerPropertySheetExtension_new".}

proc count*(self: gen_propertysheet_types.QDesignerPropertySheetExtension): cint =
  fcQDesignerPropertySheetExtension_count(self.h)

proc indexOf*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, name: openArray[char]): cint =
  fcQDesignerPropertySheetExtension_indexOf(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc propertyName*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint): string =
  let v_ms = fcQDesignerPropertySheetExtension_propertyName(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc propertyGroup*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint): string =
  let v_ms = fcQDesignerPropertySheetExtension_propertyGroup(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPropertyGroup*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint, group: openArray[char]): void =
  fcQDesignerPropertySheetExtension_setPropertyGroup(self.h, index, struct_seaqt_string(data: if len(group) > 0: addr group[0] else: nil, len: csize_t(len(group))))

proc hasReset*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint): bool =
  fcQDesignerPropertySheetExtension_hasReset(self.h, index)

proc reset*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint): bool =
  fcQDesignerPropertySheetExtension_reset(self.h, index)

proc isVisible*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint): bool =
  fcQDesignerPropertySheetExtension_isVisible(self.h, index)

proc setVisible*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint, b: bool): void =
  fcQDesignerPropertySheetExtension_setVisible(self.h, index, b)

proc isAttribute*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint): bool =
  fcQDesignerPropertySheetExtension_isAttribute(self.h, index)

proc setAttribute*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint, b: bool): void =
  fcQDesignerPropertySheetExtension_setAttribute(self.h, index, b)

proc property*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDesignerPropertySheetExtension_property(self.h, index), owned: true)

proc setProperty*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint, value: gen_qvariant_types.QVariant): void =
  fcQDesignerPropertySheetExtension_setProperty(self.h, index, value.h)

proc isChanged*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint): bool =
  fcQDesignerPropertySheetExtension_isChanged(self.h, index)

proc setChanged*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint, changed: bool): void =
  fcQDesignerPropertySheetExtension_setChanged(self.h, index, changed)

proc isEnabled*(self: gen_propertysheet_types.QDesignerPropertySheetExtension, index: cint): bool =
  fcQDesignerPropertySheetExtension_isEnabled(self.h, index)

type QDesignerPropertySheetExtensioncountProc* = proc(self: QDesignerPropertySheetExtension): cint {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionindexOfProc* = proc(self: QDesignerPropertySheetExtension, name: openArray[char]): cint {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionpropertyNameProc* = proc(self: QDesignerPropertySheetExtension, index: cint): string {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionpropertyGroupProc* = proc(self: QDesignerPropertySheetExtension, index: cint): string {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionsetPropertyGroupProc* = proc(self: QDesignerPropertySheetExtension, index: cint, group: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionhasResetProc* = proc(self: QDesignerPropertySheetExtension, index: cint): bool {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionresetProc* = proc(self: QDesignerPropertySheetExtension, index: cint): bool {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionisVisibleProc* = proc(self: QDesignerPropertySheetExtension, index: cint): bool {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionsetVisibleProc* = proc(self: QDesignerPropertySheetExtension, index: cint, b: bool): void {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionisAttributeProc* = proc(self: QDesignerPropertySheetExtension, index: cint): bool {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionsetAttributeProc* = proc(self: QDesignerPropertySheetExtension, index: cint, b: bool): void {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionpropertyProc* = proc(self: QDesignerPropertySheetExtension, index: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionsetPropertyProc* = proc(self: QDesignerPropertySheetExtension, index: cint, value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionisChangedProc* = proc(self: QDesignerPropertySheetExtension, index: cint): bool {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionsetChangedProc* = proc(self: QDesignerPropertySheetExtension, index: cint, changed: bool): void {.raises: [], gcsafe.}
type QDesignerPropertySheetExtensionisEnabledProc* = proc(self: QDesignerPropertySheetExtension, index: cint): bool {.raises: [], gcsafe.}

type QDesignerPropertySheetExtensionVTable* {.inheritable, pure.} = object
  vtbl: cQDesignerPropertySheetExtensionVTable
  count*: QDesignerPropertySheetExtensioncountProc
  indexOf*: QDesignerPropertySheetExtensionindexOfProc
  propertyName*: QDesignerPropertySheetExtensionpropertyNameProc
  propertyGroup*: QDesignerPropertySheetExtensionpropertyGroupProc
  setPropertyGroup*: QDesignerPropertySheetExtensionsetPropertyGroupProc
  hasReset*: QDesignerPropertySheetExtensionhasResetProc
  reset*: QDesignerPropertySheetExtensionresetProc
  isVisible*: QDesignerPropertySheetExtensionisVisibleProc
  setVisible*: QDesignerPropertySheetExtensionsetVisibleProc
  isAttribute*: QDesignerPropertySheetExtensionisAttributeProc
  setAttribute*: QDesignerPropertySheetExtensionsetAttributeProc
  property*: QDesignerPropertySheetExtensionpropertyProc
  setProperty*: QDesignerPropertySheetExtensionsetPropertyProc
  isChanged*: QDesignerPropertySheetExtensionisChangedProc
  setChanged*: QDesignerPropertySheetExtensionsetChangedProc
  isEnabled*: QDesignerPropertySheetExtensionisEnabledProc


proc fcQDesignerPropertySheetExtension_vtable_callback_count(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc fcQDesignerPropertySheetExtension_vtable_callback_indexOf(self: pointer, name: struct_seaqt_string): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc fcQDesignerPropertySheetExtension_vtable_callback_propertyName(self: pointer, index: cint): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].propertyName(self, slotval1)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerPropertySheetExtension_vtable_callback_propertyGroup(self: pointer, index: cint): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].propertyGroup(self, slotval1)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerPropertySheetExtension_vtable_callback_setPropertyGroup(self: pointer, index: cint, group: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  let vgroup_ms = group
  let vgroupx_ret = string.fromBytes(vgroup_ms)
  c_free(vgroup_ms.data)
  let slotval2 = vgroupx_ret
  vtbl[].setPropertyGroup(self, slotval1, slotval2)

proc fcQDesignerPropertySheetExtension_vtable_callback_hasReset(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].hasReset(self, slotval1)
  virtualReturn

proc fcQDesignerPropertySheetExtension_vtable_callback_reset(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].reset(self, slotval1)
  virtualReturn

proc fcQDesignerPropertySheetExtension_vtable_callback_isVisible(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].isVisible(self, slotval1)
  virtualReturn

proc fcQDesignerPropertySheetExtension_vtable_callback_setVisible(self: pointer, index: cint, b: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  let slotval2 = b
  vtbl[].setVisible(self, slotval1, slotval2)

proc fcQDesignerPropertySheetExtension_vtable_callback_isAttribute(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].isAttribute(self, slotval1)
  virtualReturn

proc fcQDesignerPropertySheetExtension_vtable_callback_setAttribute(self: pointer, index: cint, b: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  let slotval2 = b
  vtbl[].setAttribute(self, slotval1, slotval2)

proc fcQDesignerPropertySheetExtension_vtable_callback_property(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].property(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerPropertySheetExtension_vtable_callback_setProperty(self: pointer, index: cint, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  vtbl[].setProperty(self, slotval1, slotval2)

proc fcQDesignerPropertySheetExtension_vtable_callback_isChanged(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].isChanged(self, slotval1)
  virtualReturn

proc fcQDesignerPropertySheetExtension_vtable_callback_setChanged(self: pointer, index: cint, changed: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  let slotval2 = changed
  vtbl[].setChanged(self, slotval1, slotval2)

proc fcQDesignerPropertySheetExtension_vtable_callback_isEnabled(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
  let self = QDesignerPropertySheetExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].isEnabled(self, slotval1)
  virtualReturn

type VirtualQDesignerPropertySheetExtension* {.inheritable.} = ref object of QDesignerPropertySheetExtension
  vtbl*: cQDesignerPropertySheetExtensionVTable

method count*(self: VirtualQDesignerPropertySheetExtension): cint {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.count")
method indexOf*(self: VirtualQDesignerPropertySheetExtension, name: openArray[char]): cint {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.indexOf")
method propertyName*(self: VirtualQDesignerPropertySheetExtension, index: cint): string {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.propertyName")
method propertyGroup*(self: VirtualQDesignerPropertySheetExtension, index: cint): string {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.propertyGroup")
method setPropertyGroup*(self: VirtualQDesignerPropertySheetExtension, index: cint, group: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.setPropertyGroup")
method hasReset*(self: VirtualQDesignerPropertySheetExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.hasReset")
method reset*(self: VirtualQDesignerPropertySheetExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.reset")
method isVisible*(self: VirtualQDesignerPropertySheetExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.isVisible")
method setVisible*(self: VirtualQDesignerPropertySheetExtension, index: cint, b: bool): void {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.setVisible")
method isAttribute*(self: VirtualQDesignerPropertySheetExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.isAttribute")
method setAttribute*(self: VirtualQDesignerPropertySheetExtension, index: cint, b: bool): void {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.setAttribute")
method property*(self: VirtualQDesignerPropertySheetExtension, index: cint): gen_qvariant_types.QVariant {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.property")
method setProperty*(self: VirtualQDesignerPropertySheetExtension, index: cint, value: gen_qvariant_types.QVariant): void {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.setProperty")
method isChanged*(self: VirtualQDesignerPropertySheetExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.isChanged")
method setChanged*(self: VirtualQDesignerPropertySheetExtension, index: cint, changed: bool): void {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.setChanged")
method isEnabled*(self: VirtualQDesignerPropertySheetExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerPropertySheetExtension.isEnabled")

proc fcQDesignerPropertySheetExtension_method_callback_count(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  var virtualReturn = inst.count()
  virtualReturn

proc fcQDesignerPropertySheetExtension_method_callback_indexOf(self: pointer, name: struct_seaqt_string): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  var virtualReturn = inst.indexOf(slotval1)
  virtualReturn

proc fcQDesignerPropertySheetExtension_method_callback_propertyName(self: pointer, index: cint): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.propertyName(slotval1)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerPropertySheetExtension_method_callback_propertyGroup(self: pointer, index: cint): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.propertyGroup(slotval1)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerPropertySheetExtension_method_callback_setPropertyGroup(self: pointer, index: cint, group: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  let vgroup_ms = group
  let vgroupx_ret = string.fromBytes(vgroup_ms)
  c_free(vgroup_ms.data)
  let slotval2 = vgroupx_ret
  inst.setPropertyGroup(slotval1, slotval2)

proc fcQDesignerPropertySheetExtension_method_callback_hasReset(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.hasReset(slotval1)
  virtualReturn

proc fcQDesignerPropertySheetExtension_method_callback_reset(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.reset(slotval1)
  virtualReturn

proc fcQDesignerPropertySheetExtension_method_callback_isVisible(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.isVisible(slotval1)
  virtualReturn

proc fcQDesignerPropertySheetExtension_method_callback_setVisible(self: pointer, index: cint, b: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  let slotval2 = b
  inst.setVisible(slotval1, slotval2)

proc fcQDesignerPropertySheetExtension_method_callback_isAttribute(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.isAttribute(slotval1)
  virtualReturn

proc fcQDesignerPropertySheetExtension_method_callback_setAttribute(self: pointer, index: cint, b: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  let slotval2 = b
  inst.setAttribute(slotval1, slotval2)

proc fcQDesignerPropertySheetExtension_method_callback_property(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.property(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerPropertySheetExtension_method_callback_setProperty(self: pointer, index: cint, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  let slotval2 = gen_qvariant_types.QVariant(h: value, owned: false)
  inst.setProperty(slotval1, slotval2)

proc fcQDesignerPropertySheetExtension_method_callback_isChanged(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.isChanged(slotval1)
  virtualReturn

proc fcQDesignerPropertySheetExtension_method_callback_setChanged(self: pointer, index: cint, changed: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  let slotval2 = changed
  inst.setChanged(slotval1, slotval2)

proc fcQDesignerPropertySheetExtension_method_callback_isEnabled(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerPropertySheetExtension](fcQDesignerPropertySheetExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.isEnabled(slotval1)
  virtualReturn


proc create*(T: type gen_propertysheet_types.QDesignerPropertySheetExtension,
    vtbl: ref QDesignerPropertySheetExtensionVTable = nil): gen_propertysheet_types.QDesignerPropertySheetExtension =
  let vtbl = if vtbl == nil: new QDesignerPropertySheetExtensionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerPropertySheetExtensionVTable](fcQDesignerPropertySheetExtension_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQDesignerPropertySheetExtension_vtable_callback_count
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQDesignerPropertySheetExtension_vtable_callback_indexOf
  if not isNil(vtbl[].propertyName):
    vtbl[].vtbl.propertyName = fcQDesignerPropertySheetExtension_vtable_callback_propertyName
  if not isNil(vtbl[].propertyGroup):
    vtbl[].vtbl.propertyGroup = fcQDesignerPropertySheetExtension_vtable_callback_propertyGroup
  if not isNil(vtbl[].setPropertyGroup):
    vtbl[].vtbl.setPropertyGroup = fcQDesignerPropertySheetExtension_vtable_callback_setPropertyGroup
  if not isNil(vtbl[].hasReset):
    vtbl[].vtbl.hasReset = fcQDesignerPropertySheetExtension_vtable_callback_hasReset
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQDesignerPropertySheetExtension_vtable_callback_reset
  if not isNil(vtbl[].isVisible):
    vtbl[].vtbl.isVisible = fcQDesignerPropertySheetExtension_vtable_callback_isVisible
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerPropertySheetExtension_vtable_callback_setVisible
  if not isNil(vtbl[].isAttribute):
    vtbl[].vtbl.isAttribute = fcQDesignerPropertySheetExtension_vtable_callback_isAttribute
  if not isNil(vtbl[].setAttribute):
    vtbl[].vtbl.setAttribute = fcQDesignerPropertySheetExtension_vtable_callback_setAttribute
  if not isNil(vtbl[].property):
    vtbl[].vtbl.property = fcQDesignerPropertySheetExtension_vtable_callback_property
  if not isNil(vtbl[].setProperty):
    vtbl[].vtbl.setProperty = fcQDesignerPropertySheetExtension_vtable_callback_setProperty
  if not isNil(vtbl[].isChanged):
    vtbl[].vtbl.isChanged = fcQDesignerPropertySheetExtension_vtable_callback_isChanged
  if not isNil(vtbl[].setChanged):
    vtbl[].vtbl.setChanged = fcQDesignerPropertySheetExtension_vtable_callback_setChanged
  if not isNil(vtbl[].isEnabled):
    vtbl[].vtbl.isEnabled = fcQDesignerPropertySheetExtension_vtable_callback_isEnabled
  let tmp = gen_propertysheet_types.QDesignerPropertySheetExtension(h: fcQDesignerPropertySheetExtension_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQDesignerPropertySheetExtension_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerPropertySheetExtension_mvtbl = cQDesignerPropertySheetExtensionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerPropertySheetExtension()[])](self.fcQDesignerPropertySheetExtension_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  count: fcQDesignerPropertySheetExtension_method_callback_count,
  indexOf: fcQDesignerPropertySheetExtension_method_callback_indexOf,
  propertyName: fcQDesignerPropertySheetExtension_method_callback_propertyName,
  propertyGroup: fcQDesignerPropertySheetExtension_method_callback_propertyGroup,
  setPropertyGroup: fcQDesignerPropertySheetExtension_method_callback_setPropertyGroup,
  hasReset: fcQDesignerPropertySheetExtension_method_callback_hasReset,
  reset: fcQDesignerPropertySheetExtension_method_callback_reset,
  isVisible: fcQDesignerPropertySheetExtension_method_callback_isVisible,
  setVisible: fcQDesignerPropertySheetExtension_method_callback_setVisible,
  isAttribute: fcQDesignerPropertySheetExtension_method_callback_isAttribute,
  setAttribute: fcQDesignerPropertySheetExtension_method_callback_setAttribute,
  property: fcQDesignerPropertySheetExtension_method_callback_property,
  setProperty: fcQDesignerPropertySheetExtension_method_callback_setProperty,
  isChanged: fcQDesignerPropertySheetExtension_method_callback_isChanged,
  setChanged: fcQDesignerPropertySheetExtension_method_callback_setChanged,
  isEnabled: fcQDesignerPropertySheetExtension_method_callback_isEnabled,
)
proc create*(T: type gen_propertysheet_types.QDesignerPropertySheetExtension,
    inst: VirtualQDesignerPropertySheetExtension) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerPropertySheetExtension_new(addr(cQDesignerPropertySheetExtension_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerPropertySheetExtension_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

