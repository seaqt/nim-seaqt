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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qgraphicslinearlayout.cpp", cflags).}


import ./gen_qgraphicslinearlayout_types
export gen_qgraphicslinearlayout_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qgraphicsitem_types,
  ./gen_qgraphicslayout,
  ./gen_qgraphicslayoutitem_types
export
  gen_qcoreevent_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qgraphicsitem_types,
  gen_qgraphicslayout,
  gen_qgraphicslayoutitem_types

type cQGraphicsLinearLayout*{.exportc: "QGraphicsLinearLayout", incompleteStruct.} = object

proc fcQGraphicsLinearLayout_setOrientation(self: pointer, orientation: cint): void {.importc: "QGraphicsLinearLayout_setOrientation".}
proc fcQGraphicsLinearLayout_orientation(self: pointer, ): cint {.importc: "QGraphicsLinearLayout_orientation".}
proc fcQGraphicsLinearLayout_addItem(self: pointer, item: pointer): void {.importc: "QGraphicsLinearLayout_addItem".}
proc fcQGraphicsLinearLayout_addStretch(self: pointer, ): void {.importc: "QGraphicsLinearLayout_addStretch".}
proc fcQGraphicsLinearLayout_insertItem(self: pointer, index: cint, item: pointer): void {.importc: "QGraphicsLinearLayout_insertItem".}
proc fcQGraphicsLinearLayout_insertStretch(self: pointer, index: cint): void {.importc: "QGraphicsLinearLayout_insertStretch".}
proc fcQGraphicsLinearLayout_removeItem(self: pointer, item: pointer): void {.importc: "QGraphicsLinearLayout_removeItem".}
proc fcQGraphicsLinearLayout_removeAt(self: pointer, index: cint): void {.importc: "QGraphicsLinearLayout_removeAt".}
proc fcQGraphicsLinearLayout_setSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsLinearLayout_setSpacing".}
proc fcQGraphicsLinearLayout_spacing(self: pointer, ): float64 {.importc: "QGraphicsLinearLayout_spacing".}
proc fcQGraphicsLinearLayout_setItemSpacing(self: pointer, index: cint, spacing: float64): void {.importc: "QGraphicsLinearLayout_setItemSpacing".}
proc fcQGraphicsLinearLayout_itemSpacing(self: pointer, index: cint): float64 {.importc: "QGraphicsLinearLayout_itemSpacing".}
proc fcQGraphicsLinearLayout_setStretchFactor(self: pointer, item: pointer, stretch: cint): void {.importc: "QGraphicsLinearLayout_setStretchFactor".}
proc fcQGraphicsLinearLayout_stretchFactor(self: pointer, item: pointer): cint {.importc: "QGraphicsLinearLayout_stretchFactor".}
proc fcQGraphicsLinearLayout_setAlignment(self: pointer, item: pointer, alignment: cint): void {.importc: "QGraphicsLinearLayout_setAlignment".}
proc fcQGraphicsLinearLayout_alignment(self: pointer, item: pointer): cint {.importc: "QGraphicsLinearLayout_alignment".}
proc fcQGraphicsLinearLayout_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsLinearLayout_setGeometry".}
proc fcQGraphicsLinearLayout_count(self: pointer, ): cint {.importc: "QGraphicsLinearLayout_count".}
proc fcQGraphicsLinearLayout_itemAt(self: pointer, index: cint): pointer {.importc: "QGraphicsLinearLayout_itemAt".}
proc fcQGraphicsLinearLayout_invalidate(self: pointer, ): void {.importc: "QGraphicsLinearLayout_invalidate".}
proc fcQGraphicsLinearLayout_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsLinearLayout_sizeHint".}
proc fcQGraphicsLinearLayout_dump(self: pointer, ): void {.importc: "QGraphicsLinearLayout_dump".}
proc fcQGraphicsLinearLayout_addStretch1(self: pointer, stretch: cint): void {.importc: "QGraphicsLinearLayout_addStretch1".}
proc fcQGraphicsLinearLayout_insertStretch2(self: pointer, index: cint, stretch: cint): void {.importc: "QGraphicsLinearLayout_insertStretch2".}
proc fcQGraphicsLinearLayout_dump1(self: pointer, indent: cint): void {.importc: "QGraphicsLinearLayout_dump1".}
type cQGraphicsLinearLayoutVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQGraphicsLinearLayoutVTable, self: ptr cQGraphicsLinearLayout) {.cdecl, raises:[], gcsafe.}
  removeAt*: proc(vtbl, self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  count*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(vtbl, self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, which: cint, constraint: pointer): pointer {.cdecl, raises: [], gcsafe.}
  getContentsMargins*: proc(vtbl, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl, raises: [], gcsafe.}
  updateGeometry*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  widgetEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsLinearLayout_virtualbase_removeAt(self: pointer, index: cint): void {.importc: "QGraphicsLinearLayout_virtualbase_removeAt".}
proc fcQGraphicsLinearLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsLinearLayout_virtualbase_setGeometry".}
proc fcQGraphicsLinearLayout_virtualbase_count(self: pointer, ): cint {.importc: "QGraphicsLinearLayout_virtualbase_count".}
proc fcQGraphicsLinearLayout_virtualbase_itemAt(self: pointer, index: cint): pointer {.importc: "QGraphicsLinearLayout_virtualbase_itemAt".}
proc fcQGraphicsLinearLayout_virtualbase_invalidate(self: pointer, ): void {.importc: "QGraphicsLinearLayout_virtualbase_invalidate".}
proc fcQGraphicsLinearLayout_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsLinearLayout_virtualbase_sizeHint".}
proc fcQGraphicsLinearLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsLinearLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsLinearLayout_virtualbase_updateGeometry(self: pointer, ): void {.importc: "QGraphicsLinearLayout_virtualbase_updateGeometry".}
proc fcQGraphicsLinearLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void {.importc: "QGraphicsLinearLayout_virtualbase_widgetEvent".}
proc fcQGraphicsLinearLayout_protectedbase_addChildLayoutItem(self: pointer, layoutItem: pointer): void {.importc: "QGraphicsLinearLayout_protectedbase_addChildLayoutItem".}
proc fcQGraphicsLinearLayout_protectedbase_setGraphicsItem(self: pointer, item: pointer): void {.importc: "QGraphicsLinearLayout_protectedbase_setGraphicsItem".}
proc fcQGraphicsLinearLayout_protectedbase_setOwnedByLayout(self: pointer, ownedByLayout: bool): void {.importc: "QGraphicsLinearLayout_protectedbase_setOwnedByLayout".}
proc fcQGraphicsLinearLayout_new(vtbl: pointer, ): ptr cQGraphicsLinearLayout {.importc: "QGraphicsLinearLayout_new".}
proc fcQGraphicsLinearLayout_new2(vtbl: pointer, orientation: cint): ptr cQGraphicsLinearLayout {.importc: "QGraphicsLinearLayout_new2".}
proc fcQGraphicsLinearLayout_new3(vtbl: pointer, parent: pointer): ptr cQGraphicsLinearLayout {.importc: "QGraphicsLinearLayout_new3".}
proc fcQGraphicsLinearLayout_new4(vtbl: pointer, orientation: cint, parent: pointer): ptr cQGraphicsLinearLayout {.importc: "QGraphicsLinearLayout_new4".}

proc setOrientation*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, orientation: cint): void =
  fcQGraphicsLinearLayout_setOrientation(self.h, cint(orientation))

