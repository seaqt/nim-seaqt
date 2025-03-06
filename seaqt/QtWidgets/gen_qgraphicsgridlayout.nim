import ./Qt5Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free

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
{.compile("gen_qgraphicsgridlayout.cpp", cflags).}


import ./gen_qgraphicsgridlayout_types
export gen_qgraphicsgridlayout_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qgraphicslayout,
  ./gen_qgraphicslayoutitem_types
export
  gen_qcoreevent_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qgraphicslayout,
  gen_qgraphicslayoutitem_types

type cQGraphicsGridLayout*{.exportc: "QGraphicsGridLayout", incompleteStruct.} = object

proc fcQGraphicsGridLayout_new(): ptr cQGraphicsGridLayout {.importc: "QGraphicsGridLayout_new".}
proc fcQGraphicsGridLayout_new2(parent: pointer): ptr cQGraphicsGridLayout {.importc: "QGraphicsGridLayout_new2".}
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
proc fQGraphicsGridLayout_virtualbase_count(self: pointer, ): cint{.importc: "QGraphicsGridLayout_virtualbase_count".}
proc fcQGraphicsGridLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_count".}
proc fQGraphicsGridLayout_virtualbase_itemAtWithIndex(self: pointer, index: cint): pointer{.importc: "QGraphicsGridLayout_virtualbase_itemAtWithIndex".}
proc fcQGraphicsGridLayout_override_virtual_itemAtWithIndex(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_itemAtWithIndex".}
proc fQGraphicsGridLayout_virtualbase_removeAt(self: pointer, index: cint): void{.importc: "QGraphicsGridLayout_virtualbase_removeAt".}
proc fcQGraphicsGridLayout_override_virtual_removeAt(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_removeAt".}
proc fQGraphicsGridLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QGraphicsGridLayout_virtualbase_invalidate".}
proc fcQGraphicsGridLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_invalidate".}
proc fQGraphicsGridLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsGridLayout_virtualbase_setGeometry".}
proc fcQGraphicsGridLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_setGeometry".}
proc fQGraphicsGridLayout_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer{.importc: "QGraphicsGridLayout_virtualbase_sizeHint".}
proc fcQGraphicsGridLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_sizeHint".}
proc fQGraphicsGridLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsGridLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsGridLayout_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_getContentsMargins".}
proc fQGraphicsGridLayout_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsGridLayout_virtualbase_updateGeometry".}
proc fcQGraphicsGridLayout_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_updateGeometry".}
proc fQGraphicsGridLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void{.importc: "QGraphicsGridLayout_virtualbase_widgetEvent".}
proc fcQGraphicsGridLayout_override_virtual_widgetEvent(self: pointer, slot: int) {.importc: "QGraphicsGridLayout_override_virtual_widgetEvent".}
proc fcQGraphicsGridLayout_delete(self: pointer) {.importc: "QGraphicsGridLayout_delete".}


func init*(T: type gen_qgraphicsgridlayout_types.QGraphicsGridLayout, h: ptr cQGraphicsGridLayout): gen_qgraphicsgridlayout_types.QGraphicsGridLayout =
  T(h: h)
proc create*(T: type gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): gen_qgraphicsgridlayout_types.QGraphicsGridLayout =
  gen_qgraphicsgridlayout_types.QGraphicsGridLayout.init(fcQGraphicsGridLayout_new())

proc create*(T: type gen_qgraphicsgridlayout_types.QGraphicsGridLayout, parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): gen_qgraphicsgridlayout_types.QGraphicsGridLayout =
  gen_qgraphicsgridlayout_types.QGraphicsGridLayout.init(fcQGraphicsGridLayout_new2(parent.h))

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

proc QGraphicsGridLayoutcount*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): cint =
  fQGraphicsGridLayout_virtualbase_count(self.h)

type QGraphicsGridLayoutcountProc* = proc(): cint
proc oncount*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, slot: QGraphicsGridLayoutcountProc) =
  # TODO check subclass
  var tmp = new QGraphicsGridLayoutcountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_count(self: ptr cQGraphicsGridLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsGridLayout_count ".} =
  var nimfunc = cast[ptr QGraphicsGridLayoutcountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsGridLayoutitemAt*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fQGraphicsGridLayout_virtualbase_itemAtWithIndex(self.h, index))

type QGraphicsGridLayoutitemAtWithIndexProc* = proc(index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem
proc onitemAt*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, slot: QGraphicsGridLayoutitemAtWithIndexProc) =
  # TODO check subclass
  var tmp = new QGraphicsGridLayoutitemAtWithIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_itemAtWithIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_itemAtWithIndex(self: ptr cQGraphicsGridLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsGridLayout_itemAtWithIndex ".} =
  var nimfunc = cast[ptr QGraphicsGridLayoutitemAtWithIndexProc](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsGridLayoutremoveAt*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, index: cint): void =
  fQGraphicsGridLayout_virtualbase_removeAt(self.h, index)

type QGraphicsGridLayoutremoveAtProc* = proc(index: cint): void
proc onremoveAt*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, slot: QGraphicsGridLayoutremoveAtProc) =
  # TODO check subclass
  var tmp = new QGraphicsGridLayoutremoveAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_removeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_removeAt(self: ptr cQGraphicsGridLayout, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QGraphicsGridLayout_removeAt ".} =
  var nimfunc = cast[ptr QGraphicsGridLayoutremoveAtProc](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)
proc QGraphicsGridLayoutinvalidate*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): void =
  fQGraphicsGridLayout_virtualbase_invalidate(self.h)

type QGraphicsGridLayoutinvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, slot: QGraphicsGridLayoutinvalidateProc) =
  # TODO check subclass
  var tmp = new QGraphicsGridLayoutinvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_invalidate(self: ptr cQGraphicsGridLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsGridLayout_invalidate ".} =
  var nimfunc = cast[ptr QGraphicsGridLayoutinvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsGridLayoutsetGeometry*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, rect: gen_qrect_types.QRectF): void =
  fQGraphicsGridLayout_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsGridLayoutsetGeometryProc* = proc(rect: gen_qrect_types.QRectF): void
proc onsetGeometry*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, slot: QGraphicsGridLayoutsetGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsGridLayoutsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_setGeometry(self: ptr cQGraphicsGridLayout, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsGridLayout_setGeometry ".} =
  var nimfunc = cast[ptr QGraphicsGridLayoutsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: rect)


  nimfunc[](slotval1)
proc QGraphicsGridLayoutsizeHint*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fQGraphicsGridLayout_virtualbase_sizeHint(self.h, cint(which), constraint.h))

type QGraphicsGridLayoutsizeHintProc* = proc(which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF
proc onsizeHint*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, slot: QGraphicsGridLayoutsizeHintProc) =
  # TODO check subclass
  var tmp = new QGraphicsGridLayoutsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_sizeHint(self: ptr cQGraphicsGridLayout, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsGridLayout_sizeHint ".} =
  var nimfunc = cast[ptr QGraphicsGridLayoutsizeHintProc](cast[pointer](slot))
  let slotval1 = cint(which)

  let slotval2 = gen_qsize_types.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsGridLayoutgetContentsMargins*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fQGraphicsGridLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsGridLayoutgetContentsMarginsProc* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, slot: QGraphicsGridLayoutgetContentsMarginsProc) =
  # TODO check subclass
  var tmp = new QGraphicsGridLayoutgetContentsMarginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_getContentsMargins(self: ptr cQGraphicsGridLayout, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsGridLayout_getContentsMargins ".} =
  var nimfunc = cast[ptr QGraphicsGridLayoutgetContentsMarginsProc](cast[pointer](slot))
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QGraphicsGridLayoutupdateGeometry*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, ): void =
  fQGraphicsGridLayout_virtualbase_updateGeometry(self.h)

type QGraphicsGridLayoutupdateGeometryProc* = proc(): void
proc onupdateGeometry*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, slot: QGraphicsGridLayoutupdateGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsGridLayoutupdateGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_updateGeometry(self: ptr cQGraphicsGridLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsGridLayout_updateGeometry ".} =
  var nimfunc = cast[ptr QGraphicsGridLayoutupdateGeometryProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsGridLayoutwidgetEvent*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, e: gen_qcoreevent_types.QEvent): void =
  fQGraphicsGridLayout_virtualbase_widgetEvent(self.h, e.h)

type QGraphicsGridLayoutwidgetEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onwidgetEvent*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout, slot: QGraphicsGridLayoutwidgetEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsGridLayoutwidgetEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsGridLayout_override_virtual_widgetEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsGridLayout_widgetEvent(self: ptr cQGraphicsGridLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QGraphicsGridLayout_widgetEvent ".} =
  var nimfunc = cast[ptr QGraphicsGridLayoutwidgetEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc delete*(self: gen_qgraphicsgridlayout_types.QGraphicsGridLayout) =
  fcQGraphicsGridLayout_delete(self.h)
