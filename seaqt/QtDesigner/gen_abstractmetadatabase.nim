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


import ./gen_abstractmetadatabase_types
export gen_abstractmetadatabase_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtWidgets/gen_qwidget_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qwidget_types

type cQDesignerMetaDataBaseItemInterface*{.exportc: "QDesignerMetaDataBaseItemInterface", incompleteStruct.} = object
type cQDesignerMetaDataBaseInterface*{.exportc: "QDesignerMetaDataBaseInterface", incompleteStruct.} = object

proc fcQDesignerMetaDataBaseItemInterface_name(self: pointer): struct_seaqt_string {.importc: "QDesignerMetaDataBaseItemInterface_name".}
proc fcQDesignerMetaDataBaseItemInterface_setName(self: pointer, name: struct_seaqt_string): void {.importc: "QDesignerMetaDataBaseItemInterface_setName".}
proc fcQDesignerMetaDataBaseItemInterface_tabOrder(self: pointer): struct_seaqt_array {.importc: "QDesignerMetaDataBaseItemInterface_tabOrder".}
proc fcQDesignerMetaDataBaseItemInterface_setTabOrder(self: pointer, tabOrder: struct_seaqt_array): void {.importc: "QDesignerMetaDataBaseItemInterface_setTabOrder".}
proc fcQDesignerMetaDataBaseItemInterface_enabled(self: pointer): bool {.importc: "QDesignerMetaDataBaseItemInterface_enabled".}
proc fcQDesignerMetaDataBaseItemInterface_setEnabled(self: pointer, b: bool): void {.importc: "QDesignerMetaDataBaseItemInterface_setEnabled".}
proc fcQDesignerMetaDataBaseItemInterface_vdata(self: pointer): ptr pointer {.importc: "QDesignerMetaDataBaseItemInterface_vdata".}
proc fvdata_cQDesignerMetaDataBaseItemInterface(self: pointer): pointer {.importc: "vdata_QDesignerMetaDataBaseItemInterface".}

type cQDesignerMetaDataBaseItemInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  name*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  setName*: proc(self: pointer, name: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
  tabOrder*: proc(self: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  setTabOrder*: proc(self: pointer, tabOrder: struct_seaqt_array): void {.cdecl, raises: [], gcsafe.}
  enabled*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setEnabled*: proc(self: pointer, b: bool): void {.cdecl, raises: [], gcsafe.}
proc fcQDesignerMetaDataBaseItemInterface_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerMetaDataBaseItemInterface {.importc: "QDesignerMetaDataBaseItemInterface_new".}
proc fcQDesignerMetaDataBaseInterface_metaObject(self: pointer): pointer {.importc: "QDesignerMetaDataBaseInterface_metaObject".}
proc fcQDesignerMetaDataBaseInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerMetaDataBaseInterface_metacast".}
proc fcQDesignerMetaDataBaseInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerMetaDataBaseInterface_metacall".}
proc fcQDesignerMetaDataBaseInterface_trS(s: cstring): struct_seaqt_string {.importc: "QDesignerMetaDataBaseInterface_tr_s".}
proc fcQDesignerMetaDataBaseInterface_item(self: pointer, objectVal: pointer): pointer {.importc: "QDesignerMetaDataBaseInterface_item".}
proc fcQDesignerMetaDataBaseInterface_add(self: pointer, objectVal: pointer): void {.importc: "QDesignerMetaDataBaseInterface_add".}
proc fcQDesignerMetaDataBaseInterface_remove(self: pointer, objectVal: pointer): void {.importc: "QDesignerMetaDataBaseInterface_remove".}
proc fcQDesignerMetaDataBaseInterface_objects(self: pointer): struct_seaqt_array {.importc: "QDesignerMetaDataBaseInterface_objects".}
proc fcQDesignerMetaDataBaseInterface_changed(self: pointer): void {.importc: "QDesignerMetaDataBaseInterface_changed".}
proc fcQDesignerMetaDataBaseInterface_connect_changed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDesignerMetaDataBaseInterface_connect_changed".}
proc fcQDesignerMetaDataBaseInterface_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerMetaDataBaseInterface_tr_s_c".}
proc fcQDesignerMetaDataBaseInterface_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerMetaDataBaseInterface_tr_s_c_n".}
proc fcQDesignerMetaDataBaseInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerMetaDataBaseInterface_protectedbase_sender".}
proc fcQDesignerMetaDataBaseInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerMetaDataBaseInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerMetaDataBaseInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerMetaDataBaseInterface_protectedbase_receivers".}
proc fcQDesignerMetaDataBaseInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerMetaDataBaseInterface_protectedbase_isSignalConnected".}
proc fcQDesignerMetaDataBaseInterface_staticMetaObject(): pointer {.importc: "QDesignerMetaDataBaseInterface_staticMetaObject".}

proc name*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseItemInterface): string =
  let v_ms = fcQDesignerMetaDataBaseItemInterface_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setName*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseItemInterface, name: openArray[char]): void =
  fcQDesignerMetaDataBaseItemInterface_setName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc tabOrder*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseItemInterface): seq[gen_qwidget_types.QWidget] =
  var v_ma = fcQDesignerMetaDataBaseItemInterface_tabOrder(self.h)
  var vx_ret = newSeq[gen_qwidget_types.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget_types.QWidget(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc setTabOrder*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseItemInterface, tabOrder: openArray[gen_qwidget_types.QWidget]): void =
  var tabOrder_CArray = newSeq[pointer](len(tabOrder))
  for i in 0..<len(tabOrder):
    tabOrder_CArray[i] = tabOrder[i].h

  fcQDesignerMetaDataBaseItemInterface_setTabOrder(self.h, struct_seaqt_array(len: csize_t(len(tabOrder)), data: if len(tabOrder) == 0: nil else: addr(tabOrder_CArray[0])))

proc enabled*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseItemInterface): bool =
  fcQDesignerMetaDataBaseItemInterface_enabled(self.h)