proc orientation*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): cint =
  cint(fcQGraphicsLinearLayout_orientation(self.h))

proc addItem*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): void =
  fcQGraphicsLinearLayout_addItem(self.h, item.h)

proc addStretch*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): void =
  fcQGraphicsLinearLayout_addStretch(self.h)

proc insertItem*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, index: cint, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): void =
  fcQGraphicsLinearLayout_insertItem(self.h, index, item.h)

proc insertStretch*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, index: cint): void =
  fcQGraphicsLinearLayout_insertStretch(self.h, index)

proc removeItem*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): void =
  fcQGraphicsLinearLayout_removeItem(self.h, item.h)

proc removeAt*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, index: cint): void =
  fcQGraphicsLinearLayout_removeAt(self.h, index)

proc setSpacing*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, spacing: float64): void =
  fcQGraphicsLinearLayout_setSpacing(self.h, spacing)

proc spacing*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): float64 =
  fcQGraphicsLinearLayout_spacing(self.h)

proc setItemSpacing*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, index: cint, spacing: float64): void =
  fcQGraphicsLinearLayout_setItemSpacing(self.h, index, spacing)

proc itemSpacing*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, index: cint): float64 =
  fcQGraphicsLinearLayout_itemSpacing(self.h, index)

proc setStretchFactor*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, stretch: cint): void =
  fcQGraphicsLinearLayout_setStretchFactor(self.h, item.h, stretch)

