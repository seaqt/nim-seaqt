import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qgraphicslinearlayout.cpp", cflags).}


import ./gen_qgraphicslinearlayout_types
export gen_qgraphicslinearlayout_types

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

type cQGraphicsLinearLayout*{.exportc: "QGraphicsLinearLayout", incompleteStruct.} = object

proc fcQGraphicsLinearLayout_new(): ptr cQGraphicsLinearLayout {.importc: "QGraphicsLinearLayout_new".}
proc fcQGraphicsLinearLayout_new2(orientation: cint): ptr cQGraphicsLinearLayout {.importc: "QGraphicsLinearLayout_new2".}
proc fcQGraphicsLinearLayout_new3(parent: pointer): ptr cQGraphicsLinearLayout {.importc: "QGraphicsLinearLayout_new3".}
proc fcQGraphicsLinearLayout_new4(orientation: cint, parent: pointer): ptr cQGraphicsLinearLayout {.importc: "QGraphicsLinearLayout_new4".}
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
proc fQGraphicsLinearLayout_virtualbase_removeAt(self: pointer, index: cint): void{.importc: "QGraphicsLinearLayout_virtualbase_removeAt".}
proc fcQGraphicsLinearLayout_override_virtual_removeAt(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_removeAt".}
proc fQGraphicsLinearLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsLinearLayout_virtualbase_setGeometry".}
proc fcQGraphicsLinearLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_setGeometry".}
proc fQGraphicsLinearLayout_virtualbase_count(self: pointer, ): cint{.importc: "QGraphicsLinearLayout_virtualbase_count".}
proc fcQGraphicsLinearLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_count".}
proc fQGraphicsLinearLayout_virtualbase_itemAt(self: pointer, index: cint): pointer{.importc: "QGraphicsLinearLayout_virtualbase_itemAt".}
proc fcQGraphicsLinearLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_itemAt".}
proc fQGraphicsLinearLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QGraphicsLinearLayout_virtualbase_invalidate".}
proc fcQGraphicsLinearLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_invalidate".}
proc fQGraphicsLinearLayout_virtualbase_sizeHint(self: pointer, which: cint, constraint: pointer): pointer{.importc: "QGraphicsLinearLayout_virtualbase_sizeHint".}
proc fcQGraphicsLinearLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_sizeHint".}
proc fQGraphicsLinearLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsLinearLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsLinearLayout_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_getContentsMargins".}
proc fQGraphicsLinearLayout_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsLinearLayout_virtualbase_updateGeometry".}
proc fcQGraphicsLinearLayout_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_updateGeometry".}
proc fQGraphicsLinearLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void{.importc: "QGraphicsLinearLayout_virtualbase_widgetEvent".}
proc fcQGraphicsLinearLayout_override_virtual_widgetEvent(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_widgetEvent".}
proc fQGraphicsLinearLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QGraphicsLinearLayout_virtualbase_isEmpty".}
proc fcQGraphicsLinearLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QGraphicsLinearLayout_override_virtual_isEmpty".}
proc fcQGraphicsLinearLayout_delete(self: pointer) {.importc: "QGraphicsLinearLayout_delete".}


func init*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, h: ptr cQGraphicsLinearLayout): gen_qgraphicslinearlayout_types.QGraphicsLinearLayout =
  T(h: h)
proc create*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): gen_qgraphicslinearlayout_types.QGraphicsLinearLayout =
  gen_qgraphicslinearlayout_types.QGraphicsLinearLayout.init(fcQGraphicsLinearLayout_new())

proc create*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, orientation: cint): gen_qgraphicslinearlayout_types.QGraphicsLinearLayout =
  gen_qgraphicslinearlayout_types.QGraphicsLinearLayout.init(fcQGraphicsLinearLayout_new2(cint(orientation)))

proc create*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): gen_qgraphicslinearlayout_types.QGraphicsLinearLayout =
  gen_qgraphicslinearlayout_types.QGraphicsLinearLayout.init(fcQGraphicsLinearLayout_new3(parent.h))

proc create*(T: type gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, orientation: cint, parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): gen_qgraphicslinearlayout_types.QGraphicsLinearLayout =
  gen_qgraphicslinearlayout_types.QGraphicsLinearLayout.init(fcQGraphicsLinearLayout_new4(cint(orientation), parent.h))

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
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fcQGraphicsLinearLayout_itemAt(self.h, index))

proc invalidate*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): void =
  fcQGraphicsLinearLayout_invalidate(self.h)

proc sizeHint*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQGraphicsLinearLayout_sizeHint(self.h, cint(which), constraint.h))

proc dump*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): void =
  fcQGraphicsLinearLayout_dump(self.h)

proc addStretch*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, stretch: cint): void =
  fcQGraphicsLinearLayout_addStretch1(self.h, stretch)

proc insertStretch*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, index: cint, stretch: cint): void =
  fcQGraphicsLinearLayout_insertStretch2(self.h, index, stretch)

proc dump*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, indent: cint): void =
  fcQGraphicsLinearLayout_dump1(self.h, indent)

proc QGraphicsLinearLayoutremoveAt*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, index: cint): void =
  fQGraphicsLinearLayout_virtualbase_removeAt(self.h, index)

