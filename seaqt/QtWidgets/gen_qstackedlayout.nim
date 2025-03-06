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
{.compile("gen_qstackedlayout.cpp", cflags).}


type QStackedLayoutStackingModeEnum* = distinct cint
template StackOne*(_: type QStackedLayoutStackingModeEnum): untyped = 0
template StackAll*(_: type QStackedLayoutStackingModeEnum): untyped = 1


import ./gen_qstackedlayout_types
export gen_qstackedlayout_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qlayout,
  ./gen_qlayoutitem_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qlayout,
  gen_qlayoutitem_types,
  gen_qwidget_types

type cQStackedLayout*{.exportc: "QStackedLayout", incompleteStruct.} = object

proc fcQStackedLayout_new(parent: pointer): ptr cQStackedLayout {.importc: "QStackedLayout_new".}
proc fcQStackedLayout_new2(): ptr cQStackedLayout {.importc: "QStackedLayout_new2".}
proc fcQStackedLayout_new3(parentLayout: pointer): ptr cQStackedLayout {.importc: "QStackedLayout_new3".}
proc fcQStackedLayout_metaObject(self: pointer, ): pointer {.importc: "QStackedLayout_metaObject".}
proc fcQStackedLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QStackedLayout_metacast".}
proc fcQStackedLayout_tr(s: cstring): struct_miqt_string {.importc: "QStackedLayout_tr".}
proc fcQStackedLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QStackedLayout_trUtf8".}
proc fcQStackedLayout_addWidget(self: pointer, w: pointer): cint {.importc: "QStackedLayout_addWidget".}
proc fcQStackedLayout_insertWidget(self: pointer, index: cint, w: pointer): cint {.importc: "QStackedLayout_insertWidget".}
proc fcQStackedLayout_currentWidget(self: pointer, ): pointer {.importc: "QStackedLayout_currentWidget".}
proc fcQStackedLayout_currentIndex(self: pointer, ): cint {.importc: "QStackedLayout_currentIndex".}
proc fcQStackedLayout_widget(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_widget".}
proc fcQStackedLayout_count(self: pointer, ): cint {.importc: "QStackedLayout_count".}
proc fcQStackedLayout_stackingMode(self: pointer, ): cint {.importc: "QStackedLayout_stackingMode".}
proc fcQStackedLayout_setStackingMode(self: pointer, stackingMode: cint): void {.importc: "QStackedLayout_setStackingMode".}
proc fcQStackedLayout_addItem(self: pointer, item: pointer): void {.importc: "QStackedLayout_addItem".}
proc fcQStackedLayout_sizeHint(self: pointer, ): pointer {.importc: "QStackedLayout_sizeHint".}
proc fcQStackedLayout_minimumSize(self: pointer, ): pointer {.importc: "QStackedLayout_minimumSize".}
proc fcQStackedLayout_itemAt(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_itemAt".}
proc fcQStackedLayout_takeAt(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_takeAt".}
proc fcQStackedLayout_setGeometry(self: pointer, rect: pointer): void {.importc: "QStackedLayout_setGeometry".}
proc fcQStackedLayout_hasHeightForWidth(self: pointer, ): bool {.importc: "QStackedLayout_hasHeightForWidth".}
proc fcQStackedLayout_heightForWidth(self: pointer, width: cint): cint {.importc: "QStackedLayout_heightForWidth".}
proc fcQStackedLayout_widgetRemoved(self: pointer, index: cint): void {.importc: "QStackedLayout_widgetRemoved".}
proc fcQStackedLayout_connect_widgetRemoved(self: pointer, slot: int) {.importc: "QStackedLayout_connect_widgetRemoved".}
proc fcQStackedLayout_currentChanged(self: pointer, index: cint): void {.importc: "QStackedLayout_currentChanged".}
proc fcQStackedLayout_connect_currentChanged(self: pointer, slot: int) {.importc: "QStackedLayout_connect_currentChanged".}
proc fcQStackedLayout_setCurrentIndex(self: pointer, index: cint): void {.importc: "QStackedLayout_setCurrentIndex".}
proc fcQStackedLayout_setCurrentWidget(self: pointer, w: pointer): void {.importc: "QStackedLayout_setCurrentWidget".}
proc fcQStackedLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStackedLayout_tr2".}
proc fcQStackedLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStackedLayout_tr3".}
proc fcQStackedLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStackedLayout_trUtf82".}
proc fcQStackedLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStackedLayout_trUtf83".}
proc fQStackedLayout_virtualbase_count(self: pointer, ): cint{.importc: "QStackedLayout_virtualbase_count".}
proc fcQStackedLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_count".}
proc fQStackedLayout_virtualbase_addItem(self: pointer, item: pointer): void{.importc: "QStackedLayout_virtualbase_addItem".}
proc fcQStackedLayout_override_virtual_addItem(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_addItem".}
proc fQStackedLayout_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_sizeHint".}
proc fcQStackedLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_sizeHint".}
proc fQStackedLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_minimumSize".}
proc fcQStackedLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_minimumSize".}
proc fQStackedLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer{.importc: "QStackedLayout_virtualbase_itemAt".}
proc fcQStackedLayout_override_virtual_itemAt(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_itemAt".}
proc fQStackedLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer{.importc: "QStackedLayout_virtualbase_takeAt".}
proc fcQStackedLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_takeAt".}
proc fQStackedLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QStackedLayout_virtualbase_setGeometry".}
proc fcQStackedLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_setGeometry".}
proc fQStackedLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QStackedLayout_virtualbase_hasHeightForWidth".}
proc fcQStackedLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_hasHeightForWidth".}
proc fQStackedLayout_virtualbase_heightForWidth(self: pointer, width: cint): cint{.importc: "QStackedLayout_virtualbase_heightForWidth".}
proc fcQStackedLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_heightForWidth".}
proc fQStackedLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QStackedLayout_virtualbase_invalidate".}
proc fcQStackedLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_invalidate".}
proc fQStackedLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_geometry".}
proc fcQStackedLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_geometry".}
proc fQStackedLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QStackedLayout_virtualbase_expandingDirections".}
proc fcQStackedLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_expandingDirections".}
proc fQStackedLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_maximumSize".}
proc fcQStackedLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_maximumSize".}
proc fQStackedLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QStackedLayout_virtualbase_indexOf".}
proc fcQStackedLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_indexOf".}
proc fQStackedLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QStackedLayout_virtualbase_isEmpty".}
proc fcQStackedLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_isEmpty".}
proc fQStackedLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QStackedLayout_virtualbase_controlTypes".}
proc fcQStackedLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_controlTypes".}
proc fQStackedLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_layout".}
proc fcQStackedLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_layout".}
proc fQStackedLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QStackedLayout_virtualbase_childEvent".}
proc fcQStackedLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_childEvent".}
proc fQStackedLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QStackedLayout_virtualbase_event".}
proc fcQStackedLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_event".}
proc fQStackedLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStackedLayout_virtualbase_eventFilter".}
proc fcQStackedLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_eventFilter".}
proc fQStackedLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStackedLayout_virtualbase_timerEvent".}
proc fcQStackedLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_timerEvent".}
proc fQStackedLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStackedLayout_virtualbase_customEvent".}
proc fcQStackedLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_customEvent".}
proc fQStackedLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStackedLayout_virtualbase_connectNotify".}
proc fcQStackedLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_connectNotify".}
proc fQStackedLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStackedLayout_virtualbase_disconnectNotify".}
proc fcQStackedLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_disconnectNotify".}
proc fQStackedLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QStackedLayout_virtualbase_minimumHeightForWidth".}
proc fcQStackedLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_minimumHeightForWidth".}
proc fQStackedLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_widget".}
proc fcQStackedLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_widget".}
proc fQStackedLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QStackedLayout_virtualbase_spacerItem".}
proc fcQStackedLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QStackedLayout_override_virtual_spacerItem".}
proc fcQStackedLayout_delete(self: pointer) {.importc: "QStackedLayout_delete".}


func init*(T: type gen_qstackedlayout_types.QStackedLayout, h: ptr cQStackedLayout): gen_qstackedlayout_types.QStackedLayout =
  T(h: h)
proc create*(T: type gen_qstackedlayout_types.QStackedLayout, parent: gen_qwidget_types.QWidget): gen_qstackedlayout_types.QStackedLayout =
  gen_qstackedlayout_types.QStackedLayout.init(fcQStackedLayout_new(parent.h))

proc create*(T: type gen_qstackedlayout_types.QStackedLayout, ): gen_qstackedlayout_types.QStackedLayout =
  gen_qstackedlayout_types.QStackedLayout.init(fcQStackedLayout_new2())

proc create*(T: type gen_qstackedlayout_types.QStackedLayout, parentLayout: gen_qlayout_types.QLayout): gen_qstackedlayout_types.QStackedLayout =
  gen_qstackedlayout_types.QStackedLayout.init(fcQStackedLayout_new3(parentLayout.h))

proc metaObject*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedLayout_metaObject(self.h))

proc metacast*(self: gen_qstackedlayout_types.QStackedLayout, param1: cstring): pointer =
  fcQStackedLayout_metacast(self.h, param1)

proc tr*(_: type gen_qstackedlayout_types.QStackedLayout, s: cstring): string =
  let v_ms = fcQStackedLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstackedlayout_types.QStackedLayout, s: cstring): string =
  let v_ms = fcQStackedLayout_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qstackedlayout_types.QStackedLayout, w: gen_qwidget_types.QWidget): cint =
  fcQStackedLayout_addWidget(self.h, w.h)

proc insertWidget*(self: gen_qstackedlayout_types.QStackedLayout, index: cint, w: gen_qwidget_types.QWidget): cint =
  fcQStackedLayout_insertWidget(self.h, index, w.h)

proc currentWidget*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedLayout_currentWidget(self.h))

proc currentIndex*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  fcQStackedLayout_currentIndex(self.h)

proc widget*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedLayout_widget(self.h, param1))

