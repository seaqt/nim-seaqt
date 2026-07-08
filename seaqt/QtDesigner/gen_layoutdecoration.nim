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


type QDesignerLayoutDecorationExtensionInsertModeEnum* = distinct cint
template InsertWidgetMode*(_: type QDesignerLayoutDecorationExtensionInsertModeEnum): untyped = 0
template InsertRowMode*(_: type QDesignerLayoutDecorationExtensionInsertModeEnum): untyped = 1
template InsertColumnMode*(_: type QDesignerLayoutDecorationExtensionInsertModeEnum): untyped = 2


import ./gen_layoutdecoration_types
export gen_layoutdecoration_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtWidgets/gen_qlayout_types,
  ../QtWidgets/gen_qlayoutitem_types,
  ../QtWidgets/gen_qwidget_types
export
  gen_qpoint_types,
  gen_qrect_types,
  gen_qlayout_types,
  gen_qlayoutitem_types,
  gen_qwidget_types

type cQDesignerLayoutDecorationExtension*{.exportc: "QDesignerLayoutDecorationExtension", incompleteStruct.} = object

proc fcQDesignerLayoutDecorationExtension_widgets(self: pointer, layout: pointer): struct_seaqt_array {.importc: "QDesignerLayoutDecorationExtension_widgets".}
proc fcQDesignerLayoutDecorationExtension_itemInfo(self: pointer, index: cint): pointer {.importc: "QDesignerLayoutDecorationExtension_itemInfo".}
proc fcQDesignerLayoutDecorationExtension_indexOf(self: pointer, widget: pointer): cint {.importc: "QDesignerLayoutDecorationExtension_indexOf".}
proc fcQDesignerLayoutDecorationExtension_indexOfWithItem(self: pointer, item: pointer): cint {.importc: "QDesignerLayoutDecorationExtension_indexOfWithItem".}
proc fcQDesignerLayoutDecorationExtension_currentInsertMode(self: pointer): cint {.importc: "QDesignerLayoutDecorationExtension_currentInsertMode".}
proc fcQDesignerLayoutDecorationExtension_currentIndex(self: pointer): cint {.importc: "QDesignerLayoutDecorationExtension_currentIndex".}
proc fcQDesignerLayoutDecorationExtension_currentCell(self: pointer): struct_seaqt_map {.importc: "QDesignerLayoutDecorationExtension_currentCell".}
proc fcQDesignerLayoutDecorationExtension_insertWidget(self: pointer, widget: pointer, cell: struct_seaqt_map): void {.importc: "QDesignerLayoutDecorationExtension_insertWidget".}
proc fcQDesignerLayoutDecorationExtension_removeWidget(self: pointer, widget: pointer): void {.importc: "QDesignerLayoutDecorationExtension_removeWidget".}
proc fcQDesignerLayoutDecorationExtension_insertRow(self: pointer, row: cint): void {.importc: "QDesignerLayoutDecorationExtension_insertRow".}
proc fcQDesignerLayoutDecorationExtension_insertColumn(self: pointer, column: cint): void {.importc: "QDesignerLayoutDecorationExtension_insertColumn".}
proc fcQDesignerLayoutDecorationExtension_simplify(self: pointer): void {.importc: "QDesignerLayoutDecorationExtension_simplify".}
proc fcQDesignerLayoutDecorationExtension_findItemAt(self: pointer, pos: pointer): cint {.importc: "QDesignerLayoutDecorationExtension_findItemAt".}
proc fcQDesignerLayoutDecorationExtension_findItemAt2(self: pointer, row: cint, column: cint): cint {.importc: "QDesignerLayoutDecorationExtension_findItemAt2".}
proc fcQDesignerLayoutDecorationExtension_adjustIndicator(self: pointer, pos: pointer, index: cint): void {.importc: "QDesignerLayoutDecorationExtension_adjustIndicator".}
proc fcQDesignerLayoutDecorationExtension_vdata(self: pointer): ptr pointer {.importc: "QDesignerLayoutDecorationExtension_vdata".}
proc fvdata_cQDesignerLayoutDecorationExtension(self: pointer): pointer {.importc: "vdata_QDesignerLayoutDecorationExtension".}

type cQDesignerLayoutDecorationExtensionVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  widgets*: proc(self: pointer, layout: pointer): struct_seaqt_array {.cdecl, raises: [], gcsafe.}
  itemInfo*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(self: pointer, widget: pointer): cint {.cdecl, raises: [], gcsafe.}
  indexOfWithItem*: proc(self: pointer, item: pointer): cint {.cdecl, raises: [], gcsafe.}
  currentInsertMode*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  currentIndex*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  currentCell*: proc(self: pointer): struct_seaqt_map {.cdecl, raises: [], gcsafe.}
  insertWidget*: proc(self: pointer, widget: pointer, cell: struct_seaqt_map): void {.cdecl, raises: [], gcsafe.}
  removeWidget*: proc(self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  insertRow*: proc(self: pointer, row: cint): void {.cdecl, raises: [], gcsafe.}
  insertColumn*: proc(self: pointer, column: cint): void {.cdecl, raises: [], gcsafe.}
  simplify*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  findItemAt*: proc(self: pointer, pos: pointer): cint {.cdecl, raises: [], gcsafe.}
  findItemAt2*: proc(self: pointer, row: cint, column: cint): cint {.cdecl, raises: [], gcsafe.}
  adjustIndicator*: proc(self: pointer, pos: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
proc fcQDesignerLayoutDecorationExtension_new(vtbl: pointer, vdata: csize_t): ptr cQDesignerLayoutDecorationExtension {.importc: "QDesignerLayoutDecorationExtension_new".}

proc widgets*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension, layout: gen_qlayout_types.QLayout): seq[gen_qwidget_types.QWidget] =
  var v_ma = fcQDesignerLayoutDecorationExtension_widgets(self.h, layout.h)
  var vx_ret = newSeq[gen_qwidget_types.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget_types.QWidget(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc itemInfo*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension, index: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDesignerLayoutDecorationExtension_itemInfo(self.h, index), owned: true)

proc indexOf*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension, widget: gen_qwidget_types.QWidget): cint =
  fcQDesignerLayoutDecorationExtension_indexOf(self.h, widget.h)

proc indexOf*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension, item: gen_qlayoutitem_types.QLayoutItem): cint =
  fcQDesignerLayoutDecorationExtension_indexOfWithItem(self.h, item.h)

proc currentInsertMode*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension): cint =
  cint(fcQDesignerLayoutDecorationExtension_currentInsertMode(self.h))

proc currentIndex*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension): cint =
  fcQDesignerLayoutDecorationExtension_currentIndex(self.h)

proc currentCell*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension): tuple[first: cint, second: cint] =
  var v_mm = fcQDesignerLayoutDecorationExtension_currentCell(self.h)
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  c_free(v_mm.keys)
  c_free(v_mm.values)
  (first: v_entry_First , second: v_entry_Second )

proc insertWidget*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension, widget: gen_qwidget_types.QWidget, cell: tuple[first: cint, second: cint]): void =
  var cell_CArray_First: cint
  var cell_CArray_Second: cint
  cell_CArray_First = cell.first
  cell_CArray_Second = cell.second
  fcQDesignerLayoutDecorationExtension_insertWidget(self.h, widget.h, struct_seaqt_map(len: 1,keys: addr(cell_CArray_First),values: addr(cell_CArray_Second),))

proc removeWidget*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension, widget: gen_qwidget_types.QWidget): void =
  fcQDesignerLayoutDecorationExtension_removeWidget(self.h, widget.h)

proc insertRow*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension, row: cint): void =
  fcQDesignerLayoutDecorationExtension_insertRow(self.h, row)

