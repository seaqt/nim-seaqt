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


{.compile("gen_qerrormessage.cpp", QtWidgetsCFlags).}


import ./gen_qerrormessage_types
export gen_qerrormessage_types

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
  ./gen_qdialog,
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
  gen_qdialog,
  gen_qwidget_types

type cQErrorMessage*{.exportc: "QErrorMessage", incompleteStruct.} = object

proc fcQErrorMessage_metaObject(self: pointer): pointer {.importc: "QErrorMessage_metaObject".}
proc fcQErrorMessage_metacast(self: pointer, param1: cstring): pointer {.importc: "QErrorMessage_metacast".}
proc fcQErrorMessage_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QErrorMessage_metacall".}
proc fcQErrorMessage_tr(s: cstring): struct_miqt_string {.importc: "QErrorMessage_tr".}
proc fcQErrorMessage_trUtf8(s: cstring): struct_miqt_string {.importc: "QErrorMessage_trUtf8".}
proc fcQErrorMessage_qtHandler(): pointer {.importc: "QErrorMessage_qtHandler".}
proc fcQErrorMessage_showMessage(self: pointer, message: struct_miqt_string): void {.importc: "QErrorMessage_showMessage".}
proc fcQErrorMessage_showMessage2(self: pointer, message: struct_miqt_string, typeVal: struct_miqt_string): void {.importc: "QErrorMessage_showMessage2".}
proc fcQErrorMessage_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QErrorMessage_tr2".}
proc fcQErrorMessage_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QErrorMessage_tr3".}
proc fcQErrorMessage_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QErrorMessage_trUtf82".}
proc fcQErrorMessage_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QErrorMessage_trUtf83".}
proc fcQErrorMessage_vtbl(self: pointer): pointer {.importc: "QErrorMessage_vtbl".}
proc fcQErrorMessage_vdata(self: pointer): pointer {.importc: "QErrorMessage_vdata".}
type cQErrorMessageVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  done*: proc(self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  accept*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQErrorMessage_virtualbase_metaObject(self: pointer): pointer {.importc: "QErrorMessage_virtualbase_metaObject".}
proc fcQErrorMessage_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QErrorMessage_virtualbase_metacast".}
proc fcQErrorMessage_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QErrorMessage_virtualbase_metacall".}
proc fcQErrorMessage_virtualbase_done(self: pointer, param1: cint): void {.importc: "QErrorMessage_virtualbase_done".}
proc fcQErrorMessage_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QErrorMessage_virtualbase_changeEvent".}
proc fcQErrorMessage_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QErrorMessage_virtualbase_setVisible".}
proc fcQErrorMessage_virtualbase_sizeHint(self: pointer): pointer {.importc: "QErrorMessage_virtualbase_sizeHint".}
proc fcQErrorMessage_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QErrorMessage_virtualbase_minimumSizeHint".}
proc fcQErrorMessage_virtualbase_open(self: pointer): void {.importc: "QErrorMessage_virtualbase_open".}
proc fcQErrorMessage_virtualbase_exec(self: pointer): cint {.importc: "QErrorMessage_virtualbase_exec".}
proc fcQErrorMessage_virtualbase_accept(self: pointer): void {.importc: "QErrorMessage_virtualbase_accept".}
proc fcQErrorMessage_virtualbase_reject(self: pointer): void {.importc: "QErrorMessage_virtualbase_reject".}
proc fcQErrorMessage_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QErrorMessage_virtualbase_keyPressEvent".}
proc fcQErrorMessage_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QErrorMessage_virtualbase_closeEvent".}
proc fcQErrorMessage_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QErrorMessage_virtualbase_showEvent".}
proc fcQErrorMessage_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QErrorMessage_virtualbase_resizeEvent".}
proc fcQErrorMessage_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QErrorMessage_virtualbase_contextMenuEvent".}
proc fcQErrorMessage_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QErrorMessage_virtualbase_eventFilter".}
proc fcQErrorMessage_virtualbase_devType(self: pointer): cint {.importc: "QErrorMessage_virtualbase_devType".}
proc fcQErrorMessage_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QErrorMessage_virtualbase_heightForWidth".}
proc fcQErrorMessage_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QErrorMessage_virtualbase_hasHeightForWidth".}
proc fcQErrorMessage_virtualbase_paintEngine(self: pointer): pointer {.importc: "QErrorMessage_virtualbase_paintEngine".}
proc fcQErrorMessage_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QErrorMessage_virtualbase_event".}
proc fcQErrorMessage_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_mousePressEvent".}
proc fcQErrorMessage_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_mouseReleaseEvent".}
proc fcQErrorMessage_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_mouseDoubleClickEvent".}
proc fcQErrorMessage_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_mouseMoveEvent".}
proc fcQErrorMessage_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_wheelEvent".}
proc fcQErrorMessage_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_keyReleaseEvent".}
proc fcQErrorMessage_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_focusInEvent".}
proc fcQErrorMessage_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_focusOutEvent".}
proc fcQErrorMessage_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_enterEvent".}
proc fcQErrorMessage_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_leaveEvent".}
proc fcQErrorMessage_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_paintEvent".}
proc fcQErrorMessage_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_moveEvent".}
proc fcQErrorMessage_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_tabletEvent".}
proc fcQErrorMessage_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_actionEvent".}
proc fcQErrorMessage_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_dragEnterEvent".}
proc fcQErrorMessage_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_dragMoveEvent".}
proc fcQErrorMessage_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_dragLeaveEvent".}
proc fcQErrorMessage_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_dropEvent".}
proc fcQErrorMessage_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_hideEvent".}
proc fcQErrorMessage_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QErrorMessage_virtualbase_nativeEvent".}
proc fcQErrorMessage_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QErrorMessage_virtualbase_metric".}
proc fcQErrorMessage_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QErrorMessage_virtualbase_initPainter".}
proc fcQErrorMessage_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QErrorMessage_virtualbase_redirected".}
proc fcQErrorMessage_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QErrorMessage_virtualbase_sharedPainter".}
proc fcQErrorMessage_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QErrorMessage_virtualbase_inputMethodEvent".}
proc fcQErrorMessage_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QErrorMessage_virtualbase_inputMethodQuery".}
proc fcQErrorMessage_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QErrorMessage_virtualbase_focusNextPrevChild".}
proc fcQErrorMessage_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_timerEvent".}
proc fcQErrorMessage_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_childEvent".}
proc fcQErrorMessage_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QErrorMessage_virtualbase_customEvent".}
proc fcQErrorMessage_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QErrorMessage_virtualbase_connectNotify".}
proc fcQErrorMessage_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QErrorMessage_virtualbase_disconnectNotify".}
proc fcQErrorMessage_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QErrorMessage_protectedbase_adjustPosition".}
proc fcQErrorMessage_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QErrorMessage_protectedbase_updateMicroFocus".}
proc fcQErrorMessage_protectedbase_create(self: pointer): void {.importc: "QErrorMessage_protectedbase_create".}
proc fcQErrorMessage_protectedbase_destroy(self: pointer): void {.importc: "QErrorMessage_protectedbase_destroy".}
proc fcQErrorMessage_protectedbase_focusNextChild(self: pointer): bool {.importc: "QErrorMessage_protectedbase_focusNextChild".}
proc fcQErrorMessage_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QErrorMessage_protectedbase_focusPreviousChild".}
proc fcQErrorMessage_protectedbase_sender(self: pointer): pointer {.importc: "QErrorMessage_protectedbase_sender".}
proc fcQErrorMessage_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QErrorMessage_protectedbase_senderSignalIndex".}
proc fcQErrorMessage_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QErrorMessage_protectedbase_receivers".}
proc fcQErrorMessage_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QErrorMessage_protectedbase_isSignalConnected".}
proc fcQErrorMessage_new(vtbl, vdata: pointer, parent: pointer): ptr cQErrorMessage {.importc: "QErrorMessage_new".}
proc fcQErrorMessage_new2(vtbl, vdata: pointer): ptr cQErrorMessage {.importc: "QErrorMessage_new2".}
proc fcQErrorMessage_staticMetaObject(): pointer {.importc: "QErrorMessage_staticMetaObject".}

proc metaObject*(self: gen_qerrormessage_types.QErrorMessage): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQErrorMessage_metaObject(self.h), owned: false)

