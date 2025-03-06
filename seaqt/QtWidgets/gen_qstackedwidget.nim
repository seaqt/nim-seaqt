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
{.compile("gen_qstackedwidget.cpp", cflags).}


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
  gen_qwidget_types

type cQStackedWidget*{.exportc: "QStackedWidget", incompleteStruct.} = object

proc fcQStackedWidget_metaObject(self: pointer, ): pointer {.importc: "QStackedWidget_metaObject".}
proc fcQStackedWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QStackedWidget_metacast".}
proc fcQStackedWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStackedWidget_metacall".}
proc fcQStackedWidget_tr(s: cstring): struct_miqt_string {.importc: "QStackedWidget_tr".}
proc fcQStackedWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QStackedWidget_trUtf8".}
proc fcQStackedWidget_addWidget(self: pointer, w: pointer): cint {.importc: "QStackedWidget_addWidget".}
proc fcQStackedWidget_insertWidget(self: pointer, index: cint, w: pointer): cint {.importc: "QStackedWidget_insertWidget".}
proc fcQStackedWidget_removeWidget(self: pointer, w: pointer): void {.importc: "QStackedWidget_removeWidget".}
proc fcQStackedWidget_currentWidget(self: pointer, ): pointer {.importc: "QStackedWidget_currentWidget".}
proc fcQStackedWidget_currentIndex(self: pointer, ): cint {.importc: "QStackedWidget_currentIndex".}
proc fcQStackedWidget_indexOf(self: pointer, param1: pointer): cint {.importc: "QStackedWidget_indexOf".}
proc fcQStackedWidget_widget(self: pointer, param1: cint): pointer {.importc: "QStackedWidget_widget".}
proc fcQStackedWidget_count(self: pointer, ): cint {.importc: "QStackedWidget_count".}
proc fcQStackedWidget_setCurrentIndex(self: pointer, index: cint): void {.importc: "QStackedWidget_setCurrentIndex".}
proc fcQStackedWidget_setCurrentWidget(self: pointer, w: pointer): void {.importc: "QStackedWidget_setCurrentWidget".}
proc fcQStackedWidget_currentChanged(self: pointer, param1: cint): void {.importc: "QStackedWidget_currentChanged".}
proc fcQStackedWidget_connect_currentChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QStackedWidget_connect_currentChanged".}
proc fcQStackedWidget_widgetRemoved(self: pointer, index: cint): void {.importc: "QStackedWidget_widgetRemoved".}
proc fcQStackedWidget_connect_widgetRemoved(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QStackedWidget_connect_widgetRemoved".}
proc fcQStackedWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStackedWidget_tr2".}
proc fcQStackedWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStackedWidget_tr3".}
proc fcQStackedWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStackedWidget_trUtf82".}
proc fcQStackedWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStackedWidget_trUtf83".}
type cQStackedWidgetVTable = object
  destructor*: proc(vtbl: ptr cQStackedWidgetVTable, self: ptr cQStackedWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQStackedWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QStackedWidget_virtualbase_metaObject".}
proc fcQStackedWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QStackedWidget_virtualbase_metacast".}
proc fcQStackedWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStackedWidget_virtualbase_metacall".}
proc fcQStackedWidget_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QStackedWidget_virtualbase_event".}
proc fcQStackedWidget_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QStackedWidget_virtualbase_sizeHint".}
proc fcQStackedWidget_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QStackedWidget_virtualbase_paintEvent".}
proc fcQStackedWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QStackedWidget_virtualbase_changeEvent".}
proc fcQStackedWidget_virtualbase_devType(self: pointer, ): cint {.importc: "QStackedWidget_virtualbase_devType".}
proc fcQStackedWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QStackedWidget_virtualbase_setVisible".}
proc fcQStackedWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QStackedWidget_virtualbase_minimumSizeHint".}
proc fcQStackedWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QStackedWidget_virtualbase_heightForWidth".}
proc fcQStackedWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QStackedWidget_virtualbase_hasHeightForWidth".}
proc fcQStackedWidget_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QStackedWidget_virtualbase_paintEngine".}
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
proc fcQStackedWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QStackedWidget_virtualbase_nativeEvent".}
proc fcQStackedWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QStackedWidget_virtualbase_metric".}
proc fcQStackedWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QStackedWidget_virtualbase_initPainter".}
proc fcQStackedWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QStackedWidget_virtualbase_redirected".}
proc fcQStackedWidget_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QStackedWidget_virtualbase_sharedPainter".}
proc fcQStackedWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QStackedWidget_virtualbase_inputMethodEvent".}
proc fcQStackedWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QStackedWidget_virtualbase_inputMethodQuery".}
proc fcQStackedWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QStackedWidget_virtualbase_focusNextPrevChild".}
proc fcQStackedWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStackedWidget_virtualbase_eventFilter".}
proc fcQStackedWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_timerEvent".}
proc fcQStackedWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_childEvent".}
proc fcQStackedWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QStackedWidget_virtualbase_customEvent".}
proc fcQStackedWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QStackedWidget_virtualbase_connectNotify".}
proc fcQStackedWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QStackedWidget_virtualbase_disconnectNotify".}
proc fcQStackedWidget_new(vtbl: pointer, parent: pointer): ptr cQStackedWidget {.importc: "QStackedWidget_new".}
proc fcQStackedWidget_new2(vtbl: pointer, ): ptr cQStackedWidget {.importc: "QStackedWidget_new2".}
proc fcQStackedWidget_staticMetaObject(): pointer {.importc: "QStackedWidget_staticMetaObject".}
proc fcQStackedWidget_delete(self: pointer) {.importc: "QStackedWidget_delete".}

proc metaObject*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedWidget_metaObject(self.h))

proc metacast*(self: gen_qstackedwidget_types.QStackedWidget, param1: cstring): pointer =
  fcQStackedWidget_metacast(self.h, param1)

proc metacall*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQStackedWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring): string =
  let v_ms = fcQStackedWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring): string =
  let v_ms = fcQStackedWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qstackedwidget_types.QStackedWidget, w: gen_qwidget_types.QWidget): cint =
  fcQStackedWidget_addWidget(self.h, w.h)