proc stretchFactor*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): cint =
  fcQGraphicsLinearLayout_stretchFactor(self.h, item.h)

proc setAlignment*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, alignment: cint): void =
  fcQGraphicsLinearLayout_setAlignment(self.h, item.h, cint(alignment))

proc alignment*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): cint =
  cint(fcQGraphicsLinearLayout_alignment(self.h, item.h))

proc setGeometry*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsLinearLayout_setGeometry(self.h, rect.h)

proc count*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): cint =
  fcQGraphicsLinearLayout_count(self.h)

proc itemAt*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fcQGraphicsLinearLayout_itemAt(self.h, index), owned: false)

proc invalidate*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): void =
  fcQGraphicsLinearLayout_invalidate(self.h)

proc sizeHint*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsLinearLayout_sizeHint(self.h, cint(which), constraint.h), owned: true)

proc dump*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): void =
  fcQGraphicsLinearLayout_dump(self.h)

proc addStretch*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, stretch: cint): void =
  fcQGraphicsLinearLayout_addStretch1(self.h, stretch)

proc insertStretch*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, index: cint, stretch: cint): void =
  fcQGraphicsLinearLayout_insertStretch2(self.h, index, stretch)

proc dump*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, indent: cint): void =
  fcQGraphicsLinearLayout_dump1(self.h, indent)

type QGraphicsLinearLayoutremoveAtProc* = proc(self: QGraphicsLinearLayout, index: cint): void {.raises: [], gcsafe.}
type QGraphicsLinearLayoutsetGeometryProc* = proc(self: QGraphicsLinearLayout, rect: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QGraphicsLinearLayoutcountProc* = proc(self: QGraphicsLinearLayout): cint {.raises: [], gcsafe.}
type QGraphicsLinearLayoutitemAtProc* = proc(self: QGraphicsLinearLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem {.raises: [], gcsafe.}
type QGraphicsLinearLayoutinvalidateProc* = proc(self: QGraphicsLinearLayout): void {.raises: [], gcsafe.}
type QGraphicsLinearLayoutsizeHintProc* = proc(self: QGraphicsLinearLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.raises: [], gcsafe.}
type QGraphicsLinearLayoutgetContentsMarginsProc* = proc(self: QGraphicsLinearLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.raises: [], gcsafe.}
type QGraphicsLinearLayoutupdateGeometryProc* = proc(self: QGraphicsLinearLayout): void {.raises: [], gcsafe.}
type QGraphicsLinearLayoutwidgetEventProc* = proc(self: QGraphicsLinearLayout, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsLinearLayoutVTable* {.inheritable, pure.} = object
  vtbl: cQGraphicsLinearLayoutVTable
  removeAt*: QGraphicsLinearLayoutremoveAtProc
  setGeometry*: QGraphicsLinearLayoutsetGeometryProc
  count*: QGraphicsLinearLayoutcountProc
  itemAt*: QGraphicsLinearLayoutitemAtProc
  invalidate*: QGraphicsLinearLayoutinvalidateProc
  sizeHint*: QGraphicsLinearLayoutsizeHintProc
  getContentsMargins*: QGraphicsLinearLayoutgetContentsMarginsProc
  updateGeometry*: QGraphicsLinearLayoutupdateGeometryProc
  widgetEvent*: QGraphicsLinearLayoutwidgetEventProc
proc QGraphicsLinearLayoutremoveAt*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, index: cint): void =
  fcQGraphicsLinearLayout_virtualbase_removeAt(self.h, index)

proc miqt_exec_callback_cQGraphicsLinearLayout_removeAt(vtbl: pointer, self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLinearLayoutVTable](vtbl)
  let self = QGraphicsLinearLayout(h: self)
  let slotval1 = index
  vtbl[].removeAt(self, slotval1)

proc QGraphicsLinearLayoutsetGeometry*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsLinearLayout_virtualbase_setGeometry(self.h, rect.h)

proc miqt_exec_callback_cQGraphicsLinearLayout_setGeometry(vtbl: pointer, self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLinearLayoutVTable](vtbl)
  let self = QGraphicsLinearLayout(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc QGraphicsLinearLayoutcount*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): cint =
  fcQGraphicsLinearLayout_virtualbase_count(self.h)

proc miqt_exec_callback_cQGraphicsLinearLayout_count(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLinearLayoutVTable](vtbl)
  let self = QGraphicsLinearLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc QGraphicsLinearLayoutitemAt*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fcQGraphicsLinearLayout_virtualbase_itemAt(self.h, index), owned: false)

proc miqt_exec_callback_cQGraphicsLinearLayout_itemAt(vtbl: pointer, self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLinearLayoutVTable](vtbl)
  let self = QGraphicsLinearLayout(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsLinearLayoutinvalidate*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): void =
  fcQGraphicsLinearLayout_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQGraphicsLinearLayout_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLinearLayoutVTable](vtbl)
  let self = QGraphicsLinearLayout(h: self)
  vtbl[].invalidate(self)