proc insertColumn*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension, column: cint): void =
  fcQDesignerLayoutDecorationExtension_insertColumn(self.h, column)

proc simplify*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension): void =
  fcQDesignerLayoutDecorationExtension_simplify(self.h)

proc findItemAt*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension, pos: gen_qpoint_types.QPoint): cint =
  fcQDesignerLayoutDecorationExtension_findItemAt(self.h, pos.h)

proc findItemAt*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension, row: cint, column: cint): cint =
  fcQDesignerLayoutDecorationExtension_findItemAt2(self.h, row, column)

proc adjustIndicator*(self: gen_layoutdecoration_types.QDesignerLayoutDecorationExtension, pos: gen_qpoint_types.QPoint, index: cint): void =
  fcQDesignerLayoutDecorationExtension_adjustIndicator(self.h, pos.h, index)

type QDesignerLayoutDecorationExtensionwidgetsProc* = proc(self: QDesignerLayoutDecorationExtension, layout: gen_qlayout_types.QLayout): seq[gen_qwidget_types.QWidget] {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensionitemInfoProc* = proc(self: QDesignerLayoutDecorationExtension, index: cint): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensionindexOfProc* = proc(self: QDesignerLayoutDecorationExtension, widget: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensionindexOfWithItemProc* = proc(self: QDesignerLayoutDecorationExtension, item: gen_qlayoutitem_types.QLayoutItem): cint {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensioncurrentInsertModeProc* = proc(self: QDesignerLayoutDecorationExtension): cint {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensioncurrentIndexProc* = proc(self: QDesignerLayoutDecorationExtension): cint {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensioncurrentCellProc* = proc(self: QDesignerLayoutDecorationExtension): tuple[first: cint, second: cint] {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensioninsertWidgetProc* = proc(self: QDesignerLayoutDecorationExtension, widget: gen_qwidget_types.QWidget, cell: tuple[first: cint, second: cint]): void {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensionremoveWidgetProc* = proc(self: QDesignerLayoutDecorationExtension, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensioninsertRowProc* = proc(self: QDesignerLayoutDecorationExtension, row: cint): void {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensioninsertColumnProc* = proc(self: QDesignerLayoutDecorationExtension, column: cint): void {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensionsimplifyProc* = proc(self: QDesignerLayoutDecorationExtension): void {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensionfindItemAtProc* = proc(self: QDesignerLayoutDecorationExtension, pos: gen_qpoint_types.QPoint): cint {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensionfindItemAt2Proc* = proc(self: QDesignerLayoutDecorationExtension, row: cint, column: cint): cint {.raises: [], gcsafe.}
type QDesignerLayoutDecorationExtensionadjustIndicatorProc* = proc(self: QDesignerLayoutDecorationExtension, pos: gen_qpoint_types.QPoint, index: cint): void {.raises: [], gcsafe.}

type QDesignerLayoutDecorationExtensionVTable* {.inheritable, pure.} = object
  vtbl: cQDesignerLayoutDecorationExtensionVTable
  widgets*: QDesignerLayoutDecorationExtensionwidgetsProc
  itemInfo*: QDesignerLayoutDecorationExtensionitemInfoProc
  indexOf*: QDesignerLayoutDecorationExtensionindexOfProc
  indexOfWithItem*: QDesignerLayoutDecorationExtensionindexOfWithItemProc
  currentInsertMode*: QDesignerLayoutDecorationExtensioncurrentInsertModeProc
  currentIndex*: QDesignerLayoutDecorationExtensioncurrentIndexProc
  currentCell*: QDesignerLayoutDecorationExtensioncurrentCellProc
  insertWidget*: QDesignerLayoutDecorationExtensioninsertWidgetProc
  removeWidget*: QDesignerLayoutDecorationExtensionremoveWidgetProc
  insertRow*: QDesignerLayoutDecorationExtensioninsertRowProc
  insertColumn*: QDesignerLayoutDecorationExtensioninsertColumnProc
  simplify*: QDesignerLayoutDecorationExtensionsimplifyProc
  findItemAt*: QDesignerLayoutDecorationExtensionfindItemAtProc
  findItemAt2*: QDesignerLayoutDecorationExtensionfindItemAt2Proc
  adjustIndicator*: QDesignerLayoutDecorationExtensionadjustIndicatorProc


proc fcQDesignerLayoutDecorationExtension_vtable_callback_widgets(self: pointer, layout: pointer): struct_seaqt_array {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  let slotval1 = gen_qlayout_types.QLayout(h: layout, owned: false)
  var virtualReturn = vtbl[].widgets(self, slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQDesignerLayoutDecorationExtension_vtable_callback_itemInfo(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].itemInfo(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerLayoutDecorationExtension_vtable_callback_indexOf(self: pointer, widget: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc fcQDesignerLayoutDecorationExtension_vtable_callback_indexOfWithItem(self: pointer, item: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: item, owned: false)
  var virtualReturn = vtbl[].indexOfWithItem(self, slotval1)
  virtualReturn

proc fcQDesignerLayoutDecorationExtension_vtable_callback_currentInsertMode(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  var virtualReturn = vtbl[].currentInsertMode(self)
  cint(virtualReturn)

proc fcQDesignerLayoutDecorationExtension_vtable_callback_currentIndex(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  var virtualReturn = vtbl[].currentIndex(self)
  virtualReturn

proc fcQDesignerLayoutDecorationExtension_vtable_callback_currentCell(self: pointer): struct_seaqt_map {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  var virtualReturn = vtbl[].currentCell(self)
  var virtualReturn_CArray_First: cint
  var virtualReturn_CArray_Second: cint
  virtualReturn_CArray_First = virtualReturn.first
  virtualReturn_CArray_Second = virtualReturn.second
  struct_seaqt_map(len: 1,keys: addr(virtualReturn_CArray_First),values: addr(virtualReturn_CArray_Second),)

proc fcQDesignerLayoutDecorationExtension_vtable_callback_insertWidget(self: pointer, widget: pointer, cell: struct_seaqt_map): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var vcell_mm = cell
  var vcell_First_CArray = cast[ptr UncheckedArray[cint]](vcell_mm.keys)
  var vcell_Second_CArray = cast[ptr UncheckedArray[cint]](vcell_mm.values)
  var vcell_entry_First = vcell_First_CArray[0]

  var vcell_entry_Second = vcell_Second_CArray[0]

  c_free(vcell_mm.keys)
  c_free(vcell_mm.values)
  let slotval2 = (first: vcell_entry_First , second: vcell_entry_Second )
  vtbl[].insertWidget(self, slotval1, slotval2)

proc fcQDesignerLayoutDecorationExtension_vtable_callback_removeWidget(self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  vtbl[].removeWidget(self, slotval1)

proc fcQDesignerLayoutDecorationExtension_vtable_callback_insertRow(self: pointer, row: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  let slotval1 = row
  vtbl[].insertRow(self, slotval1)

proc fcQDesignerLayoutDecorationExtension_vtable_callback_insertColumn(self: pointer, column: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  let slotval1 = column
  vtbl[].insertColumn(self, slotval1)

proc fcQDesignerLayoutDecorationExtension_vtable_callback_simplify(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  vtbl[].simplify(self)

proc fcQDesignerLayoutDecorationExtension_vtable_callback_findItemAt(self: pointer, pos: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = vtbl[].findItemAt(self, slotval1)
  virtualReturn

proc fcQDesignerLayoutDecorationExtension_vtable_callback_findItemAt2(self: pointer, row: cint, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  let slotval1 = row
  let slotval2 = column
  var virtualReturn = vtbl[].findItemAt2(self, slotval1, slotval2)
  virtualReturn

proc fcQDesignerLayoutDecorationExtension_vtable_callback_adjustIndicator(self: pointer, pos: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let self = QDesignerLayoutDecorationExtension(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  let slotval2 = index
  vtbl[].adjustIndicator(self, slotval1, slotval2)

type VirtualQDesignerLayoutDecorationExtension* {.inheritable.} = ref object of QDesignerLayoutDecorationExtension
  vtbl*: cQDesignerLayoutDecorationExtensionVTable

method widgets*(self: VirtualQDesignerLayoutDecorationExtension, layout: gen_qlayout_types.QLayout): seq[gen_qwidget_types.QWidget] {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.widgets")
method itemInfo*(self: VirtualQDesignerLayoutDecorationExtension, index: cint): gen_qrect_types.QRect {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.itemInfo")
method indexOf*(self: VirtualQDesignerLayoutDecorationExtension, widget: gen_qwidget_types.QWidget): cint {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.indexOf")
method indexOf*(self: VirtualQDesignerLayoutDecorationExtension, item: gen_qlayoutitem_types.QLayoutItem): cint {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.indexOf")
method currentInsertMode*(self: VirtualQDesignerLayoutDecorationExtension): cint {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.currentInsertMode")
method currentIndex*(self: VirtualQDesignerLayoutDecorationExtension): cint {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.currentIndex")
method currentCell*(self: VirtualQDesignerLayoutDecorationExtension): tuple[first: cint, second: cint] {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.currentCell")
method insertWidget*(self: VirtualQDesignerLayoutDecorationExtension, widget: gen_qwidget_types.QWidget, cell: tuple[first: cint, second: cint]): void {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.insertWidget")
method removeWidget*(self: VirtualQDesignerLayoutDecorationExtension, widget: gen_qwidget_types.QWidget): void {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.removeWidget")
method insertRow*(self: VirtualQDesignerLayoutDecorationExtension, row: cint): void {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.insertRow")
method insertColumn*(self: VirtualQDesignerLayoutDecorationExtension, column: cint): void {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.insertColumn")
method simplify*(self: VirtualQDesignerLayoutDecorationExtension): void {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.simplify")
method findItemAt*(self: VirtualQDesignerLayoutDecorationExtension, pos: gen_qpoint_types.QPoint): cint {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.findItemAt")
method findItemAt*(self: VirtualQDesignerLayoutDecorationExtension, row: cint, column: cint): cint {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.findItemAt")
method adjustIndicator*(self: VirtualQDesignerLayoutDecorationExtension, pos: gen_qpoint_types.QPoint, index: cint): void {.base.} =
  raiseAssert("missing implementation of QDesignerLayoutDecorationExtension.adjustIndicator")

proc fcQDesignerLayoutDecorationExtension_method_callback_widgets(self: pointer, layout: pointer): struct_seaqt_array {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let slotval1 = gen_qlayout_types.QLayout(h: layout, owned: false)
  var virtualReturn = inst.widgets(slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_seaqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc fcQDesignerLayoutDecorationExtension_method_callback_itemInfo(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let slotval1 = index
  var virtualReturn = inst.itemInfo(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerLayoutDecorationExtension_method_callback_indexOf(self: pointer, widget: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var virtualReturn = inst.indexOf(slotval1)
  virtualReturn

proc fcQDesignerLayoutDecorationExtension_method_callback_indexOfWithItem(self: pointer, item: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: item, owned: false)
  var virtualReturn = inst.indexOf(slotval1)
  virtualReturn

proc fcQDesignerLayoutDecorationExtension_method_callback_currentInsertMode(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  var virtualReturn = inst.currentInsertMode()
  cint(virtualReturn)

proc fcQDesignerLayoutDecorationExtension_method_callback_currentIndex(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  var virtualReturn = inst.currentIndex()
  virtualReturn

proc fcQDesignerLayoutDecorationExtension_method_callback_currentCell(self: pointer): struct_seaqt_map {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  var virtualReturn = inst.currentCell()
  var virtualReturn_CArray_First: cint
  var virtualReturn_CArray_Second: cint
  virtualReturn_CArray_First = virtualReturn.first
  virtualReturn_CArray_Second = virtualReturn.second
  struct_seaqt_map(len: 1,keys: addr(virtualReturn_CArray_First),values: addr(virtualReturn_CArray_Second),)

proc fcQDesignerLayoutDecorationExtension_method_callback_insertWidget(self: pointer, widget: pointer, cell: struct_seaqt_map): void {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  var vcell_mm = cell
  var vcell_First_CArray = cast[ptr UncheckedArray[cint]](vcell_mm.keys)
  var vcell_Second_CArray = cast[ptr UncheckedArray[cint]](vcell_mm.values)
  var vcell_entry_First = vcell_First_CArray[0]

  var vcell_entry_Second = vcell_Second_CArray[0]

  c_free(vcell_mm.keys)
  c_free(vcell_mm.values)
  let slotval2 = (first: vcell_entry_First , second: vcell_entry_Second )
  inst.insertWidget(slotval1, slotval2)

proc fcQDesignerLayoutDecorationExtension_method_callback_removeWidget(self: pointer, widget: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let slotval1 = gen_qwidget_types.QWidget(h: widget, owned: false)
  inst.removeWidget(slotval1)

proc fcQDesignerLayoutDecorationExtension_method_callback_insertRow(self: pointer, row: cint): void {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let slotval1 = row
  inst.insertRow(slotval1)

proc fcQDesignerLayoutDecorationExtension_method_callback_insertColumn(self: pointer, column: cint): void {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let slotval1 = column
  inst.insertColumn(slotval1)

proc fcQDesignerLayoutDecorationExtension_method_callback_simplify(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  inst.simplify()

proc fcQDesignerLayoutDecorationExtension_method_callback_findItemAt(self: pointer, pos: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = inst.findItemAt(slotval1)
  virtualReturn

proc fcQDesignerLayoutDecorationExtension_method_callback_findItemAt2(self: pointer, row: cint, column: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let slotval1 = row
  let slotval2 = column
  var virtualReturn = inst.findItemAt(slotval1, slotval2)
  virtualReturn

proc fcQDesignerLayoutDecorationExtension_method_callback_adjustIndicator(self: pointer, pos: pointer, index: cint): void {.cdecl.} =
  let inst = cast[VirtualQDesignerLayoutDecorationExtension](fcQDesignerLayoutDecorationExtension_vdata(self)[])
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  let slotval2 = index
  inst.adjustIndicator(slotval1, slotval2)


proc create*(T: type gen_layoutdecoration_types.QDesignerLayoutDecorationExtension,
    vtbl: ref QDesignerLayoutDecorationExtensionVTable = nil): gen_layoutdecoration_types.QDesignerLayoutDecorationExtension =
  let vtbl = if vtbl == nil: new QDesignerLayoutDecorationExtensionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerLayoutDecorationExtensionVTable](fcQDesignerLayoutDecorationExtension_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].widgets):
    vtbl[].vtbl.widgets = fcQDesignerLayoutDecorationExtension_vtable_callback_widgets
  if not isNil(vtbl[].itemInfo):
    vtbl[].vtbl.itemInfo = fcQDesignerLayoutDecorationExtension_vtable_callback_itemInfo
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = fcQDesignerLayoutDecorationExtension_vtable_callback_indexOf
  if not isNil(vtbl[].indexOfWithItem):
    vtbl[].vtbl.indexOfWithItem = fcQDesignerLayoutDecorationExtension_vtable_callback_indexOfWithItem
  if not isNil(vtbl[].currentInsertMode):
    vtbl[].vtbl.currentInsertMode = fcQDesignerLayoutDecorationExtension_vtable_callback_currentInsertMode
  if not isNil(vtbl[].currentIndex):
    vtbl[].vtbl.currentIndex = fcQDesignerLayoutDecorationExtension_vtable_callback_currentIndex
  if not isNil(vtbl[].currentCell):
    vtbl[].vtbl.currentCell = fcQDesignerLayoutDecorationExtension_vtable_callback_currentCell
  if not isNil(vtbl[].insertWidget):
    vtbl[].vtbl.insertWidget = fcQDesignerLayoutDecorationExtension_vtable_callback_insertWidget
  if not isNil(vtbl[].removeWidget):
    vtbl[].vtbl.removeWidget = fcQDesignerLayoutDecorationExtension_vtable_callback_removeWidget
  if not isNil(vtbl[].insertRow):
    vtbl[].vtbl.insertRow = fcQDesignerLayoutDecorationExtension_vtable_callback_insertRow
  if not isNil(vtbl[].insertColumn):
    vtbl[].vtbl.insertColumn = fcQDesignerLayoutDecorationExtension_vtable_callback_insertColumn
  if not isNil(vtbl[].simplify):
    vtbl[].vtbl.simplify = fcQDesignerLayoutDecorationExtension_vtable_callback_simplify
  if not isNil(vtbl[].findItemAt):
    vtbl[].vtbl.findItemAt = fcQDesignerLayoutDecorationExtension_vtable_callback_findItemAt
  if not isNil(vtbl[].findItemAt2):
    vtbl[].vtbl.findItemAt2 = fcQDesignerLayoutDecorationExtension_vtable_callback_findItemAt2
  if not isNil(vtbl[].adjustIndicator):
    vtbl[].vtbl.adjustIndicator = fcQDesignerLayoutDecorationExtension_vtable_callback_adjustIndicator
  let tmp = gen_layoutdecoration_types.QDesignerLayoutDecorationExtension(h: fcQDesignerLayoutDecorationExtension_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQDesignerLayoutDecorationExtension_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerLayoutDecorationExtension_mvtbl = cQDesignerLayoutDecorationExtensionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerLayoutDecorationExtension()[])](self.fcQDesignerLayoutDecorationExtension_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  widgets: fcQDesignerLayoutDecorationExtension_method_callback_widgets,
  itemInfo: fcQDesignerLayoutDecorationExtension_method_callback_itemInfo,
  indexOf: fcQDesignerLayoutDecorationExtension_method_callback_indexOf,
  indexOfWithItem: fcQDesignerLayoutDecorationExtension_method_callback_indexOfWithItem,
  currentInsertMode: fcQDesignerLayoutDecorationExtension_method_callback_currentInsertMode,
  currentIndex: fcQDesignerLayoutDecorationExtension_method_callback_currentIndex,
  currentCell: fcQDesignerLayoutDecorationExtension_method_callback_currentCell,
  insertWidget: fcQDesignerLayoutDecorationExtension_method_callback_insertWidget,
  removeWidget: fcQDesignerLayoutDecorationExtension_method_callback_removeWidget,
  insertRow: fcQDesignerLayoutDecorationExtension_method_callback_insertRow,
  insertColumn: fcQDesignerLayoutDecorationExtension_method_callback_insertColumn,
  simplify: fcQDesignerLayoutDecorationExtension_method_callback_simplify,
  findItemAt: fcQDesignerLayoutDecorationExtension_method_callback_findItemAt,
  findItemAt2: fcQDesignerLayoutDecorationExtension_method_callback_findItemAt2,
  adjustIndicator: fcQDesignerLayoutDecorationExtension_method_callback_adjustIndicator,
)
proc create*(T: type gen_layoutdecoration_types.QDesignerLayoutDecorationExtension,
    inst: VirtualQDesignerLayoutDecorationExtension) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerLayoutDecorationExtension_new(addr(cQDesignerLayoutDecorationExtension_mvtbl), csize_t(sizeof(pointer)))
  fcQDesignerLayoutDecorationExtension_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

