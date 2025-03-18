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


{.compile("gen_qstackedwidget.cpp", QtWidgetsCFlags).}


import ./gen_qstackedwidget_types
export gen_qstackedwidget_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qframe,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qframe,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQStackedWidget*{.exportc: "QStackedWidget", incompleteStruct.} = object

proc fcQStackedWidget_metaObject(self: pointer): pointer {.importc: "QStackedWidget_metaObject".}
proc fcQStackedWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QStackedWidget_metacast".}
proc fcQStackedWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStackedWidget_metacall".}
proc fcQStackedWidget_tr(s: cstring): struct_miqt_string {.importc: "QStackedWidget_tr".}
proc fcQStackedWidget_addWidget(self: pointer, w: pointer): cint {.importc: "QStackedWidget_addWidget".}
proc fcQStackedWidget_insertWidget(self: pointer, index: cint, w: pointer): cint {.importc: "QStackedWidget_insertWidget".}
proc fcQStackedWidget_removeWidget(self: pointer, w: pointer): void {.importc: "QStackedWidget_removeWidget".}
proc fcQStackedWidget_currentWidget(self: pointer): pointer {.importc: "QStackedWidget_currentWidget".}
proc fcQStackedWidget_currentIndex(self: pointer): cint {.importc: "QStackedWidget_currentIndex".}
proc fcQStackedWidget_indexOf(self: pointer, param1: pointer): cint {.importc: "QStackedWidget_indexOf".}
proc fcQStackedWidget_widget(self: pointer, param1: cint): pointer {.importc: "QStackedWidget_widget".}
proc fcQStackedWidget_count(self: pointer): cint {.importc: "QStackedWidget_count".}
proc fcQStackedWidget_setCurrentIndex(self: pointer, index: cint): void {.importc: "QStackedWidget_setCurrentIndex".}
proc fcQStackedWidget_setCurrentWidget(self: pointer, w: pointer): void {.importc: "QStackedWidget_setCurrentWidget".}
proc fcQStackedWidget_currentChanged(self: pointer, param1: cint): void {.importc: "QStackedWidget_currentChanged".}
proc fcQStackedWidget_connect_currentChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QStackedWidget_connect_currentChanged".}
proc fcQStackedWidget_widgetRemoved(self: pointer, index: cint): void {.importc: "QStackedWidget_widgetRemoved".}
proc fcQStackedWidget_connect_widgetRemoved(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QStackedWidget_connect_widgetRemoved".}
proc fcQStackedWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStackedWidget_tr2".}
proc fcQStackedWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStackedWidget_tr3".}
proc fcQStackedWidget_vtbl(self: pointer): pointer {.importc: "QStackedWidget_vtbl".}
proc fcQStackedWidget_vdata(self: pointer): pointer {.importc: "QStackedWidget_vdata".}

type cQStackedWidgetVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQStackedWidget_virtualbase_metaObject(self: pointer): pointer {.importc: "QStackedWidget_virtualbase_metaObject".}
proc fcQStackedWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QStackedWidget_virtualbase_metacast".}
proc fcQStackedWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStackedWidget_virtualbase_metacall".}
proc fcQStackedWidget_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QStackedWidget_virtualbase_event".}
proc fcQStackedWidget_virtualbase_sizeHint(self: pointer): pointer {.importc: "QStackedWidget_virtualbase_sizeHint".}
proc fcQStackedWidget_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QStackedWidget_virtualbase_paintEvent".}
proc fcQStackedWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QStackedWidget_virtualbase_changeEvent".}
proc fcQStackedWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QStackedWidget_virtualbase_initStyleOption".}
proc fcQStackedWidget_virtualbase_devType(self: pointer): cint {.importc: "QStackedWidget_virtualbase_devType".}
proc fcQStackedWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QStackedWidget_virtualbase_setVisible".}
proc fcQStackedWidget_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QStackedWidget_virtualbase_minimumSizeHint".}
proc fcQStackedWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QStackedWidget_virtualbase_heightForWidth".}
proc fcQStackedWidget_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QStackedWidget_virtualbase_hasHeightForWidth".}
proc fcQStackedWidget_virtualbase_paintEngine(self: pointer): pointer {.importc: "QStackedWidget_virtualbase_paintEngine".}
proc fcQStackedWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_mousePressEvent".}
proc fcQStackedWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_mouseReleaseEvent".}
proc fcQStackedWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQStackedWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_mouseMoveEvent".}
proc fcQStackedWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_wheelEvent".}
proc fcQStackedWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_keyPressEvent".}
proc fcQStackedWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_keyReleaseEvent".}
proc fcQStackedWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_focusInEvent".}
proc fcQStackedWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_focusOutEvent".}
proc fcQStackedWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_enterEvent".}
proc fcQStackedWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_leaveEvent".}
proc fcQStackedWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_moveEvent".}
proc fcQStackedWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_resizeEvent".}
proc fcQStackedWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_closeEvent".}
proc fcQStackedWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_contextMenuEvent".}
proc fcQStackedWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_tabletEvent".}
proc fcQStackedWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_actionEvent".}
proc fcQStackedWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_dragEnterEvent".}
proc fcQStackedWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_dragMoveEvent".}
proc fcQStackedWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_dragLeaveEvent".}
proc fcQStackedWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_dropEvent".}
proc fcQStackedWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_showEvent".}
proc fcQStackedWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_hideEvent".}
proc fcQStackedWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QStackedWidget_virtualbase_nativeEvent".}
proc fcQStackedWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QStackedWidget_virtualbase_metric".}
proc fcQStackedWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QStackedWidget_virtualbase_initPainter".}
proc fcQStackedWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QStackedWidget_virtualbase_redirected".}
proc fcQStackedWidget_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QStackedWidget_virtualbase_sharedPainter".}
proc fcQStackedWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QStackedWidget_virtualbase_inputMethodEvent".}
proc fcQStackedWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QStackedWidget_virtualbase_inputMethodQuery".}
proc fcQStackedWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QStackedWidget_virtualbase_focusNextPrevChild".}
proc fcQStackedWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStackedWidget_virtualbase_eventFilter".}
proc fcQStackedWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_timerEvent".}
proc fcQStackedWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_childEvent".}
proc fcQStackedWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_customEvent".}
proc fcQStackedWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QStackedWidget_virtualbase_connectNotify".}
proc fcQStackedWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QStackedWidget_virtualbase_disconnectNotify".}
proc fcQStackedWidget_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QStackedWidget_protectedbase_drawFrame".}
proc fcQStackedWidget_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QStackedWidget_protectedbase_updateMicroFocus".}
proc fcQStackedWidget_protectedbase_create(self: pointer): void {.importc: "QStackedWidget_protectedbase_create".}
proc fcQStackedWidget_protectedbase_destroy(self: pointer): void {.importc: "QStackedWidget_protectedbase_destroy".}
proc fcQStackedWidget_protectedbase_focusNextChild(self: pointer): bool {.importc: "QStackedWidget_protectedbase_focusNextChild".}
proc fcQStackedWidget_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QStackedWidget_protectedbase_focusPreviousChild".}
proc fcQStackedWidget_protectedbase_sender(self: pointer): pointer {.importc: "QStackedWidget_protectedbase_sender".}
proc fcQStackedWidget_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QStackedWidget_protectedbase_senderSignalIndex".}
proc fcQStackedWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QStackedWidget_protectedbase_receivers".}
proc fcQStackedWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QStackedWidget_protectedbase_isSignalConnected".}
proc fcQStackedWidget_new(vtbl, vdata: pointer, parent: pointer): ptr cQStackedWidget {.importc: "QStackedWidget_new".}
proc fcQStackedWidget_new2(vtbl, vdata: pointer): ptr cQStackedWidget {.importc: "QStackedWidget_new2".}
proc fcQStackedWidget_staticMetaObject(): pointer {.importc: "QStackedWidget_staticMetaObject".}

proc metaObject*(self: gen_qstackedwidget_types.QStackedWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qstackedwidget_types.QStackedWidget, param1: cstring): pointer =
  fcQStackedWidget_metacast(self.h, param1)

proc metacall*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQStackedWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring): string =
  let v_ms = fcQStackedWidget_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qstackedwidget_types.QStackedWidget, w: gen_qwidget_types.QWidget): cint =
  fcQStackedWidget_addWidget(self.h, w.h)

