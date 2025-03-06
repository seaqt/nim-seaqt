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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
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

proc fcQStackedLayout_metaObject(self: pointer, ): pointer {.importc: "QStackedLayout_metaObject".}
proc fcQStackedLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QStackedLayout_metacast".}
proc fcQStackedLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStackedLayout_metacall".}
proc fcQStackedLayout_tr(s: cstring): struct_miqt_string {.importc: "QStackedLayout_tr".}
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
proc fcQStackedLayout_connect_widgetRemoved(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QStackedLayout_connect_widgetRemoved".}
proc fcQStackedLayout_currentChanged(self: pointer, index: cint): void {.importc: "QStackedLayout_currentChanged".}
proc fcQStackedLayout_connect_currentChanged(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QStackedLayout_connect_currentChanged".}
proc fcQStackedLayout_setCurrentIndex(self: pointer, index: cint): void {.importc: "QStackedLayout_setCurrentIndex".}
proc fcQStackedLayout_setCurrentWidget(self: pointer, w: pointer): void {.importc: "QStackedLayout_setCurrentWidget".}
proc fcQStackedLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStackedLayout_tr2".}
proc fcQStackedLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStackedLayout_tr3".}
type cQStackedLayoutVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQStackedLayoutVTable, self: ptr cQStackedLayout) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  count*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  addItem*: proc(vtbl, self: pointer, item: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  itemAt*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  takeAt*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, width: cint): cint {.cdecl, raises: [], gcsafe.}
  spacing*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setSpacing*: proc(vtbl, self: pointer, spacing: cint): void {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(vtbl, self: pointer, param1: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  replaceWidget*: proc(vtbl, self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  widget*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQStackedLayout_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QStackedLayout_virtualbase_metaObject".}
proc fcQStackedLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QStackedLayout_virtualbase_metacast".}
proc fcQStackedLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStackedLayout_virtualbase_metacall".}
proc fcQStackedLayout_virtualbase_count(self: pointer, ): cint {.importc: "QStackedLayout_virtualbase_count".}
proc fcQStackedLayout_virtualbase_addItem(self: pointer, item: pointer): void {.importc: "QStackedLayout_virtualbase_addItem".}
proc fcQStackedLayout_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QStackedLayout_virtualbase_sizeHint".}
proc fcQStackedLayout_virtualbase_minimumSize(self: pointer, ): pointer {.importc: "QStackedLayout_virtualbase_minimumSize".}
proc fcQStackedLayout_virtualbase_itemAt(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_virtualbase_itemAt".}
proc fcQStackedLayout_virtualbase_takeAt(self: pointer, param1: cint): pointer {.importc: "QStackedLayout_virtualbase_takeAt".}
proc fcQStackedLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QStackedLayout_virtualbase_setGeometry".}
proc fcQStackedLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QStackedLayout_virtualbase_hasHeightForWidth".}
proc fcQStackedLayout_virtualbase_heightForWidth(self: pointer, width: cint): cint {.importc: "QStackedLayout_virtualbase_heightForWidth".}
proc fcQStackedLayout_virtualbase_spacing(self: pointer, ): cint {.importc: "QStackedLayout_virtualbase_spacing".}
proc fcQStackedLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void {.importc: "QStackedLayout_virtualbase_setSpacing".}
proc fcQStackedLayout_virtualbase_invalidate(self: pointer, ): void {.importc: "QStackedLayout_virtualbase_invalidate".}
proc fcQStackedLayout_virtualbase_geometry(self: pointer, ): pointer {.importc: "QStackedLayout_virtualbase_geometry".}
proc fcQStackedLayout_virtualbase_expandingDirections(self: pointer, ): cint {.importc: "QStackedLayout_virtualbase_expandingDirections".}
proc fcQStackedLayout_virtualbase_maximumSize(self: pointer, ): pointer {.importc: "QStackedLayout_virtualbase_maximumSize".}
proc fcQStackedLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint {.importc: "QStackedLayout_virtualbase_indexOf".}
proc fcQStackedLayout_virtualbase_isEmpty(self: pointer, ): bool {.importc: "QStackedLayout_virtualbase_isEmpty".}
proc fcQStackedLayout_virtualbase_controlTypes(self: pointer, ): cint {.importc: "QStackedLayout_virtualbase_controlTypes".}
proc fcQStackedLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.importc: "QStackedLayout_virtualbase_replaceWidget".}
proc fcQStackedLayout_virtualbase_layout(self: pointer, ): pointer {.importc: "QStackedLayout_virtualbase_layout".}
proc fcQStackedLayout_virtualbase_childEvent(self: pointer, e: pointer): void {.importc: "QStackedLayout_virtualbase_childEvent".}
proc fcQStackedLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QStackedLayout_virtualbase_event".}
proc fcQStackedLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStackedLayout_virtualbase_eventFilter".}
proc fcQStackedLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QStackedLayout_virtualbase_timerEvent".}
proc fcQStackedLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QStackedLayout_virtualbase_customEvent".}
proc fcQStackedLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QStackedLayout_virtualbase_connectNotify".}
proc fcQStackedLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QStackedLayout_virtualbase_disconnectNotify".}
proc fcQStackedLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QStackedLayout_virtualbase_minimumHeightForWidth".}
proc fcQStackedLayout_virtualbase_widget(self: pointer, ): pointer {.importc: "QStackedLayout_virtualbase_widget".}
proc fcQStackedLayout_virtualbase_spacerItem(self: pointer, ): pointer {.importc: "QStackedLayout_virtualbase_spacerItem".}
proc fcQStackedLayout_protectedbase_widgetEvent(self: pointer, param1: pointer): void {.importc: "QStackedLayout_protectedbase_widgetEvent".}
proc fcQStackedLayout_protectedbase_addChildLayout(self: pointer, l: pointer): void {.importc: "QStackedLayout_protectedbase_addChildLayout".}
proc fcQStackedLayout_protectedbase_addChildWidget(self: pointer, w: pointer): void {.importc: "QStackedLayout_protectedbase_addChildWidget".}
proc fcQStackedLayout_protectedbase_adoptLayout(self: pointer, layout: pointer): bool {.importc: "QStackedLayout_protectedbase_adoptLayout".}
proc fcQStackedLayout_protectedbase_alignmentRect(self: pointer, param1: pointer): pointer {.importc: "QStackedLayout_protectedbase_alignmentRect".}
proc fcQStackedLayout_protectedbase_sender(self: pointer, ): pointer {.importc: "QStackedLayout_protectedbase_sender".}
proc fcQStackedLayout_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QStackedLayout_protectedbase_senderSignalIndex".}
proc fcQStackedLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QStackedLayout_protectedbase_receivers".}
proc fcQStackedLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QStackedLayout_protectedbase_isSignalConnected".}
proc fcQStackedLayout_new(vtbl: pointer, parent: pointer): ptr cQStackedLayout {.importc: "QStackedLayout_new".}
proc fcQStackedLayout_new2(vtbl: pointer, ): ptr cQStackedLayout {.importc: "QStackedLayout_new2".}
proc fcQStackedLayout_new3(vtbl: pointer, parentLayout: pointer): ptr cQStackedLayout {.importc: "QStackedLayout_new3".}
proc fcQStackedLayout_staticMetaObject(): pointer {.importc: "QStackedLayout_staticMetaObject".}

proc metaObject*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qstackedlayout_types.QStackedLayout, param1: cstring): pointer =
  fcQStackedLayout_metacast(self.h, param1)

proc metacall*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQStackedLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstackedlayout_types.QStackedLayout, s: cstring): string =
  let v_ms = fcQStackedLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qstackedlayout_types.QStackedLayout, w: gen_qwidget_types.QWidget): cint =
  fcQStackedLayout_addWidget(self.h, w.h)

proc insertWidget*(self: gen_qstackedlayout_types.QStackedLayout, index: cint, w: gen_qwidget_types.QWidget): cint =
  fcQStackedLayout_insertWidget(self.h, index, w.h)

proc currentWidget*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedLayout_currentWidget(self.h), owned: false)