proc count*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  fcQStackedLayout_count(self.h)

proc stackingMode*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  cint(fcQStackedLayout_stackingMode(self.h))

proc setStackingMode*(self: gen_qstackedlayout_types.QStackedLayout, stackingMode: cint): void =
  fcQStackedLayout_setStackingMode(self.h, cint(stackingMode))

proc addItem*(self: gen_qstackedlayout_types.QStackedLayout, item: gen_qlayoutitem_types.QLayoutItem): void =
  fcQStackedLayout_addItem(self.h, item.h)

proc sizeHint*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedLayout_sizeHint(self.h))

proc minimumSize*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedLayout_minimumSize(self.h))

proc itemAt*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQStackedLayout_itemAt(self.h, param1))

proc takeAt*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQStackedLayout_takeAt(self.h, param1))

proc setGeometry*(self: gen_qstackedlayout_types.QStackedLayout, rect: gen_qrect_types.QRect): void =
  fcQStackedLayout_setGeometry(self.h, rect.h)

proc hasHeightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, ): bool =
  fcQStackedLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, width: cint): cint =
  fcQStackedLayout_heightForWidth(self.h, width)

proc widgetRemoved*(self: gen_qstackedlayout_types.QStackedLayout, index: cint): void =
  fcQStackedLayout_widgetRemoved(self.h, index)