proc insertWidget*(self: gen_qstackedwidget_types.QStackedWidget, index: cint, w: gen_qwidget_types.QWidget): cint =
  fcQStackedWidget_insertWidget(self.h, index, w.h)

proc removeWidget*(self: gen_qstackedwidget_types.QStackedWidget, w: gen_qwidget_types.QWidget): void =
  fcQStackedWidget_removeWidget(self.h, w.h)

proc currentWidget*(self: gen_qstackedwidget_types.QStackedWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedWidget_currentWidget(self.h), owned: false)

proc currentIndex*(self: gen_qstackedwidget_types.QStackedWidget): cint =
  fcQStackedWidget_currentIndex(self.h)

proc indexOf*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qwidget_types.QWidget): cint =
  fcQStackedWidget_indexOf(self.h, param1.h)

proc widget*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedWidget_widget(self.h, param1), owned: false)

proc count*(self: gen_qstackedwidget_types.QStackedWidget): cint =
  fcQStackedWidget_count(self.h)

proc setCurrentIndex*(self: gen_qstackedwidget_types.QStackedWidget, index: cint): void =
  fcQStackedWidget_setCurrentIndex(self.h, index)

proc setCurrentWidget*(self: gen_qstackedwidget_types.QStackedWidget, w: gen_qwidget_types.QWidget): void =
  fcQStackedWidget_setCurrentWidget(self.h, w.h)

