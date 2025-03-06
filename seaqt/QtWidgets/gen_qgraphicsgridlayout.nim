import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qgraphicsgridlayout.cpp", cflags).}


import ./gen_qgraphicsgridlayout_types
export gen_qgraphicsgridlayout_types

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

type cQGraphicsGridLayout*{.exportc: "QGraphicsGridLayout", incompleteStruct.} = object

proc fcQGraphicsGridLayout_addItem(self: pointer, item: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QGraphicsGridLayout_addItem".}
proc fcQGraphicsGridLayout_addItem2(self: pointer, item: pointer, row: cint, column: cint): void {.importc: "QGraphicsGridLayout_addItem2".}
proc fcQGraphicsGridLayout_setHorizontalSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsGridLayout_setHorizontalSpacing".}
proc fcQGraphicsGridLayout_horizontalSpacing(self: pointer, ): float64 {.importc: "QGraphicsGridLayout_horizontalSpacing".}
proc fcQGraphicsGridLayout_setVerticalSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsGridLayout_setVerticalSpacing".}
proc fcQGraphicsGridLayout_verticalSpacing(self: pointer, ): float64 {.importc: "QGraphicsGridLayout_verticalSpacing".}
proc fcQGraphicsGridLayout_setSpacing(self: pointer, spacing: float64): void {.importc: "QGraphicsGridLayout_setSpacing".}
proc fcQGraphicsGridLayout_setRowSpacing(self: pointer, row: cint, spacing: float64): void {.importc: "QGraphicsGridLayout_setRowSpacing".}
proc fcQGraphicsGridLayout_rowSpacing(self: pointer, row: cint): float64 {.importc: "QGraphicsGridLayout_rowSpacing".}
proc fcQGraphicsGridLayout_setColumnSpacing(self: pointer, column: cint, spacing: float64): void {.importc: "QGraphicsGridLayout_setColumnSpacing".}
proc fcQGraphicsGridLayout_columnSpacing(self: pointer, column: cint): float64 {.importc: "QGraphicsGridLayout_columnSpacing".}
proc fcQGraphicsGridLayout_setRowStretchFactor(self: pointer, row: cint, stretch: cint): void {.importc: "QGraphicsGridLayout_setRowStretchFactor".}
proc fcQGraphicsGridLayout_rowStretchFactor(self: pointer, row: cint): cint {.importc: "QGraphicsGridLayout_rowStretchFactor".}
proc fcQGraphicsGridLayout_setColumnStretchFactor(self: pointer, column: cint, stretch: cint): void {.importc: "QGraphicsGridLayout_setColumnStretchFactor".}
proc fcQGraphicsGridLayout_columnStretchFactor(self: pointer, column: cint): cint {.importc: "QGraphicsGridLayout_columnStretchFactor".}
proc fcQGraphicsGridLayout_setRowMinimumHeight(self: pointer, row: cint, height: float64): void {.importc: "QGraphicsGridLayout_setRowMinimumHeight".}
proc fcQGraphicsGridLayout_rowMinimumHeight(self: pointer, row: cint): float64 {.importc: "QGraphicsGridLayout_rowMinimumHeight".}
proc fcQGraphicsGridLayout_setRowPreferredHeight(self: pointer, row: cint, height: float64): void {.importc: "QGraphicsGridLayout_setRowPreferredHeight".}
proc fcQGraphicsGridLayout_rowPreferredHeight(self: pointer, row: cint): float64 {.importc: "QGraphicsGridLayout_rowPreferredHeight".}
proc fcQGraphicsGridLayout_setRowMaximumHeight(self: pointer, row: cint, height: float64): void {.importc: "QGraphicsGridLayout_setRowMaximumHeight".}
proc fcQGraphicsGridLayout_rowMaximumHeight(self: pointer, row: cint): float64 {.importc: "QGraphicsGridLayout_rowMaximumHeight".}
proc fcQGraphicsGridLayout_setRowFixedHeight(self: pointer, row: cint, height: float64): void {.importc: "QGraphicsGridLayout_setRowFixedHeight".}
proc fcQGraphicsGridLayout_setColumnMinimumWidth(self: pointer, column: cint, width: float64): void {.importc: "QGraphicsGridLayout_setColumnMinimumWidth".}
proc fcQGraphicsGridLayout_columnMinimumWidth(self: pointer, column: cint): float64 {.importc: "QGraphicsGridLayout_columnMinimumWidth".}
proc fcQGraphicsGridLayout_setColumnPreferredWidth(self: pointer, column: cint, width: float64): void {.importc: "QGraphicsGridLayout_setColumnPreferredWidth".}
proc fcQGraphicsGridLayout_columnPreferredWidth(self: pointer, column: cint): float64 {.importc: "QGraphicsGridLayout_columnPreferredWidth".}
proc fcQGraphicsGridLayout_setColumnMaximumWidth(self: pointer, column: cint, width: float64): void {.importc: "QGraphicsGridLayout_setColumnMaximumWidth".}
proc fcQGraphicsGridLayout_columnMaximumWidth(self: pointer, column: cint): float64 {.importc: "QGraphicsGridLayout_columnMaximumWidth".}
proc fcQGraphicsGridLayout_setColumnFixedWidth(self: pointer, column: cint, width: float64): void {.importc: "QGraphicsGridLayout_setColumnFixedWidth".}
proc fcQGraphicsGridLayout_setRowAlignment(self: pointer, row: cint, alignment: cint): void {.importc: "QGraphicsGridLayout_setRowAlignment".}
proc fcQGraphicsGridLayout_rowAlignment(self: pointer, row: cint): cint {.importc: "QGraphicsGridLayout_rowAlignment".}
proc fcQGraphicsGridLayout_setColumnAlignment(self: pointer, column: cint, alignment: cint): void {.importc: "QGraphicsGridLayout_setColumnAlignment".}
proc fcQGraphicsGridLayout_columnAlignment(self: pointer, column: cint): cint {.importc: "QGraphicsGridLayout_columnAlignment".}
proc fcQGraphicsGridLayout_setAlignment(self: pointer, item: pointer, alignment: cint): void {.importc: "QGraphicsGridLayout_setAlignment".}
proc fcQGraphicsGridLayout_alignment(self: pointer, item: pointer): cint {.importc: "QGraphicsGridLayout_alignment".}
proc fcQGraphicsGridLayout_rowCount(self: pointer, ): cint {.importc: "QGraphicsGridLayout_rowCount".}
proc fcQGraphicsGridLayout_columnCount(self: pointer, ): cint {.importc: "QGraphicsGridLayout_columnCount".}
proc fcQGraphicsGridLayout_itemAt(self: pointer, row: cint, column: cint): pointer {.importc: "QGraphicsGridLayout_itemAt".}
proc fcQGraphicsGridLayout_count(self: pointer, ): cint {.importc: "QGraphicsGridLayout_count".}
proc fcQGraphicsGridLayout_itemAtWithIndex(self: pointer, index: cint): pointer {.importc: "QGraphicsGridLayout_itemAtWithIndex".}
proc fcQGraphicsGridLayout_removeAt(self: pointer, index: cint): void {.importc: "QGraphicsGridLayout_removeAt".}
proc fcQGraphicsGridLayout_removeItem(self: pointer, item: pointer): void {.importc: "QGraphicsGridLayout_removeItem".}
proc fcQGraphicsGridLayout_invalidate(self: pointer, ): void {.importc: "QGraphicsGridLayout_invalidate".}
proc fcQGraphicsGridLayout_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsGridLayout_setGeometry".}
proc fcQGraphicsGridLayout_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsGridLayout_sizeHint".}
proc fcQGraphicsGridLayout_addItem6(self: pointer, item: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint, alignment: cint): void {.importc: "QGraphicsGridLayout_addItem6".}
proc fcQGraphicsGridLayout_addItem4(self: pointer, item: pointer, row: cint, column: cint, alignment: cint): void {.importc: "QGraphicsGridLayout_addItem4".}
type cQGraphicsGridLayoutVTable = object
  destructor*: proc(vtbl: ptr cQGraphicsGridLayoutVTable, self: ptr cQGraphicsGridLayout) {.cdecl, raises:[], gcsafe.}
  count*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  itemAtWithIndex*: proc(vtbl, self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  removeAt*: proc(vtbl, self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, which: cint, constraint: pointer): pointer {.cdecl, raises: [], gcsafe.}
  getContentsMargins*: proc(vtbl, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl, raises: [], gcsafe.}
  updateGeometry*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  widgetEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
proc fcQGraphicsGridLayout_virtualbase_count(self: pointer, ): cint {.importc: "QGraphicsGridLayout_virtualbase_count".}
proc fcQGraphicsGridLayout_virtualbase_itemAtWithIndex(self: pointer, index: cint): pointer {.importc: "QGraphicsGridLayout_virtualbase_itemAtWithIndex".}
proc fcQGraphicsGridLayout_virtualbase_removeAt(self: pointer, index: cint): void {.importc: "QGraphicsGridLayout_virtualbase_removeAt".}
proc fcQGraphicsGridLayout_virtualbase_invalidate(self: pointer, ): void {.importc: "QGraphicsGridLayout_virtualbase_invalidate".}
proc fcQGraphicsGridLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QGraphicsGridLayout_virtualbase_setGeometry".}
proc fcQGraphicsGridLayout_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer {.importc: "QGraphicsGridLayout_virtualbase_sizeHint".}
proc fcQGraphicsGridLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.importc: "QGraphicsGridLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsGridLayout_virtualbase_updateGeometry(self: pointer, ): void {.importc: "QGraphicsGridLayout_virtualbase_updateGeometry".}
proc fcQGraphicsGridLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void {.importc: "QGraphicsGridLayout_virtualbase_widgetEvent".}
proc fcQGraphicsGridLayout_virtualbase_isEmpty(self: pointer, ): bool {.importc: "QGraphicsGridLayout_virtualbase_isEmpty".}
proc fcQGraphicsGridLayout_protectedbase_addChildLayoutItem(self: pointer, layoutItem: pointer): void {.importc: "QGraphicsGridLayout_protectedbase_addChildLayoutItem".}
proc fcQGraphicsGridLayout_protectedbase_setGraphicsItem(self: pointer, item: pointer): void {.importc: "QGraphicsGridLayout_protectedbase_setGraphicsItem".}
proc fcQGraphicsGridLayout_protectedbase_setOwnedByLayout(self: pointer, ownedByLayout: bool): void {.importc: "QGraphicsGridLayout_protectedbase_setOwnedByLayout".}
proc fcQGraphicsGridLayout_new(vtbl: pointer, ): ptr cQGraphicsGridLayout {.importc: "QGraphicsGridLayout_new".}
proc fcQGraphicsGridLayout_new2(vtbl: pointer, parent: pointer): ptr cQGraphicsGridLayout {.importc: "QGraphicsGridLayout_new2".}
proc fcQGraphicsGridLayout_delete(self: pointer) {.importc: "QGraphicsGridLayout_delete".}

proc addItem*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void =
  fcQGraphicsGridLayout_addItem(self.h, item.h, row, column, rowSpan, columnSpan)

proc addItem*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, row: cint, column: cint): void =
  fcQGraphicsGridLayout_addItem2(self.h, item.h, row, column)

proc setHorizontalSpacing*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, spacing: float64): void =
  fcQGraphicsGridLayout_setHorizontalSpacing(self.h, spacing)

