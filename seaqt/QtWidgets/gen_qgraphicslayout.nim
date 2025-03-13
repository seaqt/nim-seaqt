import ./Qt6Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
{.compile("gen_qgraphicslayout.cpp", cflags).}


import ./gen_qgraphicslayout_types
export gen_qgraphicslayout_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qgraphicsitem_types,
  ./gen_qgraphicslayoutitem
export
  gen_qcoreevent_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qgraphicsitem_types,
  gen_qgraphicslayoutitem

type cQGraphicsLayout*{.exportc: "QGraphicsLayout", incompleteStruct.} = object

proc fcQGraphicsLayout_setContentsMargins(self: pointer, left: float64, top: float64, right: float64, bottom: float64): void {.importc: "QGraphicsLayout_setContentsMargins".}
proc fcQGraphicsLayout_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsLayout_getContentsMargins".}
proc fcQGraphicsLayout_activate(self: pointer): void {.importc: "QGraphicsLayout_activate".}
proc fcQGraphicsLayout_isActivated(self: pointer): bool {.importc: "QGraphicsLayout_isActivated".}
proc fcQGraphicsLayout_invalidate(self: pointer): void {.importc: "QGraphicsLayout_invalidate".}
proc fcQGraphicsLayout_updateGeometry(self: pointer): void {.importc: "QGraphicsLayout_updateGeometry".}
proc fcQGraphicsLayout_widgetEvent(self: pointer, e: pointer): void {.importc: "QGraphicsLayout_widgetEvent".}
proc fcQGraphicsLayout_count(self: pointer): cint {.importc: "QGraphicsLayout_count".}
proc fcQGraphicsLayout_itemAt(self: pointer, i: cint): pointer {.importc: "QGraphicsLayout_itemAt".}
proc fcQGraphicsLayout_removeAt(self: pointer, index: cint): void {.importc: "QGraphicsLayout_removeAt".}
proc fcQGraphicsLayout_setInstantInvalidatePropagation(enable: bool): void {.importc: "QGraphicsLayout_setInstantInvalidatePropagation".}
proc fcQGraphicsLayout_instantInvalidatePropagation(): bool {.importc: "QGraphicsLayout_instantInvalidatePropagation".}
proc fcQGraphicsLayout_vtbl(self: pointer): pointer {.importc: "QGraphicsLayout_vtbl".}
proc fcQGraphicsLayout_vdata(self: pointer): pointer {.importc: "QGraphicsLayout_vdata".}
type cQGraphicsLayoutVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  getContentsMargins*: proc(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  updateGeometry*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  widgetEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  count*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(self: pointer, i: cint): pointer {.cdecl, raises: [], gcsafe.}
  removeAt*: proc(self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer, which: cint, constraint: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsLayout_virtualbase_invalidate(self: pointer): void {.importc: "QGraphicsLayout_virtualbase_invalidate".}
proc fcQGraphicsLayout_virtualbase_updateGeometry(self: pointer): void {.importc: "QGraphicsLayout_virtualbase_updateGeometry".}
proc fcQGraphicsLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void {.importc: "QGraphicsLayout_virtualbase_widgetEvent".}
proc fcQGraphicsLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsLayout_virtualbase_setGeometry".}
proc fcQGraphicsLayout_virtualbase_isEmpty(self: pointer): bool {.importc: "QGraphicsLayout_virtualbase_isEmpty".}
proc fcQGraphicsLayout_protectedbase_addChildLayoutItem(self: pointer, layoutItem: pointer): void {.importc: "QGraphicsLayout_protectedbase_addChildLayoutItem".}
proc fcQGraphicsLayout_protectedbase_setGraphicsItem(self: pointer, item: pointer): void {.importc: "QGraphicsLayout_protectedbase_setGraphicsItem".}
proc fcQGraphicsLayout_protectedbase_setOwnedByLayout(self: pointer, ownedByLayout: bool): void {.importc: "QGraphicsLayout_protectedbase_setOwnedByLayout".}
proc fcQGraphicsLayout_new(vtbl, vdata: pointer): ptr cQGraphicsLayout {.importc: "QGraphicsLayout_new".}
proc fcQGraphicsLayout_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGraphicsLayout {.importc: "QGraphicsLayout_new2".}

proc setContentsMargins*(self: gen_qgraphicslayout_types.QGraphicsLayout, left: float64, top: float64, right: float64, bottom: float64): void =
  fcQGraphicsLayout_setContentsMargins(self.h, left, top, right, bottom)

proc getContentsMargins*(self: gen_qgraphicslayout_types.QGraphicsLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsLayout_getContentsMargins(self.h, left, top, right, bottom)

proc activate*(self: gen_qgraphicslayout_types.QGraphicsLayout): void =
  fcQGraphicsLayout_activate(self.h)

proc isActivated*(self: gen_qgraphicslayout_types.QGraphicsLayout): bool =
  fcQGraphicsLayout_isActivated(self.h)

proc invalidate*(self: gen_qgraphicslayout_types.QGraphicsLayout): void =
  fcQGraphicsLayout_invalidate(self.h)

proc updateGeometry*(self: gen_qgraphicslayout_types.QGraphicsLayout): void =
  fcQGraphicsLayout_updateGeometry(self.h)

proc widgetEvent*(self: gen_qgraphicslayout_types.QGraphicsLayout, e: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsLayout_widgetEvent(self.h, e.h)

proc count*(self: gen_qgraphicslayout_types.QGraphicsLayout): cint =
  fcQGraphicsLayout_count(self.h)

proc itemAt*(self: gen_qgraphicslayout_types.QGraphicsLayout, i: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fcQGraphicsLayout_itemAt(self.h, i), owned: false)

proc removeAt*(self: gen_qgraphicslayout_types.QGraphicsLayout, index: cint): void =
  fcQGraphicsLayout_removeAt(self.h, index)

proc setInstantInvalidatePropagation*(_: type gen_qgraphicslayout_types.QGraphicsLayout, enable: bool): void =
  fcQGraphicsLayout_setInstantInvalidatePropagation(enable)

proc instantInvalidatePropagation*(_: type gen_qgraphicslayout_types.QGraphicsLayout): bool =
  fcQGraphicsLayout_instantInvalidatePropagation()

type QGraphicsLayoutgetContentsMarginsProc* = proc(self: QGraphicsLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.raises: [], gcsafe.}
type QGraphicsLayoutinvalidateProc* = proc(self: QGraphicsLayout): void {.raises: [], gcsafe.}
type QGraphicsLayoutupdateGeometryProc* = proc(self: QGraphicsLayout): void {.raises: [], gcsafe.}
type QGraphicsLayoutwidgetEventProc* = proc(self: QGraphicsLayout, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsLayoutcountProc* = proc(self: QGraphicsLayout): cint {.raises: [], gcsafe.}
type QGraphicsLayoutitemAtProc* = proc(self: QGraphicsLayout, i: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem {.raises: [], gcsafe.}
type QGraphicsLayoutremoveAtProc* = proc(self: QGraphicsLayout, index: cint): void {.raises: [], gcsafe.}
type QGraphicsLayoutsetGeometryProc* = proc(self: QGraphicsLayout, rect: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QGraphicsLayoutisEmptyProc* = proc(self: QGraphicsLayout): bool {.raises: [], gcsafe.}
type QGraphicsLayoutsizeHintProc* = proc(self: QGraphicsLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.raises: [], gcsafe.}
type QGraphicsLayoutVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsLayoutVTable
  getContentsMargins*: QGraphicsLayoutgetContentsMarginsProc
  invalidate*: QGraphicsLayoutinvalidateProc
  updateGeometry*: QGraphicsLayoutupdateGeometryProc
  widgetEvent*: QGraphicsLayoutwidgetEventProc
  count*: QGraphicsLayoutcountProc
  itemAt*: QGraphicsLayoutitemAtProc
  removeAt*: QGraphicsLayoutremoveAtProc
  setGeometry*: QGraphicsLayoutsetGeometryProc
  isEmpty*: QGraphicsLayoutisEmptyProc
  sizeHint*: QGraphicsLayoutsizeHintProc
proc QGraphicsLayoutgetContentsMargins*(self: gen_qgraphicslayout_types.QGraphicsLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

proc cQGraphicsLayout_vtable_callback_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](fcQGraphicsLayout_vdata(self))
  let self = QGraphicsLayout(h: self)
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl[].getContentsMargins(self, slotval1, slotval2, slotval3, slotval4)

proc QGraphicsLayoutinvalidate*(self: gen_qgraphicslayout_types.QGraphicsLayout): void =
  fcQGraphicsLayout_virtualbase_invalidate(self.h)

proc cQGraphicsLayout_vtable_callback_invalidate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](fcQGraphicsLayout_vdata(self))
  let self = QGraphicsLayout(h: self)
  vtbl[].invalidate(self)

proc QGraphicsLayoutupdateGeometry*(self: gen_qgraphicslayout_types.QGraphicsLayout): void =
  fcQGraphicsLayout_virtualbase_updateGeometry(self.h)

proc cQGraphicsLayout_vtable_callback_updateGeometry(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](fcQGraphicsLayout_vdata(self))
  let self = QGraphicsLayout(h: self)
  vtbl[].updateGeometry(self)

proc QGraphicsLayoutwidgetEvent*(self: gen_qgraphicslayout_types.QGraphicsLayout, e: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsLayout_virtualbase_widgetEvent(self.h, e.h)

proc cQGraphicsLayout_vtable_callback_widgetEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](fcQGraphicsLayout_vdata(self))
  let self = QGraphicsLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].widgetEvent(self, slotval1)

proc cQGraphicsLayout_vtable_callback_count(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](fcQGraphicsLayout_vdata(self))
  let self = QGraphicsLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc cQGraphicsLayout_vtable_callback_itemAt(self: pointer, i: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](fcQGraphicsLayout_vdata(self))
  let self = QGraphicsLayout(h: self)
  let slotval1 = i
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc cQGraphicsLayout_vtable_callback_removeAt(self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](fcQGraphicsLayout_vdata(self))
  let self = QGraphicsLayout(h: self)
  let slotval1 = index
  vtbl[].removeAt(self, slotval1)

proc QGraphicsLayoutsetGeometry*(self: gen_qgraphicslayout_types.QGraphicsLayout, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsLayout_virtualbase_setGeometry(self.h, rect.h)

proc cQGraphicsLayout_vtable_callback_setGeometry(self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](fcQGraphicsLayout_vdata(self))
  let self = QGraphicsLayout(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc QGraphicsLayoutisEmpty*(self: gen_qgraphicslayout_types.QGraphicsLayout): bool =
  fcQGraphicsLayout_virtualbase_isEmpty(self.h)

proc cQGraphicsLayout_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](fcQGraphicsLayout_vdata(self))
  let self = QGraphicsLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc cQGraphicsLayout_vtable_callback_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](fcQGraphicsLayout_vdata(self))
  let self = QGraphicsLayout(h: self)
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQGraphicsLayout* {.inheritable.} = ref object of QGraphicsLayout
  vtbl*: cQGraphicsLayoutVTable
method getContentsMargins*(self: VirtualQGraphicsLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.base.} =
  QGraphicsLayoutgetContentsMargins(self[], left, top, right, bottom)
proc cQGraphicsLayout_method_callback_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsLayout](fcQGraphicsLayout_vdata(self))
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  inst.getContentsMargins(slotval1, slotval2, slotval3, slotval4)

method invalidate*(self: VirtualQGraphicsLayout): void {.base.} =
  QGraphicsLayoutinvalidate(self[])
proc cQGraphicsLayout_method_callback_invalidate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsLayout](fcQGraphicsLayout_vdata(self))
  inst.invalidate()

method updateGeometry*(self: VirtualQGraphicsLayout): void {.base.} =
  QGraphicsLayoutupdateGeometry(self[])
proc cQGraphicsLayout_method_callback_updateGeometry(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsLayout](fcQGraphicsLayout_vdata(self))
  inst.updateGeometry()

method widgetEvent*(self: VirtualQGraphicsLayout, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsLayoutwidgetEvent(self[], e)
proc cQGraphicsLayout_method_callback_widgetEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsLayout](fcQGraphicsLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.widgetEvent(slotval1)

method count*(self: VirtualQGraphicsLayout): cint {.base.} =
  raiseAssert("missing implementation of QGraphicsLayout_virtualbase_count")
proc cQGraphicsLayout_method_callback_count(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGraphicsLayout](fcQGraphicsLayout_vdata(self))
  var virtualReturn = inst.count()
  virtualReturn

method itemAt*(self: VirtualQGraphicsLayout, i: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem {.base.} =
  raiseAssert("missing implementation of QGraphicsLayout_virtualbase_itemAt")
proc cQGraphicsLayout_method_callback_itemAt(self: pointer, i: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsLayout](fcQGraphicsLayout_vdata(self))
  let slotval1 = i
  var virtualReturn = inst.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method removeAt*(self: VirtualQGraphicsLayout, index: cint): void {.base.} =
  raiseAssert("missing implementation of QGraphicsLayout_virtualbase_removeAt")
proc cQGraphicsLayout_method_callback_removeAt(self: pointer, index: cint): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsLayout](fcQGraphicsLayout_vdata(self))
  let slotval1 = index
  inst.removeAt(slotval1)

method setGeometry*(self: VirtualQGraphicsLayout, rect: gen_qrect_types.QRectF): void {.base.} =
  QGraphicsLayoutsetGeometry(self[], rect)
proc cQGraphicsLayout_method_callback_setGeometry(self: pointer, rect: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGraphicsLayout](fcQGraphicsLayout_vdata(self))
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  inst.setGeometry(slotval1)

method isEmpty*(self: VirtualQGraphicsLayout): bool {.base.} =
  QGraphicsLayoutisEmpty(self[])
proc cQGraphicsLayout_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGraphicsLayout](fcQGraphicsLayout_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

method sizeHint*(self: VirtualQGraphicsLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.base.} =
  raiseAssert("missing implementation of QGraphicsLayout_virtualbase_sizeHint")
proc cQGraphicsLayout_method_callback_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGraphicsLayout](fcQGraphicsLayout_vdata(self))
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = inst.sizeHint(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc addChildLayoutItem*(self: gen_qgraphicslayout_types.QGraphicsLayout, layoutItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): void =
  fcQGraphicsLayout_protectedbase_addChildLayoutItem(self.h, layoutItem.h)

proc setGraphicsItem*(self: gen_qgraphicslayout_types.QGraphicsLayout, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsLayout_protectedbase_setGraphicsItem(self.h, item.h)

proc setOwnedByLayout*(self: gen_qgraphicslayout_types.QGraphicsLayout, ownedByLayout: bool): void =
  fcQGraphicsLayout_protectedbase_setOwnedByLayout(self.h, ownedByLayout)

proc create*(T: type gen_qgraphicslayout_types.QGraphicsLayout,
    vtbl: ref QGraphicsLayoutVTable = nil): gen_qgraphicslayout_types.QGraphicsLayout =
  let vtbl = if vtbl == nil: new QGraphicsLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLayoutVTable](fcQGraphicsLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = cQGraphicsLayout_vtable_callback_getContentsMargins
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = cQGraphicsLayout_vtable_callback_invalidate
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = cQGraphicsLayout_vtable_callback_updateGeometry
  if not isNil(vtbl[].widgetEvent):
    vtbl[].vtbl.widgetEvent = cQGraphicsLayout_vtable_callback_widgetEvent
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = cQGraphicsLayout_vtable_callback_count
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = cQGraphicsLayout_vtable_callback_itemAt
  if not isNil(vtbl[].removeAt):
    vtbl[].vtbl.removeAt = cQGraphicsLayout_vtable_callback_removeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = cQGraphicsLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = cQGraphicsLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGraphicsLayout_vtable_callback_sizeHint
  gen_qgraphicslayout_types.QGraphicsLayout(h: fcQGraphicsLayout_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgraphicslayout_types.QGraphicsLayout,
    parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem,
    vtbl: ref QGraphicsLayoutVTable = nil): gen_qgraphicslayout_types.QGraphicsLayout =
  let vtbl = if vtbl == nil: new QGraphicsLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLayoutVTable](fcQGraphicsLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = cQGraphicsLayout_vtable_callback_getContentsMargins
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = cQGraphicsLayout_vtable_callback_invalidate
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = cQGraphicsLayout_vtable_callback_updateGeometry
  if not isNil(vtbl[].widgetEvent):
    vtbl[].vtbl.widgetEvent = cQGraphicsLayout_vtable_callback_widgetEvent
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = cQGraphicsLayout_vtable_callback_count
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = cQGraphicsLayout_vtable_callback_itemAt
  if not isNil(vtbl[].removeAt):
    vtbl[].vtbl.removeAt = cQGraphicsLayout_vtable_callback_removeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = cQGraphicsLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = cQGraphicsLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGraphicsLayout_vtable_callback_sizeHint
  gen_qgraphicslayout_types.QGraphicsLayout(h: fcQGraphicsLayout_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGraphicsLayout_mvtbl = cQGraphicsLayoutVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGraphicsLayout()[])](self.fcQGraphicsLayout_vtbl())
    inst[].h = nil
    inst[].owned = false,
  getContentsMargins: cQGraphicsLayout_method_callback_getContentsMargins,
  invalidate: cQGraphicsLayout_method_callback_invalidate,
  updateGeometry: cQGraphicsLayout_method_callback_updateGeometry,
  widgetEvent: cQGraphicsLayout_method_callback_widgetEvent,
  count: cQGraphicsLayout_method_callback_count,
  itemAt: cQGraphicsLayout_method_callback_itemAt,
  removeAt: cQGraphicsLayout_method_callback_removeAt,
  setGeometry: cQGraphicsLayout_method_callback_setGeometry,
  isEmpty: cQGraphicsLayout_method_callback_isEmpty,
  sizeHint: cQGraphicsLayout_method_callback_sizeHint,
)
proc create*(T: type gen_qgraphicslayout_types.QGraphicsLayout,
    inst: VirtualQGraphicsLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsLayout_new(addr(cQGraphicsLayout_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgraphicslayout_types.QGraphicsLayout,
    parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem,
    inst: VirtualQGraphicsLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGraphicsLayout_new2(addr(cQGraphicsLayout_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