proc currentChanged*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): void =
  fcQStackedWidget_currentChanged(self.h, param1)

type QStackedWidgetcurrentChangedSlot* = proc(param1: cint)
proc fcQStackedWidget_slot_callback_currentChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QStackedWidgetcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc fcQStackedWidget_slot_callback_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QStackedWidgetcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentChanged*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetcurrentChangedSlot) =
  var tmp = new QStackedWidgetcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_connect_currentChanged(self.h, cast[int](addr tmp[]), fcQStackedWidget_slot_callback_currentChanged, fcQStackedWidget_slot_callback_currentChanged_release)

proc widgetRemoved*(self: gen_qstackedwidget_types.QStackedWidget, index: cint): void =
  fcQStackedWidget_widgetRemoved(self.h, index)

type QStackedWidgetwidgetRemovedSlot* = proc(index: cint)
proc fcQStackedWidget_slot_callback_widgetRemoved(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QStackedWidgetwidgetRemovedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc fcQStackedWidget_slot_callback_widgetRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QStackedWidgetwidgetRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onWidgetRemoved*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetwidgetRemovedSlot) =
  var tmp = new QStackedWidgetwidgetRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_connect_widgetRemoved(self.h, cast[int](addr tmp[]), fcQStackedWidget_slot_callback_widgetRemoved, fcQStackedWidget_slot_callback_widgetRemoved_release)