proc insertWidget*(self: gen_qstackedwidget_types.QStackedWidget, index: cint, w: gen_qwidget_types.QWidget): cint =
  fcQStackedWidget_insertWidget(self.h, index, w.h)

proc removeWidget*(self: gen_qstackedwidget_types.QStackedWidget, w: gen_qwidget_types.QWidget): void =
  fcQStackedWidget_removeWidget(self.h, w.h)

proc currentWidget*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedWidget_currentWidget(self.h))

proc currentIndex*(self: gen_qstackedwidget_types.QStackedWidget, ): cint =
  fcQStackedWidget_currentIndex(self.h)

proc indexOf*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qwidget_types.QWidget): cint =
  fcQStackedWidget_indexOf(self.h, param1.h)

proc widget*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStackedWidget_widget(self.h, param1))

proc count*(self: gen_qstackedwidget_types.QStackedWidget, ): cint =
  fcQStackedWidget_count(self.h)

proc setCurrentIndex*(self: gen_qstackedwidget_types.QStackedWidget, index: cint): void =
  fcQStackedWidget_setCurrentIndex(self.h, index)

proc setCurrentWidget*(self: gen_qstackedwidget_types.QStackedWidget, w: gen_qwidget_types.QWidget): void =
  fcQStackedWidget_setCurrentWidget(self.h, w.h)

proc currentChanged*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): void =
  fcQStackedWidget_currentChanged(self.h, param1)

type QStackedWidgetcurrentChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQStackedWidget_currentChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QStackedWidgetcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQStackedWidget_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QStackedWidgetcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentChanged*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetcurrentChangedSlot) =
  var tmp = new QStackedWidgetcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_connect_currentChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQStackedWidget_currentChanged, miqt_exec_callback_cQStackedWidget_currentChanged_release)

proc widgetRemoved*(self: gen_qstackedwidget_types.QStackedWidget, index: cint): void =
  fcQStackedWidget_widgetRemoved(self.h, index)