type QStackedLayoutwidgetRemovedSlot* = proc(index: cint)
proc miqt_exec_callback_QStackedLayout_widgetRemoved(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QStackedLayoutwidgetRemovedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc onwidgetRemoved*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutwidgetRemovedSlot) =
  var tmp = new QStackedLayoutwidgetRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_connect_widgetRemoved(self.h, cast[int](addr tmp[]))

proc currentChanged*(self: gen_qstackedlayout_types.QStackedLayout, index: cint): void =
  fcQStackedLayout_currentChanged(self.h, index)

type QStackedLayoutcurrentChangedSlot* = proc(index: cint)
proc miqt_exec_callback_QStackedLayout_currentChanged(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QStackedLayoutcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc oncurrentChanged*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutcurrentChangedSlot) =
  var tmp = new QStackedLayoutcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_connect_currentChanged(self.h, cast[int](addr tmp[]))

proc setCurrentIndex*(self: gen_qstackedlayout_types.QStackedLayout, index: cint): void =
  fcQStackedLayout_setCurrentIndex(self.h, index)

proc setCurrentWidget*(self: gen_qstackedlayout_types.QStackedLayout, w: gen_qwidget_types.QWidget): void =
  fcQStackedLayout_setCurrentWidget(self.h, w.h)

proc tr*(_: type gen_qstackedlayout_types.QStackedLayout, s: cstring, c: cstring): string =
  let v_ms = fcQStackedLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstackedlayout_types.QStackedLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStackedLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstackedlayout_types.QStackedLayout, s: cstring, c: cstring): string =
  let v_ms = fcQStackedLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstackedlayout_types.QStackedLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStackedLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QStackedLayoutcount*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  fQStackedLayout_virtualbase_count(self.h)

