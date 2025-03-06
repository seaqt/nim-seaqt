import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qstatusbar.cpp", cflags).}


import ./gen_qstatusbar_types
export gen_qstatusbar_types

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
  gen_qwidget

type cQStatusBar*{.exportc: "QStatusBar", incompleteStruct.} = object

proc fcQStatusBar_metaObject(self: pointer, ): pointer {.importc: "QStatusBar_metaObject".}
proc fcQStatusBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QStatusBar_metacast".}
proc fcQStatusBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStatusBar_metacall".}
proc fcQStatusBar_tr(s: cstring): struct_miqt_string {.importc: "QStatusBar_tr".}
proc fcQStatusBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QStatusBar_trUtf8".}
proc fcQStatusBar_addWidget(self: pointer, widget: pointer): void {.importc: "QStatusBar_addWidget".}
proc fcQStatusBar_insertWidget(self: pointer, index: cint, widget: pointer): cint {.importc: "QStatusBar_insertWidget".}
proc fcQStatusBar_addPermanentWidget(self: pointer, widget: pointer): void {.importc: "QStatusBar_addPermanentWidget".}
proc fcQStatusBar_insertPermanentWidget(self: pointer, index: cint, widget: pointer): cint {.importc: "QStatusBar_insertPermanentWidget".}
proc fcQStatusBar_removeWidget(self: pointer, widget: pointer): void {.importc: "QStatusBar_removeWidget".}
proc fcQStatusBar_setSizeGripEnabled(self: pointer, sizeGripEnabled: bool): void {.importc: "QStatusBar_setSizeGripEnabled".}
proc fcQStatusBar_isSizeGripEnabled(self: pointer, ): bool {.importc: "QStatusBar_isSizeGripEnabled".}
proc fcQStatusBar_currentMessage(self: pointer, ): struct_miqt_string {.importc: "QStatusBar_currentMessage".}
proc fcQStatusBar_showMessage(self: pointer, text: struct_miqt_string): void {.importc: "QStatusBar_showMessage".}
proc fcQStatusBar_clearMessage(self: pointer, ): void {.importc: "QStatusBar_clearMessage".}
proc fcQStatusBar_messageChanged(self: pointer, text: struct_miqt_string): void {.importc: "QStatusBar_messageChanged".}
proc fcQStatusBar_connect_messageChanged(self: pointer, slot: int, callback: proc (slot: int, text: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QStatusBar_connect_messageChanged".}
proc fcQStatusBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStatusBar_tr2".}
proc fcQStatusBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStatusBar_tr3".}
proc fcQStatusBar_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStatusBar_trUtf82".}
proc fcQStatusBar_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStatusBar_trUtf83".}
proc fcQStatusBar_addWidget2(self: pointer, widget: pointer, stretch: cint): void {.importc: "QStatusBar_addWidget2".}
proc fcQStatusBar_insertWidget3(self: pointer, index: cint, widget: pointer, stretch: cint): cint {.importc: "QStatusBar_insertWidget3".}
proc fcQStatusBar_addPermanentWidget2(self: pointer, widget: pointer, stretch: cint): void {.importc: "QStatusBar_addPermanentWidget2".}
proc fcQStatusBar_insertPermanentWidget3(self: pointer, index: cint, widget: pointer, stretch: cint): cint {.importc: "QStatusBar_insertPermanentWidget3".}
proc fcQStatusBar_showMessage2(self: pointer, text: struct_miqt_string, timeout: cint): void {.importc: "QStatusBar_showMessage2".}
type cQStatusBarVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQStatusBarVTable, self: ptr cQStatusBar) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
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
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQStatusBar_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QStatusBar_virtualbase_metaObject".}
proc fcQStatusBar_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QStatusBar_virtualbase_metacast".}
proc fcQStatusBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStatusBar_virtualbase_metacall".}
proc fcQStatusBar_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QStatusBar_virtualbase_showEvent".}
proc fcQStatusBar_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QStatusBar_virtualbase_paintEvent".}
proc fcQStatusBar_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QStatusBar_virtualbase_resizeEvent".}
proc fcQStatusBar_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QStatusBar_virtualbase_event".}
proc fcQStatusBar_virtualbase_devType(self: pointer, ): cint {.importc: "QStatusBar_virtualbase_devType".}
proc fcQStatusBar_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QStatusBar_virtualbase_setVisible".}
proc fcQStatusBar_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QStatusBar_virtualbase_sizeHint".}
proc fcQStatusBar_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QStatusBar_virtualbase_minimumSizeHint".}
proc fcQStatusBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QStatusBar_virtualbase_heightForWidth".}
proc fcQStatusBar_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QStatusBar_virtualbase_hasHeightForWidth".}
proc fcQStatusBar_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QStatusBar_virtualbase_paintEngine".}
proc fcQStatusBar_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_mousePressEvent".}
proc fcQStatusBar_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_mouseReleaseEvent".}
proc fcQStatusBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_mouseDoubleClickEvent".}
proc fcQStatusBar_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_mouseMoveEvent".}
proc fcQStatusBar_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_wheelEvent".}
proc fcQStatusBar_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_keyPressEvent".}
proc fcQStatusBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_keyReleaseEvent".}
proc fcQStatusBar_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_focusInEvent".}
proc fcQStatusBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_focusOutEvent".}
proc fcQStatusBar_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_enterEvent".}
proc fcQStatusBar_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_leaveEvent".}
proc fcQStatusBar_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_moveEvent".}
proc fcQStatusBar_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_closeEvent".}
proc fcQStatusBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_contextMenuEvent".}
proc fcQStatusBar_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_tabletEvent".}
proc fcQStatusBar_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_actionEvent".}
proc fcQStatusBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_dragEnterEvent".}
proc fcQStatusBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_dragMoveEvent".}
proc fcQStatusBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_dragLeaveEvent".}
proc fcQStatusBar_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_dropEvent".}
proc fcQStatusBar_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_hideEvent".}
proc fcQStatusBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QStatusBar_virtualbase_nativeEvent".}
proc fcQStatusBar_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QStatusBar_virtualbase_changeEvent".}
proc fcQStatusBar_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QStatusBar_virtualbase_metric".}
proc fcQStatusBar_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QStatusBar_virtualbase_initPainter".}
proc fcQStatusBar_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QStatusBar_virtualbase_redirected".}
proc fcQStatusBar_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QStatusBar_virtualbase_sharedPainter".}
proc fcQStatusBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QStatusBar_virtualbase_inputMethodEvent".}
proc fcQStatusBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QStatusBar_virtualbase_inputMethodQuery".}
proc fcQStatusBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QStatusBar_virtualbase_focusNextPrevChild".}
proc fcQStatusBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStatusBar_virtualbase_eventFilter".}
proc fcQStatusBar_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_timerEvent".}
proc fcQStatusBar_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_childEvent".}
proc fcQStatusBar_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QStatusBar_virtualbase_customEvent".}
proc fcQStatusBar_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QStatusBar_virtualbase_connectNotify".}
proc fcQStatusBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QStatusBar_virtualbase_disconnectNotify".}
proc fcQStatusBar_protectedbase_reformat(self: pointer, ): void {.importc: "QStatusBar_protectedbase_reformat".}
proc fcQStatusBar_protectedbase_hideOrShow(self: pointer, ): void {.importc: "QStatusBar_protectedbase_hideOrShow".}
proc fcQStatusBar_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QStatusBar_protectedbase_updateMicroFocus".}
proc fcQStatusBar_protectedbase_create(self: pointer, ): void {.importc: "QStatusBar_protectedbase_create".}
proc fcQStatusBar_protectedbase_destroy(self: pointer, ): void {.importc: "QStatusBar_protectedbase_destroy".}
proc fcQStatusBar_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QStatusBar_protectedbase_focusNextChild".}
proc fcQStatusBar_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QStatusBar_protectedbase_focusPreviousChild".}
proc fcQStatusBar_protectedbase_sender(self: pointer, ): pointer {.importc: "QStatusBar_protectedbase_sender".}
proc fcQStatusBar_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QStatusBar_protectedbase_senderSignalIndex".}
proc fcQStatusBar_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QStatusBar_protectedbase_receivers".}
proc fcQStatusBar_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QStatusBar_protectedbase_isSignalConnected".}
proc fcQStatusBar_new(vtbl: pointer, parent: pointer): ptr cQStatusBar {.importc: "QStatusBar_new".}
proc fcQStatusBar_new2(vtbl: pointer, ): ptr cQStatusBar {.importc: "QStatusBar_new2".}
proc fcQStatusBar_staticMetaObject(): pointer {.importc: "QStatusBar_staticMetaObject".}

proc metaObject*(self: gen_qstatusbar_types.QStatusBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStatusBar_metaObject(self.h), owned: false)

proc metacast*(self: gen_qstatusbar_types.QStatusBar, param1: cstring): pointer =
  fcQStatusBar_metacast(self.h, param1)

proc metacall*(self: gen_qstatusbar_types.QStatusBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQStatusBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstatusbar_types.QStatusBar, s: cstring): string =
  let v_ms = fcQStatusBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstatusbar_types.QStatusBar, s: cstring): string =
  let v_ms = fcQStatusBar_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qstatusbar_types.QStatusBar, widget: gen_qwidget_types.QWidget): void =
  fcQStatusBar_addWidget(self.h, widget.h)