proc currentIndex*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  fcQStackedLayout_currentIndex(self.h)

proc widget*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedLayout_widget(self.h, param1), owned: false)

proc count*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  fcQStackedLayout_count(self.h)

proc stackingMode*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  cint(fcQStackedLayout_stackingMode(self.h))

proc setStackingMode*(self: gen_qstackedlayout_types.QStackedLayout, stackingMode: cint): void =
  fcQStackedLayout_setStackingMode(self.h, cint(stackingMode))

proc addItem*(self: gen_qstackedlayout_types.QStackedLayout, item: gen_qlayoutitem_types.QLayoutItem): void =
  fcQStackedLayout_addItem(self.h, item.h)

proc sizeHint*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedLayout_sizeHint(self.h), owned: true)

proc minimumSize*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedLayout_minimumSize(self.h), owned: true)

proc itemAt*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQStackedLayout_itemAt(self.h, param1), owned: false)

proc takeAt*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQStackedLayout_takeAt(self.h, param1), owned: false)

proc setGeometry*(self: gen_qstackedlayout_types.QStackedLayout, rect: gen_qrect_types.QRect): void =
  fcQStackedLayout_setGeometry(self.h, rect.h)

proc hasHeightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, ): bool =
  fcQStackedLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, width: cint): cint =
  fcQStackedLayout_heightForWidth(self.h, width)

