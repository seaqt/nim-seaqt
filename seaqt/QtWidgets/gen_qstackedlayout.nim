import ./qtwidgets_pkg

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


{.compile("gen_qstackedlayout.cpp", QtWidgetsCFlags).}


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

proc fcQStackedLayout_metaObject(self: pointer): pointer {.importc: "QStackedLayout_metaObject".}
proc fcQStackedLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QStackedLayout_metacast".}
proc fcQStackedLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStackedLayout_metacall".}
proc fcQStackedLayout_tr(s: cstring): struct_miqt_string {.importc: "QStackedLayout_tr".}
proc fcQStackedLayout_addWidget(self: pointer, w: pointer): cint {.importc: "QStackedLayout_addWidget".}
proc fcQStackedLayout_insertWidget(self: pointer, index: cint, w: pointer): cint {.importc: "QStackedLayout_insertWidget".}
proc fcQStackedLayout_currentWidget(self: pointer): pointer {.importc: "QStackedLayout_currentWidget".}
proc fcQStackedLayout_currentIndex(self: pointer): cint {.importc: "QStackedLayout_currentIndex".}
proc fcQStackedLayout_widget(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_widget".}
proc fcQStackedLayout_count(self: pointer): cint {.importc: "QStackedLayout_count".}
proc fcQStackedLayout_stackingMode(self: pointer): cint {.importc: "QStackedLayout_stackingMode".}
proc fcQStackedLayout_setStackingMode(self: pointer, stackingMode: cint): void {.importc: "QStackedLayout_setStackingMode".}
proc fcQStackedLayout_addItem(self: pointer, item: pointer): void {.importc: "QStackedLayout_addItem".}
proc fcQStackedLayout_sizeHint(self: pointer): pointer {.importc: "QStackedLayout_sizeHint".}
proc fcQStackedLayout_minimumSize(self: pointer): pointer {.importc: "QStackedLayout_minimumSize".}
proc fcQStackedLayout_itemAt(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_itemAt".}
proc fcQStackedLayout_takeAt(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_takeAt".}
proc fcQStackedLayout_setGeometry(self: pointer, rect: pointer): void {.importc: "QStackedLayout_setGeometry".}
proc fcQStackedLayout_hasHeightForWidth(self: pointer): bool {.importc: "QStackedLayout_hasHeightForWidth".}
proc fcQStackedLayout_heightForWidth(self: pointer, width: cint): cint {.importc: "QStackedLayout_heightForWidth".}
proc fcQStackedLayout_widgetRemoved(self: pointer, index: cint): void {.importc: "QStackedLayout_widgetRemoved".}
proc fcQStackedLayout_connect_widgetRemoved(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QStackedLayout_connect_widgetRemoved".}
proc fcQStackedLayout_currentChanged(self: pointer, index: cint): void {.importc: "QStackedLayout_currentChanged".}
proc fcQStackedLayout_connect_currentChanged(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QStackedLayout_connect_currentChanged".}
proc fcQStackedLayout_setCurrentIndex(self: pointer, index: cint): void {.importc: "QStackedLayout_setCurrentIndex".}
proc fcQStackedLayout_setCurrentWidget(self: pointer, w: pointer): void {.importc: "QStackedLayout_setCurrentWidget".}
proc fcQStackedLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStackedLayout_tr2".}
proc fcQStackedLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStackedLayout_tr3".}
proc fcQStackedLayout_vtbl(self: pointer): pointer {.importc: "QStackedLayout_vtbl".}
proc fcQStackedLayout_vdata(self: pointer): pointer {.importc: "QStackedLayout_vdata".}
type cQStackedLayoutVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  count*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  addItem*: proc(self: pointer, item: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  takeAt*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, width: cint): cint {.cdecl, raises: [], gcsafe.}
  spacing*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSpacing*: proc(self: pointer, spacing: cint): void {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(self: pointer, param1: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  replaceWidget*: proc(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQStackedLayout_virtualbase_metaObject(self: pointer): pointer {.importc: "QStackedLayout_virtualbase_metaObject".}
proc fcQStackedLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QStackedLayout_virtualbase_metacast".}
proc fcQStackedLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStackedLayout_virtualbase_metacall".}
proc fcQStackedLayout_virtualbase_count(self: pointer): cint {.importc: "QStackedLayout_virtualbase_count".}
proc fcQStackedLayout_virtualbase_addItem(self: pointer, item: pointer): void {.importc: "QStackedLayout_virtualbase_addItem".}
proc fcQStackedLayout_virtualbase_sizeHint(self: pointer): pointer {.importc: "QStackedLayout_virtualbase_sizeHint".}
proc fcQStackedLayout_virtualbase_minimumSize(self: pointer): pointer {.importc: "QStackedLayout_virtualbase_minimumSize".}
proc fcQStackedLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_virtualbase_itemAt".}
proc fcQStackedLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_virtualbase_takeAt".}
proc fcQStackedLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QStackedLayout_virtualbase_setGeometry".}
proc fcQStackedLayout_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QStackedLayout_virtualbase_hasHeightForWidth".}
proc fcQStackedLayout_virtualbase_heightForWidth(self: pointer, width: cint): cint {.importc: "QStackedLayout_virtualbase_heightForWidth".}
proc fcQStackedLayout_virtualbase_spacing(self: pointer): cint {.importc: "QStackedLayout_virtualbase_spacing".}
proc fcQStackedLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void {.importc: "QStackedLayout_virtualbase_setSpacing".}
proc fcQStackedLayout_virtualbase_invalidate(self: pointer): void {.importc: "QStackedLayout_virtualbase_invalidate".}
proc fcQStackedLayout_virtualbase_geometry(self: pointer): pointer {.importc: "QStackedLayout_virtualbase_geometry".}
proc fcQStackedLayout_virtualbase_expandingDirections(self: pointer): cint {.importc: "QStackedLayout_virtualbase_expandingDirections".}
proc fcQStackedLayout_virtualbase_maximumSize(self: pointer): pointer {.importc: "QStackedLayout_virtualbase_maximumSize".}
proc fcQStackedLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint {.importc: "QStackedLayout_virtualbase_indexOf".}
proc fcQStackedLayout_virtualbase_isEmpty(self: pointer): bool {.importc: "QStackedLayout_virtualbase_isEmpty".}
proc fcQStackedLayout_virtualbase_controlTypes(self: pointer): cint {.importc: "QStackedLayout_virtualbase_controlTypes".}
proc fcQStackedLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.importc: "QStackedLayout_virtualbase_replaceWidget".}
proc fcQStackedLayout_virtualbase_layout(self: pointer): pointer {.importc: "QStackedLayout_virtualbase_layout".}
proc fcQStackedLayout_virtualbase_childEvent(self: pointer, e: pointer): void {.importc: "QStackedLayout_virtualbase_childEvent".}
proc fcQStackedLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QStackedLayout_virtualbase_event".}
proc fcQStackedLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStackedLayout_virtualbase_eventFilter".}
proc fcQStackedLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QStackedLayout_virtualbase_timerEvent".}
proc fcQStackedLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QStackedLayout_virtualbase_customEvent".}
proc fcQStackedLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QStackedLayout_virtualbase_connectNotify".}
proc fcQStackedLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QStackedLayout_virtualbase_disconnectNotify".}
proc fcQStackedLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QStackedLayout_virtualbase_minimumHeightForWidth".}
proc fcQStackedLayout_virtualbase_widget(self: pointer): pointer {.importc: "QStackedLayout_virtualbase_widget".}
proc fcQStackedLayout_virtualbase_spacerItem(self: pointer): pointer {.importc: "QStackedLayout_virtualbase_spacerItem".}
proc fcQStackedLayout_protectedbase_widgetEvent(self: pointer, param1: pointer): void {.importc: "QStackedLayout_protectedbase_widgetEvent".}
proc fcQStackedLayout_protectedbase_addChildLayout(self: pointer, l: pointer): void {.importc: "QStackedLayout_protectedbase_addChildLayout".}
proc fcQStackedLayout_protectedbase_addChildWidget(self: pointer, w: pointer): void {.importc: "QStackedLayout_protectedbase_addChildWidget".}
proc fcQStackedLayout_protectedbase_adoptLayout(self: pointer, layout: pointer): bool {.importc: "QStackedLayout_protectedbase_adoptLayout".}
proc fcQStackedLayout_protectedbase_alignmentRect(self: pointer, param1: pointer): pointer {.importc: "QStackedLayout_protectedbase_alignmentRect".}
proc fcQStackedLayout_protectedbase_sender(self: pointer): pointer {.importc: "QStackedLayout_protectedbase_sender".}
proc fcQStackedLayout_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QStackedLayout_protectedbase_senderSignalIndex".}
proc fcQStackedLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QStackedLayout_protectedbase_receivers".}
proc fcQStackedLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QStackedLayout_protectedbase_isSignalConnected".}
proc fcQStackedLayout_new(vtbl, vdata: pointer, parent: pointer): ptr cQStackedLayout {.importc: "QStackedLayout_new".}
proc fcQStackedLayout_new2(vtbl, vdata: pointer): ptr cQStackedLayout {.importc: "QStackedLayout_new2".}
proc fcQStackedLayout_new3(vtbl, vdata: pointer, parentLayout: pointer): ptr cQStackedLayout {.importc: "QStackedLayout_new3".}
proc fcQStackedLayout_staticMetaObject(): pointer {.importc: "QStackedLayout_staticMetaObject".}

proc metaObject*(self: gen_qstackedlayout_types.QStackedLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qstackedlayout_types.QStackedLayout, param1: cstring): pointer =
  fcQStackedLayout_metacast(self.h, param1)

proc metacall*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQStackedLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstackedlayout_types.QStackedLayout, s: cstring): string =
  let v_ms = fcQStackedLayout_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qstackedlayout_types.QStackedLayout, w: gen_qwidget_types.QWidget): cint =
  fcQStackedLayout_addWidget(self.h, w.h)

proc insertWidget*(self: gen_qstackedlayout_types.QStackedLayout, index: cint, w: gen_qwidget_types.QWidget): cint =
  fcQStackedLayout_insertWidget(self.h, index, w.h)

proc currentWidget*(self: gen_qstackedlayout_types.QStackedLayout): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedLayout_currentWidget(self.h), owned: false)

proc currentIndex*(self: gen_qstackedlayout_types.QStackedLayout): cint =
  fcQStackedLayout_currentIndex(self.h)

proc widget*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedLayout_widget(self.h, param1), owned: false)

proc count*(self: gen_qstackedlayout_types.QStackedLayout): cint =
  fcQStackedLayout_count(self.h)

proc stackingMode*(self: gen_qstackedlayout_types.QStackedLayout): cint =
  cint(fcQStackedLayout_stackingMode(self.h))

proc setStackingMode*(self: gen_qstackedlayout_types.QStackedLayout, stackingMode: cint): void =
  fcQStackedLayout_setStackingMode(self.h, cint(stackingMode))

proc addItem*(self: gen_qstackedlayout_types.QStackedLayout, item: gen_qlayoutitem_types.QLayoutItem): void =
  fcQStackedLayout_addItem(self.h, item.h)

proc sizeHint*(self: gen_qstackedlayout_types.QStackedLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedLayout_sizeHint(self.h), owned: true)

proc minimumSize*(self: gen_qstackedlayout_types.QStackedLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedLayout_minimumSize(self.h), owned: true)

proc itemAt*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQStackedLayout_itemAt(self.h, param1), owned: false)

proc takeAt*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQStackedLayout_takeAt(self.h, param1), owned: false)

proc setGeometry*(self: gen_qstackedlayout_types.QStackedLayout, rect: gen_qrect_types.QRect): void =
  fcQStackedLayout_setGeometry(self.h, rect.h)

proc hasHeightForWidth*(self: gen_qstackedlayout_types.QStackedLayout): bool =
  fcQStackedLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, width: cint): cint =
  fcQStackedLayout_heightForWidth(self.h, width)