type QStackedWidgetwidgetRemovedSlot* = proc(index: cint)
proc miqt_exec_callback_cQStackedWidget_widgetRemoved(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QStackedWidgetwidgetRemovedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQStackedWidget_widgetRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QStackedWidgetwidgetRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onwidgetRemoved*(self: gen_qstackedwidget_types.QStackedWidget, slot: QStackedWidgetwidgetRemovedSlot) =
  var tmp = new QStackedWidgetwidgetRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStackedWidget_connect_widgetRemoved(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQStackedWidget_widgetRemoved, miqt_exec_callback_cQStackedWidget_widgetRemoved_release)

proc tr*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring, c: cstring): string =
  let v_ms = fcQStackedWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStackedWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring, c: cstring): string =
  let v_ms = fcQStackedWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstackedwidget_types.QStackedWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStackedWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QStackedWidgetmetaObjectProc* = proc(self: QStackedWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QStackedWidgetmetacastProc* = proc(self: QStackedWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QStackedWidgetmetacallProc* = proc(self: QStackedWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QStackedWidgeteventProc* = proc(self: QStackedWidget, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStackedWidgetsizeHintProc* = proc(self: QStackedWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QStackedWidgetpaintEventProc* = proc(self: QStackedWidget, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QStackedWidgetchangeEventProc* = proc(self: QStackedWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
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
type QStackedWidgetenterEventProc* = proc(self: QStackedWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
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
type QStackedWidgetnativeEventProc* = proc(self: QStackedWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QStackedWidgetVTable* = object
  vtbl: cQStackedWidgetVTable
  metaObject*: QStackedWidgetmetaObjectProc
  metacast*: QStackedWidgetmetacastProc
  metacall*: QStackedWidgetmetacallProc
  event*: QStackedWidgeteventProc
  sizeHint*: QStackedWidgetsizeHintProc
  paintEvent*: QStackedWidgetpaintEventProc
  changeEvent*: QStackedWidgetchangeEventProc
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
proc QStackedWidgetmetaObject*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedWidget_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQStackedWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QStackedWidgetmetacast*(self: gen_qstackedwidget_types.QStackedWidget, param1: cstring): pointer =
  fcQStackedWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQStackedWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QStackedWidgetmetacall*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQStackedWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQStackedWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStackedWidgetevent*(self: gen_qstackedwidget_types.QStackedWidget, e: gen_qcoreevent_types.QEvent): bool =
  fcQStackedWidget_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQStackedWidget_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QStackedWidgetsizeHint*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedWidget_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQStackedWidget_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QStackedWidgetpaintEvent*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qevent_types.QPaintEvent): void =
  fcQStackedWidget_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQStackedWidget_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QStackedWidgetchangeEvent*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQStackedWidget_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQStackedWidget_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QStackedWidgetdevType*(self: gen_qstackedwidget_types.QStackedWidget, ): cint =
  fcQStackedWidget_virtualbase_devType(self.h)

proc miqt_exec_callback_cQStackedWidget_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QStackedWidgetsetVisible*(self: gen_qstackedwidget_types.QStackedWidget, visible: bool): void =
  fcQStackedWidget_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQStackedWidget_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QStackedWidgetminimumSizeHint*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStackedWidget_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQStackedWidget_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QStackedWidgetheightForWidth*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): cint =
  fcQStackedWidget_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQStackedWidget_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QStackedWidgethasHeightForWidth*(self: gen_qstackedwidget_types.QStackedWidget, ): bool =
  fcQStackedWidget_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQStackedWidget_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QStackedWidgetpaintEngine*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQStackedWidget_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQStackedWidget_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QStackedWidgetmousePressEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQStackedWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QStackedWidgetmouseReleaseEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQStackedWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QStackedWidgetmouseDoubleClickEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQStackedWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QStackedWidgetmouseMoveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQStackedWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QStackedWidgetwheelEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQStackedWidget_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QStackedWidgetkeyPressEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQStackedWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QStackedWidgetkeyReleaseEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQStackedWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QStackedWidgetfocusInEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQStackedWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QStackedWidgetfocusOutEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQStackedWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QStackedWidgetenterEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQStackedWidget_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QStackedWidgetleaveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQStackedWidget_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QStackedWidgetmoveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQStackedWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QStackedWidgetresizeEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQStackedWidget_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QStackedWidgetcloseEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQStackedWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QStackedWidgetcontextMenuEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQStackedWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QStackedWidgettabletEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQStackedWidget_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QStackedWidgetactionEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QActionEvent): void =
  fcQStackedWidget_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QStackedWidgetdragEnterEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQStackedWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QStackedWidgetdragMoveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQStackedWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QStackedWidgetdragLeaveEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQStackedWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QStackedWidgetdropEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QDropEvent): void =
  fcQStackedWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QStackedWidgetshowEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QShowEvent): void =
  fcQStackedWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QStackedWidgethideEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qevent_types.QHideEvent): void =
  fcQStackedWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QStackedWidgetnativeEvent*(self: gen_qstackedwidget_types.QStackedWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQStackedWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQStackedWidget_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStackedWidgetmetric*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): cint =
  fcQStackedWidget_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQStackedWidget_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QStackedWidgetinitPainter*(self: gen_qstackedwidget_types.QStackedWidget, painter: gen_qpainter_types.QPainter): void =
  fcQStackedWidget_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQStackedWidget_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QStackedWidgetredirected*(self: gen_qstackedwidget_types.QStackedWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQStackedWidget_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQStackedWidget_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QStackedWidgetsharedPainter*(self: gen_qstackedwidget_types.QStackedWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQStackedWidget_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQStackedWidget_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QStackedWidgetinputMethodEvent*(self: gen_qstackedwidget_types.QStackedWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQStackedWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQStackedWidget_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QStackedWidgetinputMethodQuery*(self: gen_qstackedwidget_types.QStackedWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStackedWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQStackedWidget_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QStackedWidgetfocusNextPrevChild*(self: gen_qstackedwidget_types.QStackedWidget, next: bool): bool =
  fcQStackedWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQStackedWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QStackedWidgeteventFilter*(self: gen_qstackedwidget_types.QStackedWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStackedWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQStackedWidget_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QStackedWidgettimerEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStackedWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QStackedWidgetchildEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQStackedWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QStackedWidgetcustomEvent*(self: gen_qstackedwidget_types.QStackedWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQStackedWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQStackedWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QStackedWidgetconnectNotify*(self: gen_qstackedwidget_types.QStackedWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStackedWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStackedWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QStackedWidgetdisconnectNotify*(self: gen_qstackedwidget_types.QStackedWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStackedWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStackedWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStackedWidgetVTable](vtbl)
  let self = QStackedWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qstackedwidget_types.QStackedWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QStackedWidgetVTable = nil): gen_qstackedwidget_types.QStackedWidget =
  let vtbl = if vtbl == nil: new QStackedWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStackedWidgetVTable, _: ptr cQStackedWidget) {.cdecl.} =
    let vtbl = cast[ref QStackedWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStackedWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStackedWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStackedWidget_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStackedWidget_event
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQStackedWidget_sizeHint
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQStackedWidget_paintEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQStackedWidget_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQStackedWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQStackedWidget_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQStackedWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQStackedWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQStackedWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQStackedWidget_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQStackedWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQStackedWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQStackedWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQStackedWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQStackedWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQStackedWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQStackedWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQStackedWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQStackedWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQStackedWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQStackedWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQStackedWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQStackedWidget_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQStackedWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQStackedWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQStackedWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQStackedWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQStackedWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQStackedWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQStackedWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQStackedWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQStackedWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQStackedWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQStackedWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQStackedWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQStackedWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQStackedWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQStackedWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQStackedWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQStackedWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQStackedWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStackedWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStackedWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStackedWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStackedWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStackedWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStackedWidget_disconnectNotify
  gen_qstackedwidget_types.QStackedWidget(h: fcQStackedWidget_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qstackedwidget_types.QStackedWidget,
    vtbl: ref QStackedWidgetVTable = nil): gen_qstackedwidget_types.QStackedWidget =
  let vtbl = if vtbl == nil: new QStackedWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStackedWidgetVTable, _: ptr cQStackedWidget) {.cdecl.} =
    let vtbl = cast[ref QStackedWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStackedWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStackedWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStackedWidget_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStackedWidget_event
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQStackedWidget_sizeHint
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQStackedWidget_paintEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQStackedWidget_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQStackedWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQStackedWidget_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQStackedWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQStackedWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQStackedWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQStackedWidget_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQStackedWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQStackedWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQStackedWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQStackedWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQStackedWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQStackedWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQStackedWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQStackedWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQStackedWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQStackedWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQStackedWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQStackedWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQStackedWidget_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQStackedWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQStackedWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQStackedWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQStackedWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQStackedWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQStackedWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQStackedWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQStackedWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQStackedWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQStackedWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQStackedWidget_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQStackedWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQStackedWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQStackedWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQStackedWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQStackedWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQStackedWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQStackedWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStackedWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStackedWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStackedWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStackedWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStackedWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStackedWidget_disconnectNotify
  gen_qstackedwidget_types.QStackedWidget(h: fcQStackedWidget_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qstackedwidget_types.QStackedWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStackedWidget_staticMetaObject())
proc delete*(self: gen_qstackedwidget_types.QStackedWidget) =
  fcQStackedWidget_delete(self.h)