proc horizontalSpacing*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): float64 =
  fcQGraphicsGridLayout_horizontalSpacing(self.h)

proc setVerticalSpacing*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, spacing: float64): void =
  fcQGraphicsGridLayout_setVerticalSpacing(self.h, spacing)

proc verticalSpacing*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): float64 =
  fcQGraphicsGridLayout_verticalSpacing(self.h)

proc setSpacing*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, spacing: float64): void =
  fcQGraphicsGridLayout_setSpacing(self.h, spacing)

proc setRowSpacing*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint, spacing: float64): void =
  fcQGraphicsGridLayout_setRowSpacing(self.h, row, spacing)

proc rowSpacing*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint): float64 =
  fcQGraphicsGridLayout_rowSpacing(self.h, row)

proc setColumnSpacing*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint, spacing: float64): void =
  fcQGraphicsGridLayout_setColumnSpacing(self.h, column, spacing)

proc columnSpacing*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint): float64 =
  fcQGraphicsGridLayout_columnSpacing(self.h, column)

proc setRowStretchFactor*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint, stretch: cint): void =
  fcQGraphicsGridLayout_setRowStretchFactor(self.h, row, stretch)

proc rowStretchFactor*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint): cint =
  fcQGraphicsGridLayout_rowStretchFactor(self.h, row)

