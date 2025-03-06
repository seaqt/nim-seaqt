import ./Qt5Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
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
proc fcQGraphicsLayout_activate(self: pointer, ): void {.importc: "QGraphicsLayout_activate".}
proc fcQGraphicsLayout_isActivated(self: pointer, ): bool {.importc: "QGraphicsLayout_isActivated".}
proc fcQGraphicsLayout_invalidate(self: pointer, ): void {.importc: "QGraphicsLayout_invalidate".}
proc fcQGraphicsLayout_updateGeometry(self: pointer, ): void {.importc: "QGraphicsLayout_updateGeometry".}
proc fcQGraphicsLayout_widgetEvent(self: pointer, e: pointer): void {.importc: "QGraphicsLayout_widgetEvent".}
proc fcQGraphicsLayout_count(self: pointer, ): cint {.importc: "QGraphicsLayout_count".}
proc fcQGraphicsLayout_itemAt(self: pointer, i: cint): pointer {.importc: "QGraphicsLayout_itemAt".}
proc fcQGraphicsLayout_removeAt(self: pointer, index: cint): void {.importc: "QGraphicsLayout_removeAt".}
proc fcQGraphicsLayout_setInstantInvalidatePropagation(enable: bool): void {.importc: "QGraphicsLayout_setInstantInvalidatePropagation".}
proc fcQGraphicsLayout_instantInvalidatePropagation(): bool {.importc: "QGraphicsLayout_instantInvalidatePropagation".}
type cQGraphicsLayoutVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsLayoutVTable, self: ptr cQGraphicsLayout) {.cdecl, raises:[], gcsafe.}
  getContentsMargins*: proc(vtbl, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateGeometry*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  widgetEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  count*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(vtbl, self: pointer, i: cint): pointer {.cdecl, raises: [], gcsafe.}
  removeAt*: proc(vtbl, self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, which: cint, constraint: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsLayout_virtualbase_invalidate(self: pointer, ): void {.importc: "QGraphicsLayout_virtualbase_invalidate".}
proc fcQGraphicsLayout_virtualbase_updateGeometry(self: pointer, ): void {.importc: "QGraphicsLayout_virtualbase_updateGeometry".}
proc fcQGraphicsLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void {.importc: "QGraphicsLayout_virtualbase_widgetEvent".}
proc fcQGraphicsLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsLayout_virtualbase_setGeometry".}
proc fcQGraphicsLayout_protectedbase_addChildLayoutItem(self: pointer, layoutItem: pointer): void {.importc: "QGraphicsLayout_protectedbase_addChildLayoutItem".}
proc fcQGraphicsLayout_protectedbase_setGraphicsItem(self: pointer, item: pointer): void {.importc: "QGraphicsLayout_protectedbase_setGraphicsItem".}
proc fcQGraphicsLayout_protectedbase_setOwnedByLayout(self: pointer, ownedByLayout: bool): void {.importc: "QGraphicsLayout_protectedbase_setOwnedByLayout".}
proc fcQGraphicsLayout_new(vtbl: pointer, ): ptr cQGraphicsLayout {.importc: "QGraphicsLayout_new".}
proc fcQGraphicsLayout_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsLayout {.importc: "QGraphicsLayout_new2".}
proc fcQGraphicsLayout_delete(self: pointer) {.importc: "QGraphicsLayout_delete".}

proc setContentsMargins*(self: gen_qgraphicslayout_types.QGraphicsLayout, left: float64, top: float64, right: float64, bottom: float64): void =
  fcQGraphicsLayout_setContentsMargins(self.h, left, top, right, bottom)

proc getContentsMargins*(self: gen_qgraphicslayout_types.QGraphicsLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsLayout_getContentsMargins(self.h, left, top, right, bottom)

proc activate*(self: gen_qgraphicslayout_types.QGraphicsLayout, ): void =
  fcQGraphicsLayout_activate(self.h)

proc isActivated*(self: gen_qgraphicslayout_types.QGraphicsLayout, ): bool =
  fcQGraphicsLayout_isActivated(self.h)

proc invalidate*(self: gen_qgraphicslayout_types.QGraphicsLayout, ): void =
  fcQGraphicsLayout_invalidate(self.h)

proc updateGeometry*(self: gen_qgraphicslayout_types.QGraphicsLayout, ): void =
  fcQGraphicsLayout_updateGeometry(self.h)

proc widgetEvent*(self: gen_qgraphicslayout_types.QGraphicsLayout, e: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsLayout_widgetEvent(self.h, e.h)

proc count*(self: gen_qgraphicslayout_types.QGraphicsLayout, ): cint =
  fcQGraphicsLayout_count(self.h)

proc itemAt*(self: gen_qgraphicslayout_types.QGraphicsLayout, i: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fcQGraphicsLayout_itemAt(self.h, i))

proc removeAt*(self: gen_qgraphicslayout_types.QGraphicsLayout, index: cint): void =
  fcQGraphicsLayout_removeAt(self.h, index)

proc setInstantInvalidatePropagation*(_: type gen_qgraphicslayout_types.QGraphicsLayout, enable: bool): void =
  fcQGraphicsLayout_setInstantInvalidatePropagation(enable)

proc instantInvalidatePropagation*(_: type gen_qgraphicslayout_types.QGraphicsLayout, ): bool =
  fcQGraphicsLayout_instantInvalidatePropagation()

type QGraphicsLayoutgetContentsMarginsProc* = proc(self: QGraphicsLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.raises: [], gcsafe.}
type QGraphicsLayoutinvalidateProc* = proc(self: QGraphicsLayout): void {.raises: [], gcsafe.}
type QGraphicsLayoutupdateGeometryProc* = proc(self: QGraphicsLayout): void {.raises: [], gcsafe.}
type QGraphicsLayoutwidgetEventProc* = proc(self: QGraphicsLayout, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsLayoutcountProc* = proc(self: QGraphicsLayout): cint {.raises: [], gcsafe.}
type QGraphicsLayoutitemAtProc* = proc(self: QGraphicsLayout, i: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem {.raises: [], gcsafe.}
type QGraphicsLayoutremoveAtProc* = proc(self: QGraphicsLayout, index: cint): void {.raises: [], gcsafe.}
type QGraphicsLayoutsetGeometryProc* = proc(self: QGraphicsLayout, rect: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QGraphicsLayoutsizeHintProc* = proc(self: QGraphicsLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.raises: [], gcsafe.}
type QGraphicsLayoutVTable* = object
  vtbl: cQGraphicsLayoutVTable
  getContentsMargins*: QGraphicsLayoutgetContentsMarginsProc
  invalidate*: QGraphicsLayoutinvalidateProc
  updateGeometry*: QGraphicsLayoutupdateGeometryProc
  widgetEvent*: QGraphicsLayoutwidgetEventProc
  count*: QGraphicsLayoutcountProc
  itemAt*: QGraphicsLayoutitemAtProc
  removeAt*: QGraphicsLayoutremoveAtProc
  setGeometry*: QGraphicsLayoutsetGeometryProc
  sizeHint*: QGraphicsLayoutsizeHintProc
proc QGraphicsLayoutgetContentsMargins*(self: gen_qgraphicslayout_types.QGraphicsLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

proc miqt_exec_callback_cQGraphicsLayout_getContentsMargins(vtbl: pointer, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](vtbl)
  let self = QGraphicsLayout(h: self)
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl[].getContentsMargins(self, slotval1, slotval2, slotval3, slotval4)

proc QGraphicsLayoutinvalidate*(self: gen_qgraphicslayout_types.QGraphicsLayout, ): void =
  fcQGraphicsLayout_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQGraphicsLayout_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](vtbl)
  let self = QGraphicsLayout(h: self)
  vtbl[].invalidate(self)

proc QGraphicsLayoutupdateGeometry*(self: gen_qgraphicslayout_types.QGraphicsLayout, ): void =
  fcQGraphicsLayout_virtualbase_updateGeometry(self.h)

proc miqt_exec_callback_cQGraphicsLayout_updateGeometry(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](vtbl)
  let self = QGraphicsLayout(h: self)
  vtbl[].updateGeometry(self)

proc QGraphicsLayoutwidgetEvent*(self: gen_qgraphicslayout_types.QGraphicsLayout, e: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsLayout_virtualbase_widgetEvent(self.h, e.h)

proc miqt_exec_callback_cQGraphicsLayout_widgetEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](vtbl)
  let self = QGraphicsLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].widgetEvent(self, slotval1)

proc miqt_exec_callback_cQGraphicsLayout_count(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](vtbl)
  let self = QGraphicsLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc miqt_exec_callback_cQGraphicsLayout_itemAt(vtbl: pointer, self: pointer, i: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](vtbl)
  let self = QGraphicsLayout(h: self)
  let slotval1 = i
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.h

proc miqt_exec_callback_cQGraphicsLayout_removeAt(vtbl: pointer, self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](vtbl)
  let self = QGraphicsLayout(h: self)
  let slotval1 = index
  vtbl[].removeAt(self, slotval1)

proc QGraphicsLayoutsetGeometry*(self: gen_qgraphicslayout_types.QGraphicsLayout, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsLayout_virtualbase_setGeometry(self.h, rect.h)

proc miqt_exec_callback_cQGraphicsLayout_setGeometry(vtbl: pointer, self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](vtbl)
  let self = QGraphicsLayout(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect)
  vtbl[].setGeometry(self, slotval1)

proc miqt_exec_callback_cQGraphicsLayout_sizeHint(vtbl: pointer, self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLayoutVTable](vtbl)
  let self = QGraphicsLayout(h: self)
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.h

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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsLayoutVTable, _: ptr cQGraphicsLayout) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsLayout_getContentsMargins
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQGraphicsLayout_invalidate
  if not isNil(vtbl.updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsLayout_updateGeometry
  if not isNil(vtbl.widgetEvent):
    vtbl[].vtbl.widgetEvent = miqt_exec_callback_cQGraphicsLayout_widgetEvent
  if not isNil(vtbl.count):
    vtbl[].vtbl.count = miqt_exec_callback_cQGraphicsLayout_count
  if not isNil(vtbl.itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQGraphicsLayout_itemAt
  if not isNil(vtbl.removeAt):
    vtbl[].vtbl.removeAt = miqt_exec_callback_cQGraphicsLayout_removeAt
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsLayout_setGeometry
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsLayout_sizeHint
  gen_qgraphicslayout_types.QGraphicsLayout(h: fcQGraphicsLayout_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicslayout_types.QGraphicsLayout,
    parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem,
    vtbl: ref QGraphicsLayoutVTable = nil): gen_qgraphicslayout_types.QGraphicsLayout =
  let vtbl = if vtbl == nil: new QGraphicsLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsLayoutVTable, _: ptr cQGraphicsLayout) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsLayout_getContentsMargins
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQGraphicsLayout_invalidate
  if not isNil(vtbl.updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsLayout_updateGeometry
  if not isNil(vtbl.widgetEvent):
    vtbl[].vtbl.widgetEvent = miqt_exec_callback_cQGraphicsLayout_widgetEvent
  if not isNil(vtbl.count):
    vtbl[].vtbl.count = miqt_exec_callback_cQGraphicsLayout_count
  if not isNil(vtbl.itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQGraphicsLayout_itemAt
  if not isNil(vtbl.removeAt):
    vtbl[].vtbl.removeAt = miqt_exec_callback_cQGraphicsLayout_removeAt
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsLayout_setGeometry
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsLayout_sizeHint
  gen_qgraphicslayout_types.QGraphicsLayout(h: fcQGraphicsLayout_new2(addr(vtbl[]), parent.h))

proc delete*(self: gen_qgraphicslayout_types.QGraphicsLayout) =
  fcQGraphicsLayout_delete(self.h)