proc QGraphicsLinearLayoutsizeHint*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsLinearLayout_virtualbase_sizeHint(self.h, cint(which), constraint.h), owned: true)

proc miqt_exec_callback_cQGraphicsLinearLayout_sizeHint(vtbl: pointer, self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLinearLayoutVTable](vtbl)
  let self = QGraphicsLinearLayout(h: self)
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGraphicsLinearLayoutgetContentsMargins*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsLinearLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

proc miqt_exec_callback_cQGraphicsLinearLayout_getContentsMargins(vtbl: pointer, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLinearLayoutVTable](vtbl)
  let self = QGraphicsLinearLayout(h: self)
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl[].getContentsMargins(self, slotval1, slotval2, slotval3, slotval4)

proc QGraphicsLinearLayoutupdateGeometry*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): void =
  fcQGraphicsLinearLayout_virtualbase_updateGeometry(self.h)

proc miqt_exec_callback_cQGraphicsLinearLayout_updateGeometry(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLinearLayoutVTable](vtbl)
  let self = QGraphicsLinearLayout(h: self)
  vtbl[].updateGeometry(self)

proc QGraphicsLinearLayoutwidgetEvent*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, e: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsLinearLayout_virtualbase_widgetEvent(self.h, e.h)

proc miqt_exec_callback_cQGraphicsLinearLayout_widgetEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsLinearLayoutVTable](vtbl)
  let self = QGraphicsLinearLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].widgetEvent(self, slotval1)

type VirtualQGraphicsLinearLayout* {.inheritable.} = ref object of QGraphicsLinearLayout
  vtbl*: cQGraphicsLinearLayoutVTable
method removeAt*(self: VirtualQGraphicsLinearLayout, index: cint): void {.base.} =
  QGraphicsLinearLayoutremoveAt(self[], index)
