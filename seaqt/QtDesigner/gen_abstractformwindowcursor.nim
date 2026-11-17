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


type QDesignerFormWindowCursorInterfaceMoveOperationEnum* = distinct cint
template NoMove*(_: type QDesignerFormWindowCursorInterfaceMoveOperationEnum): untyped = 0
template Start*(_: type QDesignerFormWindowCursorInterfaceMoveOperationEnum): untyped = 1
template End*(_: type QDesignerFormWindowCursorInterfaceMoveOperationEnum): untyped = 2
template Next*(_: type QDesignerFormWindowCursorInterfaceMoveOperationEnum): untyped = 3
template Prev*(_: type QDesignerFormWindowCursorInterfaceMoveOperationEnum): untyped = 4
template Left*(_: type QDesignerFormWindowCursorInterfaceMoveOperationEnum): untyped = 5
template Right*(_: type QDesignerFormWindowCursorInterfaceMoveOperationEnum): untyped = 6
template Up*(_: type QDesignerFormWindowCursorInterfaceMoveOperationEnum): untyped = 7
template Down*(_: type QDesignerFormWindowCursorInterfaceMoveOperationEnum): untyped = 8


type QDesignerFormWindowCursorInterfaceMoveModeEnum* = distinct cint
template MoveAnchor*(_: type QDesignerFormWindowCursorInterfaceMoveModeEnum): untyped = 0
template KeepAnchor*(_: type QDesignerFormWindowCursorInterfaceMoveModeEnum): untyped = 1


import ./gen_abstractformwindowcursor_types
export gen_abstractformwindowcursor_types

import
  ../QtCore/gen_qvariant_types,
  ../QtWidgets/gen_qwidget_types,
  ./gen_abstractformwindow_types
export
  gen_qvariant_types,
  gen_qwidget_types,
  gen_abstractformwindow_types

type cQDesignerFormWindowCursorInterface*{.exportc: "QDesignerFormWindowCursorInterface", incompleteStruct.} = object

proc fcQDesignerFormWindowCursorInterface_formWindow(self: pointer): pointer {.importc: "QDesignerFormWindowCursorInterface_formWindow".}
proc fcQDesignerFormWindowCursorInterface_movePosition(self: pointer, op: cint, mode: cint): bool {.importc: "QDesignerFormWindowCursorInterface_movePosition".}
proc fcQDesignerFormWindowCursorInterface_position(self: pointer): cint {.importc: "QDesignerFormWindowCursorInterface_position".}
proc fcQDesignerFormWindowCursorInterface_setPosition(self: pointer, pos: cint, mode: cint): void {.importc: "QDesignerFormWindowCursorInterface_setPosition".}
proc fcQDesignerFormWindowCursorInterface_current(self: pointer): pointer {.importc: "QDesignerFormWindowCursorInterface_current".}
proc fcQDesignerFormWindowCursorInterface_widgetCount(self: pointer): cint {.importc: "QDesignerFormWindowCursorInterface_widgetCount".}
proc fcQDesignerFormWindowCursorInterface_widget(self: pointer, index: cint): pointer {.importc: "QDesignerFormWindowCursorInterface_widget".}
proc fcQDesignerFormWindowCursorInterface_hasSelection(self: pointer): bool {.importc: "QDesignerFormWindowCursorInterface_hasSelection".}
proc fcQDesignerFormWindowCursorInterface_selectedWidgetCount(self: pointer): cint {.importc: "QDesignerFormWindowCursorInterface_selectedWidgetCount".}
proc fcQDesignerFormWindowCursorInterface_selectedWidget(self: pointer, index: cint): pointer {.importc: "QDesignerFormWindowCursorInterface_selectedWidget".}
proc fcQDesignerFormWindowCursorInterface_setProperty(self: pointer, name: struct_seaqt_string, value: pointer): void {.importc: "QDesignerFormWindowCursorInterface_setProperty".}
proc fcQDesignerFormWindowCursorInterface_setWidgetProperty(self: pointer, widget: pointer, name: struct_seaqt_string, value: pointer): void {.importc: "QDesignerFormWindowCursorInterface_setWidgetProperty".}
proc fcQDesignerFormWindowCursorInterface_resetWidgetProperty(self: pointer, widget: pointer, name: struct_seaqt_string): void {.importc: "QDesignerFormWindowCursorInterface_resetWidgetProperty".}
proc fcQDesignerFormWindowCursorInterface_isWidgetSelected(self: pointer, widget: pointer): bool {.importc: "QDesignerFormWindowCursorInterface_isWidgetSelected".}
proc fcQDesignerFormWindowCursorInterface_vdata(self: pointer): ptr pointer {.importc: "QDesignerFormWindowCursorInterface_vdata".}
proc fvdata_cQDesignerFormWindowCursorInterface(self: pointer): pointer {.importc: "vdata_QDesignerFormWindowCursorInterface".}

type cQDesignerFormWindowCursorInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  formWindow*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  movePosition*: proc(self: pointer, op: cint, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  position*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setPosition*: proc(self: pointer, pos: cint, mode: cint): void {.cdecl, raises: [], gcsafe.}
  current*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  widgetCount*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  hasSelection*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectedWidgetCount*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  selectedWidget*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  setProperty*: proc(self: pointer, name: struct_seaqt_string, value: pointer): void {.cdecl, raises: [], gcsafe.}
  setWidgetProperty*: proc(self: pointer, widget: pointer, name: struct_seaqt_string, value: pointer): void {.cdecl, raises: [], gcsafe.}
  resetWidgetProperty*: proc(self: pointer, widget: pointer, name: struct_seaqt_string): void {.cdecl, raises: [], gcsafe.}
proc fcQDesignerFormWindowCursorInterface_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerFormWindowCursorInterface {.importc: "QDesignerFormWindowCursorInterface_new".}
proc fcQDesignerFormWindowCursorInterface_delete(self: pointer) {.importc: "QDesignerFormWindowCursorInterface_delete".}

proc formWindow*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface): gen_abstractformwindow_types.QDesignerFormWindowInterface =
  gen_abstractformwindow_types.QDesignerFormWindowInterface(h: fcQDesignerFormWindowCursorInterface_formWindow(self.h))

proc movePosition*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface, op: cint, mode: cint): bool =
  fcQDesignerFormWindowCursorInterface_movePosition(self.h, cint(op), cint(mode))

proc position*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface): cint =
  fcQDesignerFormWindowCursorInterface_position(self.h)

proc setPosition*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface, pos: cint, mode: cint): void =
  fcQDesignerFormWindowCursorInterface_setPosition(self.h, pos, cint(mode))

proc current*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerFormWindowCursorInterface_current(self.h))

proc widgetCount*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface): cint =
  fcQDesignerFormWindowCursorInterface_widgetCount(self.h)

proc widget*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface, index: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerFormWindowCursorInterface_widget(self.h, index))

proc hasSelection*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface): bool =
  fcQDesignerFormWindowCursorInterface_hasSelection(self.h)

proc selectedWidgetCount*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface): cint =
  fcQDesignerFormWindowCursorInterface_selectedWidgetCount(self.h)

proc selectedWidget*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface, index: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDesignerFormWindowCursorInterface_selectedWidget(self.h, index))

proc setProperty*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface, name: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQDesignerFormWindowCursorInterface_setProperty(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

proc setWidgetProperty*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface, widget: gen_qwidget_types.QWidget, name: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQDesignerFormWindowCursorInterface_setWidgetProperty(self.h, widget.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), value.h)

proc resetWidgetProperty*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface, widget: gen_qwidget_types.QWidget, name: openArray[char]): void =
  fcQDesignerFormWindowCursorInterface_resetWidgetProperty(self.h, widget.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc isWidgetSelected*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface, widget: gen_qwidget_types.QWidget): bool =
  fcQDesignerFormWindowCursorInterface_isWidgetSelected(self.h, widget.h)