proc setColumnStretchFactor*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint, stretch: cint): void =
  fcQGraphicsGridLayout_setColumnStretchFactor(self.h, column, stretch)

proc columnStretchFactor*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint): cint =
  fcQGraphicsGridLayout_columnStretchFactor(self.h, column)

proc setRowMinimumHeight*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint, height: float64): void =
  fcQGraphicsGridLayout_setRowMinimumHeight(self.h, row, height)

proc rowMinimumHeight*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint): float64 =
  fcQGraphicsGridLayout_rowMinimumHeight(self.h, row)

proc setRowPreferredHeight*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint, height: float64): void =
  fcQGraphicsGridLayout_setRowPreferredHeight(self.h, row, height)

proc rowPreferredHeight*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint): float64 =
  fcQGraphicsGridLayout_rowPreferredHeight(self.h, row)

proc setRowMaximumHeight*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint, height: float64): void =
  fcQGraphicsGridLayout_setRowMaximumHeight(self.h, row, height)

proc rowMaximumHeight*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint): float64 =
  fcQGraphicsGridLayout_rowMaximumHeight(self.h, row)

proc setRowFixedHeight*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint, height: float64): void =
  fcQGraphicsGridLayout_setRowFixedHeight(self.h, row, height)

proc setColumnMinimumWidth*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint, width: float64): void =
  fcQGraphicsGridLayout_setColumnMinimumWidth(self.h, column, width)