proc miqt_exec_method_cQGraphicsLinearLayout_removeAt(vtbl: pointer, inst: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsLinearLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
  let slotval1 = index
  vtbl.removeAt(slotval1)

method setGeometry*(self: VirtualQGraphicsLinearLayout, rect: gen_qrect_types.QRectF): void {.base.} =
  QGraphicsLinearLayoutsetGeometry(self[], rect)
proc miqt_exec_method_cQGraphicsLinearLayout_setGeometry(vtbl: pointer, inst: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsLinearLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
  let slotval1 = gen_qrect_types.QRectF(h: rect, owned: false)
  vtbl.setGeometry(slotval1)

method count*(self: VirtualQGraphicsLinearLayout, ): cint {.base.} =
  QGraphicsLinearLayoutcount(self[])
proc miqt_exec_method_cQGraphicsLinearLayout_count(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsLinearLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
  var virtualReturn = vtbl.count()
  virtualReturn

method itemAt*(self: VirtualQGraphicsLinearLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem {.base.} =
  QGraphicsLinearLayoutitemAt(self[], index)
proc miqt_exec_method_cQGraphicsLinearLayout_itemAt(vtbl: pointer, inst: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsLinearLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
  let slotval1 = index
  var virtualReturn = vtbl.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method invalidate*(self: VirtualQGraphicsLinearLayout, ): void {.base.} =
  QGraphicsLinearLayoutinvalidate(self[])
proc miqt_exec_method_cQGraphicsLinearLayout_invalidate(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsLinearLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
  vtbl.invalidate()

method sizeHint*(self: VirtualQGraphicsLinearLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.base.} =
  QGraphicsLinearLayoutsizeHint(self[], which, constraint)
proc miqt_exec_method_cQGraphicsLinearLayout_sizeHint(vtbl: pointer, inst: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsLinearLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint, owned: false)
  var virtualReturn = vtbl.sizeHint(slotval1, slotval2)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method getContentsMargins*(self: VirtualQGraphicsLinearLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.base.} =
  QGraphicsLinearLayoutgetContentsMargins(self[], left, top, right, bottom)
proc miqt_exec_method_cQGraphicsLinearLayout_getContentsMargins(vtbl: pointer, inst: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsLinearLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl.getContentsMargins(slotval1, slotval2, slotval3, slotval4)

method updateGeometry*(self: VirtualQGraphicsLinearLayout, ): void {.base.} =
  QGraphicsLinearLayoutupdateGeometry(self[])
proc miqt_exec_method_cQGraphicsLinearLayout_updateGeometry(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsLinearLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
  vtbl.updateGeometry()

method widgetEvent*(self: VirtualQGraphicsLinearLayout, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QGraphicsLinearLayoutwidgetEvent(self[], e)
proc miqt_exec_method_cQGraphicsLinearLayout_widgetEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQGraphicsLinearLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl.widgetEvent(slotval1)

proc addChildLayoutItem*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, layoutItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): void =
  fcQGraphicsLinearLayout_protectedbase_addChildLayoutItem(self.h, layoutItem.h)

proc setGraphicsItem*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsLinearLayout_protectedbase_setGraphicsItem(self.h, item.h)

proc setOwnedByLayout*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ownedByLayout: bool): void =
  fcQGraphicsLinearLayout_protectedbase_setOwnedByLayout(self.h, ownedByLayout)

proc create*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout,
    vtbl: ref QGraphicsLinearLayoutVTable = nil): gen_qgraphicslinearlayout_types.QGraphicsLinearLayout =
  let vtbl = if vtbl == nil: new QGraphicsLinearLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsLinearLayoutVTable, _: ptr cQGraphicsLinearLayout) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLinearLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].removeAt):
    vtbl[].vtbl.removeAt = miqt_exec_callback_cQGraphicsLinearLayout_removeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsLinearLayout_setGeometry
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQGraphicsLinearLayout_count
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQGraphicsLinearLayout_itemAt
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQGraphicsLinearLayout_invalidate
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsLinearLayout_sizeHint
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsLinearLayout_getContentsMargins
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsLinearLayout_updateGeometry
  if not isNil(vtbl[].widgetEvent):
    vtbl[].vtbl.widgetEvent = miqt_exec_callback_cQGraphicsLinearLayout_widgetEvent
  gen_qgraphicslinearlayout_types.QGraphicsLinearLayout(h: fcQGraphicsLinearLayout_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout,
    orientation: cint,
    vtbl: ref QGraphicsLinearLayoutVTable = nil): gen_qgraphicslinearlayout_types.QGraphicsLinearLayout =
  let vtbl = if vtbl == nil: new QGraphicsLinearLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsLinearLayoutVTable, _: ptr cQGraphicsLinearLayout) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLinearLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].removeAt):
    vtbl[].vtbl.removeAt = miqt_exec_callback_cQGraphicsLinearLayout_removeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsLinearLayout_setGeometry
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQGraphicsLinearLayout_count
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQGraphicsLinearLayout_itemAt
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQGraphicsLinearLayout_invalidate
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsLinearLayout_sizeHint
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsLinearLayout_getContentsMargins
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsLinearLayout_updateGeometry
  if not isNil(vtbl[].widgetEvent):
    vtbl[].vtbl.widgetEvent = miqt_exec_callback_cQGraphicsLinearLayout_widgetEvent
  gen_qgraphicslinearlayout_types.QGraphicsLinearLayout(h: fcQGraphicsLinearLayout_new2(addr(vtbl[].vtbl), cint(orientation)), owned: true)

