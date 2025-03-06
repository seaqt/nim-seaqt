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
{.compile("gen_qmdisubwindow.cpp", cflags).}


type QMdiSubWindowSubWindowOptionEnum* = distinct cint
template AllowOutsideAreaHorizontally*(_: type QMdiSubWindowSubWindowOptionEnum): untyped = 1
template AllowOutsideAreaVertically*(_: type QMdiSubWindowSubWindowOptionEnum): untyped = 2
template RubberBandResize*(_: type QMdiSubWindowSubWindowOptionEnum): untyped = 4
template RubberBandMove*(_: type QMdiSubWindowSubWindowOptionEnum): untyped = 8


import ./gen_qmdisubwindow_types
export gen_qmdisubwindow_types

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
  ./gen_qmdiarea_types,
  ./gen_qmenu_types,
  ./gen_qwidget
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
  gen_qmdiarea_types,
  gen_qmenu_types,
  gen_qwidget

type cQMdiSubWindow*{.exportc: "QMdiSubWindow", incompleteStruct.} = object

proc fcQMdiSubWindow_metaObject(self: pointer, ): pointer {.importc: "QMdiSubWindow_metaObject".}
proc fcQMdiSubWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QMdiSubWindow_metacast".}
proc fcQMdiSubWindow_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMdiSubWindow_metacall".}
proc fcQMdiSubWindow_tr(s: cstring): struct_miqt_string {.importc: "QMdiSubWindow_tr".}
proc fcQMdiSubWindow_sizeHint(self: pointer, ): pointer {.importc: "QMdiSubWindow_sizeHint".}
proc fcQMdiSubWindow_minimumSizeHint(self: pointer, ): pointer {.importc: "QMdiSubWindow_minimumSizeHint".}
proc fcQMdiSubWindow_setWidget(self: pointer, widget: pointer): void {.importc: "QMdiSubWindow_setWidget".}
proc fcQMdiSubWindow_widget(self: pointer, ): pointer {.importc: "QMdiSubWindow_widget".}
proc fcQMdiSubWindow_maximizedButtonsWidget(self: pointer, ): pointer {.importc: "QMdiSubWindow_maximizedButtonsWidget".}
proc fcQMdiSubWindow_maximizedSystemMenuIconWidget(self: pointer, ): pointer {.importc: "QMdiSubWindow_maximizedSystemMenuIconWidget".}
proc fcQMdiSubWindow_isShaded(self: pointer, ): bool {.importc: "QMdiSubWindow_isShaded".}
proc fcQMdiSubWindow_setOption(self: pointer, option: cint): void {.importc: "QMdiSubWindow_setOption".}
proc fcQMdiSubWindow_testOption(self: pointer, param1: cint): bool {.importc: "QMdiSubWindow_testOption".}
proc fcQMdiSubWindow_setKeyboardSingleStep(self: pointer, step: cint): void {.importc: "QMdiSubWindow_setKeyboardSingleStep".}
proc fcQMdiSubWindow_keyboardSingleStep(self: pointer, ): cint {.importc: "QMdiSubWindow_keyboardSingleStep".}
proc fcQMdiSubWindow_setKeyboardPageStep(self: pointer, step: cint): void {.importc: "QMdiSubWindow_setKeyboardPageStep".}
proc fcQMdiSubWindow_keyboardPageStep(self: pointer, ): cint {.importc: "QMdiSubWindow_keyboardPageStep".}
proc fcQMdiSubWindow_setSystemMenu(self: pointer, systemMenu: pointer): void {.importc: "QMdiSubWindow_setSystemMenu".}
proc fcQMdiSubWindow_systemMenu(self: pointer, ): pointer {.importc: "QMdiSubWindow_systemMenu".}
proc fcQMdiSubWindow_mdiArea(self: pointer, ): pointer {.importc: "QMdiSubWindow_mdiArea".}
proc fcQMdiSubWindow_windowStateChanged(self: pointer, oldState: cint, newState: cint): void {.importc: "QMdiSubWindow_windowStateChanged".}
proc fcQMdiSubWindow_connect_windowStateChanged(self: pointer, slot: int) {.importc: "QMdiSubWindow_connect_windowStateChanged".}
proc fcQMdiSubWindow_aboutToActivate(self: pointer, ): void {.importc: "QMdiSubWindow_aboutToActivate".}
proc fcQMdiSubWindow_connect_aboutToActivate(self: pointer, slot: int) {.importc: "QMdiSubWindow_connect_aboutToActivate".}
proc fcQMdiSubWindow_showSystemMenu(self: pointer, ): void {.importc: "QMdiSubWindow_showSystemMenu".}
proc fcQMdiSubWindow_showShaded(self: pointer, ): void {.importc: "QMdiSubWindow_showShaded".}
proc fcQMdiSubWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMdiSubWindow_tr2".}
proc fcQMdiSubWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMdiSubWindow_tr3".}
proc fcQMdiSubWindow_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QMdiSubWindow_setOption2".}
type cQMdiSubWindowVTable = object
  destructor*: proc(vtbl: ptr cQMdiSubWindowVTable, self: ptr cQMdiSubWindow) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, showEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, hideEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, changeEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, closeEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, leaveEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, resizeEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, timerEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, moveEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, paintEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, mouseEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, mouseEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, mouseEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, mouseEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, keyEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, contextMenuEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, focusInEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, focusOutEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, childEvent: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQMdiSubWindow_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QMdiSubWindow_virtualbase_metaObject".}