proc metacast*(self: gen_qerrormessage_types.QErrorMessage, param1: cstring): pointer =
  fcQErrorMessage_metacast(self.h, param1)

proc metacall*(self: gen_qerrormessage_types.QErrorMessage, param1: cint, param2: cint, param3: pointer): cint =
  fcQErrorMessage_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qerrormessage_types.QErrorMessage, s: cstring): string =
  let v_ms = fcQErrorMessage_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qerrormessage_types.QErrorMessage, s: cstring): string =
  let v_ms = fcQErrorMessage_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc qtHandler*(_: type gen_qerrormessage_types.QErrorMessage): gen_qerrormessage_types.QErrorMessage =
  gen_qerrormessage_types.QErrorMessage(h: fcQErrorMessage_qtHandler(), owned: false)

proc showMessage*(self: gen_qerrormessage_types.QErrorMessage, message: openArray[char]): void =
  fcQErrorMessage_showMessage(self.h, struct_miqt_string(data: if len(message) > 0: addr message[0] else: nil, len: csize_t(len(message))))

proc showMessage*(self: gen_qerrormessage_types.QErrorMessage, message: openArray[char], typeVal: openArray[char]): void =
  fcQErrorMessage_showMessage2(self.h, struct_miqt_string(data: if len(message) > 0: addr message[0] else: nil, len: csize_t(len(message))), struct_miqt_string(data: if len(typeVal) > 0: addr typeVal[0] else: nil, len: csize_t(len(typeVal))))

proc tr*(_: type gen_qerrormessage_types.QErrorMessage, s: cstring, c: cstring): string =
  let v_ms = fcQErrorMessage_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qerrormessage_types.QErrorMessage, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQErrorMessage_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qerrormessage_types.QErrorMessage, s: cstring, c: cstring): string =
  let v_ms = fcQErrorMessage_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qerrormessage_types.QErrorMessage, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQErrorMessage_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QErrorMessagemetaObjectProc* = proc(self: QErrorMessage): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QErrorMessagemetacastProc* = proc(self: QErrorMessage, param1: cstring): pointer {.raises: [], gcsafe.}