proc widgetRemoved*(self: gen_qstackedlayout_types.QStackedLayout, index: cint): void =
  fcQStackedLayout_widgetRemoved(self.h, index)

type QStackedLayoutwidgetRemovedSlot* = proc(index: cint)
proc miqt_exec_callback_cQStackedLayout_widgetRemoved(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QStackedLayoutwidgetRemovedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQStackedLayout_widgetRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QStackedLayoutwidgetRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwidgetRemoved*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutwidgetRemovedSlot) =
  var tmp = new QStackedLayoutwidgetRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_connect_widgetRemoved(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQStackedLayout_widgetRemoved, miqt_exec_callback_cQStackedLayout_widgetRemoved_release)

proc currentChanged*(self: gen_qstackedlayout_types.QStackedLayout, index: cint): void =
  fcQStackedLayout_currentChanged(self.h, index)

type QStackedLayoutcurrentChangedSlot* = proc(index: cint)
proc miqt_exec_callback_cQStackedLayout_currentChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QStackedLayoutcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQStackedLayout_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QStackedLayoutcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentChanged*(self: gen_qstackedlayout_types.QStackedLayout, slot: QStackedLayoutcurrentChangedSlot) =
  var tmp = new QStackedLayoutcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedLayout_connect_currentChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQStackedLayout_currentChanged, miqt_exec_callback_cQStackedLayout_currentChanged_release)

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
proc QStackedLayoutmetaObject*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedLayout_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQStackedLayout_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutmetacast*(self: gen_qstackedlayout_types.QStackedLayout, param1: cstring): pointer =
  fcQStackedLayout_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQStackedLayout_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QStackedLayoutmetacall*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQStackedLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQStackedLayout_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStackedLayoutcount*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  fcQStackedLayout_virtualbase_count(self.h)

proc miqt_exec_callback_cQStackedLayout_count(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc QStackedLayoutaddItem*(self: gen_qstackedlayout_types.QStackedLayout, item: gen_qlayoutitem_types.QLayoutItem): void =
  fcQStackedLayout_virtualbase_addItem(self.h, item.h)

proc miqt_exec_callback_cQStackedLayout_addItem(vtbl: pointer, self: pointer, item: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: item, owned: false)
  vtbl[].addItem(self, slotval1)

proc QStackedLayoutsizeHint*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedLayout_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQStackedLayout_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutminimumSize*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedLayout_virtualbase_minimumSize(self.h), owned: true)

proc miqt_exec_callback_cQStackedLayout_minimumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutitemAt*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQStackedLayout_virtualbase_itemAt(self.h, param1), owned: false)

proc miqt_exec_callback_cQStackedLayout_itemAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].itemAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayouttakeAt*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQStackedLayout_virtualbase_takeAt(self.h, param1), owned: false)

proc miqt_exec_callback_cQStackedLayout_takeAt(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutsetGeometry*(self: gen_qstackedlayout_types.QStackedLayout, rect: gen_qrect_types.QRect): void =
  fcQStackedLayout_virtualbase_setGeometry(self.h, rect.h)

proc miqt_exec_callback_cQStackedLayout_setGeometry(vtbl: pointer, self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc QStackedLayouthasHeightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, ): bool =
  fcQStackedLayout_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQStackedLayout_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QStackedLayoutheightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, width: cint): cint =
  fcQStackedLayout_virtualbase_heightForWidth(self.h, width)

proc miqt_exec_callback_cQStackedLayout_heightForWidth(vtbl: pointer, self: pointer, width: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = width
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QStackedLayoutspacing*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  fcQStackedLayout_virtualbase_spacing(self.h)

proc miqt_exec_callback_cQStackedLayout_spacing(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].spacing(self)
  virtualReturn

proc QStackedLayoutsetSpacing*(self: gen_qstackedlayout_types.QStackedLayout, spacing: cint): void =
  fcQStackedLayout_virtualbase_setSpacing(self.h, spacing)

proc miqt_exec_callback_cQStackedLayout_setSpacing(vtbl: pointer, self: pointer, spacing: cint): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = spacing
  vtbl[].setSpacing(self, slotval1)

proc QStackedLayoutinvalidate*(self: gen_qstackedlayout_types.QStackedLayout, ): void =
  fcQStackedLayout_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQStackedLayout_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  vtbl[].invalidate(self)

proc QStackedLayoutgeometry*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStackedLayout_virtualbase_geometry(self.h), owned: true)