proc fcQMdiSubWindow_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMdiSubWindow_virtualbase_metacast".}
proc fcQMdiSubWindow_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMdiSubWindow_virtualbase_metacall".}
proc fcQMdiSubWindow_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QMdiSubWindow_virtualbase_sizeHint".}
proc fcQMdiSubWindow_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QMdiSubWindow_virtualbase_minimumSizeHint".}
proc fcQMdiSubWindow_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QMdiSubWindow_virtualbase_eventFilter".}
proc fcQMdiSubWindow_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMdiSubWindow_virtualbase_event".}
proc fcQMdiSubWindow_virtualbase_showEvent(self: pointer, showEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_showEvent".}
proc fcQMdiSubWindow_virtualbase_hideEvent(self: pointer, hideEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_hideEvent".}
proc fcQMdiSubWindow_virtualbase_changeEvent(self: pointer, changeEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_changeEvent".}
proc fcQMdiSubWindow_virtualbase_closeEvent(self: pointer, closeEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_closeEvent".}
proc fcQMdiSubWindow_virtualbase_leaveEvent(self: pointer, leaveEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_leaveEvent".}
proc fcQMdiSubWindow_virtualbase_resizeEvent(self: pointer, resizeEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_resizeEvent".}
proc fcQMdiSubWindow_virtualbase_timerEvent(self: pointer, timerEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_timerEvent".}
proc fcQMdiSubWindow_virtualbase_moveEvent(self: pointer, moveEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_moveEvent".}
proc fcQMdiSubWindow_virtualbase_paintEvent(self: pointer, paintEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_paintEvent".}
proc fcQMdiSubWindow_virtualbase_mousePressEvent(self: pointer, mouseEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_mousePressEvent".}
proc fcQMdiSubWindow_virtualbase_mouseDoubleClickEvent(self: pointer, mouseEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQMdiSubWindow_virtualbase_mouseReleaseEvent(self: pointer, mouseEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_mouseReleaseEvent".}
proc fcQMdiSubWindow_virtualbase_mouseMoveEvent(self: pointer, mouseEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_mouseMoveEvent".}
proc fcQMdiSubWindow_virtualbase_keyPressEvent(self: pointer, keyEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_keyPressEvent".}
proc fcQMdiSubWindow_virtualbase_contextMenuEvent(self: pointer, contextMenuEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_contextMenuEvent".}
proc fcQMdiSubWindow_virtualbase_focusInEvent(self: pointer, focusInEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_focusInEvent".}
proc fcQMdiSubWindow_virtualbase_focusOutEvent(self: pointer, focusOutEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_focusOutEvent".}
proc fcQMdiSubWindow_virtualbase_childEvent(self: pointer, childEvent: pointer): void {.importc: "QMdiSubWindow_virtualbase_childEvent".}
proc fcQMdiSubWindow_virtualbase_devType(self: pointer, ): cint {.importc: "QMdiSubWindow_virtualbase_devType".}
proc fcQMdiSubWindow_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QMdiSubWindow_virtualbase_setVisible".}
proc fcQMdiSubWindow_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QMdiSubWindow_virtualbase_heightForWidth".}
proc fcQMdiSubWindow_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QMdiSubWindow_virtualbase_hasHeightForWidth".}
proc fcQMdiSubWindow_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QMdiSubWindow_virtualbase_paintEngine".}
proc fcQMdiSubWindow_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QMdiSubWindow_virtualbase_wheelEvent".}
proc fcQMdiSubWindow_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QMdiSubWindow_virtualbase_keyReleaseEvent".}
proc fcQMdiSubWindow_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QMdiSubWindow_virtualbase_enterEvent".}
proc fcQMdiSubWindow_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QMdiSubWindow_virtualbase_tabletEvent".}
proc fcQMdiSubWindow_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QMdiSubWindow_virtualbase_actionEvent".}
proc fcQMdiSubWindow_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QMdiSubWindow_virtualbase_dragEnterEvent".}
proc fcQMdiSubWindow_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QMdiSubWindow_virtualbase_dragMoveEvent".}
proc fcQMdiSubWindow_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QMdiSubWindow_virtualbase_dragLeaveEvent".}
proc fcQMdiSubWindow_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QMdiSubWindow_virtualbase_dropEvent".}
proc fcQMdiSubWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QMdiSubWindow_virtualbase_nativeEvent".}
proc fcQMdiSubWindow_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QMdiSubWindow_virtualbase_metric".}
proc fcQMdiSubWindow_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QMdiSubWindow_virtualbase_initPainter".}
proc fcQMdiSubWindow_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QMdiSubWindow_virtualbase_redirected".}
proc fcQMdiSubWindow_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QMdiSubWindow_virtualbase_sharedPainter".}
proc fcQMdiSubWindow_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QMdiSubWindow_virtualbase_inputMethodEvent".}
proc fcQMdiSubWindow_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QMdiSubWindow_virtualbase_inputMethodQuery".}
proc fcQMdiSubWindow_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QMdiSubWindow_virtualbase_focusNextPrevChild".}
proc fcQMdiSubWindow_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMdiSubWindow_virtualbase_customEvent".}
proc fcQMdiSubWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMdiSubWindow_virtualbase_connectNotify".}
proc fcQMdiSubWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMdiSubWindow_virtualbase_disconnectNotify".}
proc fcQMdiSubWindow_new(vtbl: pointer, parent: pointer): ptr cQMdiSubWindow {.importc: "QMdiSubWindow_new".}
proc fcQMdiSubWindow_new2(vtbl: pointer, ): ptr cQMdiSubWindow {.importc: "QMdiSubWindow_new2".}
proc fcQMdiSubWindow_new3(vtbl: pointer, parent: pointer, flags: cint): ptr cQMdiSubWindow {.importc: "QMdiSubWindow_new3".}
proc fcQMdiSubWindow_staticMetaObject(): pointer {.importc: "QMdiSubWindow_staticMetaObject".}
proc fcQMdiSubWindow_delete(self: pointer) {.importc: "QMdiSubWindow_delete".}

proc metaObject*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMdiSubWindow_metaObject(self.h))

proc metacast*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cstring): pointer =
  fcQMdiSubWindow_metacast(self.h, param1)

proc metacall*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQMdiSubWindow_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmdisubwindow_types.QMdiSubWindow, s: cstring): string =
  let v_ms = fcQMdiSubWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMdiSubWindow_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMdiSubWindow_minimumSizeHint(self.h))

proc setWidget*(self: gen_qmdisubwindow_types.QMdiSubWindow, widget: gen_qwidget_types.QWidget): void =
  fcQMdiSubWindow_setWidget(self.h, widget.h)

proc widget*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMdiSubWindow_widget(self.h))

proc maximizedButtonsWidget*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMdiSubWindow_maximizedButtonsWidget(self.h))

proc maximizedSystemMenuIconWidget*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQMdiSubWindow_maximizedSystemMenuIconWidget(self.h))

proc isShaded*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): bool =
  fcQMdiSubWindow_isShaded(self.h)

proc setOption*(self: gen_qmdisubwindow_types.QMdiSubWindow, option: cint): void =
  fcQMdiSubWindow_setOption(self.h, cint(option))

proc testOption*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cint): bool =
  fcQMdiSubWindow_testOption(self.h, cint(param1))

proc setKeyboardSingleStep*(self: gen_qmdisubwindow_types.QMdiSubWindow, step: cint): void =
  fcQMdiSubWindow_setKeyboardSingleStep(self.h, step)

proc keyboardSingleStep*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): cint =
  fcQMdiSubWindow_keyboardSingleStep(self.h)

proc setKeyboardPageStep*(self: gen_qmdisubwindow_types.QMdiSubWindow, step: cint): void =
  fcQMdiSubWindow_setKeyboardPageStep(self.h, step)

proc keyboardPageStep*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): cint =
  fcQMdiSubWindow_keyboardPageStep(self.h)

proc setSystemMenu*(self: gen_qmdisubwindow_types.QMdiSubWindow, systemMenu: gen_qmenu_types.QMenu): void =
  fcQMdiSubWindow_setSystemMenu(self.h, systemMenu.h)

proc systemMenu*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQMdiSubWindow_systemMenu(self.h))

proc mdiArea*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qmdiarea_types.QMdiArea =
  gen_qmdiarea_types.QMdiArea(h: fcQMdiSubWindow_mdiArea(self.h))

proc windowStateChanged*(self: gen_qmdisubwindow_types.QMdiSubWindow, oldState: cint, newState: cint): void =
  fcQMdiSubWindow_windowStateChanged(self.h, cint(oldState), cint(newState))

type QMdiSubWindowwindowStateChangedSlot* = proc(oldState: cint, newState: cint)
proc miqt_exec_callback_cQMdiSubWindow_windowStateChanged(slot: int, oldState: cint, newState: cint) {.exportc: "miqt_exec_callback_QMdiSubWindow_windowStateChanged".} =
  let nimfunc = cast[ptr QMdiSubWindowwindowStateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(oldState)

  let slotval2 = cint(newState)

  nimfunc[](slotval1, slotval2)

proc onwindowStateChanged*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowwindowStateChangedSlot) =
  var tmp = new QMdiSubWindowwindowStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_connect_windowStateChanged(self.h, cast[int](addr tmp[]))

proc aboutToActivate*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): void =
  fcQMdiSubWindow_aboutToActivate(self.h)

type QMdiSubWindowaboutToActivateSlot* = proc()
proc miqt_exec_callback_cQMdiSubWindow_aboutToActivate(slot: int) {.exportc: "miqt_exec_callback_QMdiSubWindow_aboutToActivate".} =
  let nimfunc = cast[ptr QMdiSubWindowaboutToActivateSlot](cast[pointer](slot))
  nimfunc[]()

proc onaboutToActivate*(self: gen_qmdisubwindow_types.QMdiSubWindow, slot: QMdiSubWindowaboutToActivateSlot) =
  var tmp = new QMdiSubWindowaboutToActivateSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMdiSubWindow_connect_aboutToActivate(self.h, cast[int](addr tmp[]))

proc showSystemMenu*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): void =
  fcQMdiSubWindow_showSystemMenu(self.h)

proc showShaded*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): void =
  fcQMdiSubWindow_showShaded(self.h)

proc tr*(_: type gen_qmdisubwindow_types.QMdiSubWindow, s: cstring, c: cstring): string =
  let v_ms = fcQMdiSubWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmdisubwindow_types.QMdiSubWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMdiSubWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qmdisubwindow_types.QMdiSubWindow, option: cint, on: bool): void =
  fcQMdiSubWindow_setOption2(self.h, cint(option), on)

type QMdiSubWindowmetaObjectProc* = proc(self: QMdiSubWindow): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMdiSubWindowmetacastProc* = proc(self: QMdiSubWindow, param1: cstring): pointer {.raises: [], gcsafe.}
type QMdiSubWindowmetacallProc* = proc(self: QMdiSubWindow, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMdiSubWindowsizeHintProc* = proc(self: QMdiSubWindow): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMdiSubWindowminimumSizeHintProc* = proc(self: QMdiSubWindow): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMdiSubWindoweventFilterProc* = proc(self: QMdiSubWindow, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMdiSubWindoweventProc* = proc(self: QMdiSubWindow, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMdiSubWindowshowEventProc* = proc(self: QMdiSubWindow, showEvent: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowhideEventProc* = proc(self: QMdiSubWindow, hideEvent: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowchangeEventProc* = proc(self: QMdiSubWindow, changeEvent: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowcloseEventProc* = proc(self: QMdiSubWindow, closeEvent: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowleaveEventProc* = proc(self: QMdiSubWindow, leaveEvent: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowresizeEventProc* = proc(self: QMdiSubWindow, resizeEvent: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowtimerEventProc* = proc(self: QMdiSubWindow, timerEvent: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowmoveEventProc* = proc(self: QMdiSubWindow, moveEvent: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowpaintEventProc* = proc(self: QMdiSubWindow, paintEvent: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowmousePressEventProc* = proc(self: QMdiSubWindow, mouseEvent: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowmouseDoubleClickEventProc* = proc(self: QMdiSubWindow, mouseEvent: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowmouseReleaseEventProc* = proc(self: QMdiSubWindow, mouseEvent: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowmouseMoveEventProc* = proc(self: QMdiSubWindow, mouseEvent: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowkeyPressEventProc* = proc(self: QMdiSubWindow, keyEvent: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowcontextMenuEventProc* = proc(self: QMdiSubWindow, contextMenuEvent: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowfocusInEventProc* = proc(self: QMdiSubWindow, focusInEvent: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowfocusOutEventProc* = proc(self: QMdiSubWindow, focusOutEvent: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowchildEventProc* = proc(self: QMdiSubWindow, childEvent: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowdevTypeProc* = proc(self: QMdiSubWindow): cint {.raises: [], gcsafe.}
type QMdiSubWindowsetVisibleProc* = proc(self: QMdiSubWindow, visible: bool): void {.raises: [], gcsafe.}
type QMdiSubWindowheightForWidthProc* = proc(self: QMdiSubWindow, param1: cint): cint {.raises: [], gcsafe.}
type QMdiSubWindowhasHeightForWidthProc* = proc(self: QMdiSubWindow): bool {.raises: [], gcsafe.}
type QMdiSubWindowpaintEngineProc* = proc(self: QMdiSubWindow): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QMdiSubWindowwheelEventProc* = proc(self: QMdiSubWindow, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowkeyReleaseEventProc* = proc(self: QMdiSubWindow, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowenterEventProc* = proc(self: QMdiSubWindow, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowtabletEventProc* = proc(self: QMdiSubWindow, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowactionEventProc* = proc(self: QMdiSubWindow, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowdragEnterEventProc* = proc(self: QMdiSubWindow, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowdragMoveEventProc* = proc(self: QMdiSubWindow, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowdragLeaveEventProc* = proc(self: QMdiSubWindow, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowdropEventProc* = proc(self: QMdiSubWindow, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QMdiSubWindownativeEventProc* = proc(self: QMdiSubWindow, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QMdiSubWindowmetricProc* = proc(self: QMdiSubWindow, param1: cint): cint {.raises: [], gcsafe.}
type QMdiSubWindowinitPainterProc* = proc(self: QMdiSubWindow, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QMdiSubWindowredirectedProc* = proc(self: QMdiSubWindow, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QMdiSubWindowsharedPainterProc* = proc(self: QMdiSubWindow): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QMdiSubWindowinputMethodEventProc* = proc(self: QMdiSubWindow, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowinputMethodQueryProc* = proc(self: QMdiSubWindow, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QMdiSubWindowfocusNextPrevChildProc* = proc(self: QMdiSubWindow, next: bool): bool {.raises: [], gcsafe.}
type QMdiSubWindowcustomEventProc* = proc(self: QMdiSubWindow, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMdiSubWindowconnectNotifyProc* = proc(self: QMdiSubWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMdiSubWindowdisconnectNotifyProc* = proc(self: QMdiSubWindow, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMdiSubWindowVTable* = object
  vtbl: cQMdiSubWindowVTable
  metaObject*: QMdiSubWindowmetaObjectProc
  metacast*: QMdiSubWindowmetacastProc
  metacall*: QMdiSubWindowmetacallProc
  sizeHint*: QMdiSubWindowsizeHintProc
  minimumSizeHint*: QMdiSubWindowminimumSizeHintProc
  eventFilter*: QMdiSubWindoweventFilterProc
  event*: QMdiSubWindoweventProc
  showEvent*: QMdiSubWindowshowEventProc
  hideEvent*: QMdiSubWindowhideEventProc
  changeEvent*: QMdiSubWindowchangeEventProc
  closeEvent*: QMdiSubWindowcloseEventProc
  leaveEvent*: QMdiSubWindowleaveEventProc
  resizeEvent*: QMdiSubWindowresizeEventProc
  timerEvent*: QMdiSubWindowtimerEventProc
  moveEvent*: QMdiSubWindowmoveEventProc
  paintEvent*: QMdiSubWindowpaintEventProc
  mousePressEvent*: QMdiSubWindowmousePressEventProc
  mouseDoubleClickEvent*: QMdiSubWindowmouseDoubleClickEventProc
  mouseReleaseEvent*: QMdiSubWindowmouseReleaseEventProc
  mouseMoveEvent*: QMdiSubWindowmouseMoveEventProc
  keyPressEvent*: QMdiSubWindowkeyPressEventProc
  contextMenuEvent*: QMdiSubWindowcontextMenuEventProc
  focusInEvent*: QMdiSubWindowfocusInEventProc
  focusOutEvent*: QMdiSubWindowfocusOutEventProc
  childEvent*: QMdiSubWindowchildEventProc
  devType*: QMdiSubWindowdevTypeProc
  setVisible*: QMdiSubWindowsetVisibleProc
  heightForWidth*: QMdiSubWindowheightForWidthProc
  hasHeightForWidth*: QMdiSubWindowhasHeightForWidthProc
  paintEngine*: QMdiSubWindowpaintEngineProc
  wheelEvent*: QMdiSubWindowwheelEventProc
  keyReleaseEvent*: QMdiSubWindowkeyReleaseEventProc
  enterEvent*: QMdiSubWindowenterEventProc
  tabletEvent*: QMdiSubWindowtabletEventProc
  actionEvent*: QMdiSubWindowactionEventProc
  dragEnterEvent*: QMdiSubWindowdragEnterEventProc
  dragMoveEvent*: QMdiSubWindowdragMoveEventProc
  dragLeaveEvent*: QMdiSubWindowdragLeaveEventProc
  dropEvent*: QMdiSubWindowdropEventProc
  nativeEvent*: QMdiSubWindownativeEventProc
  metric*: QMdiSubWindowmetricProc
  initPainter*: QMdiSubWindowinitPainterProc
  redirected*: QMdiSubWindowredirectedProc
  sharedPainter*: QMdiSubWindowsharedPainterProc
  inputMethodEvent*: QMdiSubWindowinputMethodEventProc
  inputMethodQuery*: QMdiSubWindowinputMethodQueryProc
  focusNextPrevChild*: QMdiSubWindowfocusNextPrevChildProc
  customEvent*: QMdiSubWindowcustomEventProc
  connectNotify*: QMdiSubWindowconnectNotifyProc
  disconnectNotify*: QMdiSubWindowdisconnectNotifyProc
proc QMdiSubWindowmetaObject*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMdiSubWindow_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQMdiSubWindow_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QMdiSubWindowmetacast*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cstring): pointer =
  fcQMdiSubWindow_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQMdiSubWindow_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMdiSubWindowmetacall*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cint, param2: cint, param3: pointer): cint =
  fcQMdiSubWindow_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQMdiSubWindow_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMdiSubWindowsizeHint*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMdiSubWindow_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQMdiSubWindow_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QMdiSubWindowminimumSizeHint*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMdiSubWindow_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQMdiSubWindow_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QMdiSubWindoweventFilter*(self: gen_qmdisubwindow_types.QMdiSubWindow, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMdiSubWindow_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQMdiSubWindow_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMdiSubWindowevent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qcoreevent_types.QEvent): bool =
  fcQMdiSubWindow_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQMdiSubWindow_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMdiSubWindowshowEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, showEvent: gen_qevent_types.QShowEvent): void =
  fcQMdiSubWindow_virtualbase_showEvent(self.h, showEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_showEvent(vtbl: pointer, self: pointer, showEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: showEvent)
  vtbl[].showEvent(self, slotval1)

proc QMdiSubWindowhideEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, hideEvent: gen_qevent_types.QHideEvent): void =
  fcQMdiSubWindow_virtualbase_hideEvent(self.h, hideEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_hideEvent(vtbl: pointer, self: pointer, hideEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: hideEvent)
  vtbl[].hideEvent(self, slotval1)

proc QMdiSubWindowchangeEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, changeEvent: gen_qcoreevent_types.QEvent): void =
  fcQMdiSubWindow_virtualbase_changeEvent(self.h, changeEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_changeEvent(vtbl: pointer, self: pointer, changeEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: changeEvent)
  vtbl[].changeEvent(self, slotval1)

proc QMdiSubWindowcloseEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, closeEvent: gen_qevent_types.QCloseEvent): void =
  fcQMdiSubWindow_virtualbase_closeEvent(self.h, closeEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_closeEvent(vtbl: pointer, self: pointer, closeEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: closeEvent)
  vtbl[].closeEvent(self, slotval1)

proc QMdiSubWindowleaveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, leaveEvent: gen_qcoreevent_types.QEvent): void =
  fcQMdiSubWindow_virtualbase_leaveEvent(self.h, leaveEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_leaveEvent(vtbl: pointer, self: pointer, leaveEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: leaveEvent)
  vtbl[].leaveEvent(self, slotval1)

proc QMdiSubWindowresizeEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, resizeEvent: gen_qevent_types.QResizeEvent): void =
  fcQMdiSubWindow_virtualbase_resizeEvent(self.h, resizeEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_resizeEvent(vtbl: pointer, self: pointer, resizeEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: resizeEvent)
  vtbl[].resizeEvent(self, slotval1)

proc QMdiSubWindowtimerEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, timerEvent: gen_qcoreevent_types.QTimerEvent): void =
  fcQMdiSubWindow_virtualbase_timerEvent(self.h, timerEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_timerEvent(vtbl: pointer, self: pointer, timerEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: timerEvent)
  vtbl[].timerEvent(self, slotval1)

proc QMdiSubWindowmoveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, moveEvent: gen_qevent_types.QMoveEvent): void =
  fcQMdiSubWindow_virtualbase_moveEvent(self.h, moveEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_moveEvent(vtbl: pointer, self: pointer, moveEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: moveEvent)
  vtbl[].moveEvent(self, slotval1)

proc QMdiSubWindowpaintEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, paintEvent: gen_qevent_types.QPaintEvent): void =
  fcQMdiSubWindow_virtualbase_paintEvent(self.h, paintEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_paintEvent(vtbl: pointer, self: pointer, paintEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: paintEvent)
  vtbl[].paintEvent(self, slotval1)

proc QMdiSubWindowmousePressEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, mouseEvent: gen_qevent_types.QMouseEvent): void =
  fcQMdiSubWindow_virtualbase_mousePressEvent(self.h, mouseEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_mousePressEvent(vtbl: pointer, self: pointer, mouseEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent)
  vtbl[].mousePressEvent(self, slotval1)

proc QMdiSubWindowmouseDoubleClickEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, mouseEvent: gen_qevent_types.QMouseEvent): void =
  fcQMdiSubWindow_virtualbase_mouseDoubleClickEvent(self.h, mouseEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_mouseDoubleClickEvent(vtbl: pointer, self: pointer, mouseEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QMdiSubWindowmouseReleaseEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, mouseEvent: gen_qevent_types.QMouseEvent): void =
  fcQMdiSubWindow_virtualbase_mouseReleaseEvent(self.h, mouseEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_mouseReleaseEvent(vtbl: pointer, self: pointer, mouseEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QMdiSubWindowmouseMoveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, mouseEvent: gen_qevent_types.QMouseEvent): void =
  fcQMdiSubWindow_virtualbase_mouseMoveEvent(self.h, mouseEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_mouseMoveEvent(vtbl: pointer, self: pointer, mouseEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QMdiSubWindowkeyPressEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, keyEvent: gen_qevent_types.QKeyEvent): void =
  fcQMdiSubWindow_virtualbase_keyPressEvent(self.h, keyEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_keyPressEvent(vtbl: pointer, self: pointer, keyEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: keyEvent)
  vtbl[].keyPressEvent(self, slotval1)

proc QMdiSubWindowcontextMenuEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, contextMenuEvent: gen_qevent_types.QContextMenuEvent): void =
  fcQMdiSubWindow_virtualbase_contextMenuEvent(self.h, contextMenuEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_contextMenuEvent(vtbl: pointer, self: pointer, contextMenuEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: contextMenuEvent)
  vtbl[].contextMenuEvent(self, slotval1)

proc QMdiSubWindowfocusInEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, focusInEvent: gen_qevent_types.QFocusEvent): void =
  fcQMdiSubWindow_virtualbase_focusInEvent(self.h, focusInEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_focusInEvent(vtbl: pointer, self: pointer, focusInEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: focusInEvent)
  vtbl[].focusInEvent(self, slotval1)

proc QMdiSubWindowfocusOutEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, focusOutEvent: gen_qevent_types.QFocusEvent): void =
  fcQMdiSubWindow_virtualbase_focusOutEvent(self.h, focusOutEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_focusOutEvent(vtbl: pointer, self: pointer, focusOutEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: focusOutEvent)
  vtbl[].focusOutEvent(self, slotval1)

proc QMdiSubWindowchildEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, childEvent: gen_qcoreevent_types.QChildEvent): void =
  fcQMdiSubWindow_virtualbase_childEvent(self.h, childEvent.h)

proc miqt_exec_callback_cQMdiSubWindow_childEvent(vtbl: pointer, self: pointer, childEvent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: childEvent)
  vtbl[].childEvent(self, slotval1)

proc QMdiSubWindowdevType*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): cint =
  fcQMdiSubWindow_virtualbase_devType(self.h)

proc miqt_exec_callback_cQMdiSubWindow_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QMdiSubWindowsetVisible*(self: gen_qmdisubwindow_types.QMdiSubWindow, visible: bool): void =
  fcQMdiSubWindow_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQMdiSubWindow_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QMdiSubWindowheightForWidth*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cint): cint =
  fcQMdiSubWindow_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQMdiSubWindow_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QMdiSubWindowhasHeightForWidth*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): bool =
  fcQMdiSubWindow_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQMdiSubWindow_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QMdiSubWindowpaintEngine*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQMdiSubWindow_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQMdiSubWindow_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QMdiSubWindowwheelEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QWheelEvent): void =
  fcQMdiSubWindow_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiSubWindow_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QMdiSubWindowkeyReleaseEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QKeyEvent): void =
  fcQMdiSubWindow_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiSubWindow_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QMdiSubWindowenterEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QEnterEvent): void =
  fcQMdiSubWindow_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiSubWindow_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QMdiSubWindowtabletEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QTabletEvent): void =
  fcQMdiSubWindow_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiSubWindow_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QMdiSubWindowactionEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QActionEvent): void =
  fcQMdiSubWindow_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiSubWindow_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QMdiSubWindowdragEnterEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QDragEnterEvent): void =
  fcQMdiSubWindow_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiSubWindow_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QMdiSubWindowdragMoveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QDragMoveEvent): void =
  fcQMdiSubWindow_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiSubWindow_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QMdiSubWindowdragLeaveEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQMdiSubWindow_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiSubWindow_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QMdiSubWindowdropEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qevent_types.QDropEvent): void =
  fcQMdiSubWindow_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiSubWindow_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QMdiSubWindownativeEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQMdiSubWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQMdiSubWindow_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMdiSubWindowmetric*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cint): cint =
  fcQMdiSubWindow_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQMdiSubWindow_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QMdiSubWindowinitPainter*(self: gen_qmdisubwindow_types.QMdiSubWindow, painter: gen_qpainter_types.QPainter): void =
  fcQMdiSubWindow_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQMdiSubWindow_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QMdiSubWindowredirected*(self: gen_qmdisubwindow_types.QMdiSubWindow, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQMdiSubWindow_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQMdiSubWindow_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QMdiSubWindowsharedPainter*(self: gen_qmdisubwindow_types.QMdiSubWindow, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQMdiSubWindow_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQMdiSubWindow_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QMdiSubWindowinputMethodEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQMdiSubWindow_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQMdiSubWindow_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QMdiSubWindowinputMethodQuery*(self: gen_qmdisubwindow_types.QMdiSubWindow, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMdiSubWindow_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQMdiSubWindow_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QMdiSubWindowfocusNextPrevChild*(self: gen_qmdisubwindow_types.QMdiSubWindow, next: bool): bool =
  fcQMdiSubWindow_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQMdiSubWindow_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QMdiSubWindowcustomEvent*(self: gen_qmdisubwindow_types.QMdiSubWindow, event: gen_qcoreevent_types.QEvent): void =
  fcQMdiSubWindow_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQMdiSubWindow_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QMdiSubWindowconnectNotify*(self: gen_qmdisubwindow_types.QMdiSubWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMdiSubWindow_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMdiSubWindow_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QMdiSubWindowdisconnectNotify*(self: gen_qmdisubwindow_types.QMdiSubWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMdiSubWindow_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMdiSubWindow_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMdiSubWindowVTable](vtbl)
  let self = QMdiSubWindow(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qmdisubwindow_types.QMdiSubWindow,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QMdiSubWindowVTable = nil): gen_qmdisubwindow_types.QMdiSubWindow =
  let vtbl = if vtbl == nil: new QMdiSubWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMdiSubWindowVTable, _: ptr cQMdiSubWindow) {.cdecl.} =
    let vtbl = cast[ref QMdiSubWindowVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMdiSubWindow_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMdiSubWindow_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMdiSubWindow_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQMdiSubWindow_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQMdiSubWindow_minimumSizeHint
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMdiSubWindow_eventFilter
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMdiSubWindow_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQMdiSubWindow_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQMdiSubWindow_hideEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQMdiSubWindow_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQMdiSubWindow_closeEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQMdiSubWindow_leaveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQMdiSubWindow_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMdiSubWindow_timerEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQMdiSubWindow_moveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQMdiSubWindow_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQMdiSubWindow_mousePressEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQMdiSubWindow_mouseDoubleClickEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQMdiSubWindow_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQMdiSubWindow_mouseMoveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQMdiSubWindow_keyPressEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQMdiSubWindow_contextMenuEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQMdiSubWindow_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQMdiSubWindow_focusOutEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMdiSubWindow_childEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQMdiSubWindow_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQMdiSubWindow_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQMdiSubWindow_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQMdiSubWindow_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQMdiSubWindow_paintEngine
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQMdiSubWindow_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQMdiSubWindow_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQMdiSubWindow_enterEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQMdiSubWindow_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQMdiSubWindow_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQMdiSubWindow_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQMdiSubWindow_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQMdiSubWindow_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQMdiSubWindow_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQMdiSubWindow_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQMdiSubWindow_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQMdiSubWindow_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQMdiSubWindow_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQMdiSubWindow_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQMdiSubWindow_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQMdiSubWindow_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQMdiSubWindow_focusNextPrevChild
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMdiSubWindow_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMdiSubWindow_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMdiSubWindow_disconnectNotify
  gen_qmdisubwindow_types.QMdiSubWindow(h: fcQMdiSubWindow_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qmdisubwindow_types.QMdiSubWindow,
    vtbl: ref QMdiSubWindowVTable = nil): gen_qmdisubwindow_types.QMdiSubWindow =
  let vtbl = if vtbl == nil: new QMdiSubWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMdiSubWindowVTable, _: ptr cQMdiSubWindow) {.cdecl.} =
    let vtbl = cast[ref QMdiSubWindowVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMdiSubWindow_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMdiSubWindow_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMdiSubWindow_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQMdiSubWindow_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQMdiSubWindow_minimumSizeHint
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMdiSubWindow_eventFilter
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMdiSubWindow_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQMdiSubWindow_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQMdiSubWindow_hideEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQMdiSubWindow_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQMdiSubWindow_closeEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQMdiSubWindow_leaveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQMdiSubWindow_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMdiSubWindow_timerEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQMdiSubWindow_moveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQMdiSubWindow_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQMdiSubWindow_mousePressEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQMdiSubWindow_mouseDoubleClickEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQMdiSubWindow_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQMdiSubWindow_mouseMoveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQMdiSubWindow_keyPressEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQMdiSubWindow_contextMenuEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQMdiSubWindow_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQMdiSubWindow_focusOutEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMdiSubWindow_childEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQMdiSubWindow_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQMdiSubWindow_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQMdiSubWindow_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQMdiSubWindow_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQMdiSubWindow_paintEngine
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQMdiSubWindow_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQMdiSubWindow_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQMdiSubWindow_enterEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQMdiSubWindow_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQMdiSubWindow_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQMdiSubWindow_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQMdiSubWindow_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQMdiSubWindow_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQMdiSubWindow_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQMdiSubWindow_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQMdiSubWindow_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQMdiSubWindow_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQMdiSubWindow_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQMdiSubWindow_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQMdiSubWindow_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQMdiSubWindow_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQMdiSubWindow_focusNextPrevChild
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMdiSubWindow_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMdiSubWindow_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMdiSubWindow_disconnectNotify
  gen_qmdisubwindow_types.QMdiSubWindow(h: fcQMdiSubWindow_new2(addr(vtbl[]), ))

proc create*(T: type gen_qmdisubwindow_types.QMdiSubWindow,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QMdiSubWindowVTable = nil): gen_qmdisubwindow_types.QMdiSubWindow =
  let vtbl = if vtbl == nil: new QMdiSubWindowVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMdiSubWindowVTable, _: ptr cQMdiSubWindow) {.cdecl.} =
    let vtbl = cast[ref QMdiSubWindowVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMdiSubWindow_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMdiSubWindow_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMdiSubWindow_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQMdiSubWindow_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQMdiSubWindow_minimumSizeHint
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMdiSubWindow_eventFilter
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMdiSubWindow_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQMdiSubWindow_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQMdiSubWindow_hideEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQMdiSubWindow_changeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQMdiSubWindow_closeEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQMdiSubWindow_leaveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQMdiSubWindow_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMdiSubWindow_timerEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQMdiSubWindow_moveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQMdiSubWindow_paintEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQMdiSubWindow_mousePressEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQMdiSubWindow_mouseDoubleClickEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQMdiSubWindow_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQMdiSubWindow_mouseMoveEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQMdiSubWindow_keyPressEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQMdiSubWindow_contextMenuEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQMdiSubWindow_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQMdiSubWindow_focusOutEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMdiSubWindow_childEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQMdiSubWindow_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQMdiSubWindow_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQMdiSubWindow_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQMdiSubWindow_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQMdiSubWindow_paintEngine
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQMdiSubWindow_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQMdiSubWindow_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQMdiSubWindow_enterEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQMdiSubWindow_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQMdiSubWindow_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQMdiSubWindow_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQMdiSubWindow_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQMdiSubWindow_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQMdiSubWindow_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQMdiSubWindow_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQMdiSubWindow_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQMdiSubWindow_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQMdiSubWindow_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQMdiSubWindow_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQMdiSubWindow_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQMdiSubWindow_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQMdiSubWindow_focusNextPrevChild
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMdiSubWindow_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMdiSubWindow_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMdiSubWindow_disconnectNotify
  gen_qmdisubwindow_types.QMdiSubWindow(h: fcQMdiSubWindow_new3(addr(vtbl[]), parent.h, cint(flags)))

proc staticMetaObject*(_: type gen_qmdisubwindow_types.QMdiSubWindow): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMdiSubWindow_staticMetaObject())
proc delete*(self: gen_qmdisubwindow_types.QMdiSubWindow) =
  fcQMdiSubWindow_delete(self.h)
