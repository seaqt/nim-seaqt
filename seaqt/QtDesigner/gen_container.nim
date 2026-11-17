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


import ./gen_container_types
export gen_container_types

import
  ../QtWidgets/gen_qwidget_types
export
  gen_qwidget_types

type cQDesignerContainerExtension*{.exportc: "QDesignerContainerExtension", incompleteStruct.} = object

proc fcQDesignerContainerExtension_count(self: pointer): cint {.importc: "QDesignerContainerExtension_count".}
proc fcQDesignerContainerExtension_widget(self: pointer, index: cint): pointer {.importc: "QDesignerContainerExtension_widget".}
proc fcQDesignerContainerExtension_currentIndex(self: pointer): cint {.importc: "QDesignerContainerExtension_currentIndex".}
proc fcQDesignerContainerExtension_setCurrentIndex(self: pointer, index: cint): void {.importc: "QDesignerContainerExtension_setCurrentIndex".}
proc fcQDesignerContainerExtension_canAddWidget(self: pointer): bool {.importc: "QDesignerContainerExtension_canAddWidget".}
proc fcQDesignerContainerExtension_addWidget(self: pointer, widget: pointer): void {.importc: "QDesignerContainerExtension_addWidget".}
proc fcQDesignerContainerExtension_insertWidget(self: pointer, index: cint, widget: pointer): void {.importc: "QDesignerContainerExtension_insertWidget".}
proc fcQDesignerContainerExtension_canRemove(self: pointer, index: cint): bool {.importc: "QDesignerContainerExtension_canRemove".}
proc fcQDesignerContainerExtension_remove(self: pointer, index: cint): void {.importc: "QDesignerContainerExtension_remove".}
proc fcQDesignerContainerExtension_vdata(self: pointer): ptr pointer {.importc: "QDesignerContainerExtension_vdata".}
proc fvdata_cQDesignerContainerExtension(self: pointer): pointer {.importc: "vdata_QDesignerContainerExtension".}

type cQDesignerContainerExtensionVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  count*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  currentIndex*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setCurrentIndex*: proc(self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  canAddWidget*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  addWidget*: proc(self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  insertWidget*: proc(self: pointer, index: cint, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  canRemove*: proc(self: pointer, index: cint): bool {.cdecl, raises: [], gcsafe.}
  remove*: proc(self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
proc fcQDesignerContainerExtension_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerContainerExtension {.importc: "QDesignerContainerExtension_new".}
proc fcQDesignerContainerExtension_delete(self: pointer) {.importc: "QDesignerContainerExtension_delete".}

proc count*(self: gen_container_types.QDesignerContainerExtension): cint =
  fcQDesignerContainerExtension_count(self.h)

proc widget*(self: gen_container_types.QDesignerContainerExtension, index: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerContainerExtension_widget(self.h, index))

proc currentIndex*(self: gen_container_types.QDesignerContainerExtension): cint =
  fcQDesignerContainerExtension_currentIndex(self.h)

proc setCurrentIndex*(self: gen_container_types.QDesignerContainerExtension, index: cint): void =
  fcQDesignerContainerExtension_setCurrentIndex(self.h, index)

proc canAddWidget*(self: gen_container_types.QDesignerContainerExtension): bool =
  fcQDesignerContainerExtension_canAddWidget(self.h)

proc addWidget*(self: gen_container_types.QDesignerContainerExtension, widget: gen_qwidget_types.QWidget): void =
  fcQDesignerContainerExtension_addWidget(self.h, widget.h)

proc insertWidget*(self: gen_container_types.QDesignerContainerExtension, index: cint, widget: gen_qwidget_types.QWidget): void =
  fcQDesignerContainerExtension_insertWidget(self.h, index, widget.h)

proc canRemove*(self: gen_container_types.QDesignerContainerExtension, index: cint): bool =
  fcQDesignerContainerExtension_canRemove(self.h, index)

proc remove*(self: gen_container_types.QDesignerContainerExtension, index: cint): void =
  fcQDesignerContainerExtension_remove(self.h, index)

type QDesignerContainerExtensioncountProc* = proc(self: QDesignerContainerExtension): cint {.raises: [], gcsafe.}
type QDesignerContainerExtensionwidgetProc* = proc(self: QDesignerContainerExtension, index: cint): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QDesignerContainerExtensioncurrentIndexProc* = proc(self: QDesignerContainerExtension): cint {.raises: [], gcsafe.}
type QDesignerContainerExtensionsetCurrentIndexProc* = proc(self: QDesignerContainerExtension, index: cint): void {.raises: [], gcsafe.}
type QDesignerContainerExtensioncanAddWidgetProc* = proc(self: QDesignerContainerExtension): bool {.raises: [], gcsafe.}
type QDesignerContainerExtensionaddWidgetProc* = proc(self: QDesignerContainerExtension, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QDesignerContainerExtensioninsertWidgetProc* = proc(self: QDesignerContainerExtension, index: cint, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QDesignerContainerExtensioncanRemoveProc* = proc(self: QDesignerContainerExtension, index: cint): bool {.raises: [], gcsafe.}
type QDesignerContainerExtensionremoveProc* = proc(self: QDesignerContainerExtension, index: cint): void {.raises: [], gcsafe.}
type QDesignerContainerExtensionVTable* = object
  vtbl: cQDesignerContainerExtensionVTable
  count*: QDesignerContainerExtensioncountProc
  widget*: QDesignerContainerExtensionwidgetProc
  currentIndex*: QDesignerContainerExtensioncurrentIndexProc
  setCurrentIndex*: QDesignerContainerExtensionsetCurrentIndexProc
  canAddWidget*: QDesignerContainerExtensioncanAddWidgetProc
  addWidget*: QDesignerContainerExtensionaddWidgetProc
  insertWidget*: QDesignerContainerExtensioninsertWidgetProc
  canRemove*: QDesignerContainerExtensioncanRemoveProc
  remove*: QDesignerContainerExtensionremoveProc


proc fcQDesignerContainerExtension_vtable_callback_count(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerContainerExtensionVTable](fcQDesignerContainerExtension_vdata(self)[])
  let self = QDesignerContainerExtension(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc fcQDesignerContainerExtension_vtable_callback_widget(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerContainerExtensionVTable](fcQDesignerContainerExtension_vdata(self)[])
  let self = QDesignerContainerExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].widget(self, slotval1)
  virtualReturn.h

proc fcQDesignerContainerExtension_vtable_callback_currentIndex(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerContainerExtensionVTable](fcQDesignerContainerExtension_vdata(self)[])
  let self = QDesignerContainerExtension(h: self)
  var virtualReturn = vtbl[].currentIndex(self)
  virtualReturn

proc fcQDesignerContainerExtension_vtable_callback_setCurrentIndex(self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerContainerExtensionVTable](fcQDesignerContainerExtension_vdata(self)[])
  let self = QDesignerContainerExtension(h: self)
  let slotval1 = index
  vtbl[].setCurrentIndex(self, slotval1)

proc fcQDesignerContainerExtension_vtable_callback_canAddWidget(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerContainerExtensionVTable](fcQDesignerContainerExtension_vdata(self)[])
  let self = QDesignerContainerExtension(h: self)
  var virtualReturn = vtbl[].canAddWidget(self)
  virtualReturn

proc fcQDesignerContainerExtension_vtable_callback_addWidget(self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerContainerExtensionVTable](fcQDesignerContainerExtension_vdata(self)[])
  let self = QDesignerContainerExtension(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].addWidget(self, slotval1)

proc fcQDesignerContainerExtension_vtable_callback_insertWidget(self: pointer, index: cint, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerContainerExtensionVTable](fcQDesignerContainerExtension_vdata(self)[])
  let self = QDesignerContainerExtension(h: self)
  let slotval1 = index
  let slotval2 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].insertWidget(self, slotval1, slotval2)

proc fcQDesignerContainerExtension_vtable_callback_canRemove(self: pointer, index: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerContainerExtensionVTable](fcQDesignerContainerExtension_vdata(self)[])
  let self = QDesignerContainerExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].canRemove(self, slotval1)
  virtualReturn

proc fcQDesignerContainerExtension_vtable_callback_remove(self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerContainerExtensionVTable](fcQDesignerContainerExtension_vdata(self)[])
  let self = QDesignerContainerExtension(h: self)
  let slotval1 = index
  vtbl[].remove(self, slotval1)

type VirtualQDesignerContainerExtension* {.inheritable.} = ref object of QDesignerContainerExtension
  vtbl*: cQDesignerContainerExtensionVTable

method count*(self: VirtualQDesignerContainerExtension): cint {.base.} =
  raiseAssert("missing implementation of QDesignerContainerExtension.count")
method widget*(self: VirtualQDesignerContainerExtension, index: cint): gen_qwidget_types.QWidget {.base.} =
  raiseAssert("missing implementation of QDesignerContainerExtension.widget")
method currentIndex*(self: VirtualQDesignerContainerExtension): cint {.base.} =
  raiseAssert("missing implementation of QDesignerContainerExtension.currentIndex")
method setCurrentIndex*(self: VirtualQDesignerContainerExtension, index: cint): void {.base.} =
  raiseAssert("missing implementation of QDesignerContainerExtension.setCurrentIndex")
method canAddWidget*(self: VirtualQDesignerContainerExtension): bool {.base.} =
  raiseAssert("missing implementation of QDesignerContainerExtension.canAddWidget")
method addWidget*(self: VirtualQDesignerContainerExtension, widget: gen_qwidget_types.QWidget): void {.base.} =
  raiseAssert("missing implementation of QDesignerContainerExtension.addWidget")
method insertWidget*(self: VirtualQDesignerContainerExtension, index: cint, widget: gen_qwidget_types.QWidget): void {.base.} =
  raiseAssert("missing implementation of QDesignerContainerExtension.insertWidget")
method canRemove*(self: VirtualQDesignerContainerExtension, index: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerContainerExtension.canRemove")
method remove*(self: VirtualQDesignerContainerExtension, index: cint): void {.base.} =
  raiseAssert("missing implementation of QDesignerContainerExtension.remove")

proc fcQDesignerContainerExtension_method_callback_count(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerContainerExtension](fcQDesignerContainerExtension_vdata(self)[])
  var virtualReturn = inst.count()
  virtualReturn

proc fcQDesignerContainerExtension_method_callback_widget(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerContainerExtension](fcQDesignerContainerExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.widget(slotval1)
  virtualReturn.h

proc fcQDesignerContainerExtension_method_callback_currentIndex(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerContainerExtension](fcQDesignerContainerExtension_vdata(self)[])
  var virtualReturn = inst.currentIndex()
  virtualReturn

proc fcQDesignerContainerExtension_method_callback_setCurrentIndex(self: pointer, index: cint): void {.cdecl.} =
  let inst = cast[VirtualQDesignerContainerExtension](fcQDesignerContainerExtension_vdata(self)[])
  let slotval1 = index
  inst.setCurrentIndex(slotval1)

proc fcQDesignerContainerExtension_method_callback_canAddWidget(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerContainerExtension](fcQDesignerContainerExtension_vdata(self)[])
  var virtualReturn = inst.canAddWidget()
  virtualReturn

proc fcQDesignerContainerExtension_method_callback_addWidget(self: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerContainerExtension](fcQDesignerContainerExtension_vdata(self)[])
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  inst.addWidget(slotval1)

proc fcQDesignerContainerExtension_method_callback_insertWidget(self: pointer, index: cint, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerContainerExtension](fcQDesignerContainerExtension_vdata(self)[])
  let slotval1 = index
  let slotval2 = gen_qwidget_types.QWidget(h: widget)
  inst.insertWidget(slotval1, slotval2)

proc fcQDesignerContainerExtension_method_callback_canRemove(self: pointer, index: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerContainerExtension](fcQDesignerContainerExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.canRemove(slotval1)
  virtualReturn

proc fcQDesignerContainerExtension_method_callback_remove(self: pointer, index: cint): void {.cdecl.} =
  let inst = cast[VirtualQDesignerContainerExtension](fcQDesignerContainerExtension_vdata(self)[])
  let slotval1 = index
  inst.remove(slotval1)


proc create*(T: type gen_container_types.QDesignerContainerExtension,
    vtbl: ref QDesignerContainerExtensionVTable = nil): gen_container_types.QDesignerContainerExtension =
  let vtbl = if vtbl == nil: new QDesignerContainerExtensionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerContainerExtensionVTable](fcQDesignerContainerExtension_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = fcQDesignerContainerExtension_vtable_callback_count
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQDesignerContainerExtension_vtable_callback_widget
  if not isNil(vtbl[].currentIndex):
    vtbl[].vtbl.currentIndex = fcQDesignerContainerExtension_vtable_callback_currentIndex
  if not isNil(vtbl[].setCurrentIndex):
    vtbl[].vtbl.setCurrentIndex = fcQDesignerContainerExtension_vtable_callback_setCurrentIndex
  if not isNil(vtbl[].canAddWidget):
    vtbl[].vtbl.canAddWidget = fcQDesignerContainerExtension_vtable_callback_canAddWidget
  if not isNil(vtbl[].addWidget):
    vtbl[].vtbl.addWidget = fcQDesignerContainerExtension_vtable_callback_addWidget
  if not isNil(vtbl[].insertWidget):
    vtbl[].vtbl.insertWidget = fcQDesignerContainerExtension_vtable_callback_insertWidget
  if not isNil(vtbl[].canRemove):
    vtbl[].vtbl.canRemove = fcQDesignerContainerExtension_vtable_callback_canRemove
  if not isNil(vtbl[].remove):
    vtbl[].vtbl.remove = fcQDesignerContainerExtension_vtable_callback_remove
  let tmp = gen_container_types.QDesignerContainerExtension(h: fcQDesignerContainerExtension_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQDesignerContainerExtension_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerContainerExtension_mvtbl = cQDesignerContainerExtensionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerContainerExtension()[])](self.fcQDesignerContainerExtension_vdata()[])
    inst[].h = nil,

  count: fcQDesignerContainerExtension_method_callback_count,
  widget: fcQDesignerContainerExtension_method_callback_widget,
  currentIndex: fcQDesignerContainerExtension_method_callback_currentIndex,
  setCurrentIndex: fcQDesignerContainerExtension_method_callback_setCurrentIndex,
  canAddWidget: fcQDesignerContainerExtension_method_callback_canAddWidget,
  addWidget: fcQDesignerContainerExtension_method_callback_addWidget,
  insertWidget: fcQDesignerContainerExtension_method_callback_insertWidget,
  canRemove: fcQDesignerContainerExtension_method_callback_canRemove,
  remove: fcQDesignerContainerExtension_method_callback_remove,
)
proc create*(T: type gen_container_types.QDesignerContainerExtension,
    inst: VirtualQDesignerContainerExtension) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerContainerExtension_new(addr(cQDesignerContainerExtension_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerContainerExtension_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc delete*(self: gen_container_types.QDesignerContainerExtension) =
  fcQDesignerContainerExtension_delete(self.h)