proc setEnabled*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseItemInterface, b: bool): void =
  fcQDesignerMetaDataBaseItemInterface_setEnabled(self.h, b)

type QDesignerMetaDataBaseItemInterfacenameProc* = proc(self: QDesignerMetaDataBaseItemInterface): string {.raises: [], gcsafe.}
type QDesignerMetaDataBaseItemInterfacesetNameProc* = proc(self: QDesignerMetaDataBaseItemInterface, name: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerMetaDataBaseItemInterfacetabOrderProc* = proc(self: QDesignerMetaDataBaseItemInterface): seq[gen_qwidget_types.QWidget] {.raises: [], gcsafe.}
type QDesignerMetaDataBaseItemInterfacesetTabOrderProc* = proc(self: QDesignerMetaDataBaseItemInterface, tabOrder: openArray[gen_qwidget_types.QWidget]): void {.raises: [], gcsafe.}
type QDesignerMetaDataBaseItemInterfaceenabledProc* = proc(self: QDesignerMetaDataBaseItemInterface): bool {.raises: [], gcsafe.}
type QDesignerMetaDataBaseItemInterfacesetEnabledProc* = proc(self: QDesignerMetaDataBaseItemInterface, b: bool): void {.raises: [], gcsafe.}

type QDesignerMetaDataBaseItemInterfaceVTable* {.inheritable, pure.} = object
  vtbl: cQDesignerMetaDataBaseItemInterfaceVTable
  name*: QDesignerMetaDataBaseItemInterfacenameProc
  setName*: QDesignerMetaDataBaseItemInterfacesetNameProc
  tabOrder*: QDesignerMetaDataBaseItemInterfacetabOrderProc
  setTabOrder*: QDesignerMetaDataBaseItemInterfacesetTabOrderProc
  enabled*: QDesignerMetaDataBaseItemInterfaceenabledProc
  setEnabled*: QDesignerMetaDataBaseItemInterfacesetEnabledProc


proc fcQDesignerMetaDataBaseItemInterface_vtable_callback_name(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QDesignerMetaDataBaseItemInterfaceVTable](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
  let self = QDesignerMetaDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].name(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerMetaDataBaseItemInterface_vtable_callback_setName(self: pointer, name: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerMetaDataBaseItemInterfaceVTable](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
  let self = QDesignerMetaDataBaseItemInterface(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  vtbl[].setName(self, slotval1)

proc fcQDesignerMetaDataBaseItemInterface_vtable_callback_tabOrder(self: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QDesignerMetaDataBaseItemInterfaceVTable](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
  let self = QDesignerMetaDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].tabOrder(self)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQDesignerMetaDataBaseItemInterface_vtable_callback_setTabOrder(self: pointer, tabOrder: struct_seaqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerMetaDataBaseItemInterfaceVTable](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
  let self = QDesignerMetaDataBaseItemInterface(h: self)
  var vtabOrder_ma = tabOrder
  var vtabOrderx_ret = newSeq[gen_qwidget_types.QWidget](int(vtabOrder_ma.len))
  let vtabOrder_outCast = cast[ptr UncheckedArray[pointer]](vtabOrder_ma.data)
  for i in 0 ..< vtabOrder_ma.len:
    vtabOrderx_ret[i] = gen_qwidget_types.QWidget(h: vtabOrder_outCast[i], owned: false)
  c_free(vtabOrder_ma.data)
  let slotval1 = vtabOrderx_ret
  vtbl[].setTabOrder(self, slotval1)

proc fcQDesignerMetaDataBaseItemInterface_vtable_callback_enabled(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerMetaDataBaseItemInterfaceVTable](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
  let self = QDesignerMetaDataBaseItemInterface(h: self)
  var virtualReturn = vtbl[].enabled(self)
  virtualReturn

proc fcQDesignerMetaDataBaseItemInterface_vtable_callback_setEnabled(self: pointer, b: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerMetaDataBaseItemInterfaceVTable](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
  let self = QDesignerMetaDataBaseItemInterface(h: self)
  let slotval1 = b
  vtbl[].setEnabled(self, slotval1)

type VirtualQDesignerMetaDataBaseItemInterface* {.inheritable.} = ref object of QDesignerMetaDataBaseItemInterface
  vtbl*: cQDesignerMetaDataBaseItemInterfaceVTable

method name*(self: VirtualQDesignerMetaDataBaseItemInterface): string {.base.} =
  raiseAssert("missing implementation of QDesignerMetaDataBaseItemInterface.name")
method setName*(self: VirtualQDesignerMetaDataBaseItemInterface, name: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerMetaDataBaseItemInterface.setName")
method tabOrder*(self: VirtualQDesignerMetaDataBaseItemInterface): seq[gen_qwidget_types.QWidget] {.base.} =
  raiseAssert("missing implementation of QDesignerMetaDataBaseItemInterface.tabOrder")
method setTabOrder*(self: VirtualQDesignerMetaDataBaseItemInterface, tabOrder: openArray[gen_qwidget_types.QWidget]): void {.base.} =
  raiseAssert("missing implementation of QDesignerMetaDataBaseItemInterface.setTabOrder")
method enabled*(self: VirtualQDesignerMetaDataBaseItemInterface): bool {.base.} =
  raiseAssert("missing implementation of QDesignerMetaDataBaseItemInterface.enabled")
method setEnabled*(self: VirtualQDesignerMetaDataBaseItemInterface, b: bool): void {.base.} =
  raiseAssert("missing implementation of QDesignerMetaDataBaseItemInterface.setEnabled")

proc fcQDesignerMetaDataBaseItemInterface_method_callback_name(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQDesignerMetaDataBaseItemInterface](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.name()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQDesignerMetaDataBaseItemInterface_method_callback_setName(self: pointer, name: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerMetaDataBaseItemInterface](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  inst.setName(slotval1)

proc fcQDesignerMetaDataBaseItemInterface_method_callback_tabOrder(self: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQDesignerMetaDataBaseItemInterface](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.tabOrder()
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQDesignerMetaDataBaseItemInterface_method_callback_setTabOrder(self: pointer, tabOrder: struct_seaqt_array): void {.cdecl.} =
  let inst = cast[VirtualQDesignerMetaDataBaseItemInterface](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
  var vtabOrder_ma = tabOrder
  var vtabOrderx_ret = newSeq[gen_qwidget_types.QWidget](int(vtabOrder_ma.len))
  let vtabOrder_outCast = cast[ptr UncheckedArray[pointer]](vtabOrder_ma.data)
  for i in 0 ..< vtabOrder_ma.len:
    vtabOrderx_ret[i] = gen_qwidget_types.QWidget(h: vtabOrder_outCast[i], owned: false)
  c_free(vtabOrder_ma.data)
  let slotval1 = vtabOrderx_ret
  inst.setTabOrder(slotval1)

proc fcQDesignerMetaDataBaseItemInterface_method_callback_enabled(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerMetaDataBaseItemInterface](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
  var virtualReturn = inst.enabled()
  virtualReturn

proc fcQDesignerMetaDataBaseItemInterface_method_callback_setEnabled(self: pointer, b: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerMetaDataBaseItemInterface](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
  let slotval1 = b
  inst.setEnabled(slotval1)


proc create*(T: type gen_abstractmetadatabase_types.QDesignerMetaDataBaseItemInterface,
    vtbl: ref QDesignerMetaDataBaseItemInterfaceVTable = nil): gen_abstractmetadatabase_types.QDesignerMetaDataBaseItemInterface =
  let vtbl = if vtbl == nil: new QDesignerMetaDataBaseItemInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerMetaDataBaseItemInterfaceVTable](fcQDesignerMetaDataBaseItemInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].name):
    vtbl[].vtbl.name = fcQDesignerMetaDataBaseItemInterface_vtable_callback_name
  if not isNil(vtbl[].setName):
    vtbl[].vtbl.setName = fcQDesignerMetaDataBaseItemInterface_vtable_callback_setName
  if not isNil(vtbl[].tabOrder):
    vtbl[].vtbl.tabOrder = fcQDesignerMetaDataBaseItemInterface_vtable_callback_tabOrder
  if not isNil(vtbl[].setTabOrder):
    vtbl[].vtbl.setTabOrder = fcQDesignerMetaDataBaseItemInterface_vtable_callback_setTabOrder
  if not isNil(vtbl[].enabled):
    vtbl[].vtbl.enabled = fcQDesignerMetaDataBaseItemInterface_vtable_callback_enabled
  if not isNil(vtbl[].setEnabled):
    vtbl[].vtbl.setEnabled = fcQDesignerMetaDataBaseItemInterface_vtable_callback_setEnabled
  let tmp = gen_abstractmetadatabase_types.QDesignerMetaDataBaseItemInterface(h: fcQDesignerMetaDataBaseItemInterface_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQDesignerMetaDataBaseItemInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerMetaDataBaseItemInterface_mvtbl = cQDesignerMetaDataBaseItemInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerMetaDataBaseItemInterface()[])](self.fcQDesignerMetaDataBaseItemInterface_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  name: fcQDesignerMetaDataBaseItemInterface_method_callback_name,
  setName: fcQDesignerMetaDataBaseItemInterface_method_callback_setName,
  tabOrder: fcQDesignerMetaDataBaseItemInterface_method_callback_tabOrder,
  setTabOrder: fcQDesignerMetaDataBaseItemInterface_method_callback_setTabOrder,
  enabled: fcQDesignerMetaDataBaseItemInterface_method_callback_enabled,
  setEnabled: fcQDesignerMetaDataBaseItemInterface_method_callback_setEnabled,
)
proc create*(T: type gen_abstractmetadatabase_types.QDesignerMetaDataBaseItemInterface,
    inst: VirtualQDesignerMetaDataBaseItemInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerMetaDataBaseItemInterface_new(addr(cQDesignerMetaDataBaseItemInterface_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerMetaDataBaseItemInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc metaObject*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerMetaDataBaseInterface_metaObject(self.h), owned: false)

proc metacast*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface, param1: cstring): pointer =
  fcQDesignerMetaDataBaseInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerMetaDataBaseInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface, s: cstring): string =
  let v_ms = fcQDesignerMetaDataBaseInterface_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc item*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface, objectVal: gen_qobject_types.QObject): gen_abstractmetadatabase_types.QDesignerMetaDataBaseItemInterface =
  gen_abstractmetadatabase_types.QDesignerMetaDataBaseItemInterface(h: fcQDesignerMetaDataBaseInterface_item(self.h, objectVal.h), owned: false)

proc add*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface, objectVal: gen_qobject_types.QObject): void =
  fcQDesignerMetaDataBaseInterface_add(self.h, objectVal.h)

proc remove*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface, objectVal: gen_qobject_types.QObject): void =
  fcQDesignerMetaDataBaseInterface_remove(self.h, objectVal.h)

proc objects*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface): seq[gen_qobject_types.QObject] =
  var v_ma = fcQDesignerMetaDataBaseInterface_objects(self.h)
  var vx_ret = newSeq[gen_qobject_types.QObject](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qobject_types.QObject(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc changed*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface): void =
  fcQDesignerMetaDataBaseInterface_changed(self.h)

type QDesignerMetaDataBaseInterfacechangedSlot* = proc()
proc fcQDesignerMetaDataBaseInterface_slot_callback_changed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDesignerMetaDataBaseInterfacechangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQDesignerMetaDataBaseInterface_slot_callback_changed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDesignerMetaDataBaseInterfacechangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onChanged*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface, slot: QDesignerMetaDataBaseInterfacechangedSlot) =
  var tmp = new QDesignerMetaDataBaseInterfacechangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDesignerMetaDataBaseInterface_connect_changed(self.h, cast[int](addr tmp[]), fcQDesignerMetaDataBaseInterface_slot_callback_changed, fcQDesignerMetaDataBaseInterface_slot_callback_changed_release)

proc tr*(_: type gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerMetaDataBaseInterface_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerMetaDataBaseInterface_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerMetaDataBaseInterface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface): cint =
  fcQDesignerMetaDataBaseInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface, signal: cstring): cint =
  fcQDesignerMetaDataBaseInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerMetaDataBaseInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_abstractmetadatabase_types.QDesignerMetaDataBaseInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerMetaDataBaseInterface_staticMetaObject())