proc widgetRemoved*(self: gen_qstackedlayout_types.QStackedLayout, index: cint): void =
  fcQStackedLayout_widgetRemoved(self.h, index)

type QStackedLayoutwidgetRemovedSlot* = proc(index: cint)
proc cQStackedLayout_slot_callback_widgetRemoved(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QStackedLayoutwidgetRemovedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc cQStackedLayout_slot_callback_widgetRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QStackedLayoutwidgetRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwidgetRemoved*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutwidgetRemovedSlot) =
  var tmp = new QStackedLayoutwidgetRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_connect_widgetRemoved(self.h, cast[int](addr tmp[]), cQStackedLayout_slot_callback_widgetRemoved, cQStackedLayout_slot_callback_widgetRemoved_release)

proc currentChanged*(self: gen_qstackedlayout_types.QStackedLayout, index: cint): void =
  fcQStackedLayout_currentChanged(self.h, index)

type QStackedLayoutcurrentChangedSlot* = proc(index: cint)
proc cQStackedLayout_slot_callback_currentChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QStackedLayoutcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc cQStackedLayout_slot_callback_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QStackedLayoutcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentChanged*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutcurrentChangedSlot) =
  var tmp = new QStackedLayoutcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_connect_currentChanged(self.h, cast[int](addr tmp[]), cQStackedLayout_slot_callback_currentChanged, cQStackedLayout_slot_callback_currentChanged_release)