type QErrorMessagemetacallProc* = proc(self: QErrorMessage, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QErrorMessagedoneProc* = proc(self: QErrorMessage, param1: cint): void {.raises: [], gcsafe.}
type QErrorMessagechangeEventProc* = proc(self: QErrorMessage, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QErrorMessagesetVisibleProc* = proc(self: QErrorMessage, visible: bool): void {.raises: [], gcsafe.}
type QErrorMessagesizeHintProc* = proc(self: QErrorMessage): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QErrorMessageminimumSizeHintProc* = proc(self: QErrorMessage): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QErrorMessageopenProc* = proc(self: QErrorMessage): void {.raises: [], gcsafe.}
type QErrorMessageexecProc* = proc(self: QErrorMessage): cint {.raises: [], gcsafe.}
type QErrorMessageacceptProc* = proc(self: QErrorMessage): void {.raises: [], gcsafe.}
type QErrorMessagerejectProc* = proc(self: QErrorMessage): void {.raises: [], gcsafe.}
type QErrorMessagekeyPressEventProc* = proc(self: QErrorMessage, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QErrorMessagecloseEventProc* = proc(self: QErrorMessage, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QErrorMessageshowEventProc* = proc(self: QErrorMessage, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QErrorMessageresizeEventProc* = proc(self: QErrorMessage, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QErrorMessagecontextMenuEventProc* = proc(self: QErrorMessage, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QErrorMessageeventFilterProc* = proc(self: QErrorMessage, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QErrorMessagedevTypeProc* = proc(self: QErrorMessage): cint {.raises: [], gcsafe.}
type QErrorMessageheightForWidthProc* = proc(self: QErrorMessage, param1: cint): cint {.raises: [], gcsafe.}
type QErrorMessagehasHeightForWidthProc* = proc(self: QErrorMessage): bool {.raises: [], gcsafe.}
type QErrorMessagepaintEngineProc* = proc(self: QErrorMessage): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QErrorMessageeventProc* = proc(self: QErrorMessage, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QErrorMessagemousePressEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QErrorMessagemouseReleaseEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QErrorMessagemouseDoubleClickEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QErrorMessagemouseMoveEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QErrorMessagewheelEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QErrorMessagekeyReleaseEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QErrorMessagefocusInEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QErrorMessagefocusOutEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QErrorMessageenterEventProc* = proc(self: QErrorMessage, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QErrorMessageleaveEventProc* = proc(self: QErrorMessage, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QErrorMessagepaintEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QErrorMessagemoveEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QErrorMessagetabletEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QErrorMessageactionEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QErrorMessagedragEnterEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QErrorMessagedragMoveEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QErrorMessagedragLeaveEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QErrorMessagedropEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QErrorMessagehideEventProc* = proc(self: QErrorMessage, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QErrorMessagenativeEventProc* = proc(self: QErrorMessage, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QErrorMessagemetricProc* = proc(self: QErrorMessage, param1: cint): cint {.raises: [], gcsafe.}
type QErrorMessageinitPainterProc* = proc(self: QErrorMessage, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QErrorMessageredirectedProc* = proc(self: QErrorMessage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QErrorMessagesharedPainterProc* = proc(self: QErrorMessage): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QErrorMessageinputMethodEventProc* = proc(self: QErrorMessage, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QErrorMessageinputMethodQueryProc* = proc(self: QErrorMessage, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QErrorMessagefocusNextPrevChildProc* = proc(self: QErrorMessage, next: bool): bool {.raises: [], gcsafe.}
type QErrorMessagetimerEventProc* = proc(self: QErrorMessage, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QErrorMessagechildEventProc* = proc(self: QErrorMessage, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QErrorMessagecustomEventProc* = proc(self: QErrorMessage, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QErrorMessageconnectNotifyProc* = proc(self: QErrorMessage, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QErrorMessagedisconnectNotifyProc* = proc(self: QErrorMessage, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QErrorMessageVTable* {.inheritable, pure.} = object
  vtbl: cQErrorMessageVTable
  metaObject*: QErrorMessagemetaObjectProc
  metacast*: QErrorMessagemetacastProc
  metacall*: QErrorMessagemetacallProc
  done*: QErrorMessagedoneProc
  changeEvent*: QErrorMessagechangeEventProc
  setVisible*: QErrorMessagesetVisibleProc
  sizeHint*: QErrorMessagesizeHintProc
  minimumSizeHint*: QErrorMessageminimumSizeHintProc
  open*: QErrorMessageopenProc
  exec*: QErrorMessageexecProc
  accept*: QErrorMessageacceptProc
  reject*: QErrorMessagerejectProc
  keyPressEvent*: QErrorMessagekeyPressEventProc
  closeEvent*: QErrorMessagecloseEventProc
  showEvent*: QErrorMessageshowEventProc
  resizeEvent*: QErrorMessageresizeEventProc
  contextMenuEvent*: QErrorMessagecontextMenuEventProc
  eventFilter*: QErrorMessageeventFilterProc
  devType*: QErrorMessagedevTypeProc
  heightForWidth*: QErrorMessageheightForWidthProc
  hasHeightForWidth*: QErrorMessagehasHeightForWidthProc
  paintEngine*: QErrorMessagepaintEngineProc
  event*: QErrorMessageeventProc
  mousePressEvent*: QErrorMessagemousePressEventProc
  mouseReleaseEvent*: QErrorMessagemouseReleaseEventProc
  mouseDoubleClickEvent*: QErrorMessagemouseDoubleClickEventProc
  mouseMoveEvent*: QErrorMessagemouseMoveEventProc
  wheelEvent*: QErrorMessagewheelEventProc
  keyReleaseEvent*: QErrorMessagekeyReleaseEventProc
  focusInEvent*: QErrorMessagefocusInEventProc
  focusOutEvent*: QErrorMessagefocusOutEventProc
  enterEvent*: QErrorMessageenterEventProc
  leaveEvent*: QErrorMessageleaveEventProc
  paintEvent*: QErrorMessagepaintEventProc
  moveEvent*: QErrorMessagemoveEventProc
  tabletEvent*: QErrorMessagetabletEventProc
  actionEvent*: QErrorMessageactionEventProc
  dragEnterEvent*: QErrorMessagedragEnterEventProc
  dragMoveEvent*: QErrorMessagedragMoveEventProc
  dragLeaveEvent*: QErrorMessagedragLeaveEventProc
  dropEvent*: QErrorMessagedropEventProc
  hideEvent*: QErrorMessagehideEventProc
  nativeEvent*: QErrorMessagenativeEventProc
  metric*: QErrorMessagemetricProc
  initPainter*: QErrorMessageinitPainterProc
  redirected*: QErrorMessageredirectedProc
  sharedPainter*: QErrorMessagesharedPainterProc
  inputMethodEvent*: QErrorMessageinputMethodEventProc
  inputMethodQuery*: QErrorMessageinputMethodQueryProc
  focusNextPrevChild*: QErrorMessagefocusNextPrevChildProc
  timerEvent*: QErrorMessagetimerEventProc
  childEvent*: QErrorMessagechildEventProc
  customEvent*: QErrorMessagecustomEventProc
  connectNotify*: QErrorMessageconnectNotifyProc
  disconnectNotify*: QErrorMessagedisconnectNotifyProc
proc QErrorMessagemetaObject*(self: gen_qerrormessage_types.QErrorMessage): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQErrorMessage_virtualbase_metaObject(self.h), owned: false)

proc cQErrorMessage_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QErrorMessagemetacast*(self: gen_qerrormessage_types.QErrorMessage, param1: cstring): pointer =
  fcQErrorMessage_virtualbase_metacast(self.h, param1)

proc cQErrorMessage_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QErrorMessagemetacall*(self: gen_qerrormessage_types.QErrorMessage, param1: cint, param2: cint, param3: pointer): cint =
  fcQErrorMessage_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQErrorMessage_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QErrorMessagedone*(self: gen_qerrormessage_types.QErrorMessage, param1: cint): void =
  fcQErrorMessage_virtualbase_done(self.h, param1)

proc cQErrorMessage_vtable_callback_done(self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = param1
  vtbl[].done(self, slotval1)

proc QErrorMessagechangeEvent*(self: gen_qerrormessage_types.QErrorMessage, e: gen_qcoreevent_types.QEvent): void =
  fcQErrorMessage_virtualbase_changeEvent(self.h, e.h)

proc cQErrorMessage_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QErrorMessagesetVisible*(self: gen_qerrormessage_types.QErrorMessage, visible: bool): void =
  fcQErrorMessage_virtualbase_setVisible(self.h, visible)

proc cQErrorMessage_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QErrorMessagesizeHint*(self: gen_qerrormessage_types.QErrorMessage): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQErrorMessage_virtualbase_sizeHint(self.h), owned: true)

proc cQErrorMessage_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QErrorMessageminimumSizeHint*(self: gen_qerrormessage_types.QErrorMessage): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQErrorMessage_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQErrorMessage_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QErrorMessageopen*(self: gen_qerrormessage_types.QErrorMessage): void =
  fcQErrorMessage_virtualbase_open(self.h)

proc cQErrorMessage_vtable_callback_open(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  vtbl[].open(self)

proc QErrorMessageexec*(self: gen_qerrormessage_types.QErrorMessage): cint =
  fcQErrorMessage_virtualbase_exec(self.h)

proc cQErrorMessage_vtable_callback_exec(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QErrorMessageaccept*(self: gen_qerrormessage_types.QErrorMessage): void =
  fcQErrorMessage_virtualbase_accept(self.h)

proc cQErrorMessage_vtable_callback_accept(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  vtbl[].accept(self)

proc QErrorMessagereject*(self: gen_qerrormessage_types.QErrorMessage): void =
  fcQErrorMessage_virtualbase_reject(self.h)

proc cQErrorMessage_vtable_callback_reject(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  vtbl[].reject(self)

proc QErrorMessagekeyPressEvent*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qevent_types.QKeyEvent): void =
  fcQErrorMessage_virtualbase_keyPressEvent(self.h, param1.h)

proc cQErrorMessage_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QErrorMessagecloseEvent*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qevent_types.QCloseEvent): void =
  fcQErrorMessage_virtualbase_closeEvent(self.h, param1.h)

proc cQErrorMessage_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QErrorMessageshowEvent*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qevent_types.QShowEvent): void =
  fcQErrorMessage_virtualbase_showEvent(self.h, param1.h)

proc cQErrorMessage_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QErrorMessageresizeEvent*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qevent_types.QResizeEvent): void =
  fcQErrorMessage_virtualbase_resizeEvent(self.h, param1.h)

proc cQErrorMessage_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QErrorMessagecontextMenuEvent*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQErrorMessage_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQErrorMessage_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QErrorMessageeventFilter*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQErrorMessage_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQErrorMessage_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QErrorMessagedevType*(self: gen_qerrormessage_types.QErrorMessage): cint =
  fcQErrorMessage_virtualbase_devType(self.h)

proc cQErrorMessage_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QErrorMessageheightForWidth*(self: gen_qerrormessage_types.QErrorMessage, param1: cint): cint =
  fcQErrorMessage_virtualbase_heightForWidth(self.h, param1)

proc cQErrorMessage_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QErrorMessagehasHeightForWidth*(self: gen_qerrormessage_types.QErrorMessage): bool =
  fcQErrorMessage_virtualbase_hasHeightForWidth(self.h)

proc cQErrorMessage_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QErrorMessagepaintEngine*(self: gen_qerrormessage_types.QErrorMessage): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQErrorMessage_virtualbase_paintEngine(self.h), owned: false)

proc cQErrorMessage_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QErrorMessageevent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qcoreevent_types.QEvent): bool =
  fcQErrorMessage_virtualbase_event(self.h, event.h)

proc cQErrorMessage_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QErrorMessagemousePressEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QMouseEvent): void =
  fcQErrorMessage_virtualbase_mousePressEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QErrorMessagemouseReleaseEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QMouseEvent): void =
  fcQErrorMessage_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QErrorMessagemouseDoubleClickEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QMouseEvent): void =
  fcQErrorMessage_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QErrorMessagemouseMoveEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QMouseEvent): void =
  fcQErrorMessage_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QErrorMessagewheelEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QWheelEvent): void =
  fcQErrorMessage_virtualbase_wheelEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QErrorMessagekeyReleaseEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QKeyEvent): void =
  fcQErrorMessage_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QErrorMessagefocusInEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QFocusEvent): void =
  fcQErrorMessage_virtualbase_focusInEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QErrorMessagefocusOutEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QFocusEvent): void =
  fcQErrorMessage_virtualbase_focusOutEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QErrorMessageenterEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qcoreevent_types.QEvent): void =
  fcQErrorMessage_virtualbase_enterEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QErrorMessageleaveEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qcoreevent_types.QEvent): void =
  fcQErrorMessage_virtualbase_leaveEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QErrorMessagepaintEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QPaintEvent): void =
  fcQErrorMessage_virtualbase_paintEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QErrorMessagemoveEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QMoveEvent): void =
  fcQErrorMessage_virtualbase_moveEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QErrorMessagetabletEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QTabletEvent): void =
  fcQErrorMessage_virtualbase_tabletEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QErrorMessageactionEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QActionEvent): void =
  fcQErrorMessage_virtualbase_actionEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QErrorMessagedragEnterEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QDragEnterEvent): void =
  fcQErrorMessage_virtualbase_dragEnterEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QErrorMessagedragMoveEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QDragMoveEvent): void =
  fcQErrorMessage_virtualbase_dragMoveEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QErrorMessagedragLeaveEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQErrorMessage_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QErrorMessagedropEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QDropEvent): void =
  fcQErrorMessage_virtualbase_dropEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QErrorMessagehideEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QHideEvent): void =
  fcQErrorMessage_virtualbase_hideEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QErrorMessagenativeEvent*(self: gen_qerrormessage_types.QErrorMessage, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQErrorMessage_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQErrorMessage_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QErrorMessagemetric*(self: gen_qerrormessage_types.QErrorMessage, param1: cint): cint =
  fcQErrorMessage_virtualbase_metric(self.h, cint(param1))

proc cQErrorMessage_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QErrorMessageinitPainter*(self: gen_qerrormessage_types.QErrorMessage, painter: gen_qpainter_types.QPainter): void =
  fcQErrorMessage_virtualbase_initPainter(self.h, painter.h)

proc cQErrorMessage_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QErrorMessageredirected*(self: gen_qerrormessage_types.QErrorMessage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQErrorMessage_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQErrorMessage_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QErrorMessagesharedPainter*(self: gen_qerrormessage_types.QErrorMessage): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQErrorMessage_virtualbase_sharedPainter(self.h), owned: false)

proc cQErrorMessage_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QErrorMessageinputMethodEvent*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQErrorMessage_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQErrorMessage_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QErrorMessageinputMethodQuery*(self: gen_qerrormessage_types.QErrorMessage, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQErrorMessage_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQErrorMessage_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QErrorMessagefocusNextPrevChild*(self: gen_qerrormessage_types.QErrorMessage, next: bool): bool =
  fcQErrorMessage_virtualbase_focusNextPrevChild(self.h, next)

proc cQErrorMessage_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QErrorMessagetimerEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQErrorMessage_virtualbase_timerEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QErrorMessagechildEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qcoreevent_types.QChildEvent): void =
  fcQErrorMessage_virtualbase_childEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QErrorMessagecustomEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qcoreevent_types.QEvent): void =
  fcQErrorMessage_virtualbase_customEvent(self.h, event.h)

proc cQErrorMessage_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QErrorMessageconnectNotify*(self: gen_qerrormessage_types.QErrorMessage, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQErrorMessage_virtualbase_connectNotify(self.h, signal.h)

proc cQErrorMessage_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QErrorMessagedisconnectNotify*(self: gen_qerrormessage_types.QErrorMessage, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQErrorMessage_virtualbase_disconnectNotify(self.h, signal.h)

proc cQErrorMessage_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QErrorMessageVTable](fcQErrorMessage_vdata(self))
  let self = QErrorMessage(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQErrorMessage* {.inheritable.} = ref object of QErrorMessage
  vtbl*: cQErrorMessageVTable
method metaObject*(self: VirtualQErrorMessage): gen_qobjectdefs_types.QMetaObject {.base.} =
  QErrorMessagemetaObject(self[])
proc cQErrorMessage_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQErrorMessage, param1: cstring): pointer {.base.} =
  QErrorMessagemetacast(self[], param1)
proc cQErrorMessage_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQErrorMessage, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QErrorMessagemetacall(self[], param1, param2, param3)
proc cQErrorMessage_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method done*(self: VirtualQErrorMessage, param1: cint): void {.base.} =
  QErrorMessagedone(self[], param1)
proc cQErrorMessage_method_callback_done(self: pointer, param1: cint): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = param1
  inst.done(slotval1)

method changeEvent*(self: VirtualQErrorMessage, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QErrorMessagechangeEvent(self[], e)
proc cQErrorMessage_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

method setVisible*(self: VirtualQErrorMessage, visible: bool): void {.base.} =
  QErrorMessagesetVisible(self[], visible)
proc cQErrorMessage_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQErrorMessage): gen_qsize_types.QSize {.base.} =
  QErrorMessagesizeHint(self[])
proc cQErrorMessage_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQErrorMessage): gen_qsize_types.QSize {.base.} =
  QErrorMessageminimumSizeHint(self[])
proc cQErrorMessage_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method open*(self: VirtualQErrorMessage): void {.base.} =
  QErrorMessageopen(self[])
proc cQErrorMessage_method_callback_open(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  inst.open()

method exec*(self: VirtualQErrorMessage): cint {.base.} =
  QErrorMessageexec(self[])
proc cQErrorMessage_method_callback_exec(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  var virtualReturn = inst.exec()
  virtualReturn

method accept*(self: VirtualQErrorMessage): void {.base.} =
  QErrorMessageaccept(self[])
proc cQErrorMessage_method_callback_accept(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  inst.accept()

method reject*(self: VirtualQErrorMessage): void {.base.} =
  QErrorMessagereject(self[])
proc cQErrorMessage_method_callback_reject(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  inst.reject()

method keyPressEvent*(self: VirtualQErrorMessage, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QErrorMessagekeyPressEvent(self[], param1)
proc cQErrorMessage_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method closeEvent*(self: VirtualQErrorMessage, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QErrorMessagecloseEvent(self[], param1)
proc cQErrorMessage_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

method showEvent*(self: VirtualQErrorMessage, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QErrorMessageshowEvent(self[], param1)
proc cQErrorMessage_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

method resizeEvent*(self: VirtualQErrorMessage, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QErrorMessageresizeEvent(self[], param1)
proc cQErrorMessage_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method contextMenuEvent*(self: VirtualQErrorMessage, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QErrorMessagecontextMenuEvent(self[], param1)
proc cQErrorMessage_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method eventFilter*(self: VirtualQErrorMessage, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QErrorMessageeventFilter(self[], param1, param2)
proc cQErrorMessage_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method devType*(self: VirtualQErrorMessage): cint {.base.} =
  QErrorMessagedevType(self[])
proc cQErrorMessage_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method heightForWidth*(self: VirtualQErrorMessage, param1: cint): cint {.base.} =
  QErrorMessageheightForWidth(self[], param1)
proc cQErrorMessage_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQErrorMessage): bool {.base.} =
  QErrorMessagehasHeightForWidth(self[])
proc cQErrorMessage_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQErrorMessage): gen_qpaintengine_types.QPaintEngine {.base.} =
  QErrorMessagepaintEngine(self[])
proc cQErrorMessage_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQErrorMessage, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QErrorMessageevent(self[], event)
proc cQErrorMessage_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QErrorMessagemousePressEvent(self[], event)
proc cQErrorMessage_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QErrorMessagemouseReleaseEvent(self[], event)
proc cQErrorMessage_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QErrorMessagemouseDoubleClickEvent(self[], event)
proc cQErrorMessage_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QErrorMessagemouseMoveEvent(self[], event)
proc cQErrorMessage_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QErrorMessagewheelEvent(self[], event)
proc cQErrorMessage_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QErrorMessagekeyReleaseEvent(self[], event)
proc cQErrorMessage_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QErrorMessagefocusInEvent(self[], event)
proc cQErrorMessage_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QErrorMessagefocusOutEvent(self[], event)
proc cQErrorMessage_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQErrorMessage, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QErrorMessageenterEvent(self[], event)
proc cQErrorMessage_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQErrorMessage, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QErrorMessageleaveEvent(self[], event)
proc cQErrorMessage_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QErrorMessagepaintEvent(self[], event)
proc cQErrorMessage_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QErrorMessagemoveEvent(self[], event)
proc cQErrorMessage_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QErrorMessagetabletEvent(self[], event)
proc cQErrorMessage_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QActionEvent): void {.base.} =
  QErrorMessageactionEvent(self[], event)
proc cQErrorMessage_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QErrorMessagedragEnterEvent(self[], event)
proc cQErrorMessage_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QErrorMessagedragMoveEvent(self[], event)
proc cQErrorMessage_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QErrorMessagedragLeaveEvent(self[], event)
proc cQErrorMessage_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QDropEvent): void {.base.} =
  QErrorMessagedropEvent(self[], event)
proc cQErrorMessage_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method hideEvent*(self: VirtualQErrorMessage, event: gen_qevent_types.QHideEvent): void {.base.} =
  QErrorMessagehideEvent(self[], event)
proc cQErrorMessage_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQErrorMessage, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QErrorMessagenativeEvent(self[], eventType, message, resultVal)
proc cQErrorMessage_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQErrorMessage, param1: cint): cint {.base.} =
  QErrorMessagemetric(self[], param1)
proc cQErrorMessage_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQErrorMessage, painter: gen_qpainter_types.QPainter): void {.base.} =
  QErrorMessageinitPainter(self[], painter)
proc cQErrorMessage_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQErrorMessage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QErrorMessageredirected(self[], offset)
proc cQErrorMessage_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQErrorMessage): gen_qpainter_types.QPainter {.base.} =
  QErrorMessagesharedPainter(self[])
proc cQErrorMessage_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQErrorMessage, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QErrorMessageinputMethodEvent(self[], param1)
proc cQErrorMessage_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQErrorMessage, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QErrorMessageinputMethodQuery(self[], param1)
proc cQErrorMessage_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQErrorMessage, next: bool): bool {.base.} =
  QErrorMessagefocusNextPrevChild(self[], next)
proc cQErrorMessage_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQErrorMessage, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QErrorMessagetimerEvent(self[], event)
proc cQErrorMessage_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQErrorMessage, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QErrorMessagechildEvent(self[], event)
proc cQErrorMessage_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQErrorMessage, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QErrorMessagecustomEvent(self[], event)
proc cQErrorMessage_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQErrorMessage, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QErrorMessageconnectNotify(self[], signal)
proc cQErrorMessage_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQErrorMessage, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QErrorMessagedisconnectNotify(self[], signal)
proc cQErrorMessage_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQErrorMessage](fcQErrorMessage_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc adjustPosition*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qwidget_types.QWidget): void =
  fcQErrorMessage_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qerrormessage_types.QErrorMessage): void =
  fcQErrorMessage_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qerrormessage_types.QErrorMessage): void =
  fcQErrorMessage_protectedbase_create(self.h)