type QGraphicsLinearLayoutremoveAtProc* = proc(index: cint): void
proc onremoveAt*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, slot: QGraphicsLinearLayoutremoveAtProc) =
  # TODO check subclass
  var tmp = new QGraphicsLinearLayoutremoveAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_removeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_removeAt(self: ptr cQGraphicsLinearLayout, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_removeAt ".} =
  var nimfunc = cast[ptr QGraphicsLinearLayoutremoveAtProc](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)
proc QGraphicsLinearLayoutsetGeometry*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, rect: gen_qrect_types.QRectF): void =
  fQGraphicsLinearLayout_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsLinearLayoutsetGeometryProc* = proc(rect: gen_qrect_types.QRectF): void
proc onsetGeometry*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, slot: QGraphicsLinearLayoutsetGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsLinearLayoutsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_setGeometry(self: ptr cQGraphicsLinearLayout, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_setGeometry ".} =
  var nimfunc = cast[ptr QGraphicsLinearLayoutsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: rect)


  nimfunc[](slotval1)
proc QGraphicsLinearLayoutcount*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): cint =
  fQGraphicsLinearLayout_virtualbase_count(self.h)

type QGraphicsLinearLayoutcountProc* = proc(): cint
proc oncount*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, slot: QGraphicsLinearLayoutcountProc) =
  # TODO check subclass
  var tmp = new QGraphicsLinearLayoutcountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_count(self: ptr cQGraphicsLinearLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_count ".} =
  var nimfunc = cast[ptr QGraphicsLinearLayoutcountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGraphicsLinearLayoutitemAt*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem =
  gen_qgraphicslayoutitem_types.QGraphicsLayoutItem(h: fQGraphicsLinearLayout_virtualbase_itemAt(self.h, index))

type QGraphicsLinearLayoutitemAtProc* = proc(index: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem
proc onitemAt*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, slot: QGraphicsLinearLayoutitemAtProc) =
  # TODO check subclass
  var tmp = new QGraphicsLinearLayoutitemAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_itemAt(self: ptr cQGraphicsLinearLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_itemAt ".} =
  var nimfunc = cast[ptr QGraphicsLinearLayoutitemAtProc](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGraphicsLinearLayoutinvalidate*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): void =
  fQGraphicsLinearLayout_virtualbase_invalidate(self.h)

type QGraphicsLinearLayoutinvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, slot: QGraphicsLinearLayoutinvalidateProc) =
  # TODO check subclass
  var tmp = new QGraphicsLinearLayoutinvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_invalidate(self: ptr cQGraphicsLinearLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_invalidate ".} =
  var nimfunc = cast[ptr QGraphicsLinearLayoutinvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsLinearLayoutsizeHint*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fQGraphicsLinearLayout_virtualbase_sizeHint(self.h, cint(which), constraint.h))

type QGraphicsLinearLayoutsizeHintProc* = proc(which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF
proc onsizeHint*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, slot: QGraphicsLinearLayoutsizeHintProc) =
  # TODO check subclass
  var tmp = new QGraphicsLinearLayoutsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_sizeHint(self: ptr cQGraphicsLinearLayout, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_sizeHint ".} =
  var nimfunc = cast[ptr QGraphicsLinearLayoutsizeHintProc](cast[pointer](slot))
  let slotval1 = cint(which)

  let slotval2 = gen_qsize_types.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QGraphicsLinearLayoutgetContentsMargins*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fQGraphicsLinearLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsLinearLayoutgetContentsMarginsProc* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, slot: QGraphicsLinearLayoutgetContentsMarginsProc) =
  # TODO check subclass
  var tmp = new QGraphicsLinearLayoutgetContentsMarginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_getContentsMargins(self: ptr cQGraphicsLinearLayout, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_getContentsMargins ".} =
  var nimfunc = cast[ptr QGraphicsLinearLayoutgetContentsMarginsProc](cast[pointer](slot))
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QGraphicsLinearLayoutupdateGeometry*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): void =
  fQGraphicsLinearLayout_virtualbase_updateGeometry(self.h)

type QGraphicsLinearLayoutupdateGeometryProc* = proc(): void
proc onupdateGeometry*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, slot: QGraphicsLinearLayoutupdateGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsLinearLayoutupdateGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_updateGeometry(self: ptr cQGraphicsLinearLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_updateGeometry ".} =
  var nimfunc = cast[ptr QGraphicsLinearLayoutupdateGeometryProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsLinearLayoutwidgetEvent*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, e: gen_qcoreevent_types.QEvent): void =
  fQGraphicsLinearLayout_virtualbase_widgetEvent(self.h, e.h)

type QGraphicsLinearLayoutwidgetEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onwidgetEvent*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, slot: QGraphicsLinearLayoutwidgetEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLinearLayoutwidgetEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_widgetEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_widgetEvent(self: ptr cQGraphicsLinearLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_widgetEvent ".} =
  var nimfunc = cast[ptr QGraphicsLinearLayoutwidgetEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QGraphicsLinearLayoutisEmpty*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, ): bool =
  fQGraphicsLinearLayout_virtualbase_isEmpty(self.h)

type QGraphicsLinearLayoutisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout, slot: QGraphicsLinearLayoutisEmptyProc) =
  # TODO check subclass
  var tmp = new QGraphicsLinearLayoutisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLinearLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLinearLayout_isEmpty(self: ptr cQGraphicsLinearLayout, slot: int): bool {.exportc: "miqt_exec_callback_QGraphicsLinearLayout_isEmpty ".} =
  var nimfunc = cast[ptr QGraphicsLinearLayoutisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc delete*(self: gen_qgraphicslinearlayout_types.QGraphicsLinearLayout) =
  fcQGraphicsLinearLayout_delete(self.h)