proc setCurrentIndex*(self: gen_qstackedlayout_types.QStackedLayout, index: cint): void =
  fcQStackedLayout_setCurrentIndex(self.h, index)

proc setCurrentWidget*(self: gen_qstackedlayout_types.QStackedLayout, w: gen_qwidget_types.QWidget): void =
  fcQStackedLayout_setCurrentWidget(self.h, w.h)

proc tr*(_: type gen_qstackedlayout_types.QStackedLayout, s: cstring, c: cstring): string =
  let v_ms = fcQStackedLayout_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstackedlayout_types.QStackedLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStackedLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QStackedLayoutmetaObjectProc* = proc(self: QStackedLayout): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QStackedLayoutmetacastProc* = proc(self: QStackedLayout, param1: cstring): pointer {.raises: [], gcsafe.}
type QStackedLayoutmetacallProc* = proc(self: QStackedLayout, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QStackedLayoutcountProc* = proc(self: QStackedLayout): cint {.raises: [], gcsafe.}
type QStackedLayoutaddItemProc* = proc(self: QStackedLayout, item: gen_qlayoutitem_types.QLayoutItem): void {.raises: [], gcsafe.}
type QStackedLayoutsizeHintProc* = proc(self: QStackedLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QStackedLayoutminimumSizeProc* = proc(self: QStackedLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QStackedLayoutitemAtProc* = proc(self: QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QStackedLayouttakeAtProc* = proc(self: QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QStackedLayoutsetGeometryProc* = proc(self: QStackedLayout, rect: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QStackedLayouthasHeightForWidthProc* = proc(self: QStackedLayout): bool {.raises: [], gcsafe.}
type QStackedLayoutheightForWidthProc* = proc(self: QStackedLayout, width: cint): cint {.raises: [], gcsafe.}
type QStackedLayoutspacingProc* = proc(self: QStackedLayout): cint {.raises: [], gcsafe.}
type QStackedLayoutsetSpacingProc* = proc(self: QStackedLayout, spacing: cint): void {.raises: [], gcsafe.}
type QStackedLayoutinvalidateProc* = proc(self: QStackedLayout): void {.raises: [], gcsafe.}
type QStackedLayoutgeometryProc* = proc(self: QStackedLayout): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QStackedLayoutexpandingDirectionsProc* = proc(self: QStackedLayout): cint {.raises: [], gcsafe.}
type QStackedLayoutmaximumSizeProc* = proc(self: QStackedLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QStackedLayoutindexOfProc* = proc(self: QStackedLayout, param1: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QStackedLayoutisEmptyProc* = proc(self: QStackedLayout): bool {.raises: [], gcsafe.}
type QStackedLayoutcontrolTypesProc* = proc(self: QStackedLayout): cint {.raises: [], gcsafe.}
type QStackedLayoutreplaceWidgetProc* = proc(self: QStackedLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QStackedLayoutlayoutProc* = proc(self: QStackedLayout): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QStackedLayoutchildEventProc* = proc(self: QStackedLayout, e: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QStackedLayouteventProc* = proc(self: QStackedLayout, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStackedLayouteventFilterProc* = proc(self: QStackedLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStackedLayouttimerEventProc* = proc(self: QStackedLayout, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QStackedLayoutcustomEventProc* = proc(self: QStackedLayout, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStackedLayoutconnectNotifyProc* = proc(self: QStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStackedLayoutdisconnectNotifyProc* = proc(self: QStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStackedLayoutminimumHeightForWidthProc* = proc(self: QStackedLayout, param1: cint): cint {.raises: [], gcsafe.}
type QStackedLayoutwidgetProc* = proc(self: QStackedLayout): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QStackedLayoutspacerItemProc* = proc(self: QStackedLayout): gen_qlayoutitem_types.QSpacerItem {.raises: [], gcsafe.}
type QStackedLayoutVTable* {.inheritable, pure.} = object
  vtbl: cQStackedLayoutVTable
  metaObject*: QStackedLayoutmetaObjectProc
  metacast*: QStackedLayoutmetacastProc
  metacall*: QStackedLayoutmetacallProc
  count*: QStackedLayoutcountProc
  addItem*: QStackedLayoutaddItemProc
  sizeHint*: QStackedLayoutsizeHintProc
  minimumSize*: QStackedLayoutminimumSizeProc
  itemAt*: QStackedLayoutitemAtProc
  takeAt*: QStackedLayouttakeAtProc
  setGeometry*: QStackedLayoutsetGeometryProc
  hasHeightForWidth*: QStackedLayouthasHeightForWidthProc
  heightForWidth*: QStackedLayoutheightForWidthProc
  spacing*: QStackedLayoutspacingProc
  setSpacing*: QStackedLayoutsetSpacingProc
  invalidate*: QStackedLayoutinvalidateProc
  geometry*: QStackedLayoutgeometryProc
  expandingDirections*: QStackedLayoutexpandingDirectionsProc
  maximumSize*: QStackedLayoutmaximumSizeProc
  indexOf*: QStackedLayoutindexOfProc
  isEmpty*: QStackedLayoutisEmptyProc
  controlTypes*: QStackedLayoutcontrolTypesProc
  replaceWidget*: QStackedLayoutreplaceWidgetProc
  layout*: QStackedLayoutlayoutProc
  childEvent*: QStackedLayoutchildEventProc
  event*: QStackedLayouteventProc
  eventFilter*: QStackedLayouteventFilterProc
  timerEvent*: QStackedLayouttimerEventProc
  customEvent*: QStackedLayoutcustomEventProc
  connectNotify*: QStackedLayoutconnectNotifyProc
  disconnectNotify*: QStackedLayoutdisconnectNotifyProc
  minimumHeightForWidth*: QStackedLayoutminimumHeightForWidthProc
  widget*: QStackedLayoutwidgetProc
  spacerItem*: QStackedLayoutspacerItemProc
proc QStackedLayoutmetaObject*(self: gen_qstackedlayout_types.QStackedLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedLayout_virtualbase_metaObject(self.h), owned: false)

proc cQStackedLayout_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutmetacast*(self: gen_qstackedlayout_types.QStackedLayout, param1: cstring): pointer =
  fcQStackedLayout_virtualbase_metacast(self.h, param1)

proc cQStackedLayout_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QStackedLayoutmetacall*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQStackedLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQStackedLayout_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStackedLayoutcount*(self: gen_qstackedlayout_types.QStackedLayout): cint =
  fcQStackedLayout_virtualbase_count(self.h)

proc cQStackedLayout_vtable_callback_count(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc QStackedLayoutaddItem*(self: gen_qstackedlayout_types.QStackedLayout, item: gen_qlayoutitem_types.QLayoutItem): void =
  fcQStackedLayout_virtualbase_addItem(self.h, item.h)

proc cQStackedLayout_vtable_callback_addItem(self: pointer, item: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: item, owned: false)
  vtbl[].addItem(self, slotval1)

proc QStackedLayoutsizeHint*(self: gen_qstackedlayout_types.QStackedLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedLayout_virtualbase_sizeHint(self.h), owned: true)

proc cQStackedLayout_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutminimumSize*(self: gen_qstackedlayout_types.QStackedLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedLayout_virtualbase_minimumSize(self.h), owned: true)

proc cQStackedLayout_vtable_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutitemAt*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQStackedLayout_virtualbase_itemAt(self.h, param1), owned: false)

proc cQStackedLayout_vtable_callback_itemAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayouttakeAt*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQStackedLayout_virtualbase_takeAt(self.h, param1), owned: false)

proc cQStackedLayout_vtable_callback_takeAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutsetGeometry*(self: gen_qstackedlayout_types.QStackedLayout, rect: gen_qrect_types.QRect): void =
  fcQStackedLayout_virtualbase_setGeometry(self.h, rect.h)

proc cQStackedLayout_vtable_callback_setGeometry(self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc QStackedLayouthasHeightForWidth*(self: gen_qstackedlayout_types.QStackedLayout): bool =
  fcQStackedLayout_virtualbase_hasHeightForWidth(self.h)

proc cQStackedLayout_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QStackedLayoutheightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, width: cint): cint =
  fcQStackedLayout_virtualbase_heightForWidth(self.h, width)

proc cQStackedLayout_vtable_callback_heightForWidth(self: pointer, width: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = width
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QStackedLayoutspacing*(self: gen_qstackedlayout_types.QStackedLayout): cint =
  fcQStackedLayout_virtualbase_spacing(self.h)

proc cQStackedLayout_vtable_callback_spacing(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].spacing(self)
  virtualReturn

proc QStackedLayoutsetSpacing*(self: gen_qstackedlayout_types.QStackedLayout, spacing: cint): void =
  fcQStackedLayout_virtualbase_setSpacing(self.h, spacing)

proc cQStackedLayout_vtable_callback_setSpacing(self: pointer, spacing: cint): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = spacing
  vtbl[].setSpacing(self, slotval1)

proc QStackedLayoutinvalidate*(self: gen_qstackedlayout_types.QStackedLayout): void =
  fcQStackedLayout_virtualbase_invalidate(self.h)

proc cQStackedLayout_vtable_callback_invalidate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  vtbl[].invalidate(self)

proc QStackedLayoutgeometry*(self: gen_qstackedlayout_types.QStackedLayout): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStackedLayout_virtualbase_geometry(self.h), owned: true)

proc cQStackedLayout_vtable_callback_geometry(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutexpandingDirections*(self: gen_qstackedlayout_types.QStackedLayout): cint =
  cint(fcQStackedLayout_virtualbase_expandingDirections(self.h))

proc cQStackedLayout_vtable_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc QStackedLayoutmaximumSize*(self: gen_qstackedlayout_types.QStackedLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedLayout_virtualbase_maximumSize(self.h), owned: true)

proc cQStackedLayout_vtable_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutindexOf*(self: gen_qstackedlayout_types.QStackedLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQStackedLayout_virtualbase_indexOf(self.h, param1.h)

proc cQStackedLayout_vtable_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc QStackedLayoutisEmpty*(self: gen_qstackedlayout_types.QStackedLayout): bool =
  fcQStackedLayout_virtualbase_isEmpty(self.h)

proc cQStackedLayout_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc QStackedLayoutcontrolTypes*(self: gen_qstackedlayout_types.QStackedLayout): cint =
  cint(fcQStackedLayout_virtualbase_controlTypes(self.h))

proc cQStackedLayout_vtable_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc QStackedLayoutreplaceWidget*(self: gen_qstackedlayout_types.QStackedLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQStackedLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)), owned: false)

proc cQStackedLayout_vtable_callback_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: to, owned: false)
  let slotval3 = cint(options)
  var virtualReturn = vtbl[].replaceWidget(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutlayout*(self: gen_qstackedlayout_types.QStackedLayout): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQStackedLayout_virtualbase_layout(self.h), owned: false)

proc cQStackedLayout_vtable_callback_layout(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutchildEvent*(self: gen_qstackedlayout_types.QStackedLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQStackedLayout_virtualbase_childEvent(self.h, e.h)

proc cQStackedLayout_vtable_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QStackedLayoutevent*(self: gen_qstackedlayout_types.QStackedLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQStackedLayout_virtualbase_event(self.h, event.h)

proc cQStackedLayout_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QStackedLayouteventFilter*(self: gen_qstackedlayout_types.QStackedLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStackedLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQStackedLayout_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QStackedLayouttimerEvent*(self: gen_qstackedlayout_types.QStackedLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStackedLayout_virtualbase_timerEvent(self.h, event.h)

proc cQStackedLayout_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QStackedLayoutcustomEvent*(self: gen_qstackedlayout_types.QStackedLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQStackedLayout_virtualbase_customEvent(self.h, event.h)

proc cQStackedLayout_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QStackedLayoutconnectNotify*(self: gen_qstackedlayout_types.QStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStackedLayout_virtualbase_connectNotify(self.h, signal.h)

proc cQStackedLayout_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QStackedLayoutdisconnectNotify*(self: gen_qstackedlayout_types.QStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStackedLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc cQStackedLayout_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc QStackedLayoutminimumHeightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): cint =
  fcQStackedLayout_virtualbase_minimumHeightForWidth(self.h, param1)

proc cQStackedLayout_vtable_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc QStackedLayoutwidget*(self: gen_qstackedlayout_types.QStackedLayout): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedLayout_virtualbase_widget(self.h), owned: false)

proc cQStackedLayout_vtable_callback_widget(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutspacerItem*(self: gen_qstackedlayout_types.QStackedLayout): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQStackedLayout_virtualbase_spacerItem(self.h), owned: false)

proc cQStackedLayout_vtable_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](fcQStackedLayout_vdata(self))
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQStackedLayout* {.inheritable.} = ref object of QStackedLayout
  vtbl*: cQStackedLayoutVTable
method metaObject*(self: VirtualQStackedLayout): gen_qobjectdefs_types.QMetaObject {.base.} =
  QStackedLayoutmetaObject(self[])
proc cQStackedLayout_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQStackedLayout, param1: cstring): pointer {.base.} =
  QStackedLayoutmetacast(self[], param1)
proc cQStackedLayout_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQStackedLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QStackedLayoutmetacall(self[], param1, param2, param3)
proc cQStackedLayout_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method count*(self: VirtualQStackedLayout): cint {.base.} =
  QStackedLayoutcount(self[])
proc cQStackedLayout_method_callback_count(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.count()
  virtualReturn

method addItem*(self: VirtualQStackedLayout, item: gen_qlayoutitem_types.QLayoutItem): void {.base.} =
  QStackedLayoutaddItem(self[], item)
proc cQStackedLayout_method_callback_addItem(self: pointer, item: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: item, owned: false)
  inst.addItem(slotval1)

method sizeHint*(self: VirtualQStackedLayout): gen_qsize_types.QSize {.base.} =
  QStackedLayoutsizeHint(self[])
proc cQStackedLayout_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSize*(self: VirtualQStackedLayout): gen_qsize_types.QSize {.base.} =
  QStackedLayoutminimumSize(self[])
proc cQStackedLayout_method_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method itemAt*(self: VirtualQStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QStackedLayoutitemAt(self[], param1)
proc cQStackedLayout_method_callback_itemAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method takeAt*(self: VirtualQStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QStackedLayouttakeAt(self[], param1)
proc cQStackedLayout_method_callback_takeAt(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.takeAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setGeometry*(self: VirtualQStackedLayout, rect: gen_qrect_types.QRect): void {.base.} =
  QStackedLayoutsetGeometry(self[], rect)
proc cQStackedLayout_method_callback_setGeometry(self: pointer, rect: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  inst.setGeometry(slotval1)

method hasHeightForWidth*(self: VirtualQStackedLayout): bool {.base.} =
  QStackedLayouthasHeightForWidth(self[])
proc cQStackedLayout_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method heightForWidth*(self: VirtualQStackedLayout, width: cint): cint {.base.} =
  QStackedLayoutheightForWidth(self[], width)
proc cQStackedLayout_method_callback_heightForWidth(self: pointer, width: cint): cint {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = width
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method spacing*(self: VirtualQStackedLayout): cint {.base.} =
  QStackedLayoutspacing(self[])
proc cQStackedLayout_method_callback_spacing(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.spacing()
  virtualReturn

method setSpacing*(self: VirtualQStackedLayout, spacing: cint): void {.base.} =
  QStackedLayoutsetSpacing(self[], spacing)
proc cQStackedLayout_method_callback_setSpacing(self: pointer, spacing: cint): void {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = spacing
  inst.setSpacing(slotval1)

method invalidate*(self: VirtualQStackedLayout): void {.base.} =
  QStackedLayoutinvalidate(self[])
proc cQStackedLayout_method_callback_invalidate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  inst.invalidate()

method geometry*(self: VirtualQStackedLayout): gen_qrect_types.QRect {.base.} =
  QStackedLayoutgeometry(self[])
proc cQStackedLayout_method_callback_geometry(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method expandingDirections*(self: VirtualQStackedLayout): cint {.base.} =
  QStackedLayoutexpandingDirections(self[])
proc cQStackedLayout_method_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.expandingDirections()
  cint(virtualReturn)

method maximumSize*(self: VirtualQStackedLayout): gen_qsize_types.QSize {.base.} =
  QStackedLayoutmaximumSize(self[])
proc cQStackedLayout_method_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method indexOf*(self: VirtualQStackedLayout, param1: gen_qwidget_types.QWidget): cint {.base.} =
  QStackedLayoutindexOf(self[], param1)
proc cQStackedLayout_method_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = inst.indexOf(slotval1)
  virtualReturn

method isEmpty*(self: VirtualQStackedLayout): bool {.base.} =
  QStackedLayoutisEmpty(self[])
proc cQStackedLayout_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

method controlTypes*(self: VirtualQStackedLayout): cint {.base.} =
  QStackedLayoutcontrolTypes(self[])
proc cQStackedLayout_method_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.controlTypes()
  cint(virtualReturn)

method replaceWidget*(self: VirtualQStackedLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QStackedLayoutreplaceWidget(self[], fromVal, to, options)
proc cQStackedLayout_method_callback_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: to, owned: false)
  let slotval3 = cint(options)
  var virtualReturn = inst.replaceWidget(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method layout*(self: VirtualQStackedLayout): gen_qlayout_types.QLayout {.base.} =
  QStackedLayoutlayout(self[])
proc cQStackedLayout_method_callback_layout(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQStackedLayout, e: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QStackedLayoutchildEvent(self[], e)
proc cQStackedLayout_method_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  inst.childEvent(slotval1)

method event*(self: VirtualQStackedLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStackedLayoutevent(self[], event)
proc cQStackedLayout_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQStackedLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStackedLayouteventFilter(self[], watched, event)
proc cQStackedLayout_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQStackedLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QStackedLayouttimerEvent(self[], event)
proc cQStackedLayout_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method customEvent*(self: VirtualQStackedLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStackedLayoutcustomEvent(self[], event)
proc cQStackedLayout_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStackedLayoutconnectNotify(self[], signal)
proc cQStackedLayout_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStackedLayoutdisconnectNotify(self[], signal)
proc cQStackedLayout_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

method minimumHeightForWidth*(self: VirtualQStackedLayout, param1: cint): cint {.base.} =
  QStackedLayoutminimumHeightForWidth(self[], param1)
proc cQStackedLayout_method_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.minimumHeightForWidth(slotval1)
  virtualReturn

method widget*(self: VirtualQStackedLayout): gen_qwidget_types.QWidget {.base.} =
  QStackedLayoutwidget(self[])
proc cQStackedLayout_method_callback_widget(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method spacerItem*(self: VirtualQStackedLayout): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QStackedLayoutspacerItem(self[])
proc cQStackedLayout_method_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedLayout](fcQStackedLayout_vdata(self))
  var virtualReturn = inst.spacerItem()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc widgetEvent*(self: gen_qstackedlayout_types.QStackedLayout, param1: gen_qcoreevent_types.QEvent): void =
  fcQStackedLayout_protectedbase_widgetEvent(self.h, param1.h)

proc addChildLayout*(self: gen_qstackedlayout_types.QStackedLayout, l: gen_qlayout_types.QLayout): void =
  fcQStackedLayout_protectedbase_addChildLayout(self.h, l.h)

proc addChildWidget*(self: gen_qstackedlayout_types.QStackedLayout, w: gen_qwidget_types.QWidget): void =
  fcQStackedLayout_protectedbase_addChildWidget(self.h, w.h)

proc adoptLayout*(self: gen_qstackedlayout_types.QStackedLayout, layout: gen_qlayout_types.QLayout): bool =
  fcQStackedLayout_protectedbase_adoptLayout(self.h, layout.h)

proc alignmentRect*(self: gen_qstackedlayout_types.QStackedLayout, param1: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStackedLayout_protectedbase_alignmentRect(self.h, param1.h), owned: true)

proc sender*(self: gen_qstackedlayout_types.QStackedLayout): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStackedLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qstackedlayout_types.QStackedLayout): cint =
  fcQStackedLayout_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qstackedlayout_types.QStackedLayout, signal: cstring): cint =
  fcQStackedLayout_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qstackedlayout_types.QStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQStackedLayout_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qstackedlayout_types.QStackedLayout,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QStackedLayoutVTable = nil): gen_qstackedlayout_types.QStackedLayout =
  let vtbl = if vtbl == nil: new QStackedLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStackedLayoutVTable](fcQStackedLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQStackedLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQStackedLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQStackedLayout_vtable_callback_metacall
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = cQStackedLayout_vtable_callback_count
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = cQStackedLayout_vtable_callback_addItem
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQStackedLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = cQStackedLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = cQStackedLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = cQStackedLayout_vtable_callback_takeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = cQStackedLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQStackedLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQStackedLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = cQStackedLayout_vtable_callback_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = cQStackedLayout_vtable_callback_setSpacing
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = cQStackedLayout_vtable_callback_invalidate
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = cQStackedLayout_vtable_callback_geometry
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = cQStackedLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = cQStackedLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = cQStackedLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = cQStackedLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = cQStackedLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = cQStackedLayout_vtable_callback_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = cQStackedLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQStackedLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQStackedLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQStackedLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQStackedLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQStackedLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQStackedLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQStackedLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = cQStackedLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = cQStackedLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = cQStackedLayout_vtable_callback_spacerItem
  gen_qstackedlayout_types.QStackedLayout(h: fcQStackedLayout_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qstackedlayout_types.QStackedLayout,
    vtbl: ref QStackedLayoutVTable = nil): gen_qstackedlayout_types.QStackedLayout =
  let vtbl = if vtbl == nil: new QStackedLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStackedLayoutVTable](fcQStackedLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQStackedLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQStackedLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQStackedLayout_vtable_callback_metacall
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = cQStackedLayout_vtable_callback_count
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = cQStackedLayout_vtable_callback_addItem
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQStackedLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = cQStackedLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = cQStackedLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = cQStackedLayout_vtable_callback_takeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = cQStackedLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQStackedLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQStackedLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = cQStackedLayout_vtable_callback_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = cQStackedLayout_vtable_callback_setSpacing
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = cQStackedLayout_vtable_callback_invalidate
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = cQStackedLayout_vtable_callback_geometry
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = cQStackedLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = cQStackedLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = cQStackedLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = cQStackedLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = cQStackedLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = cQStackedLayout_vtable_callback_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = cQStackedLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQStackedLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQStackedLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQStackedLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQStackedLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQStackedLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQStackedLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQStackedLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = cQStackedLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = cQStackedLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = cQStackedLayout_vtable_callback_spacerItem
  gen_qstackedlayout_types.QStackedLayout(h: fcQStackedLayout_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qstackedlayout_types.QStackedLayout,
    parentLayout: gen_qlayout_types.QLayout,
    vtbl: ref QStackedLayoutVTable = nil): gen_qstackedlayout_types.QStackedLayout =
  let vtbl = if vtbl == nil: new QStackedLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStackedLayoutVTable](fcQStackedLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQStackedLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQStackedLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQStackedLayout_vtable_callback_metacall
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = cQStackedLayout_vtable_callback_count
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = cQStackedLayout_vtable_callback_addItem
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQStackedLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = cQStackedLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = cQStackedLayout_vtable_callback_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = cQStackedLayout_vtable_callback_takeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = cQStackedLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQStackedLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQStackedLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = cQStackedLayout_vtable_callback_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = cQStackedLayout_vtable_callback_setSpacing
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = cQStackedLayout_vtable_callback_invalidate
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = cQStackedLayout_vtable_callback_geometry
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = cQStackedLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = cQStackedLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = cQStackedLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = cQStackedLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = cQStackedLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = cQStackedLayout_vtable_callback_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = cQStackedLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQStackedLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQStackedLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQStackedLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQStackedLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQStackedLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQStackedLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQStackedLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = cQStackedLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = cQStackedLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = cQStackedLayout_vtable_callback_spacerItem
  gen_qstackedlayout_types.QStackedLayout(h: fcQStackedLayout_new3(addr(vtbl[].vtbl), addr(vtbl[]), parentLayout.h), owned: true)

const cQStackedLayout_mvtbl = cQStackedLayoutVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQStackedLayout()[])](self.fcQStackedLayout_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQStackedLayout_method_callback_metaObject,
  metacast: cQStackedLayout_method_callback_metacast,
  metacall: cQStackedLayout_method_callback_metacall,
  count: cQStackedLayout_method_callback_count,
  addItem: cQStackedLayout_method_callback_addItem,
  sizeHint: cQStackedLayout_method_callback_sizeHint,
  minimumSize: cQStackedLayout_method_callback_minimumSize,
  itemAt: cQStackedLayout_method_callback_itemAt,
  takeAt: cQStackedLayout_method_callback_takeAt,
  setGeometry: cQStackedLayout_method_callback_setGeometry,
  hasHeightForWidth: cQStackedLayout_method_callback_hasHeightForWidth,
  heightForWidth: cQStackedLayout_method_callback_heightForWidth,
  spacing: cQStackedLayout_method_callback_spacing,
  setSpacing: cQStackedLayout_method_callback_setSpacing,
  invalidate: cQStackedLayout_method_callback_invalidate,
  geometry: cQStackedLayout_method_callback_geometry,
  expandingDirections: cQStackedLayout_method_callback_expandingDirections,
  maximumSize: cQStackedLayout_method_callback_maximumSize,
  indexOf: cQStackedLayout_method_callback_indexOf,
  isEmpty: cQStackedLayout_method_callback_isEmpty,
  controlTypes: cQStackedLayout_method_callback_controlTypes,
  replaceWidget: cQStackedLayout_method_callback_replaceWidget,
  layout: cQStackedLayout_method_callback_layout,
  childEvent: cQStackedLayout_method_callback_childEvent,
  event: cQStackedLayout_method_callback_event,
  eventFilter: cQStackedLayout_method_callback_eventFilter,
  timerEvent: cQStackedLayout_method_callback_timerEvent,
  customEvent: cQStackedLayout_method_callback_customEvent,
  connectNotify: cQStackedLayout_method_callback_connectNotify,
  disconnectNotify: cQStackedLayout_method_callback_disconnectNotify,
  minimumHeightForWidth: cQStackedLayout_method_callback_minimumHeightForWidth,
  widget: cQStackedLayout_method_callback_widget,
  spacerItem: cQStackedLayout_method_callback_spacerItem,
)
proc create*(T: type gen_qstackedlayout_types.QStackedLayout,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQStackedLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStackedLayout_new(addr(cQStackedLayout_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qstackedlayout_types.QStackedLayout,
    inst: VirtualQStackedLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStackedLayout_new2(addr(cQStackedLayout_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qstackedlayout_types.QStackedLayout,
    parentLayout: gen_qlayout_types.QLayout,
    inst: VirtualQStackedLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStackedLayout_new3(addr(cQStackedLayout_mvtbl), addr(inst[]), parentLayout.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qstackedlayout_types.QStackedLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedLayout_staticMetaObject())