proc columnMinimumWidth*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint): float64 =
  fcQGraphicsGridLayout_columnMinimumWidth(self.h, column)

proc setColumnPreferredWidth*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint, width: float64): void =
  fcQGraphicsGridLayout_setColumnPreferredWidth(self.h, column, width)

proc columnPreferredWidth*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint): float64 =
  fcQGraphicsGridLayout_columnPreferredWidth(self.h, column)

proc setColumnMaximumWidth*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint, width: float64): void =
  fcQGraphicsGridLayout_setColumnMaximumWidth(self.h, column, width)

proc columnMaximumWidth*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint): float64 =
  fcQGraphicsGridLayout_columnMaximumWidth(self.h, column)

proc setColumnFixedWidth*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint, width: float64): void =
  fcQGraphicsGridLayout_setColumnFixedWidth(self.h, column, width)

proc setRowAlignment*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint, alignment: cint): void =
  fcQGraphicsGridLayout_setRowAlignment(self.h, row, cint(alignment))

proc rowAlignment*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint): cint =
  cint(fcQGraphicsGridLayout_rowAlignment(self.h, row))

proc setColumnAlignment*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint, alignment: cint): void =
  fcQGraphicsGridLayout_setColumnAlignment(self.h, column, cint(alignment))

proc columnAlignment*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, column: cint): cint =
  cint(fcQGraphicsGridLayout_columnAlignment(self.h, column))

proc setAlignment*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, alignment: cint): void =
  fcQGraphicsGridLayout_setAlignment(self.h, item.h, cint(alignment))