proc miqt_exec_callback_cQStackedLayout_geometry(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutexpandingDirections*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  cint(fcQStackedLayout_virtualbase_expandingDirections(self.h))

proc miqt_exec_callback_cQStackedLayout_expandingDirections(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc QStackedLayoutmaximumSize*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedLayout_virtualbase_maximumSize(self.h), owned: true)

proc miqt_exec_callback_cQStackedLayout_maximumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutindexOf*(self: gen_qstackedlayout_types.QStackedLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQStackedLayout_virtualbase_indexOf(self.h, param1.h)

proc miqt_exec_callback_cQStackedLayout_indexOf(vtbl: pointer, self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc QStackedLayoutisEmpty*(self: gen_qstackedlayout_types.QStackedLayout, ): bool =
  fcQStackedLayout_virtualbase_isEmpty(self.h)

proc miqt_exec_callback_cQStackedLayout_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc QStackedLayoutcontrolTypes*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
  cint(fcQStackedLayout_virtualbase_controlTypes(self.h))

proc miqt_exec_callback_cQStackedLayout_controlTypes(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc QStackedLayoutreplaceWidget*(self: gen_qstackedlayout_types.QStackedLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQStackedLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)), owned: false)

proc miqt_exec_callback_cQStackedLayout_replaceWidget(vtbl: pointer, self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: to, owned: false)
  let slotval3 = cint(options)
  var virtualReturn = vtbl[].replaceWidget(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutlayout*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQStackedLayout_virtualbase_layout(self.h), owned: false)

proc miqt_exec_callback_cQStackedLayout_layout(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutchildEvent*(self: gen_qstackedlayout_types.QStackedLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQStackedLayout_virtualbase_childEvent(self.h, e.h)

proc miqt_exec_callback_cQStackedLayout_childEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QStackedLayoutevent*(self: gen_qstackedlayout_types.QStackedLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQStackedLayout_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQStackedLayout_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QStackedLayouteventFilter*(self: gen_qstackedlayout_types.QStackedLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStackedLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQStackedLayout_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QStackedLayouttimerEvent*(self: gen_qstackedlayout_types.QStackedLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStackedLayout_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedLayout_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QStackedLayoutcustomEvent*(self: gen_qstackedlayout_types.QStackedLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQStackedLayout_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedLayout_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QStackedLayoutconnectNotify*(self: gen_qstackedlayout_types.QStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStackedLayout_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStackedLayout_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QStackedLayoutdisconnectNotify*(self: gen_qstackedlayout_types.QStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStackedLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStackedLayout_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc QStackedLayoutminimumHeightForWidth*(self: gen_qstackedlayout_types.QStackedLayout, param1: cint): cint =
  fcQStackedLayout_virtualbase_minimumHeightForWidth(self.h, param1)

proc miqt_exec_callback_cQStackedLayout_minimumHeightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc QStackedLayoutwidget*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedLayout_virtualbase_widget(self.h), owned: false)

proc miqt_exec_callback_cQStackedLayout_widget(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStackedLayoutspacerItem*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQStackedLayout_virtualbase_spacerItem(self.h), owned: false)

proc miqt_exec_callback_cQStackedLayout_spacerItem(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedLayoutVTable](vtbl)
  let self = QStackedLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQStackedLayout* {.inheritable.} = ref object of QStackedLayout
  vtbl*: cQStackedLayoutVTable
method metaObject*(self: VirtualQStackedLayout, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QStackedLayoutmetaObject(self[])
proc miqt_exec_method_cQStackedLayout_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQStackedLayout, param1: cstring): pointer {.base.} =
  QStackedLayoutmetacast(self[], param1)
proc miqt_exec_method_cQStackedLayout_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQStackedLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QStackedLayoutmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQStackedLayout_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method count*(self: VirtualQStackedLayout, ): cint {.base.} =
  QStackedLayoutcount(self[])
proc miqt_exec_method_cQStackedLayout_count(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.count()
  virtualReturn

method addItem*(self: VirtualQStackedLayout, item: gen_qlayoutitem_types.QLayoutItem): void {.base.} =
  QStackedLayoutaddItem(self[], item)
proc miqt_exec_method_cQStackedLayout_addItem(vtbl: pointer, inst: pointer, item: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: item, owned: false)
  vtbl.addItem(slotval1)

method sizeHint*(self: VirtualQStackedLayout, ): gen_qsize_types.QSize {.base.} =
  QStackedLayoutsizeHint(self[])
proc miqt_exec_method_cQStackedLayout_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSize*(self: VirtualQStackedLayout, ): gen_qsize_types.QSize {.base.} =
  QStackedLayoutminimumSize(self[])
proc miqt_exec_method_cQStackedLayout_minimumSize(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method itemAt*(self: VirtualQStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QStackedLayoutitemAt(self[], param1)
proc miqt_exec_method_cQStackedLayout_itemAt(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method takeAt*(self: VirtualQStackedLayout, param1: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QStackedLayouttakeAt(self[], param1)
proc miqt_exec_method_cQStackedLayout_takeAt(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.takeAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setGeometry*(self: VirtualQStackedLayout, rect: gen_qrect_types.QRect): void {.base.} =
  QStackedLayoutsetGeometry(self[], rect)
proc miqt_exec_method_cQStackedLayout_setGeometry(vtbl: pointer, inst: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  vtbl.setGeometry(slotval1)

method hasHeightForWidth*(self: VirtualQStackedLayout, ): bool {.base.} =
  QStackedLayouthasHeightForWidth(self[])
proc miqt_exec_method_cQStackedLayout_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method heightForWidth*(self: VirtualQStackedLayout, width: cint): cint {.base.} =
  QStackedLayoutheightForWidth(self[], width)
proc miqt_exec_method_cQStackedLayout_heightForWidth(vtbl: pointer, inst: pointer, width: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = width
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method spacing*(self: VirtualQStackedLayout, ): cint {.base.} =
  QStackedLayoutspacing(self[])
proc miqt_exec_method_cQStackedLayout_spacing(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.spacing()
  virtualReturn

method setSpacing*(self: VirtualQStackedLayout, spacing: cint): void {.base.} =
  QStackedLayoutsetSpacing(self[], spacing)
proc miqt_exec_method_cQStackedLayout_setSpacing(vtbl: pointer, inst: pointer, spacing: cint): void {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = spacing
  vtbl.setSpacing(slotval1)

method invalidate*(self: VirtualQStackedLayout, ): void {.base.} =
  QStackedLayoutinvalidate(self[])
proc miqt_exec_method_cQStackedLayout_invalidate(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  vtbl.invalidate()

method geometry*(self: VirtualQStackedLayout, ): gen_qrect_types.QRect {.base.} =
  QStackedLayoutgeometry(self[])
proc miqt_exec_method_cQStackedLayout_geometry(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method expandingDirections*(self: VirtualQStackedLayout, ): cint {.base.} =
  QStackedLayoutexpandingDirections(self[])
proc miqt_exec_method_cQStackedLayout_expandingDirections(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.expandingDirections()
  cint(virtualReturn)

method maximumSize*(self: VirtualQStackedLayout, ): gen_qsize_types.QSize {.base.} =
  QStackedLayoutmaximumSize(self[])
proc miqt_exec_method_cQStackedLayout_maximumSize(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method indexOf*(self: VirtualQStackedLayout, param1: gen_qwidget_types.QWidget): cint {.base.} =
  QStackedLayoutindexOf(self[], param1)
proc miqt_exec_method_cQStackedLayout_indexOf(vtbl: pointer, inst: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl.indexOf(slotval1)
  virtualReturn

method isEmpty*(self: VirtualQStackedLayout, ): bool {.base.} =
  QStackedLayoutisEmpty(self[])
proc miqt_exec_method_cQStackedLayout_isEmpty(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.isEmpty()
  virtualReturn

method controlTypes*(self: VirtualQStackedLayout, ): cint {.base.} =
  QStackedLayoutcontrolTypes(self[])
proc miqt_exec_method_cQStackedLayout_controlTypes(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.controlTypes()
  cint(virtualReturn)

method replaceWidget*(self: VirtualQStackedLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QStackedLayoutreplaceWidget(self[], fromVal, to, options)
proc miqt_exec_method_cQStackedLayout_replaceWidget(vtbl: pointer, inst: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: to, owned: false)
  let slotval3 = cint(options)
  var virtualReturn = vtbl.replaceWidget(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method layout*(self: VirtualQStackedLayout, ): gen_qlayout_types.QLayout {.base.} =
  QStackedLayoutlayout(self[])
proc miqt_exec_method_cQStackedLayout_layout(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQStackedLayout, e: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QStackedLayoutchildEvent(self[], e)
proc miqt_exec_method_cQStackedLayout_childEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl.childEvent(slotval1)

method event*(self: VirtualQStackedLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStackedLayoutevent(self[], event)
proc miqt_exec_method_cQStackedLayout_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQStackedLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStackedLayouteventFilter(self[], watched, event)
proc miqt_exec_method_cQStackedLayout_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQStackedLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QStackedLayouttimerEvent(self[], event)
proc miqt_exec_method_cQStackedLayout_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method customEvent*(self: VirtualQStackedLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStackedLayoutcustomEvent(self[], event)
proc miqt_exec_method_cQStackedLayout_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStackedLayoutconnectNotify(self[], signal)
proc miqt_exec_method_cQStackedLayout_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQStackedLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStackedLayoutdisconnectNotify(self[], signal)
proc miqt_exec_method_cQStackedLayout_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

method minimumHeightForWidth*(self: VirtualQStackedLayout, param1: cint): cint {.base.} =
  QStackedLayoutminimumHeightForWidth(self[], param1)
proc miqt_exec_method_cQStackedLayout_minimumHeightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.minimumHeightForWidth(slotval1)
  virtualReturn

method widget*(self: VirtualQStackedLayout, ): gen_qwidget_types.QWidget {.base.} =
  QStackedLayoutwidget(self[])
proc miqt_exec_method_cQStackedLayout_widget(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method spacerItem*(self: VirtualQStackedLayout, ): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QStackedLayoutspacerItem(self[])
proc miqt_exec_method_cQStackedLayout_spacerItem(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStackedLayout](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
  var virtualReturn = vtbl.spacerItem()
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

proc sender*(self: gen_qstackedlayout_types.QStackedLayout, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStackedLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qstackedlayout_types.QStackedLayout, ): cint =
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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStackedLayoutVTable, _: ptr cQStackedLayout) {.cdecl.} =
    let vtbl = cast[ref QStackedLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStackedLayout_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStackedLayout_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStackedLayout_metacall
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQStackedLayout_count
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQStackedLayout_addItem
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQStackedLayout_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQStackedLayout_minimumSize
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQStackedLayout_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQStackedLayout_takeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQStackedLayout_setGeometry
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQStackedLayout_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQStackedLayout_heightForWidth
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = miqt_exec_callback_cQStackedLayout_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = miqt_exec_callback_cQStackedLayout_setSpacing
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQStackedLayout_invalidate
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQStackedLayout_geometry
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQStackedLayout_expandingDirections
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQStackedLayout_maximumSize
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQStackedLayout_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQStackedLayout_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQStackedLayout_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = miqt_exec_callback_cQStackedLayout_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQStackedLayout_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStackedLayout_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStackedLayout_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStackedLayout_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStackedLayout_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStackedLayout_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStackedLayout_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStackedLayout_disconnectNotify
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQStackedLayout_minimumHeightForWidth
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQStackedLayout_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQStackedLayout_spacerItem
  gen_qstackedlayout_types.QStackedLayout(h: fcQStackedLayout_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qstackedlayout_types.QStackedLayout,
    vtbl: ref QStackedLayoutVTable = nil): gen_qstackedlayout_types.QStackedLayout =
  let vtbl = if vtbl == nil: new QStackedLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStackedLayoutVTable, _: ptr cQStackedLayout) {.cdecl.} =
    let vtbl = cast[ref QStackedLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStackedLayout_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStackedLayout_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStackedLayout_metacall
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQStackedLayout_count
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQStackedLayout_addItem
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQStackedLayout_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQStackedLayout_minimumSize
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQStackedLayout_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQStackedLayout_takeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQStackedLayout_setGeometry
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQStackedLayout_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQStackedLayout_heightForWidth
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = miqt_exec_callback_cQStackedLayout_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = miqt_exec_callback_cQStackedLayout_setSpacing
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQStackedLayout_invalidate
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQStackedLayout_geometry
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQStackedLayout_expandingDirections
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQStackedLayout_maximumSize
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQStackedLayout_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQStackedLayout_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQStackedLayout_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = miqt_exec_callback_cQStackedLayout_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQStackedLayout_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStackedLayout_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStackedLayout_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStackedLayout_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStackedLayout_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStackedLayout_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStackedLayout_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStackedLayout_disconnectNotify
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQStackedLayout_minimumHeightForWidth
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQStackedLayout_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQStackedLayout_spacerItem
  gen_qstackedlayout_types.QStackedLayout(h: fcQStackedLayout_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qstackedlayout_types.QStackedLayout,
    parentLayout: gen_qlayout_types.QLayout,
    vtbl: ref QStackedLayoutVTable = nil): gen_qstackedlayout_types.QStackedLayout =
  let vtbl = if vtbl == nil: new QStackedLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStackedLayoutVTable, _: ptr cQStackedLayout) {.cdecl.} =
    let vtbl = cast[ref QStackedLayoutVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStackedLayout_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStackedLayout_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStackedLayout_metacall
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = miqt_exec_callback_cQStackedLayout_count
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = miqt_exec_callback_cQStackedLayout_addItem
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQStackedLayout_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQStackedLayout_minimumSize
  if not isNil(vtbl[].itemAt):
    vtbl[].vtbl.itemAt = miqt_exec_callback_cQStackedLayout_itemAt
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = miqt_exec_callback_cQStackedLayout_takeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQStackedLayout_setGeometry
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQStackedLayout_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQStackedLayout_heightForWidth
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = miqt_exec_callback_cQStackedLayout_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = miqt_exec_callback_cQStackedLayout_setSpacing
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQStackedLayout_invalidate
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQStackedLayout_geometry
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQStackedLayout_expandingDirections
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQStackedLayout_maximumSize
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = miqt_exec_callback_cQStackedLayout_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQStackedLayout_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQStackedLayout_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = miqt_exec_callback_cQStackedLayout_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQStackedLayout_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStackedLayout_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStackedLayout_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStackedLayout_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStackedLayout_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStackedLayout_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStackedLayout_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStackedLayout_disconnectNotify
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQStackedLayout_minimumHeightForWidth
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQStackedLayout_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQStackedLayout_spacerItem
  gen_qstackedlayout_types.QStackedLayout(h: fcQStackedLayout_new3(addr(vtbl[].vtbl), parentLayout.h), owned: true)

proc create*(T: type gen_qstackedlayout_types.QStackedLayout,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQStackedLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStackedLayoutVTable, _: ptr cQStackedLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQStackedLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQStackedLayout_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQStackedLayout_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQStackedLayout_metacall
  vtbl[].vtbl.count = miqt_exec_method_cQStackedLayout_count
  vtbl[].vtbl.addItem = miqt_exec_method_cQStackedLayout_addItem
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQStackedLayout_sizeHint
  vtbl[].vtbl.minimumSize = miqt_exec_method_cQStackedLayout_minimumSize
  vtbl[].vtbl.itemAt = miqt_exec_method_cQStackedLayout_itemAt
  vtbl[].vtbl.takeAt = miqt_exec_method_cQStackedLayout_takeAt
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQStackedLayout_setGeometry
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQStackedLayout_hasHeightForWidth
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQStackedLayout_heightForWidth
  vtbl[].vtbl.spacing = miqt_exec_method_cQStackedLayout_spacing
  vtbl[].vtbl.setSpacing = miqt_exec_method_cQStackedLayout_setSpacing
  vtbl[].vtbl.invalidate = miqt_exec_method_cQStackedLayout_invalidate
  vtbl[].vtbl.geometry = miqt_exec_method_cQStackedLayout_geometry
  vtbl[].vtbl.expandingDirections = miqt_exec_method_cQStackedLayout_expandingDirections
  vtbl[].vtbl.maximumSize = miqt_exec_method_cQStackedLayout_maximumSize
  vtbl[].vtbl.indexOf = miqt_exec_method_cQStackedLayout_indexOf
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQStackedLayout_isEmpty
  vtbl[].vtbl.controlTypes = miqt_exec_method_cQStackedLayout_controlTypes
  vtbl[].vtbl.replaceWidget = miqt_exec_method_cQStackedLayout_replaceWidget
  vtbl[].vtbl.layout = miqt_exec_method_cQStackedLayout_layout
  vtbl[].vtbl.childEvent = miqt_exec_method_cQStackedLayout_childEvent
  vtbl[].vtbl.event = miqt_exec_method_cQStackedLayout_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQStackedLayout_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQStackedLayout_timerEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQStackedLayout_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQStackedLayout_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQStackedLayout_disconnectNotify
  vtbl[].vtbl.minimumHeightForWidth = miqt_exec_method_cQStackedLayout_minimumHeightForWidth
  vtbl[].vtbl.widget = miqt_exec_method_cQStackedLayout_widget
  vtbl[].vtbl.spacerItem = miqt_exec_method_cQStackedLayout_spacerItem
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQStackedLayout_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qstackedlayout_types.QStackedLayout,
    vtbl: VirtualQStackedLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStackedLayoutVTable, _: ptr cQStackedLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQStackedLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQStackedLayout_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQStackedLayout_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQStackedLayout_metacall
  vtbl[].vtbl.count = miqt_exec_method_cQStackedLayout_count
  vtbl[].vtbl.addItem = miqt_exec_method_cQStackedLayout_addItem
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQStackedLayout_sizeHint
  vtbl[].vtbl.minimumSize = miqt_exec_method_cQStackedLayout_minimumSize
  vtbl[].vtbl.itemAt = miqt_exec_method_cQStackedLayout_itemAt
  vtbl[].vtbl.takeAt = miqt_exec_method_cQStackedLayout_takeAt
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQStackedLayout_setGeometry
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQStackedLayout_hasHeightForWidth
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQStackedLayout_heightForWidth
  vtbl[].vtbl.spacing = miqt_exec_method_cQStackedLayout_spacing
  vtbl[].vtbl.setSpacing = miqt_exec_method_cQStackedLayout_setSpacing
  vtbl[].vtbl.invalidate = miqt_exec_method_cQStackedLayout_invalidate
  vtbl[].vtbl.geometry = miqt_exec_method_cQStackedLayout_geometry
  vtbl[].vtbl.expandingDirections = miqt_exec_method_cQStackedLayout_expandingDirections
  vtbl[].vtbl.maximumSize = miqt_exec_method_cQStackedLayout_maximumSize
  vtbl[].vtbl.indexOf = miqt_exec_method_cQStackedLayout_indexOf
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQStackedLayout_isEmpty
  vtbl[].vtbl.controlTypes = miqt_exec_method_cQStackedLayout_controlTypes
  vtbl[].vtbl.replaceWidget = miqt_exec_method_cQStackedLayout_replaceWidget
  vtbl[].vtbl.layout = miqt_exec_method_cQStackedLayout_layout
  vtbl[].vtbl.childEvent = miqt_exec_method_cQStackedLayout_childEvent
  vtbl[].vtbl.event = miqt_exec_method_cQStackedLayout_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQStackedLayout_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQStackedLayout_timerEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQStackedLayout_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQStackedLayout_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQStackedLayout_disconnectNotify
  vtbl[].vtbl.minimumHeightForWidth = miqt_exec_method_cQStackedLayout_minimumHeightForWidth
  vtbl[].vtbl.widget = miqt_exec_method_cQStackedLayout_widget
  vtbl[].vtbl.spacerItem = miqt_exec_method_cQStackedLayout_spacerItem
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQStackedLayout_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qstackedlayout_types.QStackedLayout,
    parentLayout: gen_qlayout_types.QLayout,
    vtbl: VirtualQStackedLayout) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStackedLayoutVTable, _: ptr cQStackedLayout) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQStackedLayout()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQStackedLayout, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQStackedLayout_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQStackedLayout_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQStackedLayout_metacall
  vtbl[].vtbl.count = miqt_exec_method_cQStackedLayout_count
  vtbl[].vtbl.addItem = miqt_exec_method_cQStackedLayout_addItem
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQStackedLayout_sizeHint
  vtbl[].vtbl.minimumSize = miqt_exec_method_cQStackedLayout_minimumSize
  vtbl[].vtbl.itemAt = miqt_exec_method_cQStackedLayout_itemAt
  vtbl[].vtbl.takeAt = miqt_exec_method_cQStackedLayout_takeAt
  vtbl[].vtbl.setGeometry = miqt_exec_method_cQStackedLayout_setGeometry
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQStackedLayout_hasHeightForWidth
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQStackedLayout_heightForWidth
  vtbl[].vtbl.spacing = miqt_exec_method_cQStackedLayout_spacing
  vtbl[].vtbl.setSpacing = miqt_exec_method_cQStackedLayout_setSpacing
  vtbl[].vtbl.invalidate = miqt_exec_method_cQStackedLayout_invalidate
  vtbl[].vtbl.geometry = miqt_exec_method_cQStackedLayout_geometry
  vtbl[].vtbl.expandingDirections = miqt_exec_method_cQStackedLayout_expandingDirections
  vtbl[].vtbl.maximumSize = miqt_exec_method_cQStackedLayout_maximumSize
  vtbl[].vtbl.indexOf = miqt_exec_method_cQStackedLayout_indexOf
  vtbl[].vtbl.isEmpty = miqt_exec_method_cQStackedLayout_isEmpty
  vtbl[].vtbl.controlTypes = miqt_exec_method_cQStackedLayout_controlTypes
  vtbl[].vtbl.replaceWidget = miqt_exec_method_cQStackedLayout_replaceWidget
  vtbl[].vtbl.layout = miqt_exec_method_cQStackedLayout_layout
  vtbl[].vtbl.childEvent = miqt_exec_method_cQStackedLayout_childEvent
  vtbl[].vtbl.event = miqt_exec_method_cQStackedLayout_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQStackedLayout_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQStackedLayout_timerEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQStackedLayout_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQStackedLayout_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQStackedLayout_disconnectNotify
  vtbl[].vtbl.minimumHeightForWidth = miqt_exec_method_cQStackedLayout_minimumHeightForWidth
  vtbl[].vtbl.widget = miqt_exec_method_cQStackedLayout_widget
  vtbl[].vtbl.spacerItem = miqt_exec_method_cQStackedLayout_spacerItem
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQStackedLayout_new3(addr(vtbl[].vtbl), parentLayout.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qstackedlayout_types.QStackedLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedLayout_staticMetaObject())
