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
{.compile("gen_qgraphicslayout.cpp", cflags).}


import ./gen_qgraphicslayout_types
export gen_qgraphicslayout_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qgraphicslayoutitem
export
  gen_qcoreevent_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qgraphicslayoutitem

type cQGraphicsLayout*{.exportc: "QGraphicsLayout", incompleteStruct.} = object

proc fcQGraphicsLayout_new(): ptr cQGraphicsLayout {.importc: "QGraphicsLayout_new".}
proc fcQGraphicsLayout_new2(parent: pointer): ptr cQGraphicsLayout {.importc: "QGraphicsLayout_new2".}
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
proc fQGraphicsLayout_virtualbase_getContentsMargins(self: pointer, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void{.importc: "QGraphicsLayout_virtualbase_getContentsMargins".}
proc fcQGraphicsLayout_override_virtual_getContentsMargins(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_getContentsMargins".}
proc fQGraphicsLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QGraphicsLayout_virtualbase_invalidate".}
proc fcQGraphicsLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_invalidate".}
proc fQGraphicsLayout_virtualbase_updateGeometry(self: pointer, ): void{.importc: "QGraphicsLayout_virtualbase_updateGeometry".}
proc fcQGraphicsLayout_override_virtual_updateGeometry(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_updateGeometry".}
proc fQGraphicsLayout_virtualbase_widgetEvent(self: pointer, e: pointer): void{.importc: "QGraphicsLayout_virtualbase_widgetEvent".}
proc fcQGraphicsLayout_override_virtual_widgetEvent(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_widgetEvent".}
proc fcQGraphicsLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_count".}
proc fcQGraphicsLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_itemAt".}
proc fcQGraphicsLayout_override_virtual_removeAt(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_removeAt".}
proc fQGraphicsLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QGraphicsLayout_virtualbase_setGeometry".}
proc fcQGraphicsLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_setGeometry".}
proc fQGraphicsLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QGraphicsLayout_virtualbase_isEmpty".}
proc fcQGraphicsLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_isEmpty".}
proc fcQGraphicsLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGraphicsLayout_override_virtual_sizeHint".}
proc fcQGraphicsLayout_delete(self: pointer) {.importc: "QGraphicsLayout_delete".}


func init*(T: type gen_qgraphicslayout_types.QGraphicsLayout, h: ptr cQGraphicsLayout): gen_qgraphicslayout_types.QGraphicsLayout =
  T(h: h)
proc create*(T: type gen_qgraphicslayout_types.QGraphicsLayout, ): gen_qgraphicslayout_types.QGraphicsLayout =
  gen_qgraphicslayout_types.QGraphicsLayout.init(fcQGraphicsLayout_new())

proc create*(T: type gen_qgraphicslayout_types.QGraphicsLayout, parent: gen_qgraphicslayoutitem_types.QGraphicsLayoutItem): gen_qgraphicslayout_types.QGraphicsLayout =
  gen_qgraphicslayout_types.QGraphicsLayout.init(fcQGraphicsLayout_new2(parent.h))

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

proc QGraphicsLayoutgetContentsMargins*(self: gen_qgraphicslayout_types.QGraphicsLayout, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void =
  fQGraphicsLayout_virtualbase_getContentsMargins(self.h, left, top, right, bottom)

type QGraphicsLayoutgetContentsMarginsProc* = proc(left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void
proc ongetContentsMargins*(self: gen_qgraphicslayout_types.QGraphicsLayout, slot: QGraphicsLayoutgetContentsMarginsProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutgetContentsMarginsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_getContentsMargins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_getContentsMargins(self: ptr cQGraphicsLayout, slot: int, left: ptr float64, top: ptr float64, right: ptr float64, bottom: ptr float64): void {.exportc: "miqt_exec_callback_QGraphicsLayout_getContentsMargins ".} =
  var nimfunc = cast[ptr QGraphicsLayoutgetContentsMarginsProc](cast[pointer](slot))
  let slotval1 = left

  let slotval2 = top

  let slotval3 = right

  let slotval4 = bottom


  nimfunc[](slotval1, slotval2, slotval3, slotval4)
proc QGraphicsLayoutinvalidate*(self: gen_qgraphicslayout_types.QGraphicsLayout, ): void =
  fQGraphicsLayout_virtualbase_invalidate(self.h)

type QGraphicsLayoutinvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qgraphicslayout_types.QGraphicsLayout, slot: QGraphicsLayoutinvalidateProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutinvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_invalidate(self: ptr cQGraphicsLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsLayout_invalidate ".} =
  var nimfunc = cast[ptr QGraphicsLayoutinvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsLayoutupdateGeometry*(self: gen_qgraphicslayout_types.QGraphicsLayout, ): void =
  fQGraphicsLayout_virtualbase_updateGeometry(self.h)

type QGraphicsLayoutupdateGeometryProc* = proc(): void
proc onupdateGeometry*(self: gen_qgraphicslayout_types.QGraphicsLayout, slot: QGraphicsLayoutupdateGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutupdateGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_updateGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_updateGeometry(self: ptr cQGraphicsLayout, slot: int): void {.exportc: "miqt_exec_callback_QGraphicsLayout_updateGeometry ".} =
  var nimfunc = cast[ptr QGraphicsLayoutupdateGeometryProc](cast[pointer](slot))

  nimfunc[]()
proc QGraphicsLayoutwidgetEvent*(self: gen_qgraphicslayout_types.QGraphicsLayout, e: gen_qcoreevent_types.QEvent): void =
  fQGraphicsLayout_virtualbase_widgetEvent(self.h, e.h)

type QGraphicsLayoutwidgetEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onwidgetEvent*(self: gen_qgraphicslayout_types.QGraphicsLayout, slot: QGraphicsLayoutwidgetEventProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutwidgetEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_widgetEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_widgetEvent(self: ptr cQGraphicsLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLayout_widgetEvent ".} =
  var nimfunc = cast[ptr QGraphicsLayoutwidgetEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
type QGraphicsLayoutcountProc* = proc(): cint
proc oncount*(self: gen_qgraphicslayout_types.QGraphicsLayout, slot: QGraphicsLayoutcountProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutcountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_count(self: ptr cQGraphicsLayout, slot: int): cint {.exportc: "miqt_exec_callback_QGraphicsLayout_count ".} =
  var nimfunc = cast[ptr QGraphicsLayoutcountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QGraphicsLayoutitemAtProc* = proc(i: cint): gen_qgraphicslayoutitem_types.QGraphicsLayoutItem
proc onitemAt*(self: gen_qgraphicslayout_types.QGraphicsLayout, slot: QGraphicsLayoutitemAtProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutitemAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_itemAt(self: ptr cQGraphicsLayout, slot: int, i: cint): pointer {.exportc: "miqt_exec_callback_QGraphicsLayout_itemAt ".} =
  var nimfunc = cast[ptr QGraphicsLayoutitemAtProc](cast[pointer](slot))
  let slotval1 = i


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QGraphicsLayoutremoveAtProc* = proc(index: cint): void
proc onremoveAt*(self: gen_qgraphicslayout_types.QGraphicsLayout, slot: QGraphicsLayoutremoveAtProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutremoveAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_removeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_removeAt(self: ptr cQGraphicsLayout, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QGraphicsLayout_removeAt ".} =
  var nimfunc = cast[ptr QGraphicsLayoutremoveAtProc](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)
proc QGraphicsLayoutsetGeometry*(self: gen_qgraphicslayout_types.QGraphicsLayout, rect: gen_qrect_types.QRectF): void =
  fQGraphicsLayout_virtualbase_setGeometry(self.h, rect.h)

type QGraphicsLayoutsetGeometryProc* = proc(rect: gen_qrect_types.QRectF): void
proc onsetGeometry*(self: gen_qgraphicslayout_types.QGraphicsLayout, slot: QGraphicsLayoutsetGeometryProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_setGeometry(self: ptr cQGraphicsLayout, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QGraphicsLayout_setGeometry ".} =
  var nimfunc = cast[ptr QGraphicsLayoutsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRectF(h: rect)


  nimfunc[](slotval1)
proc QGraphicsLayoutisEmpty*(self: gen_qgraphicslayout_types.QGraphicsLayout, ): bool =
  fQGraphicsLayout_virtualbase_isEmpty(self.h)

type QGraphicsLayoutisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qgraphicslayout_types.QGraphicsLayout, slot: QGraphicsLayoutisEmptyProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_isEmpty(self: ptr cQGraphicsLayout, slot: int): bool {.exportc: "miqt_exec_callback_QGraphicsLayout_isEmpty ".} =
  var nimfunc = cast[ptr QGraphicsLayoutisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QGraphicsLayoutsizeHintProc* = proc(which: cint, constraint: gen_qsize_types.QSizeF): gen_qsize_types.QSizeF
proc onsizeHint*(self: gen_qgraphicslayout_types.QGraphicsLayout, slot: QGraphicsLayoutsizeHintProc) =
  # TODO check subclass
  var tmp = new QGraphicsLayoutsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsLayout_sizeHint(self: ptr cQGraphicsLayout, slot: int, which: cint, constraint: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsLayout_sizeHint ".} =
  var nimfunc = cast[ptr QGraphicsLayoutsizeHintProc](cast[pointer](slot))
  let slotval1 = cint(which)

  let slotval2 = gen_qsize_types.QSizeF(h: constraint)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: gen_qgraphicslayout_types.QGraphicsLayout) =
  fcQGraphicsLayout_delete(self.h)