type QStackedLayoutcountProc* = proc(): cint
proc oncount*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutcountProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutcountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_count(self: ptr cQStackedLayout, slot: int): cint {.exportc: "miqt_exec_callback_QStackedLayout_count ".} =
  var nimfunc = cast[ptr QStackedLayoutcountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QStackedLayoutaddItem*(self: gen_qstackedlayout_types.QStackedLayout, item: gen_qlayoutitem_types.QLayoutItem): void =
  fQStackedLayout_virtualbase_addItem(self.h, item.h)

type QStackedLayoutaddItemProc* = proc(item: gen_qlayoutitem_types.QLayoutItem): void
proc onaddItem*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutaddItemProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutaddItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_addItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_addItem(self: ptr cQStackedLayout, slot: int, item: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_addItem ".} =
  var nimfunc = cast[ptr QStackedLayoutaddItemProc](cast[pointer](slot))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: item)


  nimfunc[](slotval1)
proc QStackedLayoutsizeHint*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQStackedLayout_virtualbase_sizeHint(self.h))

type QStackedLayoutsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutsizeHintProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_sizeHint(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_sizeHint ".} =
  var nimfunc = cast[ptr QStackedLayoutsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStackedLayoutminimumSize*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQStackedLayout_virtualbase_minimumSize(self.h))

type QStackedLayoutminimumSizeProc* = proc(): gen_qsize_types.QSize
proc onminimumSize*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutminimumSizeProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutminimumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_minimumSize(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_minimumSize ".} =
  var nimfunc = cast[ptr QStackedLayoutminimumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStackedLayoutitemAt*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQStackedLayout_virtualbase_itemAt(self.h, param1))

type QStackedLayoutitemAtProc* = proc(param1: cint): gen_qlayoutitem_types.QLayoutItem
proc onitemAt*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutitemAtProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutitemAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_itemAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_itemAt(self: ptr cQStackedLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QStackedLayout_itemAt ".} =
  var nimfunc = cast[ptr QStackedLayoutitemAtProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStackedLayouttakeAt*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQStackedLayout_virtualbase_takeAt(self.h, param1))

type QStackedLayouttakeAtProc* = proc(param1: cint): gen_qlayoutitem_types.QLayoutItem
proc ontakeAt*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayouttakeAtProc) =
  # TODO check subclass
  var tmp = new QStackedLayouttakeAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_takeAt(self: ptr cQStackedLayout, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QStackedLayout_takeAt ".} =
  var nimfunc = cast[ptr QStackedLayouttakeAtProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStackedLayoutsetGeometry*(self: gen_qstackedlayout_types.QStackedLayout, rect: gen_qrect_types.QRect): void =
  fQStackedLayout_virtualbase_setGeometry(self.h, rect.h)

type QStackedLayoutsetGeometryProc* = proc(rect: gen_qrect_types.QRect): void
proc onsetGeometry*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutsetGeometryProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_setGeometry(self: ptr cQStackedLayout, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_setGeometry ".} =
  var nimfunc = cast[ptr QStackedLayoutsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)


  nimfunc[](slotval1)
proc QStackedLayouthasHeightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, ): bool =
  fQStackedLayout_virtualbase_hasHeightForWidth(self.h)

type QStackedLayouthasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayouthasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QStackedLayouthasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_hasHeightForWidth(self: ptr cQStackedLayout, slot: int): bool {.exportc: "miqt_exec_callback_QStackedLayout_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QStackedLayouthasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QStackedLayoutheightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, width: cint): cint =
  fQStackedLayout_virtualbase_heightForWidth(self.h, width)

type QStackedLayoutheightForWidthProc* = proc(width: cint): cint
proc onheightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutheightForWidthProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_heightForWidth(self: ptr cQStackedLayout, slot: int, width: cint): cint {.exportc: "miqt_exec_callback_QStackedLayout_heightForWidth ".} =
  var nimfunc = cast[ptr QStackedLayoutheightForWidthProc](cast[pointer](slot))
  let slotval1 = width


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStackedLayoutinvalidate*(self: gen_qstackedlayout_types.QStackedLayout, ): void =
  fQStackedLayout_virtualbase_invalidate(self.h)

type QStackedLayoutinvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutinvalidateProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutinvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_invalidate(self: ptr cQStackedLayout, slot: int): void {.exportc: "miqt_exec_callback_QStackedLayout_invalidate ".} =
  var nimfunc = cast[ptr QStackedLayoutinvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QStackedLayoutgeometry*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQStackedLayout_virtualbase_geometry(self.h))

type QStackedLayoutgeometryProc* = proc(): gen_qrect_types.QRect
proc ongeometry*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutgeometryProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutgeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_geometry(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_geometry ".} =
  var nimfunc = cast[ptr QStackedLayoutgeometryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStackedLayoutexpandingDirections*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  cint(fQStackedLayout_virtualbase_expandingDirections(self.h))

type QStackedLayoutexpandingDirectionsProc* = proc(): cint
proc onexpandingDirections*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutexpandingDirectionsProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutexpandingDirectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_expandingDirections(self: ptr cQStackedLayout, slot: int): cint {.exportc: "miqt_exec_callback_QStackedLayout_expandingDirections ".} =
  var nimfunc = cast[ptr QStackedLayoutexpandingDirectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QStackedLayoutmaximumSize*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQStackedLayout_virtualbase_maximumSize(self.h))

type QStackedLayoutmaximumSizeProc* = proc(): gen_qsize_types.QSize
proc onmaximumSize*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutmaximumSizeProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutmaximumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_maximumSize(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_maximumSize ".} =
  var nimfunc = cast[ptr QStackedLayoutmaximumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStackedLayoutindexOf*(self: gen_qstackedlayout_types.QStackedLayout, param1: gen_qwidget_types.QWidget): cint =
  fQStackedLayout_virtualbase_indexOf(self.h, param1.h)

type QStackedLayoutindexOfProc* = proc(param1: gen_qwidget_types.QWidget): cint
proc onindexOf*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutindexOfProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutindexOfProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_indexOf(self: ptr cQStackedLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QStackedLayout_indexOf ".} =
  var nimfunc = cast[ptr QStackedLayoutindexOfProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStackedLayoutisEmpty*(self: gen_qstackedlayout_types.QStackedLayout, ): bool =
  fQStackedLayout_virtualbase_isEmpty(self.h)

type QStackedLayoutisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutisEmptyProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_isEmpty(self: ptr cQStackedLayout, slot: int): bool {.exportc: "miqt_exec_callback_QStackedLayout_isEmpty ".} =
  var nimfunc = cast[ptr QStackedLayoutisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QStackedLayoutcontrolTypes*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  cint(fQStackedLayout_virtualbase_controlTypes(self.h))

type QStackedLayoutcontrolTypesProc* = proc(): cint
proc oncontrolTypes*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutcontrolTypesProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutcontrolTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_controlTypes(self: ptr cQStackedLayout, slot: int): cint {.exportc: "miqt_exec_callback_QStackedLayout_controlTypes ".} =
  var nimfunc = cast[ptr QStackedLayoutcontrolTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QStackedLayoutlayout*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fQStackedLayout_virtualbase_layout(self.h))

type QStackedLayoutlayoutProc* = proc(): gen_qlayout_types.QLayout
proc onlayout*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutlayoutProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutlayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_layout(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_layout ".} =
  var nimfunc = cast[ptr QStackedLayoutlayoutProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStackedLayoutchildEvent*(self: gen_qstackedlayout_types.QStackedLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fQStackedLayout_virtualbase_childEvent(self.h, e.h)

type QStackedLayoutchildEventProc* = proc(e: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutchildEventProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_childEvent(self: ptr cQStackedLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_childEvent ".} =
  var nimfunc = cast[ptr QStackedLayoutchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e)


  nimfunc[](slotval1)
proc QStackedLayoutevent*(self: gen_qstackedlayout_types.QStackedLayout, event: gen_qcoreevent_types.QEvent): bool =
  fQStackedLayout_virtualbase_event(self.h, event.h)

type QStackedLayouteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayouteventProc) =
  # TODO check subclass
  var tmp = new QStackedLayouteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_event(self: ptr cQStackedLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QStackedLayout_event ".} =
  var nimfunc = cast[ptr QStackedLayouteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStackedLayouteventFilter*(self: gen_qstackedlayout_types.QStackedLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQStackedLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStackedLayouteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayouteventFilterProc) =
  # TODO check subclass
  var tmp = new QStackedLayouteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_eventFilter(self: ptr cQStackedLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStackedLayout_eventFilter ".} =
  var nimfunc = cast[ptr QStackedLayouteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QStackedLayouttimerEvent*(self: gen_qstackedlayout_types.QStackedLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fQStackedLayout_virtualbase_timerEvent(self.h, event.h)

type QStackedLayouttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayouttimerEventProc) =
  # TODO check subclass
  var tmp = new QStackedLayouttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_timerEvent(self: ptr cQStackedLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_timerEvent ".} =
  var nimfunc = cast[ptr QStackedLayouttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QStackedLayoutcustomEvent*(self: gen_qstackedlayout_types.QStackedLayout, event: gen_qcoreevent_types.QEvent): void =
  fQStackedLayout_virtualbase_customEvent(self.h, event.h)

type QStackedLayoutcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutcustomEventProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_customEvent(self: ptr cQStackedLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_customEvent ".} =
  var nimfunc = cast[ptr QStackedLayoutcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStackedLayoutconnectNotify*(self: gen_qstackedlayout_types.QStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStackedLayout_virtualbase_connectNotify(self.h, signal.h)

type QStackedLayoutconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_connectNotify(self: ptr cQStackedLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_connectNotify ".} =
  var nimfunc = cast[ptr QStackedLayoutconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QStackedLayoutdisconnectNotify*(self: gen_qstackedlayout_types.QStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStackedLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QStackedLayoutdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_disconnectNotify(self: ptr cQStackedLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStackedLayout_disconnectNotify ".} =
  var nimfunc = cast[ptr QStackedLayoutdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QStackedLayoutminimumHeightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): cint =
  fQStackedLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QStackedLayoutminimumHeightForWidthProc* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutminimumHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutminimumHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_minimumHeightForWidth(self: ptr cQStackedLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QStackedLayout_minimumHeightForWidth ".} =
  var nimfunc = cast[ptr QStackedLayoutminimumHeightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStackedLayoutwidget*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQStackedLayout_virtualbase_widget(self.h))

type QStackedLayoutwidgetProc* = proc(): gen_qwidget_types.QWidget
proc onwidget*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutwidgetProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutwidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_widget(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_widget ".} =
  var nimfunc = cast[ptr QStackedLayoutwidgetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStackedLayoutspacerItem*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fQStackedLayout_virtualbase_spacerItem(self.h))

type QStackedLayoutspacerItemProc* = proc(): gen_qlayoutitem_types.QSpacerItem
proc onspacerItem*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutspacerItemProc) =
  # TODO check subclass
  var tmp = new QStackedLayoutspacerItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStackedLayout_spacerItem(self: ptr cQStackedLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QStackedLayout_spacerItem ".} =
  var nimfunc = cast[ptr QStackedLayoutspacerItemProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qstackedlayout_types.QStackedLayout) =
  fcQStackedLayout_delete(self.h)