proc alignment*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): cint =
  cint(fcQGraphicsGridLayout_alignment(self.h, item.h))

proc rowCount*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): cint =
  fcQGraphicsGridLayout_rowCount(self.h)

proc columnCount*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): cint =
  fcQGraphicsGridLayout_columnCount(self.h)

proc itemAt*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, row: cint, column: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fcQGraphicsGridLayout_itemAt(self.h, row, column))

proc count*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): cint =
  fcQGraphicsGridLayout_count(self.h)

proc itemAt*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fcQGraphicsGridLayout_itemAtWithIndex(self.h, index))

proc removeAt*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, index: cint): void =
  fcQGraphicsGridLayout_removeAt(self.h, index)

proc removeItem*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): void =
  fcQGraphicsGridLayout_removeItem(self.h, item.h)

proc invalidate*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): void =
  fcQGraphicsGridLayout_invalidate(self.h)

proc setGeometry*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsGridLayout_setGeometry(self.h, rect.h)

proc sizeHint*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsGridLayout_sizeHint(self.h, cint(which), constraint.h))

proc addItem*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, row: cint, column: cint, rowSpan: cint, columnSpan: cint, alignment: cint): void =
  fcQGraphicsGridLayout_addItem6(self.h, item.h, row, column, rowSpan, columnSpan, cint(alignment))

proc addItem*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, item: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem, row: cint, column: cint, alignment: cint): void =
  fcQGraphicsGridLayout_addItem4(self.h, item.h, row, column, cint(alignment))

type QGraphicsGridLayoutcountProc* = proc(self: QGraphicsGridLayout): cint {.raises: [], gcsafe.}
type QGraphicsGridLayoutitemAtWithIndexProc* = proc(self: QGraphicsGridLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem {.raises: [], gcsafe.}
type QGraphicsGridLayoutremoveAtProc* = proc(self: QGraphicsGridLayout, index: cint): void {.raises: [], gcsafe.}
type QGraphicsGridLayoutinvalidateProc* = proc(self: QGraphicsGridLayout): void {.raises: [], gcsafe.}
type QGraphicsGridLayoutsetGeometryProc* = proc(self: QGraphicsGridLayout, rect: gen_qrect_types.QRectF): void {.raises: [], gcsafe.}
type QGraphicsGridLayoutsizeHintProc* = proc(self: QGraphicsGridLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF {.raises: [], gcsafe.}
type QGraphicsGridLayoutgetContentsMarginsProc* = proc(self: QGraphicsGridLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.raises: [], gcsafe.}
type QGraphicsGridLayoutupdateGeometryProc* = proc(self: QGraphicsGridLayout): void {.raises: [], gcsafe.}
type QGraphicsGridLayoutwidgetEventProc* = proc(self: QGraphicsGridLayout, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGraphicsGridLayoutisEmptyProc* = proc(self: QGraphicsGridLayout): bool {.raises: [], gcsafe.}
type QGraphicsGridLayoutVTable* = object
  vtbl: cQGraphicsGridLayoutVTable
  count*: QGraphicsGridLayoutcountProc
  itemAtWithIndex*: QGraphicsGridLayoutitemAtWithIndexProc
  removeAt*: QGraphicsGridLayoutremoveAtProc
  invalidate*: QGraphicsGridLayoutinvalidateProc
  setGeometry*: QGraphicsGridLayoutsetGeometryProc
  sizeHint*: QGraphicsGridLayoutsizeHintProc
  getContentsMargins*: QGraphicsGridLayoutgetContentsMarginsProc
  updateGeometry*: QGraphicsGridLayoutupdateGeometryProc
  widgetEvent*: QGraphicsGridLayoutwidgetEventProc
  isEmpty*: QGraphicsGridLayoutisEmptyProc
proc QGraphicsGridLayoutcount*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): cint =
  fcQGraphicsGridLayout_virtualbase_count(self.h)

proc miqt_exec_callback_cQGraphicsGridLayout_count(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGraphicsGridLayoutVTable](vtbl)
  let self = QGraphicsGridLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc QGraphicsGridLayoutitemAt*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fcQGraphicsGridLayout_virtualbase_itemAtWithIndex(self.h, index))

proc miqt_exec_callback_cQGraphicsGridLayout_itemAtWithIndex(vtbl: pointer, self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsGridLayoutVTable](vtbl)
  let self = QGraphicsGridLayout(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].itemAtWithIndex(self, slotval1)
  virtualReturn.h

proc QGraphicsGridLayoutremoveAt*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, index: cint): void =
  fcQGraphicsGridLayout_virtualbase_removeAt(self.h, index)