type QDesignerFormWindowCursorInterfaceformWindowProc* = proc(self: QDesignerFormWindowCursorInterface): gen_abstractformwindow_types.QDesignerFormWindowInterface {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfacemovePositionProc* = proc(self: QDesignerFormWindowCursorInterface, op: cint, mode: cint): bool {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfacepositionProc* = proc(self: QDesignerFormWindowCursorInterface): cint {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfacesetPositionProc* = proc(self: QDesignerFormWindowCursorInterface, pos: cint, mode: cint): void {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfacecurrentProc* = proc(self: QDesignerFormWindowCursorInterface): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfacewidgetCountProc* = proc(self: QDesignerFormWindowCursorInterface): cint {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfacewidgetProc* = proc(self: QDesignerFormWindowCursorInterface, index: cint): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfacehasSelectionProc* = proc(self: QDesignerFormWindowCursorInterface): bool {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfaceselectedWidgetCountProc* = proc(self: QDesignerFormWindowCursorInterface): cint {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfaceselectedWidgetProc* = proc(self: QDesignerFormWindowCursorInterface, index: cint): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfacesetPropertyProc* = proc(self: QDesignerFormWindowCursorInterface, name: openArray[char], value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfacesetWidgetPropertyProc* = proc(self: QDesignerFormWindowCursorInterface, widget: gen_qwidget_types.QWidget, name: openArray[char], value: gen_qvariant_types.QVariant): void {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfaceresetWidgetPropertyProc* = proc(self: QDesignerFormWindowCursorInterface, widget: gen_qwidget_types.QWidget, name: openArray[char]): void {.raises: [], gcsafe.}
type QDesignerFormWindowCursorInterfaceVTable* = object
  vtbl: cQDesignerFormWindowCursorInterfaceVTable
  formWindow*: QDesignerFormWindowCursorInterfaceformWindowProc
  movePosition*: QDesignerFormWindowCursorInterfacemovePositionProc
  position*: QDesignerFormWindowCursorInterfacepositionProc
  setPosition*: QDesignerFormWindowCursorInterfacesetPositionProc
  current*: QDesignerFormWindowCursorInterfacecurrentProc
  widgetCount*: QDesignerFormWindowCursorInterfacewidgetCountProc
  widget*: QDesignerFormWindowCursorInterfacewidgetProc
  hasSelection*: QDesignerFormWindowCursorInterfacehasSelectionProc
  selectedWidgetCount*: QDesignerFormWindowCursorInterfaceselectedWidgetCountProc
  selectedWidget*: QDesignerFormWindowCursorInterfaceselectedWidgetProc
  setProperty*: QDesignerFormWindowCursorInterfacesetPropertyProc
  setWidgetProperty*: QDesignerFormWindowCursorInterfacesetWidgetPropertyProc
  resetWidgetProperty*: QDesignerFormWindowCursorInterfaceresetWidgetPropertyProc


proc fcQDesignerFormWindowCursorInterface_vtable_callback_formWindow(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  var virtualReturn = vtbl[].formWindow(self)
  virtualReturn.h

proc fcQDesignerFormWindowCursorInterface_vtable_callback_movePosition(self: pointer, op: cint, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  let slotval1 = cint(op)
  let slotval2 = cint(mode)
  var virtualReturn = vtbl[].movePosition(self, slotval1, slotval2)
  virtualReturn

proc fcQDesignerFormWindowCursorInterface_vtable_callback_position(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  var virtualReturn = vtbl[].position(self)
  virtualReturn

proc fcQDesignerFormWindowCursorInterface_vtable_callback_setPosition(self: pointer, pos: cint, mode: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  let slotval1 = pos
  let slotval2 = cint(mode)
  vtbl[].setPosition(self, slotval1, slotval2)

proc fcQDesignerFormWindowCursorInterface_vtable_callback_current(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  var virtualReturn = vtbl[].current(self)
  virtualReturn.h

proc fcQDesignerFormWindowCursorInterface_vtable_callback_widgetCount(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  var virtualReturn = vtbl[].widgetCount(self)
  virtualReturn

proc fcQDesignerFormWindowCursorInterface_vtable_callback_widget(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].widget(self, slotval1)
  virtualReturn.h

proc fcQDesignerFormWindowCursorInterface_vtable_callback_hasSelection(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  var virtualReturn = vtbl[].hasSelection(self)
  virtualReturn

proc fcQDesignerFormWindowCursorInterface_vtable_callback_selectedWidgetCount(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  var virtualReturn = vtbl[].selectedWidgetCount(self)
  virtualReturn

proc fcQDesignerFormWindowCursorInterface_vtable_callback_selectedWidget(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].selectedWidget(self, slotval1)
  virtualReturn.h

proc fcQDesignerFormWindowCursorInterface_vtable_callback_setProperty(self: pointer, name: struct_seaqt_string, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  vtbl[].setProperty(self, slotval1, slotval2)

proc fcQDesignerFormWindowCursorInterface_vtable_callback_setWidgetProperty(self: pointer, widget: pointer, name: struct_seaqt_string, value: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  vtbl[].setWidgetProperty(self, slotval1, slotval2, slotval3)

proc fcQDesignerFormWindowCursorInterface_vtable_callback_resetWidgetProperty(self: pointer, widget: pointer, name: struct_seaqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let self = QDesignerFormWindowCursorInterface(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  vtbl[].resetWidgetProperty(self, slotval1, slotval2)

type VirtualQDesignerFormWindowCursorInterface* {.inheritable.} = ref object of QDesignerFormWindowCursorInterface
  vtbl*: cQDesignerFormWindowCursorInterfaceVTable

method formWindow*(self: VirtualQDesignerFormWindowCursorInterface): gen_abstractformwindow_types.QDesignerFormWindowInterface {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.formWindow")
method movePosition*(self: VirtualQDesignerFormWindowCursorInterface, op: cint, mode: cint): bool {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.movePosition")
method position*(self: VirtualQDesignerFormWindowCursorInterface): cint {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.position")
method setPosition*(self: VirtualQDesignerFormWindowCursorInterface, pos: cint, mode: cint): void {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.setPosition")
method current*(self: VirtualQDesignerFormWindowCursorInterface): gen_qwidget_types.QWidget {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.current")
method widgetCount*(self: VirtualQDesignerFormWindowCursorInterface): cint {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.widgetCount")
method widget*(self: VirtualQDesignerFormWindowCursorInterface, index: cint): gen_qwidget_types.QWidget {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.widget")
method hasSelection*(self: VirtualQDesignerFormWindowCursorInterface): bool {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.hasSelection")
method selectedWidgetCount*(self: VirtualQDesignerFormWindowCursorInterface): cint {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.selectedWidgetCount")
method selectedWidget*(self: VirtualQDesignerFormWindowCursorInterface, index: cint): gen_qwidget_types.QWidget {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.selectedWidget")
method setProperty*(self: VirtualQDesignerFormWindowCursorInterface, name: openArray[char], value: gen_qvariant_types.QVariant): void {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.setProperty")
method setWidgetProperty*(self: VirtualQDesignerFormWindowCursorInterface, widget: gen_qwidget_types.QWidget, name: openArray[char], value: gen_qvariant_types.QVariant): void {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.setWidgetProperty")
method resetWidgetProperty*(self: VirtualQDesignerFormWindowCursorInterface, widget: gen_qwidget_types.QWidget, name: openArray[char]): void {.base.} =
  raiseAssert("missing implementation of QDesignerFormWindowCursorInterface.resetWidgetProperty")

proc fcQDesignerFormWindowCursorInterface_method_callback_formWindow(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  var virtualReturn = inst.formWindow()
  virtualReturn.h

proc fcQDesignerFormWindowCursorInterface_method_callback_movePosition(self: pointer, op: cint, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let slotval1 = cint(op)
  let slotval2 = cint(mode)
  var virtualReturn = inst.movePosition(slotval1, slotval2)
  virtualReturn

proc fcQDesignerFormWindowCursorInterface_method_callback_position(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  var virtualReturn = inst.position()
  virtualReturn

proc fcQDesignerFormWindowCursorInterface_method_callback_setPosition(self: pointer, pos: cint, mode: cint): void {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let slotval1 = pos
  let slotval2 = cint(mode)
  inst.setPosition(slotval1, slotval2)

proc fcQDesignerFormWindowCursorInterface_method_callback_current(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  var virtualReturn = inst.current()
  virtualReturn.h

proc fcQDesignerFormWindowCursorInterface_method_callback_widgetCount(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  var virtualReturn = inst.widgetCount()
  virtualReturn

proc fcQDesignerFormWindowCursorInterface_method_callback_widget(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.widget(slotval1)
  virtualReturn.h

proc fcQDesignerFormWindowCursorInterface_method_callback_hasSelection(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  var virtualReturn = inst.hasSelection()
  virtualReturn

proc fcQDesignerFormWindowCursorInterface_method_callback_selectedWidgetCount(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  var virtualReturn = inst.selectedWidgetCount()
  virtualReturn

proc fcQDesignerFormWindowCursorInterface_method_callback_selectedWidget(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.selectedWidget(slotval1)
  virtualReturn.h

proc fcQDesignerFormWindowCursorInterface_method_callback_setProperty(self: pointer, name: struct_seaqt_string, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  inst.setProperty(slotval1, slotval2)

proc fcQDesignerFormWindowCursorInterface_method_callback_setWidgetProperty(self: pointer, widget: pointer, name: struct_seaqt_string, value: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  inst.setWidgetProperty(slotval1, slotval2, slotval3)

proc fcQDesignerFormWindowCursorInterface_method_callback_resetWidgetProperty(self: pointer, widget: pointer, name: struct_seaqt_string): void {.cdecl.} =
  let inst = cast[VirtualQDesignerFormWindowCursorInterface](fcQDesignerFormWindowCursorInterface_vdata(self)[])
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  let vname_ms = name
  let vnamex_ret = string.fromBytes(vname_ms)
  c_free(vname_ms.data)
  let slotval2 = vnamex_ret
  inst.resetWidgetProperty(slotval1, slotval2)


proc create*(T: type gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface,
    vtbl: ref QDesignerFormWindowCursorInterfaceVTable = nil): gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface =
  let vtbl = if vtbl == nil: new QDesignerFormWindowCursorInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerFormWindowCursorInterfaceVTable](fcQDesignerFormWindowCursorInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].formWindow):
    vtbl[].vtbl.formWindow = fcQDesignerFormWindowCursorInterface_vtable_callback_formWindow
  if not isNil(vtbl[].movePosition):
    vtbl[].vtbl.movePosition = fcQDesignerFormWindowCursorInterface_vtable_callback_movePosition
  if not isNil(vtbl[].position):
    vtbl[].vtbl.position = fcQDesignerFormWindowCursorInterface_vtable_callback_position
  if not isNil(vtbl[].setPosition):
    vtbl[].vtbl.setPosition = fcQDesignerFormWindowCursorInterface_vtable_callback_setPosition
  if not isNil(vtbl[].current):
    vtbl[].vtbl.current = fcQDesignerFormWindowCursorInterface_vtable_callback_current
  if not isNil(vtbl[].widgetCount):
    vtbl[].vtbl.widgetCount = fcQDesignerFormWindowCursorInterface_vtable_callback_widgetCount
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQDesignerFormWindowCursorInterface_vtable_callback_widget
  if not isNil(vtbl[].hasSelection):
    vtbl[].vtbl.hasSelection = fcQDesignerFormWindowCursorInterface_vtable_callback_hasSelection
  if not isNil(vtbl[].selectedWidgetCount):
    vtbl[].vtbl.selectedWidgetCount = fcQDesignerFormWindowCursorInterface_vtable_callback_selectedWidgetCount
  if not isNil(vtbl[].selectedWidget):
    vtbl[].vtbl.selectedWidget = fcQDesignerFormWindowCursorInterface_vtable_callback_selectedWidget
  if not isNil(vtbl[].setProperty):
    vtbl[].vtbl.setProperty = fcQDesignerFormWindowCursorInterface_vtable_callback_setProperty
  if not isNil(vtbl[].setWidgetProperty):
    vtbl[].vtbl.setWidgetProperty = fcQDesignerFormWindowCursorInterface_vtable_callback_setWidgetProperty
  if not isNil(vtbl[].resetWidgetProperty):
    vtbl[].vtbl.resetWidgetProperty = fcQDesignerFormWindowCursorInterface_vtable_callback_resetWidgetProperty
  let tmp = gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface(h: fcQDesignerFormWindowCursorInterface_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))))
  fcQDesignerFormWindowCursorInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerFormWindowCursorInterface_mvtbl = cQDesignerFormWindowCursorInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerFormWindowCursorInterface()[])](self.fcQDesignerFormWindowCursorInterface_vdata()[])
    inst[].h = nil,

  formWindow: fcQDesignerFormWindowCursorInterface_method_callback_formWindow,
  movePosition: fcQDesignerFormWindowCursorInterface_method_callback_movePosition,
  position: fcQDesignerFormWindowCursorInterface_method_callback_position,
  setPosition: fcQDesignerFormWindowCursorInterface_method_callback_setPosition,
  current: fcQDesignerFormWindowCursorInterface_method_callback_current,
  widgetCount: fcQDesignerFormWindowCursorInterface_method_callback_widgetCount,
  widget: fcQDesignerFormWindowCursorInterface_method_callback_widget,
  hasSelection: fcQDesignerFormWindowCursorInterface_method_callback_hasSelection,
  selectedWidgetCount: fcQDesignerFormWindowCursorInterface_method_callback_selectedWidgetCount,
  selectedWidget: fcQDesignerFormWindowCursorInterface_method_callback_selectedWidget,
  setProperty: fcQDesignerFormWindowCursorInterface_method_callback_setProperty,
  setWidgetProperty: fcQDesignerFormWindowCursorInterface_method_callback_setWidgetProperty,
  resetWidgetProperty: fcQDesignerFormWindowCursorInterface_method_callback_resetWidgetProperty,
)
proc create*(T: type gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface,
    inst: VirtualQDesignerFormWindowCursorInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerFormWindowCursorInterface_new(addr(cQDesignerFormWindowCursorInterface_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerFormWindowCursorInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc delete*(self: gen_abstractformwindowcursor_types.QDesignerFormWindowCursorInterface) =
  fcQDesignerFormWindowCursorInterface_delete(self.h)