proc destroy*(self: gen_qerrormessage_types.QErrorMessage): void =
  fcQErrorMessage_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qerrormessage_types.QErrorMessage): bool =
  fcQErrorMessage_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qerrormessage_types.QErrorMessage): bool =
  fcQErrorMessage_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qerrormessage_types.QErrorMessage): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQErrorMessage_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qerrormessage_types.QErrorMessage): cint =
  fcQErrorMessage_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qerrormessage_types.QErrorMessage, signal: cstring): cint =
  fcQErrorMessage_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qerrormessage_types.QErrorMessage, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQErrorMessage_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qerrormessage_types.QErrorMessage,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QErrorMessageVTable = nil): gen_qerrormessage_types.QErrorMessage =
  let vtbl = if vtbl == nil: new QErrorMessageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QErrorMessageVTable](fcQErrorMessage_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQErrorMessage_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQErrorMessage_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQErrorMessage_vtable_callback_metacall
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQErrorMessage_vtable_callback_done
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQErrorMessage_vtable_callback_changeEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQErrorMessage_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQErrorMessage_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQErrorMessage_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQErrorMessage_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQErrorMessage_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQErrorMessage_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQErrorMessage_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQErrorMessage_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQErrorMessage_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQErrorMessage_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQErrorMessage_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQErrorMessage_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQErrorMessage_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQErrorMessage_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQErrorMessage_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQErrorMessage_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQErrorMessage_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQErrorMessage_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQErrorMessage_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQErrorMessage_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQErrorMessage_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQErrorMessage_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQErrorMessage_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQErrorMessage_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQErrorMessage_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQErrorMessage_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQErrorMessage_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQErrorMessage_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQErrorMessage_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQErrorMessage_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQErrorMessage_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQErrorMessage_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQErrorMessage_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQErrorMessage_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQErrorMessage_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQErrorMessage_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQErrorMessage_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQErrorMessage_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQErrorMessage_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQErrorMessage_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQErrorMessage_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQErrorMessage_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQErrorMessage_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQErrorMessage_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQErrorMessage_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQErrorMessage_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQErrorMessage_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQErrorMessage_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQErrorMessage_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQErrorMessage_vtable_callback_disconnectNotify
  gen_qerrormessage_types.QErrorMessage(h: fcQErrorMessage_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qerrormessage_types.QErrorMessage,
    vtbl: ref QErrorMessageVTable = nil): gen_qerrormessage_types.QErrorMessage =
  let vtbl = if vtbl == nil: new QErrorMessageVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QErrorMessageVTable](fcQErrorMessage_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQErrorMessage_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQErrorMessage_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQErrorMessage_vtable_callback_metacall
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQErrorMessage_vtable_callback_done
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQErrorMessage_vtable_callback_changeEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQErrorMessage_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQErrorMessage_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQErrorMessage_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQErrorMessage_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQErrorMessage_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQErrorMessage_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQErrorMessage_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQErrorMessage_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQErrorMessage_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQErrorMessage_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQErrorMessage_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQErrorMessage_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQErrorMessage_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQErrorMessage_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQErrorMessage_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQErrorMessage_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQErrorMessage_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQErrorMessage_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQErrorMessage_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQErrorMessage_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQErrorMessage_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQErrorMessage_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQErrorMessage_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQErrorMessage_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQErrorMessage_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQErrorMessage_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQErrorMessage_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQErrorMessage_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQErrorMessage_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQErrorMessage_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQErrorMessage_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQErrorMessage_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQErrorMessage_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQErrorMessage_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQErrorMessage_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQErrorMessage_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQErrorMessage_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQErrorMessage_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQErrorMessage_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQErrorMessage_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQErrorMessage_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQErrorMessage_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQErrorMessage_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQErrorMessage_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQErrorMessage_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQErrorMessage_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQErrorMessage_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQErrorMessage_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQErrorMessage_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQErrorMessage_vtable_callback_disconnectNotify
  gen_qerrormessage_types.QErrorMessage(h: fcQErrorMessage_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQErrorMessage_mvtbl = cQErrorMessageVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQErrorMessage()[])](self.fcQErrorMessage_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQErrorMessage_method_callback_metaObject,
  metacast: cQErrorMessage_method_callback_metacast,
  metacall: cQErrorMessage_method_callback_metacall,
  done: cQErrorMessage_method_callback_done,
  changeEvent: cQErrorMessage_method_callback_changeEvent,
  setVisible: cQErrorMessage_method_callback_setVisible,
  sizeHint: cQErrorMessage_method_callback_sizeHint,
  minimumSizeHint: cQErrorMessage_method_callback_minimumSizeHint,
  open: cQErrorMessage_method_callback_open,
  exec: cQErrorMessage_method_callback_exec,
  accept: cQErrorMessage_method_callback_accept,
  reject: cQErrorMessage_method_callback_reject,
  keyPressEvent: cQErrorMessage_method_callback_keyPressEvent,
  closeEvent: cQErrorMessage_method_callback_closeEvent,
  showEvent: cQErrorMessage_method_callback_showEvent,
  resizeEvent: cQErrorMessage_method_callback_resizeEvent,
  contextMenuEvent: cQErrorMessage_method_callback_contextMenuEvent,
  eventFilter: cQErrorMessage_method_callback_eventFilter,
  devType: cQErrorMessage_method_callback_devType,
  heightForWidth: cQErrorMessage_method_callback_heightForWidth,
  hasHeightForWidth: cQErrorMessage_method_callback_hasHeightForWidth,
  paintEngine: cQErrorMessage_method_callback_paintEngine,
  event: cQErrorMessage_method_callback_event,
  mousePressEvent: cQErrorMessage_method_callback_mousePressEvent,
  mouseReleaseEvent: cQErrorMessage_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQErrorMessage_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQErrorMessage_method_callback_mouseMoveEvent,
  wheelEvent: cQErrorMessage_method_callback_wheelEvent,
  keyReleaseEvent: cQErrorMessage_method_callback_keyReleaseEvent,
  focusInEvent: cQErrorMessage_method_callback_focusInEvent,
  focusOutEvent: cQErrorMessage_method_callback_focusOutEvent,
  enterEvent: cQErrorMessage_method_callback_enterEvent,
  leaveEvent: cQErrorMessage_method_callback_leaveEvent,
  paintEvent: cQErrorMessage_method_callback_paintEvent,
  moveEvent: cQErrorMessage_method_callback_moveEvent,
  tabletEvent: cQErrorMessage_method_callback_tabletEvent,
  actionEvent: cQErrorMessage_method_callback_actionEvent,
  dragEnterEvent: cQErrorMessage_method_callback_dragEnterEvent,
  dragMoveEvent: cQErrorMessage_method_callback_dragMoveEvent,
  dragLeaveEvent: cQErrorMessage_method_callback_dragLeaveEvent,
  dropEvent: cQErrorMessage_method_callback_dropEvent,
  hideEvent: cQErrorMessage_method_callback_hideEvent,
  nativeEvent: cQErrorMessage_method_callback_nativeEvent,
  metric: cQErrorMessage_method_callback_metric,
  initPainter: cQErrorMessage_method_callback_initPainter,
  redirected: cQErrorMessage_method_callback_redirected,
  sharedPainter: cQErrorMessage_method_callback_sharedPainter,
  inputMethodEvent: cQErrorMessage_method_callback_inputMethodEvent,
  inputMethodQuery: cQErrorMessage_method_callback_inputMethodQuery,
  focusNextPrevChild: cQErrorMessage_method_callback_focusNextPrevChild,
  timerEvent: cQErrorMessage_method_callback_timerEvent,
  childEvent: cQErrorMessage_method_callback_childEvent,
  customEvent: cQErrorMessage_method_callback_customEvent,
  connectNotify: cQErrorMessage_method_callback_connectNotify,
  disconnectNotify: cQErrorMessage_method_callback_disconnectNotify,
)
proc create*(T: type gen_qerrormessage_types.QErrorMessage,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQErrorMessage) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQErrorMessage_new(addr(cQErrorMessage_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qerrormessage_types.QErrorMessage,
    inst: VirtualQErrorMessage) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQErrorMessage_new2(addr(cQErrorMessage_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qerrormessage_types.QErrorMessage): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQErrorMessage_staticMetaObject())