proc create*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout,
    parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem,
    vtbl: ref QGraphicsLinearLayoutVTable = nil): gen_qgraphicslinearlayout_types.QGraphicsLinearLayout =
  let vtbl = if vtbl == nil: new QGraphicsLinearLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsLinearLayoutVTable, _: ptr cQGraphicsLinearLayout) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLinearLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].removeAt):
    vtbl[].vtbl.removeAt = miqt_exec_callback_cQGraphicsLinearLayout_removeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsLinearLayout_setGeometry
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQGraphicsLinearLayout_count
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQGraphicsLinearLayout_itemAt
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQGraphicsLinearLayout_invalidate
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsLinearLayout_sizeHint
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsLinearLayout_getContentsMargins
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsLinearLayout_updateGeometry
  if not isNil(vtbl[].widgetEvent):
    vtbl[].vtbl.widgetEvent = miqt_exec_callback_cQGraphicsLinearLayout_widgetEvent
  gen_qgraphicslinearlayout_types.QGraphicsLinearLayout(h: fcQGraphicsLinearLayout_new3(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout,
    orientation: cint, parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem,
    vtbl: ref QGraphicsLinearLayoutVTable = nil): gen_qgraphicslinearlayout_types.QGraphicsLinearLayout =
  let vtbl = if vtbl == nil: new QGraphicsLinearLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsLinearLayoutVTable, _: ptr cQGraphicsLinearLayout) {.cdecl.} =
    let vtbl = cast[ref QGraphicsLinearLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].removeAt):
    vtbl[].vtbl.removeAt = miqt_exec_callback_cQGraphicsLinearLayout_removeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsLinearLayout_setGeometry
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQGraphicsLinearLayout_count
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQGraphicsLinearLayout_itemAt
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQGraphicsLinearLayout_invalidate
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsLinearLayout_sizeHint
  if not isNil(vtbl[].getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsLinearLayout_getContentsMargins
  if not isNil(vtbl[].updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsLinearLayout_updateGeometry
  if not isNil(vtbl[].widgetEvent):
    vtbl[].vtbl.widgetEvent = miqt_exec_callback_cQGraphicsLinearLayout_widgetEvent
  gen_qgraphicslinearlayout_types.QGraphicsLinearLayout(h: fcQGraphicsLinearLayout_new4(addr(vtbl[].vtbl), cint(orientation), parent.h), owned: true)

proc create*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout,
    vtbl: VirtualQGraphicsLinearLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsLinearLayoutVTable, _: ptr cQGraphicsLinearLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsLinearLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.removeAt = miqt_exec_method_cQGraphicsLinearLayout_removeAt
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQGraphicsLinearLayout_setGeometry
  vtbl[].vtbl.count = miqt_exec_method_cQGraphicsLinearLayout_count
  vtbl[].vtbl.itemAt = miqt_exec_method_cQGraphicsLinearLayout_itemAt
  vtbl[].vtbl.invalidate = miqt_exec_method_cQGraphicsLinearLayout_invalidate
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQGraphicsLinearLayout_sizeHint
  vtbl[].vtbl.getContentsMargins = miqt_exec_method_cQGraphicsLinearLayout_getContentsMargins
  vtbl[].vtbl.updateGeometry = miqt_exec_method_cQGraphicsLinearLayout_updateGeometry
  vtbl[].vtbl.widgetEvent = miqt_exec_method_cQGraphicsLinearLayout_widgetEvent
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsLinearLayout_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout,
    orientation: cint,
    vtbl: VirtualQGraphicsLinearLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsLinearLayoutVTable, _: ptr cQGraphicsLinearLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsLinearLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.removeAt = miqt_exec_method_cQGraphicsLinearLayout_removeAt
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQGraphicsLinearLayout_setGeometry
  vtbl[].vtbl.count = miqt_exec_method_cQGraphicsLinearLayout_count
  vtbl[].vtbl.itemAt = miqt_exec_method_cQGraphicsLinearLayout_itemAt
  vtbl[].vtbl.invalidate = miqt_exec_method_cQGraphicsLinearLayout_invalidate
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQGraphicsLinearLayout_sizeHint
  vtbl[].vtbl.getContentsMargins = miqt_exec_method_cQGraphicsLinearLayout_getContentsMargins
  vtbl[].vtbl.updateGeometry = miqt_exec_method_cQGraphicsLinearLayout_updateGeometry
  vtbl[].vtbl.widgetEvent = miqt_exec_method_cQGraphicsLinearLayout_widgetEvent
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsLinearLayout_new2(addr(vtbl[].vtbl), cint(orientation))
  vtbl[].owned = true

proc create*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout,
    parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem,
    vtbl: VirtualQGraphicsLinearLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsLinearLayoutVTable, _: ptr cQGraphicsLinearLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsLinearLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.removeAt = miqt_exec_method_cQGraphicsLinearLayout_removeAt
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQGraphicsLinearLayout_setGeometry
  vtbl[].vtbl.count = miqt_exec_method_cQGraphicsLinearLayout_count
  vtbl[].vtbl.itemAt = miqt_exec_method_cQGraphicsLinearLayout_itemAt
  vtbl[].vtbl.invalidate = miqt_exec_method_cQGraphicsLinearLayout_invalidate
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQGraphicsLinearLayout_sizeHint
  vtbl[].vtbl.getContentsMargins = miqt_exec_method_cQGraphicsLinearLayout_getContentsMargins
  vtbl[].vtbl.updateGeometry = miqt_exec_method_cQGraphicsLinearLayout_updateGeometry
  vtbl[].vtbl.widgetEvent = miqt_exec_method_cQGraphicsLinearLayout_widgetEvent
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsLinearLayout_new3(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout,
    orientation: cint, parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem,
    vtbl: VirtualQGraphicsLinearLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQGraphicsLinearLayoutVTable, _: ptr cQGraphicsLinearLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQGraphicsLinearLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQGraphicsLinearLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.removeAt = miqt_exec_method_cQGraphicsLinearLayout_removeAt
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQGraphicsLinearLayout_setGeometry
  vtbl[].vtbl.count = miqt_exec_method_cQGraphicsLinearLayout_count
  vtbl[].vtbl.itemAt = miqt_exec_method_cQGraphicsLinearLayout_itemAt
  vtbl[].vtbl.invalidate = miqt_exec_method_cQGraphicsLinearLayout_invalidate
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQGraphicsLinearLayout_sizeHint
  vtbl[].vtbl.getContentsMargins = miqt_exec_method_cQGraphicsLinearLayout_getContentsMargins
  vtbl[].vtbl.updateGeometry = miqt_exec_method_cQGraphicsLinearLayout_updateGeometry
  vtbl[].vtbl.widgetEvent = miqt_exec_method_cQGraphicsLinearLayout_widgetEvent
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQGraphicsLinearLayout_new4(addr(vtbl[].vtbl), cint(orientation), parent.h)
  vtbl[].owned = true