proc miqt_exec_callback_cQGraphicsGridLayout_removeAt(vtbl: pointer, self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsGridLayoutVTable](vtbl)
  let self = QGraphicsGridLayout(h: self)
  let slotval1 = index
  vtbl[].removeAt(self, slotval1)

proc QGraphicsGridLayoutinvalidate*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): void =
  fcQGraphicsGridLayout_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQGraphicsGridLayout_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsGridLayoutVTable](vtbl)
  let self = QGraphicsGridLayout(h: self)
  vtbl[].invalidate(self)

proc QGraphicsGridLayoutsetGeometry*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, rect: gen_qrect_types.QRectF): void =
  fcQGraphicsGridLayout_virtualbase_setGeometry(self.h, rect.h)

proc miqt_exec_callback_cQGraphicsGridLayout_setGeometry(vtbl: pointer, self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsGridLayoutVTable](vtbl)
  let self = QGraphicsGridLayout(h: self)
  let slotval1 = gen_qrect_types.QRectF(h: rect)
  vtbl[].setGeometry(self, slotval1)

proc QGraphicsGridLayoutsizeHint*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsGridLayout_virtualbase_sizeHint(self.h, cint(which), constraint.h))

proc miqt_exec_callback_cQGraphicsGridLayout_sizeHint(vtbl: pointer, self: pointer, which: cint, constraint: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGraphicsGridLayoutVTable](vtbl)
  let self = QGraphicsGridLayout(h: self)
  let slotval1 = cint(which)
  let slotval2 = gen_qsize_types.QSizeF(h: constraint)
  var virtualReturn = vtbl[].sizeHint(self, slotval1, slotval2)
  virtualReturn.h

proc QGraphicsGridLayoutgetContentsMargins*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fcQGraphicsGridLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

proc miqt_exec_callback_cQGraphicsGridLayout_getContentsMargins(vtbl: pointer, self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsGridLayoutVTable](vtbl)
  let self = QGraphicsGridLayout(h: self)
  let slotval1 = left
  let slotval2 = top
  let slotval3 = right
  let slotval4 = bottom
  vtbl[].getContentsMargins(self, slotval1, slotval2, slotval3, slotval4)

proc QGraphicsGridLayoutupdateGeometry*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): void =
  fcQGraphicsGridLayout_virtualbase_updateGeometry(self.h)

proc miqt_exec_callback_cQGraphicsGridLayout_updateGeometry(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsGridLayoutVTable](vtbl)
  let self = QGraphicsGridLayout(h: self)
  vtbl[].updateGeometry(self)

proc QGraphicsGridLayoutwidgetEvent*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, e: gen_qcoreevent_types.QEvent): void =
  fcQGraphicsGridLayout_virtualbase_widgetEvent(self.h, e.h)

proc miqt_exec_callback_cQGraphicsGridLayout_widgetEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGraphicsGridLayoutVTable](vtbl)
  let self = QGraphicsGridLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].widgetEvent(self, slotval1)

proc QGraphicsGridLayoutisEmpty*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): bool =
  fcQGraphicsGridLayout_virtualbase_isEmpty(self.h)

proc miqt_exec_callback_cQGraphicsGridLayout_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGraphicsGridLayoutVTable](vtbl)
  let self = QGraphicsGridLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc addChildLayoutItem*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, layoutItem: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): void =
  fcQGraphicsGridLayout_protectedbase_addChildLayoutItem(self.h, layoutItem.h)