proc insertWidget*(self: gen_qstatusbar_types.QStatusBar, index: cint, widget: gen_qwidget_types.QWidget): cint =
  fcQStatusBar_insertWidget(self.h, index, widget.h)

proc addPermanentWidget*(self: gen_qstatusbar_types.QStatusBar, widget: gen_qwidget_types.QWidget): void =
  fcQStatusBar_addPermanentWidget(self.h, widget.h)

proc insertPermanentWidget*(self: gen_qstatusbar_types.QStatusBar, index: cint, widget: gen_qwidget_types.QWidget): cint =
  fcQStatusBar_insertPermanentWidget(self.h, index, widget.h)

proc removeWidget*(self: gen_qstatusbar_types.QStatusBar, widget: gen_qwidget_types.QWidget): void =
  fcQStatusBar_removeWidget(self.h, widget.h)

proc setSizeGripEnabled*(self: gen_qstatusbar_types.QStatusBar, sizeGripEnabled: bool): void =
  fcQStatusBar_setSizeGripEnabled(self.h, sizeGripEnabled)

proc isSizeGripEnabled*(self: gen_qstatusbar_types.QStatusBar, ): bool =
  fcQStatusBar_isSizeGripEnabled(self.h)

proc currentMessage*(self: gen_qstatusbar_types.QStatusBar, ): string =
  let v_ms = fcQStatusBar_currentMessage(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showMessage*(self: gen_qstatusbar_types.QStatusBar, text: string): void =
  fcQStatusBar_showMessage(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc clearMessage*(self: gen_qstatusbar_types.QStatusBar, ): void =
  fcQStatusBar_clearMessage(self.h)

proc messageChanged*(self: gen_qstatusbar_types.QStatusBar, text: string): void =
  fcQStatusBar_messageChanged(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QStatusBarmessageChangedSlot* = proc(text: string)
proc miqt_exec_callback_cQStatusBar_messageChanged(slot: int, text: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QStatusBarmessageChangedSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQStatusBar_messageChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QStatusBarmessageChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onmessageChanged*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarmessageChangedSlot) =
  var tmp = new QStatusBarmessageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_connect_messageChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQStatusBar_messageChanged, miqt_exec_callback_cQStatusBar_messageChanged_release)

proc tr*(_: type gen_qstatusbar_types.QStatusBar, s: cstring, c: cstring): string =
  let v_ms = fcQStatusBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstatusbar_types.QStatusBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStatusBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstatusbar_types.QStatusBar, s: cstring, c: cstring): string =
  let v_ms = fcQStatusBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstatusbar_types.QStatusBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStatusBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qstatusbar_types.QStatusBar, widget: gen_qwidget_types.QWidget, stretch: cint): void =
  fcQStatusBar_addWidget2(self.h, widget.h, stretch)