proc tr*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring, c: cstring): string =
  let v_ms = fcQStackedWidget_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStackedWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QStackedWidgetmetaObjectProc* = proc(self: QStackedWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QStackedWidgetmetacastProc* = proc(self: QStackedWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QStackedWidgetmetacallProc* = proc(self: QStackedWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QStackedWidgeteventProc* = proc(self: QStackedWidget, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStackedWidgetsizeHintProc* = proc(self: QStackedWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QStackedWidgetpaintEventProc* = proc(self: QStackedWidget, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QStackedWidgetchangeEventProc* = proc(self: QStackedWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStackedWidgetinitStyleOptionProc* = proc(self: QStackedWidget, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QStackedWidgetdevTypeProc* = proc(self: QStackedWidget): cint {.raises: [], gcsafe.}
type QStackedWidgetsetVisibleProc* = proc(self: QStackedWidget, visible: bool): void {.raises: [], gcsafe.}
type QStackedWidgetminimumSizeHintProc* = proc(self: QStackedWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QStackedWidgetheightForWidthProc* = proc(self: QStackedWidget, param1: cint): cint {.raises: [], gcsafe.}
type QStackedWidgethasHeightForWidthProc* = proc(self: QStackedWidget): bool {.raises: [], gcsafe.}
type QStackedWidgetpaintEngineProc* = proc(self: QStackedWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QStackedWidgetmousePressEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QStackedWidgetmouseReleaseEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QStackedWidgetmouseDoubleClickEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QStackedWidgetmouseMoveEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QStackedWidgetwheelEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QStackedWidgetkeyPressEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QStackedWidgetkeyReleaseEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QStackedWidgetfocusInEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QStackedWidgetfocusOutEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QStackedWidgetenterEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QStackedWidgetleaveEventProc* = proc(self: QStackedWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStackedWidgetmoveEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QStackedWidgetresizeEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QStackedWidgetcloseEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QStackedWidgetcontextMenuEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QStackedWidgettabletEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QStackedWidgetactionEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QStackedWidgetdragEnterEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QStackedWidgetdragMoveEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QStackedWidgetdragLeaveEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QStackedWidgetdropEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QStackedWidgetshowEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QStackedWidgethideEventProc* = proc(self: QStackedWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QStackedWidgetnativeEventProc* = proc(self: QStackedWidget, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QStackedWidgetmetricProc* = proc(self: QStackedWidget, param1: cint): cint {.raises: [], gcsafe.}
type QStackedWidgetinitPainterProc* = proc(self: QStackedWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QStackedWidgetredirectedProc* = proc(self: QStackedWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QStackedWidgetsharedPainterProc* = proc(self: QStackedWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QStackedWidgetinputMethodEventProc* = proc(self: QStackedWidget, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QStackedWidgetinputMethodQueryProc* = proc(self: QStackedWidget, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QStackedWidgetfocusNextPrevChildProc* = proc(self: QStackedWidget, next: bool): bool {.raises: [], gcsafe.}
type QStackedWidgeteventFilterProc* = proc(self: QStackedWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStackedWidgettimerEventProc* = proc(self: QStackedWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QStackedWidgetchildEventProc* = proc(self: QStackedWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QStackedWidgetcustomEventProc* = proc(self: QStackedWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStackedWidgetconnectNotifyProc* = proc(self: QStackedWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStackedWidgetdisconnectNotifyProc* = proc(self: QStackedWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QStackedWidgetVTable* {.inheritable, pure.} = object
  vtbl: cQStackedWidgetVTable
  metaObject*: QStackedWidgetmetaObjectProc
  metacast*: QStackedWidgetmetacastProc
  metacall*: QStackedWidgetmetacallProc
  event*: QStackedWidgeteventProc
  sizeHint*: QStackedWidgetsizeHintProc
  paintEvent*: QStackedWidgetpaintEventProc
  changeEvent*: QStackedWidgetchangeEventProc
  initStyleOption*: QStackedWidgetinitStyleOptionProc
  devType*: QStackedWidgetdevTypeProc
  setVisible*: QStackedWidgetsetVisibleProc
  minimumSizeHint*: QStackedWidgetminimumSizeHintProc
  heightForWidth*: QStackedWidgetheightForWidthProc
  hasHeightForWidth*: QStackedWidgethasHeightForWidthProc
  paintEngine*: QStackedWidgetpaintEngineProc
  mousePressEvent*: QStackedWidgetmousePressEventProc
  mouseReleaseEvent*: QStackedWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QStackedWidgetmouseDoubleClickEventProc
  mouseMoveEvent*: QStackedWidgetmouseMoveEventProc
  wheelEvent*: QStackedWidgetwheelEventProc
  keyPressEvent*: QStackedWidgetkeyPressEventProc
  keyReleaseEvent*: QStackedWidgetkeyReleaseEventProc
  focusInEvent*: QStackedWidgetfocusInEventProc
  focusOutEvent*: QStackedWidgetfocusOutEventProc
  enterEvent*: QStackedWidgetenterEventProc
  leaveEvent*: QStackedWidgetleaveEventProc
  moveEvent*: QStackedWidgetmoveEventProc
  resizeEvent*: QStackedWidgetresizeEventProc
  closeEvent*: QStackedWidgetcloseEventProc
  contextMenuEvent*: QStackedWidgetcontextMenuEventProc
  tabletEvent*: QStackedWidgettabletEventProc
  actionEvent*: QStackedWidgetactionEventProc
  dragEnterEvent*: QStackedWidgetdragEnterEventProc
  dragMoveEvent*: QStackedWidgetdragMoveEventProc
  dragLeaveEvent*: QStackedWidgetdragLeaveEventProc
  dropEvent*: QStackedWidgetdropEventProc
  showEvent*: QStackedWidgetshowEventProc
  hideEvent*: QStackedWidgethideEventProc
  nativeEvent*: QStackedWidgetnativeEventProc
  metric*: QStackedWidgetmetricProc
  initPainter*: QStackedWidgetinitPainterProc
  redirected*: QStackedWidgetredirectedProc
  sharedPainter*: QStackedWidgetsharedPainterProc
  inputMethodEvent*: QStackedWidgetinputMethodEventProc
  inputMethodQuery*: QStackedWidgetinputMethodQueryProc
  focusNextPrevChild*: QStackedWidgetfocusNextPrevChildProc
  eventFilter*: QStackedWidgeteventFilterProc
  timerEvent*: QStackedWidgettimerEventProc
  childEvent*: QStackedWidgetchildEventProc
  customEvent*: QStackedWidgetcustomEventProc
  connectNotify*: QStackedWidgetconnectNotifyProc
  disconnectNotify*: QStackedWidgetdisconnectNotifyProc

proc QStackedWidgetmetaObject*(self: gen_qstackedwidget_types.QStackedWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedWidget_virtualbase_metaObject(self.h), owned: false)

proc QStackedWidgetmetacast*(self: gen_qstackedwidget_types.QStackedWidget, param1: cstring): pointer =
  fcQStackedWidget_virtualbase_metacast(self.h, param1)

proc QStackedWidgetmetacall*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQStackedWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QStackedWidgetevent*(self: gen_qstackedwidget_types.QStackedWidget, e: gen_qcoreevent_types.QEvent): bool =
  fcQStackedWidget_virtualbase_event(self.h, e.h)

proc QStackedWidgetsizeHint*(self: gen_qstackedwidget_types.QStackedWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedWidget_virtualbase_sizeHint(self.h), owned: true)

proc QStackedWidgetpaintEvent*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qevent_types.QPaintEvent): void =
  fcQStackedWidget_virtualbase_paintEvent(self.h, param1.h)

proc QStackedWidgetchangeEvent*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQStackedWidget_virtualbase_changeEvent(self.h, param1.h)

proc QStackedWidgetinitStyleOption*(self: gen_qstackedwidget_types.QStackedWidget, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQStackedWidget_virtualbase_initStyleOption(self.h, option.h)

proc QStackedWidgetdevType*(self: gen_qstackedwidget_types.QStackedWidget): cint =
  fcQStackedWidget_virtualbase_devType(self.h)

proc QStackedWidgetsetVisible*(self: gen_qstackedwidget_types.QStackedWidget, visible: bool): void =
  fcQStackedWidget_virtualbase_setVisible(self.h, visible)

proc QStackedWidgetminimumSizeHint*(self: gen_qstackedwidget_types.QStackedWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedWidget_virtualbase_minimumSizeHint(self.h), owned: true)

proc QStackedWidgetheightForWidth*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): cint =
  fcQStackedWidget_virtualbase_heightForWidth(self.h, param1)

proc QStackedWidgethasHeightForWidth*(self: gen_qstackedwidget_types.QStackedWidget): bool =
  fcQStackedWidget_virtualbase_hasHeightForWidth(self.h)

proc QStackedWidgetpaintEngine*(self: gen_qstackedwidget_types.QStackedWidget): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQStackedWidget_virtualbase_paintEngine(self.h), owned: false)

proc QStackedWidgetmousePressEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQStackedWidget_virtualbase_mousePressEvent(self.h, event.h)

proc QStackedWidgetmouseReleaseEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQStackedWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QStackedWidgetmouseDoubleClickEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQStackedWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QStackedWidgetmouseMoveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQStackedWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc QStackedWidgetwheelEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQStackedWidget_virtualbase_wheelEvent(self.h, event.h)

proc QStackedWidgetkeyPressEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQStackedWidget_virtualbase_keyPressEvent(self.h, event.h)

proc QStackedWidgetkeyReleaseEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQStackedWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc QStackedWidgetfocusInEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQStackedWidget_virtualbase_focusInEvent(self.h, event.h)

proc QStackedWidgetfocusOutEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQStackedWidget_virtualbase_focusOutEvent(self.h, event.h)

proc QStackedWidgetenterEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QEnterEvent): void =
  fcQStackedWidget_virtualbase_enterEvent(self.h, event.h)

proc QStackedWidgetleaveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQStackedWidget_virtualbase_leaveEvent(self.h, event.h)

proc QStackedWidgetmoveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQStackedWidget_virtualbase_moveEvent(self.h, event.h)

proc QStackedWidgetresizeEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQStackedWidget_virtualbase_resizeEvent(self.h, event.h)

proc QStackedWidgetcloseEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQStackedWidget_virtualbase_closeEvent(self.h, event.h)

proc QStackedWidgetcontextMenuEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQStackedWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc QStackedWidgettabletEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQStackedWidget_virtualbase_tabletEvent(self.h, event.h)

proc QStackedWidgetactionEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QActionEvent): void =
  fcQStackedWidget_virtualbase_actionEvent(self.h, event.h)

proc QStackedWidgetdragEnterEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQStackedWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc QStackedWidgetdragMoveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQStackedWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc QStackedWidgetdragLeaveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQStackedWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc QStackedWidgetdropEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QDropEvent): void =
  fcQStackedWidget_virtualbase_dropEvent(self.h, event.h)

proc QStackedWidgetshowEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QShowEvent): void =
  fcQStackedWidget_virtualbase_showEvent(self.h, event.h)

proc QStackedWidgethideEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QHideEvent): void =
  fcQStackedWidget_virtualbase_hideEvent(self.h, event.h)

proc QStackedWidgetnativeEvent*(self: gen_qstackedwidget_types.QStackedWidget, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQStackedWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QStackedWidgetmetric*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): cint =
  fcQStackedWidget_virtualbase_metric(self.h, cint(param1))

proc QStackedWidgetinitPainter*(self: gen_qstackedwidget_types.QStackedWidget, painter: gen_qpainter_types.QPainter): void =
  fcQStackedWidget_virtualbase_initPainter(self.h, painter.h)

proc QStackedWidgetredirected*(self: gen_qstackedwidget_types.QStackedWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQStackedWidget_virtualbase_redirected(self.h, offset.h), owned: false)

proc QStackedWidgetsharedPainter*(self: gen_qstackedwidget_types.QStackedWidget): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQStackedWidget_virtualbase_sharedPainter(self.h), owned: false)

proc QStackedWidgetinputMethodEvent*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQStackedWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc QStackedWidgetinputMethodQuery*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStackedWidget_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QStackedWidgetfocusNextPrevChild*(self: gen_qstackedwidget_types.QStackedWidget, next: bool): bool =
  fcQStackedWidget_virtualbase_focusNextPrevChild(self.h, next)

proc QStackedWidgeteventFilter*(self: gen_qstackedwidget_types.QStackedWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStackedWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QStackedWidgettimerEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStackedWidget_virtualbase_timerEvent(self.h, event.h)

proc QStackedWidgetchildEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQStackedWidget_virtualbase_childEvent(self.h, event.h)

proc QStackedWidgetcustomEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQStackedWidget_virtualbase_customEvent(self.h, event.h)

proc QStackedWidgetconnectNotify*(self: gen_qstackedwidget_types.QStackedWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStackedWidget_virtualbase_connectNotify(self.h, signal.h)

proc QStackedWidgetdisconnectNotify*(self: gen_qstackedwidget_types.QStackedWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStackedWidget_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQStackedWidget_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQStackedWidget_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStackedWidget_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQStackedWidget_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc fcQStackedWidget_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQStackedWidget_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQStackedWidget_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQStackedWidget_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQStackedWidget_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStackedWidget_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQStackedWidget_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQStackedWidget_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQStackedWidget_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQStackedWidget_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQStackedWidget_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQStackedWidget_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](fcQStackedWidget_vdata(self))
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQStackedWidget* {.inheritable.} = ref object of QStackedWidget
  vtbl*: cQStackedWidgetVTable

method metaObject*(self: VirtualQStackedWidget): gen_qobjectdefs_types.QMetaObject {.base.} =
  QStackedWidgetmetaObject(self[])
method metacast*(self: VirtualQStackedWidget, param1: cstring): pointer {.base.} =
  QStackedWidgetmetacast(self[], param1)
method metacall*(self: VirtualQStackedWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QStackedWidgetmetacall(self[], param1, param2, param3)
method event*(self: VirtualQStackedWidget, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStackedWidgetevent(self[], e)
method sizeHint*(self: VirtualQStackedWidget): gen_qsize_types.QSize {.base.} =
  QStackedWidgetsizeHint(self[])
method paintEvent*(self: VirtualQStackedWidget, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QStackedWidgetpaintEvent(self[], param1)
method changeEvent*(self: VirtualQStackedWidget, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QStackedWidgetchangeEvent(self[], param1)
method initStyleOption*(self: VirtualQStackedWidget, option: gen_qstyleoption_types.QStyleOptionFrame): void {.base.} =
  QStackedWidgetinitStyleOption(self[], option)
method devType*(self: VirtualQStackedWidget): cint {.base.} =
  QStackedWidgetdevType(self[])
method setVisible*(self: VirtualQStackedWidget, visible: bool): void {.base.} =
  QStackedWidgetsetVisible(self[], visible)
method minimumSizeHint*(self: VirtualQStackedWidget): gen_qsize_types.QSize {.base.} =
  QStackedWidgetminimumSizeHint(self[])
method heightForWidth*(self: VirtualQStackedWidget, param1: cint): cint {.base.} =
  QStackedWidgetheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQStackedWidget): bool {.base.} =
  QStackedWidgethasHeightForWidth(self[])
method paintEngine*(self: VirtualQStackedWidget): gen_qpaintengine_types.QPaintEngine {.base.} =
  QStackedWidgetpaintEngine(self[])
method mousePressEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QStackedWidgetmousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QStackedWidgetmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QStackedWidgetmouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QStackedWidgetmouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QStackedWidgetwheelEvent(self[], event)
method keyPressEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QStackedWidgetkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QStackedWidgetkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QStackedWidgetfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QStackedWidgetfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QStackedWidgetenterEvent(self[], event)
method leaveEvent*(self: VirtualQStackedWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStackedWidgetleaveEvent(self[], event)
method moveEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QStackedWidgetmoveEvent(self[], event)
method resizeEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QStackedWidgetresizeEvent(self[], event)
method closeEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QStackedWidgetcloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QStackedWidgetcontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QStackedWidgettabletEvent(self[], event)
method actionEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QActionEvent): void {.base.} =
  QStackedWidgetactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QStackedWidgetdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QStackedWidgetdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QStackedWidgetdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QDropEvent): void {.base.} =
  QStackedWidgetdropEvent(self[], event)
method showEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QStackedWidgetshowEvent(self[], event)
method hideEvent*(self: VirtualQStackedWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QStackedWidgethideEvent(self[], event)
method nativeEvent*(self: VirtualQStackedWidget, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QStackedWidgetnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQStackedWidget, param1: cint): cint {.base.} =
  QStackedWidgetmetric(self[], param1)
method initPainter*(self: VirtualQStackedWidget, painter: gen_qpainter_types.QPainter): void {.base.} =
  QStackedWidgetinitPainter(self[], painter)
method redirected*(self: VirtualQStackedWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QStackedWidgetredirected(self[], offset)
method sharedPainter*(self: VirtualQStackedWidget): gen_qpainter_types.QPainter {.base.} =
  QStackedWidgetsharedPainter(self[])
method inputMethodEvent*(self: VirtualQStackedWidget, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QStackedWidgetinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQStackedWidget, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QStackedWidgetinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQStackedWidget, next: bool): bool {.base.} =
  QStackedWidgetfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQStackedWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStackedWidgeteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQStackedWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QStackedWidgettimerEvent(self[], event)
method childEvent*(self: VirtualQStackedWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QStackedWidgetchildEvent(self[], event)
method customEvent*(self: VirtualQStackedWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStackedWidgetcustomEvent(self[], event)
method connectNotify*(self: VirtualQStackedWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStackedWidgetconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQStackedWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStackedWidgetdisconnectNotify(self[], signal)

proc fcQStackedWidget_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQStackedWidget_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStackedWidget_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQStackedWidget_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

proc fcQStackedWidget_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQStackedWidget_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option, owned: false)
  inst.initStyleOption(slotval1)

proc fcQStackedWidget_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQStackedWidget_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQStackedWidget_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQStackedWidget_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQStackedWidget_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQStackedWidget_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQStackedWidget_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQStackedWidget_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQStackedWidget_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQStackedWidget_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQStackedWidget_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQStackedWidget_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQStackedWidget_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQStackedWidget_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQStackedWidget_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQStackedWidget_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQStackedWidget_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQStackedWidget_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQStackedWidget_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQStackedWidget_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQStackedWidget_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQStackedWidget_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQStackedWidget_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQStackedWidget_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQStackedWidget_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQStackedWidget_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQStackedWidget_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQStackedWidget_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQStackedWidget_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQStackedWidget_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQStackedWidget_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQStackedWidget_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQStackedWidget_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQStackedWidget_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQStackedWidget_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQStackedWidget_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQStackedWidget_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQStackedWidget_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQStackedWidget_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQStackedWidget](fcQStackedWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc drawFrame*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qpainter_types.QPainter): void =
  fcQStackedWidget_protectedbase_drawFrame(self.h, param1.h)

proc updateMicroFocus*(self: gen_qstackedwidget_types.QStackedWidget): void =
  fcQStackedWidget_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qstackedwidget_types.QStackedWidget): void =
  fcQStackedWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qstackedwidget_types.QStackedWidget): void =
  fcQStackedWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qstackedwidget_types.QStackedWidget): bool =
  fcQStackedWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qstackedwidget_types.QStackedWidget): bool =
  fcQStackedWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qstackedwidget_types.QStackedWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStackedWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qstackedwidget_types.QStackedWidget): cint =
  fcQStackedWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qstackedwidget_types.QStackedWidget, signal: cstring): cint =
  fcQStackedWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qstackedwidget_types.QStackedWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQStackedWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qstackedwidget_types.QStackedWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QStackedWidgetVTable = nil): gen_qstackedwidget_types.QStackedWidget =
  let vtbl = if vtbl == nil: new QStackedWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStackedWidgetVTable](fcQStackedWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQStackedWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQStackedWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQStackedWidget_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQStackedWidget_vtable_callback_event
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQStackedWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQStackedWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQStackedWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQStackedWidget_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQStackedWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQStackedWidget_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQStackedWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQStackedWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQStackedWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQStackedWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQStackedWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQStackedWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQStackedWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQStackedWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQStackedWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQStackedWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQStackedWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQStackedWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQStackedWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQStackedWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQStackedWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQStackedWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQStackedWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQStackedWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQStackedWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQStackedWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQStackedWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQStackedWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQStackedWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQStackedWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQStackedWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQStackedWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQStackedWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQStackedWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQStackedWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQStackedWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQStackedWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQStackedWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQStackedWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQStackedWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQStackedWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQStackedWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQStackedWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQStackedWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQStackedWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQStackedWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQStackedWidget_vtable_callback_disconnectNotify
  gen_qstackedwidget_types.QStackedWidget(h: fcQStackedWidget_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qstackedwidget_types.QStackedWidget,
    vtbl: ref QStackedWidgetVTable = nil): gen_qstackedwidget_types.QStackedWidget =
  let vtbl = if vtbl == nil: new QStackedWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QStackedWidgetVTable](fcQStackedWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQStackedWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQStackedWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQStackedWidget_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQStackedWidget_vtable_callback_event
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQStackedWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQStackedWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQStackedWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = fcQStackedWidget_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQStackedWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQStackedWidget_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQStackedWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQStackedWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQStackedWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQStackedWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQStackedWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQStackedWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQStackedWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQStackedWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQStackedWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQStackedWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQStackedWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQStackedWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQStackedWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQStackedWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQStackedWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQStackedWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQStackedWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQStackedWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQStackedWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQStackedWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQStackedWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQStackedWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQStackedWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQStackedWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQStackedWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQStackedWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQStackedWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQStackedWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQStackedWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQStackedWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQStackedWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQStackedWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQStackedWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQStackedWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQStackedWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQStackedWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQStackedWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQStackedWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQStackedWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQStackedWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQStackedWidget_vtable_callback_disconnectNotify
  gen_qstackedwidget_types.QStackedWidget(h: fcQStackedWidget_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQStackedWidget_mvtbl = cQStackedWidgetVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQStackedWidget()[])](self.fcQStackedWidget_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQStackedWidget_method_callback_metaObject,
  metacast: fcQStackedWidget_method_callback_metacast,
  metacall: fcQStackedWidget_method_callback_metacall,
  event: fcQStackedWidget_method_callback_event,
  sizeHint: fcQStackedWidget_method_callback_sizeHint,
  paintEvent: fcQStackedWidget_method_callback_paintEvent,
  changeEvent: fcQStackedWidget_method_callback_changeEvent,
  initStyleOption: fcQStackedWidget_method_callback_initStyleOption,
  devType: fcQStackedWidget_method_callback_devType,
  setVisible: fcQStackedWidget_method_callback_setVisible,
  minimumSizeHint: fcQStackedWidget_method_callback_minimumSizeHint,
  heightForWidth: fcQStackedWidget_method_callback_heightForWidth,
  hasHeightForWidth: fcQStackedWidget_method_callback_hasHeightForWidth,
  paintEngine: fcQStackedWidget_method_callback_paintEngine,
  mousePressEvent: fcQStackedWidget_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQStackedWidget_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQStackedWidget_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQStackedWidget_method_callback_mouseMoveEvent,
  wheelEvent: fcQStackedWidget_method_callback_wheelEvent,
  keyPressEvent: fcQStackedWidget_method_callback_keyPressEvent,
  keyReleaseEvent: fcQStackedWidget_method_callback_keyReleaseEvent,
  focusInEvent: fcQStackedWidget_method_callback_focusInEvent,
  focusOutEvent: fcQStackedWidget_method_callback_focusOutEvent,
  enterEvent: fcQStackedWidget_method_callback_enterEvent,
  leaveEvent: fcQStackedWidget_method_callback_leaveEvent,
  moveEvent: fcQStackedWidget_method_callback_moveEvent,
  resizeEvent: fcQStackedWidget_method_callback_resizeEvent,
  closeEvent: fcQStackedWidget_method_callback_closeEvent,
  contextMenuEvent: fcQStackedWidget_method_callback_contextMenuEvent,
  tabletEvent: fcQStackedWidget_method_callback_tabletEvent,
  actionEvent: fcQStackedWidget_method_callback_actionEvent,
  dragEnterEvent: fcQStackedWidget_method_callback_dragEnterEvent,
  dragMoveEvent: fcQStackedWidget_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQStackedWidget_method_callback_dragLeaveEvent,
  dropEvent: fcQStackedWidget_method_callback_dropEvent,
  showEvent: fcQStackedWidget_method_callback_showEvent,
  hideEvent: fcQStackedWidget_method_callback_hideEvent,
  nativeEvent: fcQStackedWidget_method_callback_nativeEvent,
  metric: fcQStackedWidget_method_callback_metric,
  initPainter: fcQStackedWidget_method_callback_initPainter,
  redirected: fcQStackedWidget_method_callback_redirected,
  sharedPainter: fcQStackedWidget_method_callback_sharedPainter,
  inputMethodEvent: fcQStackedWidget_method_callback_inputMethodEvent,
  inputMethodQuery: fcQStackedWidget_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQStackedWidget_method_callback_focusNextPrevChild,
  eventFilter: fcQStackedWidget_method_callback_eventFilter,
  timerEvent: fcQStackedWidget_method_callback_timerEvent,
  childEvent: fcQStackedWidget_method_callback_childEvent,
  customEvent: fcQStackedWidget_method_callback_customEvent,
  connectNotify: fcQStackedWidget_method_callback_connectNotify,
  disconnectNotify: fcQStackedWidget_method_callback_disconnectNotify,
)
proc create*(T: type gen_qstackedwidget_types.QStackedWidget,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQStackedWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStackedWidget_new(addr(cQStackedWidget_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qstackedwidget_types.QStackedWidget,
    inst: VirtualQStackedWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQStackedWidget_new2(addr(cQStackedWidget_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qstackedwidget_types.QStackedWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedWidget_staticMetaObject())