proc setGraphicsItem*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, item: gen_qgraphicsitem_types.QGraphicsItem): void =
  fcQGraphicsGridLayout_protectedbase_setGraphicsItem(self.h, item.h)

proc setOwnedByLayout*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ownedByLayout: bool): void =
  fcQGraphicsGridLayout_protectedbase_setOwnedByLayout(self.h, ownedByLayout)

proc create*(T: type gen_qgraphicsgridlayout_types.QGraphicsGridLayout,
    vtbl: ref QGraphicsGridLayoutVTable = nil): gen_qgraphicsgridlayout_types.QGraphicsGridLayout =
  let vtbl = if vtbl == nil: new QGraphicsGridLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsGridLayoutVTable, _: ptr cQGraphicsGridLayout) {.cdecl.} =
    let vtbl = cast[ref QGraphicsGridLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.count):
    vtbl[].vtbl.count = miqt_exec_callback_cQGraphicsGridLayout_count
  if not isNil(vtbl.itemAtWithIndex):
    vtbl[].vtbl.itemAtWithIndex = miqt_exec_callback_cQGraphicsGridLayout_itemAtWithIndex
  if not isNil(vtbl.removeAt):
    vtbl[].vtbl.removeAt = miqt_exec_callback_cQGraphicsGridLayout_removeAt
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQGraphicsGridLayout_invalidate
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsGridLayout_setGeometry
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsGridLayout_sizeHint
  if not isNil(vtbl.getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsGridLayout_getContentsMargins
  if not isNil(vtbl.updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsGridLayout_updateGeometry
  if not isNil(vtbl.widgetEvent):
    vtbl[].vtbl.widgetEvent = miqt_exec_callback_cQGraphicsGridLayout_widgetEvent
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQGraphicsGridLayout_isEmpty
  gen_qgraphicsgridlayout_types.QGraphicsGridLayout(h: fcQGraphicsGridLayout_new(addr(vtbl[]), ))

proc create*(T: type gen_qgraphicsgridlayout_types.QGraphicsGridLayout,
    parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem,
    vtbl: ref QGraphicsGridLayoutVTable = nil): gen_qgraphicsgridlayout_types.QGraphicsGridLayout =
  let vtbl = if vtbl == nil: new QGraphicsGridLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGraphicsGridLayoutVTable, _: ptr cQGraphicsGridLayout) {.cdecl.} =
    let vtbl = cast[ref QGraphicsGridLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.count):
    vtbl[].vtbl.count = miqt_exec_callback_cQGraphicsGridLayout_count
  if not isNil(vtbl.itemAtWithIndex):
    vtbl[].vtbl.itemAtWithIndex = miqt_exec_callback_cQGraphicsGridLayout_itemAtWithIndex
  if not isNil(vtbl.removeAt):
    vtbl[].vtbl.removeAt = miqt_exec_callback_cQGraphicsGridLayout_removeAt
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQGraphicsGridLayout_invalidate
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQGraphicsGridLayout_setGeometry
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGraphicsGridLayout_sizeHint
  if not isNil(vtbl.getContentsMargins):
    vtbl[].vtbl.getContentsMargins = miqt_exec_callback_cQGraphicsGridLayout_getContentsMargins
  if not isNil(vtbl.updateGeometry):
    vtbl[].vtbl.updateGeometry = miqt_exec_callback_cQGraphicsGridLayout_updateGeometry
  if not isNil(vtbl.widgetEvent):
    vtbl[].vtbl.widgetEvent = miqt_exec_callback_cQGraphicsGridLayout_widgetEvent
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQGraphicsGridLayout_isEmpty
  gen_qgraphicsgridlayout_types.QGraphicsGridLayout(h: fcQGraphicsGridLayout_new2(addr(vtbl[]), parent.h))

proc delete*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout) =
  fcQGraphicsGridLayout_delete(self.h)