proc insertWidget*(self: gen_qstatusbar_types.QStatusBar, index: cint, widget: gen_qwidget_types.QWidget, stretch: cint): cint =
  fcQStatusBar_insertWidget3(self.h, index, widget.h, stretch)

proc addPermanentWidget*(self: gen_qstatusbar_types.QStatusBar, widget: gen_qwidget_types.QWidget, stretch: cint): void =
  fcQStatusBar_addPermanentWidget2(self.h, widget.h, stretch)

proc insertPermanentWidget*(self: gen_qstatusbar_types.QStatusBar, index: cint, widget: gen_qwidget_types.QWidget, stretch: cint): cint =
  fcQStatusBar_insertPermanentWidget3(self.h, index, widget.h, stretch)

proc showMessage*(self: gen_qstatusbar_types.QStatusBar, text: string, timeout: cint): void =
  fcQStatusBar_showMessage2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), timeout)

type QStatusBarmetaObjectProc* = proc(self: QStatusBar): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QStatusBarmetacastProc* = proc(self: QStatusBar, param1: cstring): pointer {.raises: [], gcsafe.}
type QStatusBarmetacallProc* = proc(self: QStatusBar, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QStatusBarshowEventProc* = proc(self: QStatusBar, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QStatusBarpaintEventProc* = proc(self: QStatusBar, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QStatusBarresizeEventProc* = proc(self: QStatusBar, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QStatusBareventProc* = proc(self: QStatusBar, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStatusBardevTypeProc* = proc(self: QStatusBar): cint {.raises: [], gcsafe.}
type QStatusBarsetVisibleProc* = proc(self: QStatusBar, visible: bool): void {.raises: [], gcsafe.}
type QStatusBarsizeHintProc* = proc(self: QStatusBar): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QStatusBarminimumSizeHintProc* = proc(self: QStatusBar): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QStatusBarheightForWidthProc* = proc(self: QStatusBar, param1: cint): cint {.raises: [], gcsafe.}
type QStatusBarhasHeightForWidthProc* = proc(self: QStatusBar): bool {.raises: [], gcsafe.}
type QStatusBarpaintEngineProc* = proc(self: QStatusBar): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QStatusBarmousePressEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QStatusBarmouseReleaseEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QStatusBarmouseDoubleClickEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QStatusBarmouseMoveEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QStatusBarwheelEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QStatusBarkeyPressEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QStatusBarkeyReleaseEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QStatusBarfocusInEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QStatusBarfocusOutEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QStatusBarenterEventProc* = proc(self: QStatusBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStatusBarleaveEventProc* = proc(self: QStatusBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStatusBarmoveEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QStatusBarcloseEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QStatusBarcontextMenuEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QStatusBartabletEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QStatusBaractionEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QStatusBardragEnterEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QStatusBardragMoveEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QStatusBardragLeaveEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QStatusBardropEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QStatusBarhideEventProc* = proc(self: QStatusBar, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QStatusBarnativeEventProc* = proc(self: QStatusBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QStatusBarchangeEventProc* = proc(self: QStatusBar, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStatusBarmetricProc* = proc(self: QStatusBar, param1: cint): cint {.raises: [], gcsafe.}
type QStatusBarinitPainterProc* = proc(self: QStatusBar, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QStatusBarredirectedProc* = proc(self: QStatusBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QStatusBarsharedPainterProc* = proc(self: QStatusBar): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QStatusBarinputMethodEventProc* = proc(self: QStatusBar, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QStatusBarinputMethodQueryProc* = proc(self: QStatusBar, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QStatusBarfocusNextPrevChildProc* = proc(self: QStatusBar, next: bool): bool {.raises: [], gcsafe.}
type QStatusBareventFilterProc* = proc(self: QStatusBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStatusBartimerEventProc* = proc(self: QStatusBar, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QStatusBarchildEventProc* = proc(self: QStatusBar, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QStatusBarcustomEventProc* = proc(self: QStatusBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStatusBarconnectNotifyProc* = proc(self: QStatusBar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStatusBardisconnectNotifyProc* = proc(self: QStatusBar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStatusBarVTable* {.inheritable, pure.} = object
  vtbl: cQStatusBarVTable
  metaObject*: QStatusBarmetaObjectProc
  metacast*: QStatusBarmetacastProc
  metacall*: QStatusBarmetacallProc
  showEvent*: QStatusBarshowEventProc
  paintEvent*: QStatusBarpaintEventProc
  resizeEvent*: QStatusBarresizeEventProc
  event*: QStatusBareventProc
  devType*: QStatusBardevTypeProc
  setVisible*: QStatusBarsetVisibleProc
  sizeHint*: QStatusBarsizeHintProc
  minimumSizeHint*: QStatusBarminimumSizeHintProc
  heightForWidth*: QStatusBarheightForWidthProc
  hasHeightForWidth*: QStatusBarhasHeightForWidthProc
  paintEngine*: QStatusBarpaintEngineProc
  mousePressEvent*: QStatusBarmousePressEventProc
  mouseReleaseEvent*: QStatusBarmouseReleaseEventProc
  mouseDoubleClickEvent*: QStatusBarmouseDoubleClickEventProc
  mouseMoveEvent*: QStatusBarmouseMoveEventProc
  wheelEvent*: QStatusBarwheelEventProc
  keyPressEvent*: QStatusBarkeyPressEventProc
  keyReleaseEvent*: QStatusBarkeyReleaseEventProc
  focusInEvent*: QStatusBarfocusInEventProc
  focusOutEvent*: QStatusBarfocusOutEventProc
  enterEvent*: QStatusBarenterEventProc
  leaveEvent*: QStatusBarleaveEventProc
  moveEvent*: QStatusBarmoveEventProc
  closeEvent*: QStatusBarcloseEventProc
  contextMenuEvent*: QStatusBarcontextMenuEventProc
  tabletEvent*: QStatusBartabletEventProc
  actionEvent*: QStatusBaractionEventProc
  dragEnterEvent*: QStatusBardragEnterEventProc
  dragMoveEvent*: QStatusBardragMoveEventProc
  dragLeaveEvent*: QStatusBardragLeaveEventProc
  dropEvent*: QStatusBardropEventProc
  hideEvent*: QStatusBarhideEventProc
  nativeEvent*: QStatusBarnativeEventProc
  changeEvent*: QStatusBarchangeEventProc
  metric*: QStatusBarmetricProc
  initPainter*: QStatusBarinitPainterProc
  redirected*: QStatusBarredirectedProc
  sharedPainter*: QStatusBarsharedPainterProc
  inputMethodEvent*: QStatusBarinputMethodEventProc
  inputMethodQuery*: QStatusBarinputMethodQueryProc
  focusNextPrevChild*: QStatusBarfocusNextPrevChildProc
  eventFilter*: QStatusBareventFilterProc
  timerEvent*: QStatusBartimerEventProc
  childEvent*: QStatusBarchildEventProc
  customEvent*: QStatusBarcustomEventProc
  connectNotify*: QStatusBarconnectNotifyProc
  disconnectNotify*: QStatusBardisconnectNotifyProc
proc QStatusBarmetaObject*(self: gen_qstatusbar_types.QStatusBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStatusBar_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQStatusBar_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStatusBarmetacast*(self: gen_qstatusbar_types.QStatusBar, param1: cstring): pointer =
  fcQStatusBar_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQStatusBar_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QStatusBarmetacall*(self: gen_qstatusbar_types.QStatusBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQStatusBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQStatusBar_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStatusBarshowEvent*(self: gen_qstatusbar_types.QStatusBar, param1: gen_qevent_types.QShowEvent): void =
  fcQStatusBar_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQStatusBar_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QStatusBarpaintEvent*(self: gen_qstatusbar_types.QStatusBar, param1: gen_qevent_types.QPaintEvent): void =
  fcQStatusBar_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQStatusBar_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QStatusBarresizeEvent*(self: gen_qstatusbar_types.QStatusBar, param1: gen_qevent_types.QResizeEvent): void =
  fcQStatusBar_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQStatusBar_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QStatusBarevent*(self: gen_qstatusbar_types.QStatusBar, param1: gen_qcoreevent_types.QEvent): bool =
  fcQStatusBar_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQStatusBar_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QStatusBardevType*(self: gen_qstatusbar_types.QStatusBar, ): cint =
  fcQStatusBar_virtualbase_devType(self.h)

proc miqt_exec_callback_cQStatusBar_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QStatusBarsetVisible*(self: gen_qstatusbar_types.QStatusBar, visible: bool): void =
  fcQStatusBar_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQStatusBar_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QStatusBarsizeHint*(self: gen_qstatusbar_types.QStatusBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStatusBar_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQStatusBar_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStatusBarminimumSizeHint*(self: gen_qstatusbar_types.QStatusBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStatusBar_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQStatusBar_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStatusBarheightForWidth*(self: gen_qstatusbar_types.QStatusBar, param1: cint): cint =
  fcQStatusBar_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQStatusBar_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QStatusBarhasHeightForWidth*(self: gen_qstatusbar_types.QStatusBar, ): bool =
  fcQStatusBar_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQStatusBar_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QStatusBarpaintEngine*(self: gen_qstatusbar_types.QStatusBar, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQStatusBar_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQStatusBar_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStatusBarmousePressEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QMouseEvent): void =
  fcQStatusBar_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QStatusBarmouseReleaseEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QMouseEvent): void =
  fcQStatusBar_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QStatusBarmouseDoubleClickEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QMouseEvent): void =
  fcQStatusBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QStatusBarmouseMoveEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QMouseEvent): void =
  fcQStatusBar_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QStatusBarwheelEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QWheelEvent): void =
  fcQStatusBar_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QStatusBarkeyPressEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QKeyEvent): void =
  fcQStatusBar_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QStatusBarkeyReleaseEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QKeyEvent): void =
  fcQStatusBar_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QStatusBarfocusInEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QFocusEvent): void =
  fcQStatusBar_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QStatusBarfocusOutEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QFocusEvent): void =
  fcQStatusBar_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QStatusBarenterEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qcoreevent_types.QEvent): void =
  fcQStatusBar_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QStatusBarleaveEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qcoreevent_types.QEvent): void =
  fcQStatusBar_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QStatusBarmoveEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QMoveEvent): void =
  fcQStatusBar_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QStatusBarcloseEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QCloseEvent): void =
  fcQStatusBar_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QStatusBarcontextMenuEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QContextMenuEvent): void =
  fcQStatusBar_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QStatusBartabletEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QTabletEvent): void =
  fcQStatusBar_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QStatusBaractionEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QActionEvent): void =
  fcQStatusBar_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QStatusBardragEnterEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QDragEnterEvent): void =
  fcQStatusBar_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QStatusBardragMoveEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QDragMoveEvent): void =
  fcQStatusBar_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QStatusBardragLeaveEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQStatusBar_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QStatusBardropEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QDropEvent): void =
  fcQStatusBar_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QStatusBarhideEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QHideEvent): void =
  fcQStatusBar_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QStatusBarnativeEvent*(self: gen_qstatusbar_types.QStatusBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQStatusBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQStatusBar_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStatusBarchangeEvent*(self: gen_qstatusbar_types.QStatusBar, param1: gen_qcoreevent_types.QEvent): void =
  fcQStatusBar_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQStatusBar_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QStatusBarmetric*(self: gen_qstatusbar_types.QStatusBar, param1: cint): cint =
  fcQStatusBar_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQStatusBar_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QStatusBarinitPainter*(self: gen_qstatusbar_types.QStatusBar, painter: gen_qpainter_types.QPainter): void =
  fcQStatusBar_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQStatusBar_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QStatusBarredirected*(self: gen_qstatusbar_types.QStatusBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQStatusBar_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQStatusBar_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStatusBarsharedPainter*(self: gen_qstatusbar_types.QStatusBar, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQStatusBar_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQStatusBar_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStatusBarinputMethodEvent*(self: gen_qstatusbar_types.QStatusBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQStatusBar_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQStatusBar_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QStatusBarinputMethodQuery*(self: gen_qstatusbar_types.QStatusBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStatusBar_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQStatusBar_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QStatusBarfocusNextPrevChild*(self: gen_qstatusbar_types.QStatusBar, next: bool): bool =
  fcQStatusBar_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQStatusBar_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QStatusBareventFilter*(self: gen_qstatusbar_types.QStatusBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStatusBar_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQStatusBar_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QStatusBartimerEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStatusBar_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QStatusBarchildEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQStatusBar_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QStatusBarcustomEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qcoreevent_types.QEvent): void =
  fcQStatusBar_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQStatusBar_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QStatusBarconnectNotify*(self: gen_qstatusbar_types.QStatusBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStatusBar_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStatusBar_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QStatusBardisconnectNotify*(self: gen_qstatusbar_types.QStatusBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStatusBar_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStatusBar_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStatusBarVTable](vtbl)
  let self = QStatusBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQStatusBar* {.inheritable.} = ref object of QStatusBar
  vtbl*: cQStatusBarVTable
method metaObject*(self: VirtualQStatusBar, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QStatusBarmetaObject(self[])
proc miqt_exec_method_cQStatusBar_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQStatusBar, param1: cstring): pointer {.base.} =
  QStatusBarmetacast(self[], param1)
proc miqt_exec_method_cQStatusBar_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQStatusBar, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QStatusBarmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQStatusBar_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method showEvent*(self: VirtualQStatusBar, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QStatusBarshowEvent(self[], param1)
proc miqt_exec_method_cQStatusBar_showEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl.showEvent(slotval1)

method paintEvent*(self: VirtualQStatusBar, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QStatusBarpaintEvent(self[], param1)
proc miqt_exec_method_cQStatusBar_paintEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl.paintEvent(slotval1)

method resizeEvent*(self: VirtualQStatusBar, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QStatusBarresizeEvent(self[], param1)
proc miqt_exec_method_cQStatusBar_resizeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl.resizeEvent(slotval1)

method event*(self: VirtualQStatusBar, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStatusBarevent(self[], param1)
proc miqt_exec_method_cQStatusBar_event(vtbl: pointer, inst: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method devType*(self: VirtualQStatusBar, ): cint {.base.} =
  QStatusBardevType(self[])
proc miqt_exec_method_cQStatusBar_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQStatusBar, visible: bool): void {.base.} =
  QStatusBarsetVisible(self[], visible)
proc miqt_exec_method_cQStatusBar_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method sizeHint*(self: VirtualQStatusBar, ): gen_qsize_types.QSize {.base.} =
  QStatusBarsizeHint(self[])
proc miqt_exec_method_cQStatusBar_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQStatusBar, ): gen_qsize_types.QSize {.base.} =
  QStatusBarminimumSizeHint(self[])
proc miqt_exec_method_cQStatusBar_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQStatusBar, param1: cint): cint {.base.} =
  QStatusBarheightForWidth(self[], param1)
proc miqt_exec_method_cQStatusBar_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQStatusBar, ): bool {.base.} =
  QStatusBarhasHeightForWidth(self[])
proc miqt_exec_method_cQStatusBar_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQStatusBar, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QStatusBarpaintEngine(self[])
proc miqt_exec_method_cQStatusBar_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QStatusBarmousePressEvent(self[], event)
proc miqt_exec_method_cQStatusBar_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QStatusBarmouseReleaseEvent(self[], event)
proc miqt_exec_method_cQStatusBar_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QStatusBarmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQStatusBar_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QStatusBarmouseMoveEvent(self[], event)
proc miqt_exec_method_cQStatusBar_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QStatusBarwheelEvent(self[], event)
proc miqt_exec_method_cQStatusBar_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QStatusBarkeyPressEvent(self[], event)
proc miqt_exec_method_cQStatusBar_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QStatusBarkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQStatusBar_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QStatusBarfocusInEvent(self[], event)
proc miqt_exec_method_cQStatusBar_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QStatusBarfocusOutEvent(self[], event)
proc miqt_exec_method_cQStatusBar_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQStatusBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStatusBarenterEvent(self[], event)
proc miqt_exec_method_cQStatusBar_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQStatusBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStatusBarleaveEvent(self[], event)
proc miqt_exec_method_cQStatusBar_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method moveEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QStatusBarmoveEvent(self[], event)
proc miqt_exec_method_cQStatusBar_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method closeEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QStatusBarcloseEvent(self[], event)
proc miqt_exec_method_cQStatusBar_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QStatusBarcontextMenuEvent(self[], event)
proc miqt_exec_method_cQStatusBar_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QStatusBartabletEvent(self[], event)
proc miqt_exec_method_cQStatusBar_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QActionEvent): void {.base.} =
  QStatusBaractionEvent(self[], event)
proc miqt_exec_method_cQStatusBar_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QStatusBardragEnterEvent(self[], event)
proc miqt_exec_method_cQStatusBar_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QStatusBardragMoveEvent(self[], event)
proc miqt_exec_method_cQStatusBar_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QStatusBardragLeaveEvent(self[], event)
proc miqt_exec_method_cQStatusBar_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QDropEvent): void {.base.} =
  QStatusBardropEvent(self[], event)
proc miqt_exec_method_cQStatusBar_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method hideEvent*(self: VirtualQStatusBar, event: gen_qevent_types.QHideEvent): void {.base.} =
  QStatusBarhideEvent(self[], event)
proc miqt_exec_method_cQStatusBar_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method nativeEvent*(self: VirtualQStatusBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QStatusBarnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQStatusBar_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQStatusBar, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QStatusBarchangeEvent(self[], param1)
proc miqt_exec_method_cQStatusBar_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method metric*(self: VirtualQStatusBar, param1: cint): cint {.base.} =
  QStatusBarmetric(self[], param1)
proc miqt_exec_method_cQStatusBar_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQStatusBar, painter: gen_qpainter_types.QPainter): void {.base.} =
  QStatusBarinitPainter(self[], painter)
proc miqt_exec_method_cQStatusBar_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQStatusBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QStatusBarredirected(self[], offset)
proc miqt_exec_method_cQStatusBar_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQStatusBar, ): gen_qpainter_types.QPainter {.base.} =
  QStatusBarsharedPainter(self[])
proc miqt_exec_method_cQStatusBar_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQStatusBar, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QStatusBarinputMethodEvent(self[], param1)
proc miqt_exec_method_cQStatusBar_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQStatusBar, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QStatusBarinputMethodQuery(self[], param1)
proc miqt_exec_method_cQStatusBar_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQStatusBar, next: bool): bool {.base.} =
  QStatusBarfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQStatusBar_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQStatusBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QStatusBareventFilter(self[], watched, event)
proc miqt_exec_method_cQStatusBar_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQStatusBar, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QStatusBartimerEvent(self[], event)
proc miqt_exec_method_cQStatusBar_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQStatusBar, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QStatusBarchildEvent(self[], event)
proc miqt_exec_method_cQStatusBar_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQStatusBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QStatusBarcustomEvent(self[], event)
proc miqt_exec_method_cQStatusBar_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQStatusBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStatusBarconnectNotify(self[], signal)
proc miqt_exec_method_cQStatusBar_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQStatusBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QStatusBardisconnectNotify(self[], signal)
proc miqt_exec_method_cQStatusBar_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQStatusBar](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc reformat*(self: gen_qstatusbar_types.QStatusBar, ): void =
  fcQStatusBar_protectedbase_reformat(self.h)

proc hideOrShow*(self: gen_qstatusbar_types.QStatusBar, ): void =
  fcQStatusBar_protectedbase_hideOrShow(self.h)

proc updateMicroFocus*(self: gen_qstatusbar_types.QStatusBar, ): void =
  fcQStatusBar_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qstatusbar_types.QStatusBar, ): void =
  fcQStatusBar_protectedbase_create(self.h)

proc destroy*(self: gen_qstatusbar_types.QStatusBar, ): void =
  fcQStatusBar_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qstatusbar_types.QStatusBar, ): bool =
  fcQStatusBar_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qstatusbar_types.QStatusBar, ): bool =
  fcQStatusBar_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qstatusbar_types.QStatusBar, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStatusBar_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qstatusbar_types.QStatusBar, ): cint =
  fcQStatusBar_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qstatusbar_types.QStatusBar, signal: cstring): cint =
  fcQStatusBar_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qstatusbar_types.QStatusBar, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQStatusBar_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qstatusbar_types.QStatusBar,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QStatusBarVTable = nil): gen_qstatusbar_types.QStatusBar =
  let vtbl = if vtbl == nil: new QStatusBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStatusBarVTable, _: ptr cQStatusBar) {.cdecl.} =
    let vtbl = cast[ref QStatusBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStatusBar_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStatusBar_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStatusBar_metacall
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQStatusBar_showEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQStatusBar_paintEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQStatusBar_resizeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStatusBar_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQStatusBar_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQStatusBar_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQStatusBar_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQStatusBar_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQStatusBar_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQStatusBar_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQStatusBar_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQStatusBar_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQStatusBar_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQStatusBar_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQStatusBar_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQStatusBar_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQStatusBar_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQStatusBar_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQStatusBar_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQStatusBar_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQStatusBar_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQStatusBar_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQStatusBar_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQStatusBar_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQStatusBar_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQStatusBar_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQStatusBar_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQStatusBar_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQStatusBar_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQStatusBar_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQStatusBar_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQStatusBar_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQStatusBar_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQStatusBar_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQStatusBar_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQStatusBar_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQStatusBar_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQStatusBar_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQStatusBar_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQStatusBar_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQStatusBar_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStatusBar_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStatusBar_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStatusBar_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStatusBar_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStatusBar_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStatusBar_disconnectNotify
  gen_qstatusbar_types.QStatusBar(h: fcQStatusBar_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qstatusbar_types.QStatusBar,
    vtbl: ref QStatusBarVTable = nil): gen_qstatusbar_types.QStatusBar =
  let vtbl = if vtbl == nil: new QStatusBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStatusBarVTable, _: ptr cQStatusBar) {.cdecl.} =
    let vtbl = cast[ref QStatusBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStatusBar_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStatusBar_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStatusBar_metacall
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQStatusBar_showEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQStatusBar_paintEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQStatusBar_resizeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStatusBar_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQStatusBar_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQStatusBar_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQStatusBar_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQStatusBar_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQStatusBar_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQStatusBar_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQStatusBar_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQStatusBar_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQStatusBar_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQStatusBar_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQStatusBar_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQStatusBar_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQStatusBar_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQStatusBar_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQStatusBar_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQStatusBar_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQStatusBar_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQStatusBar_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQStatusBar_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQStatusBar_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQStatusBar_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQStatusBar_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQStatusBar_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQStatusBar_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQStatusBar_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQStatusBar_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQStatusBar_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQStatusBar_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQStatusBar_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQStatusBar_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQStatusBar_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQStatusBar_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQStatusBar_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQStatusBar_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQStatusBar_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQStatusBar_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQStatusBar_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStatusBar_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStatusBar_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStatusBar_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStatusBar_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStatusBar_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStatusBar_disconnectNotify
  gen_qstatusbar_types.QStatusBar(h: fcQStatusBar_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qstatusbar_types.QStatusBar,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQStatusBar) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStatusBarVTable, _: ptr cQStatusBar) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQStatusBar()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQStatusBar_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQStatusBar_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQStatusBar_metacall
  vtbl[].vtbl.showEvent = miqt_exec_method_cQStatusBar_showEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQStatusBar_paintEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQStatusBar_resizeEvent
  vtbl[].vtbl.event = miqt_exec_method_cQStatusBar_event
  vtbl[].vtbl.devType = miqt_exec_method_cQStatusBar_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQStatusBar_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQStatusBar_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQStatusBar_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQStatusBar_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQStatusBar_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQStatusBar_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQStatusBar_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQStatusBar_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQStatusBar_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQStatusBar_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQStatusBar_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQStatusBar_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQStatusBar_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQStatusBar_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQStatusBar_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQStatusBar_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQStatusBar_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQStatusBar_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQStatusBar_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQStatusBar_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQStatusBar_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQStatusBar_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQStatusBar_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQStatusBar_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQStatusBar_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQStatusBar_dropEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQStatusBar_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQStatusBar_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQStatusBar_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQStatusBar_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQStatusBar_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQStatusBar_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQStatusBar_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQStatusBar_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQStatusBar_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQStatusBar_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQStatusBar_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQStatusBar_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQStatusBar_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQStatusBar_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQStatusBar_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQStatusBar_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQStatusBar_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qstatusbar_types.QStatusBar,
    vtbl: VirtualQStatusBar) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQStatusBarVTable, _: ptr cQStatusBar) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQStatusBar()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQStatusBar, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQStatusBar_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQStatusBar_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQStatusBar_metacall
  vtbl[].vtbl.showEvent = miqt_exec_method_cQStatusBar_showEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQStatusBar_paintEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQStatusBar_resizeEvent
  vtbl[].vtbl.event = miqt_exec_method_cQStatusBar_event
  vtbl[].vtbl.devType = miqt_exec_method_cQStatusBar_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQStatusBar_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQStatusBar_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQStatusBar_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQStatusBar_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQStatusBar_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQStatusBar_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQStatusBar_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQStatusBar_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQStatusBar_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQStatusBar_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQStatusBar_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQStatusBar_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQStatusBar_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQStatusBar_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQStatusBar_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQStatusBar_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQStatusBar_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQStatusBar_moveEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQStatusBar_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQStatusBar_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQStatusBar_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQStatusBar_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQStatusBar_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQStatusBar_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQStatusBar_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQStatusBar_dropEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQStatusBar_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQStatusBar_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQStatusBar_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQStatusBar_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQStatusBar_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQStatusBar_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQStatusBar_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQStatusBar_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQStatusBar_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQStatusBar_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQStatusBar_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQStatusBar_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQStatusBar_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQStatusBar_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQStatusBar_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQStatusBar_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQStatusBar_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qstatusbar_types.QStatusBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStatusBar_staticMetaObject())
