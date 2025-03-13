import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qcommandlinkbutton.cpp", cflags).}


import ./gen_qcommandlinkbutton_types
export gen_qcommandlinkbutton_types

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
  ./gen_qpushbutton,
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
  gen_qpushbutton,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQCommandLinkButton*{.exportc: "QCommandLinkButton", incompleteStruct.} = object

proc fcQCommandLinkButton_metaObject(self: pointer): pointer {.importc: "QCommandLinkButton_metaObject".}
proc fcQCommandLinkButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QCommandLinkButton_metacast".}
proc fcQCommandLinkButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCommandLinkButton_metacall".}
proc fcQCommandLinkButton_tr(s: cstring): struct_miqt_string {.importc: "QCommandLinkButton_tr".}
proc fcQCommandLinkButton_trUtf8(s: cstring): struct_miqt_string {.importc: "QCommandLinkButton_trUtf8".}
proc fcQCommandLinkButton_description(self: pointer): struct_miqt_string {.importc: "QCommandLinkButton_description".}
proc fcQCommandLinkButton_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QCommandLinkButton_setDescription".}
proc fcQCommandLinkButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCommandLinkButton_tr2".}
proc fcQCommandLinkButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCommandLinkButton_tr3".}
proc fcQCommandLinkButton_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCommandLinkButton_trUtf82".}
proc fcQCommandLinkButton_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCommandLinkButton_trUtf83".}
proc fcQCommandLinkButton_vtbl(self: pointer): pointer {.importc: "QCommandLinkButton_vtbl".}
proc fcQCommandLinkButton_vdata(self: pointer): pointer {.importc: "QCommandLinkButton_vdata".}
type cQCommandLinkButtonVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hitButton*: proc(self: pointer, pos: pointer): bool {.cdecl, raises: [], gcsafe.}
  checkStateSet*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  nextCheckState*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQCommandLinkButton_virtualbase_metaObject(self: pointer): pointer {.importc: "QCommandLinkButton_virtualbase_metaObject".}
proc fcQCommandLinkButton_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCommandLinkButton_virtualbase_metacast".}
proc fcQCommandLinkButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCommandLinkButton_virtualbase_metacall".}
proc fcQCommandLinkButton_virtualbase_sizeHint(self: pointer): pointer {.importc: "QCommandLinkButton_virtualbase_sizeHint".}
proc fcQCommandLinkButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QCommandLinkButton_virtualbase_heightForWidth".}
proc fcQCommandLinkButton_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QCommandLinkButton_virtualbase_minimumSizeHint".}
proc fcQCommandLinkButton_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QCommandLinkButton_virtualbase_event".}
proc fcQCommandLinkButton_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QCommandLinkButton_virtualbase_paintEvent".}
proc fcQCommandLinkButton_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QCommandLinkButton_virtualbase_keyPressEvent".}
proc fcQCommandLinkButton_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QCommandLinkButton_virtualbase_focusInEvent".}
proc fcQCommandLinkButton_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QCommandLinkButton_virtualbase_focusOutEvent".}
proc fcQCommandLinkButton_virtualbase_hitButton(self: pointer, pos: pointer): bool {.importc: "QCommandLinkButton_virtualbase_hitButton".}
proc fcQCommandLinkButton_virtualbase_checkStateSet(self: pointer): void {.importc: "QCommandLinkButton_virtualbase_checkStateSet".}
proc fcQCommandLinkButton_virtualbase_nextCheckState(self: pointer): void {.importc: "QCommandLinkButton_virtualbase_nextCheckState".}
proc fcQCommandLinkButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QCommandLinkButton_virtualbase_keyReleaseEvent".}
proc fcQCommandLinkButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QCommandLinkButton_virtualbase_mousePressEvent".}
proc fcQCommandLinkButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QCommandLinkButton_virtualbase_mouseReleaseEvent".}
proc fcQCommandLinkButton_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QCommandLinkButton_virtualbase_mouseMoveEvent".}
proc fcQCommandLinkButton_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QCommandLinkButton_virtualbase_changeEvent".}
proc fcQCommandLinkButton_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QCommandLinkButton_virtualbase_timerEvent".}
proc fcQCommandLinkButton_virtualbase_devType(self: pointer): cint {.importc: "QCommandLinkButton_virtualbase_devType".}
proc fcQCommandLinkButton_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QCommandLinkButton_virtualbase_setVisible".}
proc fcQCommandLinkButton_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QCommandLinkButton_virtualbase_hasHeightForWidth".}
proc fcQCommandLinkButton_virtualbase_paintEngine(self: pointer): pointer {.importc: "QCommandLinkButton_virtualbase_paintEngine".}
proc fcQCommandLinkButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_mouseDoubleClickEvent".}
proc fcQCommandLinkButton_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_wheelEvent".}
proc fcQCommandLinkButton_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_enterEvent".}
proc fcQCommandLinkButton_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_leaveEvent".}
proc fcQCommandLinkButton_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_moveEvent".}
proc fcQCommandLinkButton_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_resizeEvent".}
proc fcQCommandLinkButton_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_closeEvent".}
proc fcQCommandLinkButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_contextMenuEvent".}
proc fcQCommandLinkButton_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_tabletEvent".}
proc fcQCommandLinkButton_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_actionEvent".}
proc fcQCommandLinkButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_dragEnterEvent".}
proc fcQCommandLinkButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_dragMoveEvent".}
proc fcQCommandLinkButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_dragLeaveEvent".}
proc fcQCommandLinkButton_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_dropEvent".}
proc fcQCommandLinkButton_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_showEvent".}
proc fcQCommandLinkButton_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_hideEvent".}
proc fcQCommandLinkButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QCommandLinkButton_virtualbase_nativeEvent".}
proc fcQCommandLinkButton_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QCommandLinkButton_virtualbase_metric".}
proc fcQCommandLinkButton_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QCommandLinkButton_virtualbase_initPainter".}
proc fcQCommandLinkButton_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QCommandLinkButton_virtualbase_redirected".}
proc fcQCommandLinkButton_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QCommandLinkButton_virtualbase_sharedPainter".}
proc fcQCommandLinkButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QCommandLinkButton_virtualbase_inputMethodEvent".}
proc fcQCommandLinkButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QCommandLinkButton_virtualbase_inputMethodQuery".}
proc fcQCommandLinkButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QCommandLinkButton_virtualbase_focusNextPrevChild".}
proc fcQCommandLinkButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCommandLinkButton_virtualbase_eventFilter".}
proc fcQCommandLinkButton_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_childEvent".}
proc fcQCommandLinkButton_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_customEvent".}
proc fcQCommandLinkButton_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCommandLinkButton_virtualbase_connectNotify".}
proc fcQCommandLinkButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCommandLinkButton_virtualbase_disconnectNotify".}
proc fcQCommandLinkButton_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QCommandLinkButton_protectedbase_initStyleOption".}
proc fcQCommandLinkButton_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QCommandLinkButton_protectedbase_updateMicroFocus".}
proc fcQCommandLinkButton_protectedbase_create(self: pointer): void {.importc: "QCommandLinkButton_protectedbase_create".}
proc fcQCommandLinkButton_protectedbase_destroy(self: pointer): void {.importc: "QCommandLinkButton_protectedbase_destroy".}
proc fcQCommandLinkButton_protectedbase_focusNextChild(self: pointer): bool {.importc: "QCommandLinkButton_protectedbase_focusNextChild".}
proc fcQCommandLinkButton_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QCommandLinkButton_protectedbase_focusPreviousChild".}
proc fcQCommandLinkButton_protectedbase_sender(self: pointer): pointer {.importc: "QCommandLinkButton_protectedbase_sender".}
proc fcQCommandLinkButton_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QCommandLinkButton_protectedbase_senderSignalIndex".}
proc fcQCommandLinkButton_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCommandLinkButton_protectedbase_receivers".}
proc fcQCommandLinkButton_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCommandLinkButton_protectedbase_isSignalConnected".}
proc fcQCommandLinkButton_new(vtbl, vdata: pointer, parent: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new".}
proc fcQCommandLinkButton_new2(vtbl, vdata: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new2".}
proc fcQCommandLinkButton_new3(vtbl, vdata: pointer, text: struct_miqt_string): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new3".}
proc fcQCommandLinkButton_new4(vtbl, vdata: pointer, text: struct_miqt_string, description: struct_miqt_string): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new4".}
proc fcQCommandLinkButton_new5(vtbl, vdata: pointer, text: struct_miqt_string, parent: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new5".}
proc fcQCommandLinkButton_new6(vtbl, vdata: pointer, text: struct_miqt_string, description: struct_miqt_string, parent: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new6".}
proc fcQCommandLinkButton_staticMetaObject(): pointer {.importc: "QCommandLinkButton_staticMetaObject".}

proc metaObject*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommandLinkButton_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cstring): pointer =
  fcQCommandLinkButton_metacast(self.h, param1)

proc metacall*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQCommandLinkButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton, s: cstring): string =
  let v_ms = fcQCommandLinkButton_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton, s: cstring): string =
  let v_ms = fcQCommandLinkButton_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc description*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): string =
  let v_ms = fcQCommandLinkButton_description(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDescription*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, description: openArray[char]): void =
  fcQCommandLinkButton_setDescription(self.h, struct_miqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))))

proc tr*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton, s: cstring, c: cstring): string =
  let v_ms = fcQCommandLinkButton_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCommandLinkButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton, s: cstring, c: cstring): string =
  let v_ms = fcQCommandLinkButton_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCommandLinkButton_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QCommandLinkButtonmetaObjectProc* = proc(self: QCommandLinkButton): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QCommandLinkButtonmetacastProc* = proc(self: QCommandLinkButton, param1: cstring): pointer {.raises: [], gcsafe.}
type QCommandLinkButtonmetacallProc* = proc(self: QCommandLinkButton, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QCommandLinkButtonsizeHintProc* = proc(self: QCommandLinkButton): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QCommandLinkButtonheightForWidthProc* = proc(self: QCommandLinkButton, param1: cint): cint {.raises: [], gcsafe.}
type QCommandLinkButtonminimumSizeHintProc* = proc(self: QCommandLinkButton): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QCommandLinkButtoneventProc* = proc(self: QCommandLinkButton, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCommandLinkButtonpaintEventProc* = proc(self: QCommandLinkButton, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonkeyPressEventProc* = proc(self: QCommandLinkButton, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonfocusInEventProc* = proc(self: QCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonfocusOutEventProc* = proc(self: QCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonhitButtonProc* = proc(self: QCommandLinkButton, pos: gen_qpoint_types.QPoint): bool {.raises: [], gcsafe.}
type QCommandLinkButtoncheckStateSetProc* = proc(self: QCommandLinkButton): void {.raises: [], gcsafe.}
type QCommandLinkButtonnextCheckStateProc* = proc(self: QCommandLinkButton): void {.raises: [], gcsafe.}
type QCommandLinkButtonkeyReleaseEventProc* = proc(self: QCommandLinkButton, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonmousePressEventProc* = proc(self: QCommandLinkButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonmouseReleaseEventProc* = proc(self: QCommandLinkButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonmouseMoveEventProc* = proc(self: QCommandLinkButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonchangeEventProc* = proc(self: QCommandLinkButton, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtontimerEventProc* = proc(self: QCommandLinkButton, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtondevTypeProc* = proc(self: QCommandLinkButton): cint {.raises: [], gcsafe.}
type QCommandLinkButtonsetVisibleProc* = proc(self: QCommandLinkButton, visible: bool): void {.raises: [], gcsafe.}
type QCommandLinkButtonhasHeightForWidthProc* = proc(self: QCommandLinkButton): bool {.raises: [], gcsafe.}
type QCommandLinkButtonpaintEngineProc* = proc(self: QCommandLinkButton): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QCommandLinkButtonmouseDoubleClickEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonwheelEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonenterEventProc* = proc(self: QCommandLinkButton, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonleaveEventProc* = proc(self: QCommandLinkButton, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonmoveEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonresizeEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtoncloseEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtoncontextMenuEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtontabletEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonactionEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtondragEnterEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtondragMoveEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtondragLeaveEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtondropEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonshowEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonhideEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonnativeEventProc* = proc(self: QCommandLinkButton, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QCommandLinkButtonmetricProc* = proc(self: QCommandLinkButton, param1: cint): cint {.raises: [], gcsafe.}
type QCommandLinkButtoninitPainterProc* = proc(self: QCommandLinkButton, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QCommandLinkButtonredirectedProc* = proc(self: QCommandLinkButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QCommandLinkButtonsharedPainterProc* = proc(self: QCommandLinkButton): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QCommandLinkButtoninputMethodEventProc* = proc(self: QCommandLinkButton, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtoninputMethodQueryProc* = proc(self: QCommandLinkButton, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QCommandLinkButtonfocusNextPrevChildProc* = proc(self: QCommandLinkButton, next: bool): bool {.raises: [], gcsafe.}
type QCommandLinkButtoneventFilterProc* = proc(self: QCommandLinkButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCommandLinkButtonchildEventProc* = proc(self: QCommandLinkButton, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtoncustomEventProc* = proc(self: QCommandLinkButton, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonconnectNotifyProc* = proc(self: QCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCommandLinkButtondisconnectNotifyProc* = proc(self: QCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCommandLinkButtonVTable* {.inheritable, pure.} = object
  vtbl: cQCommandLinkButtonVTable
  metaObject*: QCommandLinkButtonmetaObjectProc
  metacast*: QCommandLinkButtonmetacastProc
  metacall*: QCommandLinkButtonmetacallProc
  sizeHint*: QCommandLinkButtonsizeHintProc
  heightForWidth*: QCommandLinkButtonheightForWidthProc
  minimumSizeHint*: QCommandLinkButtonminimumSizeHintProc
  event*: QCommandLinkButtoneventProc
  paintEvent*: QCommandLinkButtonpaintEventProc
  keyPressEvent*: QCommandLinkButtonkeyPressEventProc
  focusInEvent*: QCommandLinkButtonfocusInEventProc
  focusOutEvent*: QCommandLinkButtonfocusOutEventProc
  hitButton*: QCommandLinkButtonhitButtonProc
  checkStateSet*: QCommandLinkButtoncheckStateSetProc
  nextCheckState*: QCommandLinkButtonnextCheckStateProc
  keyReleaseEvent*: QCommandLinkButtonkeyReleaseEventProc
  mousePressEvent*: QCommandLinkButtonmousePressEventProc
  mouseReleaseEvent*: QCommandLinkButtonmouseReleaseEventProc
  mouseMoveEvent*: QCommandLinkButtonmouseMoveEventProc
  changeEvent*: QCommandLinkButtonchangeEventProc
  timerEvent*: QCommandLinkButtontimerEventProc
  devType*: QCommandLinkButtondevTypeProc
  setVisible*: QCommandLinkButtonsetVisibleProc
  hasHeightForWidth*: QCommandLinkButtonhasHeightForWidthProc
  paintEngine*: QCommandLinkButtonpaintEngineProc
  mouseDoubleClickEvent*: QCommandLinkButtonmouseDoubleClickEventProc
  wheelEvent*: QCommandLinkButtonwheelEventProc
  enterEvent*: QCommandLinkButtonenterEventProc
  leaveEvent*: QCommandLinkButtonleaveEventProc
  moveEvent*: QCommandLinkButtonmoveEventProc
  resizeEvent*: QCommandLinkButtonresizeEventProc
  closeEvent*: QCommandLinkButtoncloseEventProc
  contextMenuEvent*: QCommandLinkButtoncontextMenuEventProc
  tabletEvent*: QCommandLinkButtontabletEventProc
  actionEvent*: QCommandLinkButtonactionEventProc
  dragEnterEvent*: QCommandLinkButtondragEnterEventProc
  dragMoveEvent*: QCommandLinkButtondragMoveEventProc
  dragLeaveEvent*: QCommandLinkButtondragLeaveEventProc
  dropEvent*: QCommandLinkButtondropEventProc
  showEvent*: QCommandLinkButtonshowEventProc
  hideEvent*: QCommandLinkButtonhideEventProc
  nativeEvent*: QCommandLinkButtonnativeEventProc
  metric*: QCommandLinkButtonmetricProc
  initPainter*: QCommandLinkButtoninitPainterProc
  redirected*: QCommandLinkButtonredirectedProc
  sharedPainter*: QCommandLinkButtonsharedPainterProc
  inputMethodEvent*: QCommandLinkButtoninputMethodEventProc
  inputMethodQuery*: QCommandLinkButtoninputMethodQueryProc
  focusNextPrevChild*: QCommandLinkButtonfocusNextPrevChildProc
  eventFilter*: QCommandLinkButtoneventFilterProc
  childEvent*: QCommandLinkButtonchildEventProc
  customEvent*: QCommandLinkButtoncustomEventProc
  connectNotify*: QCommandLinkButtonconnectNotifyProc
  disconnectNotify*: QCommandLinkButtondisconnectNotifyProc
proc QCommandLinkButtonmetaObject*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommandLinkButton_virtualbase_metaObject(self.h), owned: false)

proc cQCommandLinkButton_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtonmetacast*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cstring): pointer =
  fcQCommandLinkButton_virtualbase_metacast(self.h, param1)

proc cQCommandLinkButton_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QCommandLinkButtonmetacall*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQCommandLinkButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQCommandLinkButton_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCommandLinkButtonsizeHint*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCommandLinkButton_virtualbase_sizeHint(self.h), owned: true)

proc cQCommandLinkButton_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtonheightForWidth*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint): cint =
  fcQCommandLinkButton_virtualbase_heightForWidth(self.h, param1)

proc cQCommandLinkButton_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QCommandLinkButtonminimumSizeHint*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCommandLinkButton_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQCommandLinkButton_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtonevent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qcoreevent_types.QEvent): bool =
  fcQCommandLinkButton_virtualbase_event(self.h, e.h)

proc cQCommandLinkButton_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QCommandLinkButtonpaintEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QPaintEvent): void =
  fcQCommandLinkButton_virtualbase_paintEvent(self.h, param1.h)

proc cQCommandLinkButton_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QCommandLinkButtonkeyPressEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QKeyEvent): void =
  fcQCommandLinkButton_virtualbase_keyPressEvent(self.h, param1.h)

proc cQCommandLinkButton_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QCommandLinkButtonfocusInEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void =
  fcQCommandLinkButton_virtualbase_focusInEvent(self.h, param1.h)

proc cQCommandLinkButton_vtable_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QCommandLinkButtonfocusOutEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void =
  fcQCommandLinkButton_virtualbase_focusOutEvent(self.h, param1.h)

proc cQCommandLinkButton_vtable_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QCommandLinkButtonhitButton*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, pos: gen_qpoint_types.QPoint): bool =
  fcQCommandLinkButton_virtualbase_hitButton(self.h, pos.h)

proc cQCommandLinkButton_vtable_callback_hitButton(self: pointer, pos: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = vtbl[].hitButton(self, slotval1)
  virtualReturn

proc QCommandLinkButtoncheckStateSet*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): void =
  fcQCommandLinkButton_virtualbase_checkStateSet(self.h)

proc cQCommandLinkButton_vtable_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  vtbl[].checkStateSet(self)

proc QCommandLinkButtonnextCheckState*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): void =
  fcQCommandLinkButton_virtualbase_nextCheckState(self.h)

proc cQCommandLinkButton_vtable_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  vtbl[].nextCheckState(self)

proc QCommandLinkButtonkeyReleaseEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qevent_types.QKeyEvent): void =
  fcQCommandLinkButton_virtualbase_keyReleaseEvent(self.h, e.h)

proc cQCommandLinkButton_vtable_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QCommandLinkButtonmousePressEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qevent_types.QMouseEvent): void =
  fcQCommandLinkButton_virtualbase_mousePressEvent(self.h, e.h)

proc cQCommandLinkButton_vtable_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QCommandLinkButtonmouseReleaseEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qevent_types.QMouseEvent): void =
  fcQCommandLinkButton_virtualbase_mouseReleaseEvent(self.h, e.h)

proc cQCommandLinkButton_vtable_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QCommandLinkButtonmouseMoveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qevent_types.QMouseEvent): void =
  fcQCommandLinkButton_virtualbase_mouseMoveEvent(self.h, e.h)

proc cQCommandLinkButton_vtable_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QCommandLinkButtonchangeEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qcoreevent_types.QEvent): void =
  fcQCommandLinkButton_virtualbase_changeEvent(self.h, e.h)

proc cQCommandLinkButton_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QCommandLinkButtontimerEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQCommandLinkButton_virtualbase_timerEvent(self.h, e.h)

proc cQCommandLinkButton_vtable_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QCommandLinkButtondevType*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): cint =
  fcQCommandLinkButton_virtualbase_devType(self.h)

proc cQCommandLinkButton_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QCommandLinkButtonsetVisible*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, visible: bool): void =
  fcQCommandLinkButton_virtualbase_setVisible(self.h, visible)

proc cQCommandLinkButton_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QCommandLinkButtonhasHeightForWidth*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): bool =
  fcQCommandLinkButton_virtualbase_hasHeightForWidth(self.h)

proc cQCommandLinkButton_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QCommandLinkButtonpaintEngine*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQCommandLinkButton_virtualbase_paintEngine(self.h), owned: false)

proc cQCommandLinkButton_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtonmouseDoubleClickEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QMouseEvent): void =
  fcQCommandLinkButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QCommandLinkButtonwheelEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QWheelEvent): void =
  fcQCommandLinkButton_virtualbase_wheelEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QCommandLinkButtonenterEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qcoreevent_types.QEvent): void =
  fcQCommandLinkButton_virtualbase_enterEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QCommandLinkButtonleaveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qcoreevent_types.QEvent): void =
  fcQCommandLinkButton_virtualbase_leaveEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QCommandLinkButtonmoveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QMoveEvent): void =
  fcQCommandLinkButton_virtualbase_moveEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QCommandLinkButtonresizeEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QResizeEvent): void =
  fcQCommandLinkButton_virtualbase_resizeEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QCommandLinkButtoncloseEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QCloseEvent): void =
  fcQCommandLinkButton_virtualbase_closeEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QCommandLinkButtoncontextMenuEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QContextMenuEvent): void =
  fcQCommandLinkButton_virtualbase_contextMenuEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QCommandLinkButtontabletEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QTabletEvent): void =
  fcQCommandLinkButton_virtualbase_tabletEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QCommandLinkButtonactionEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QActionEvent): void =
  fcQCommandLinkButton_virtualbase_actionEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QCommandLinkButtondragEnterEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QDragEnterEvent): void =
  fcQCommandLinkButton_virtualbase_dragEnterEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QCommandLinkButtondragMoveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QDragMoveEvent): void =
  fcQCommandLinkButton_virtualbase_dragMoveEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QCommandLinkButtondragLeaveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQCommandLinkButton_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QCommandLinkButtondropEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QDropEvent): void =
  fcQCommandLinkButton_virtualbase_dropEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QCommandLinkButtonshowEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QShowEvent): void =
  fcQCommandLinkButton_virtualbase_showEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QCommandLinkButtonhideEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QHideEvent): void =
  fcQCommandLinkButton_virtualbase_hideEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QCommandLinkButtonnativeEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQCommandLinkButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQCommandLinkButton_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCommandLinkButtonmetric*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint): cint =
  fcQCommandLinkButton_virtualbase_metric(self.h, cint(param1))

proc cQCommandLinkButton_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QCommandLinkButtoninitPainter*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, painter: gen_qpainter_types.QPainter): void =
  fcQCommandLinkButton_virtualbase_initPainter(self.h, painter.h)

proc cQCommandLinkButton_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QCommandLinkButtonredirected*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQCommandLinkButton_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQCommandLinkButton_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtonsharedPainter*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQCommandLinkButton_virtualbase_sharedPainter(self.h), owned: false)

proc cQCommandLinkButton_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtoninputMethodEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQCommandLinkButton_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQCommandLinkButton_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QCommandLinkButtoninputMethodQuery*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCommandLinkButton_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQCommandLinkButton_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtonfocusNextPrevChild*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, next: bool): bool =
  fcQCommandLinkButton_virtualbase_focusNextPrevChild(self.h, next)

proc cQCommandLinkButton_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QCommandLinkButtoneventFilter*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCommandLinkButton_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQCommandLinkButton_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QCommandLinkButtonchildEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCommandLinkButton_virtualbase_childEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QCommandLinkButtoncustomEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qcoreevent_types.QEvent): void =
  fcQCommandLinkButton_virtualbase_customEvent(self.h, event.h)

proc cQCommandLinkButton_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QCommandLinkButtonconnectNotify*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCommandLinkButton_virtualbase_connectNotify(self.h, signal.h)

proc cQCommandLinkButton_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QCommandLinkButtondisconnectNotify*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCommandLinkButton_virtualbase_disconnectNotify(self.h, signal.h)

proc cQCommandLinkButton_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQCommandLinkButton* {.inheritable.} = ref object of QCommandLinkButton
  vtbl*: cQCommandLinkButtonVTable
method metaObject*(self: VirtualQCommandLinkButton): gen_qobjectdefs_types.QMetaObject {.base.} =
  QCommandLinkButtonmetaObject(self[])
proc cQCommandLinkButton_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQCommandLinkButton, param1: cstring): pointer {.base.} =
  QCommandLinkButtonmetacast(self[], param1)
proc cQCommandLinkButton_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQCommandLinkButton, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QCommandLinkButtonmetacall(self[], param1, param2, param3)
proc cQCommandLinkButton_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQCommandLinkButton): gen_qsize_types.QSize {.base.} =
  QCommandLinkButtonsizeHint(self[])
proc cQCommandLinkButton_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQCommandLinkButton, param1: cint): cint {.base.} =
  QCommandLinkButtonheightForWidth(self[], param1)
proc cQCommandLinkButton_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method minimumSizeHint*(self: VirtualQCommandLinkButton): gen_qsize_types.QSize {.base.} =
  QCommandLinkButtonminimumSizeHint(self[])
proc cQCommandLinkButton_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQCommandLinkButton, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCommandLinkButtonevent(self[], e)
proc cQCommandLinkButton_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method paintEvent*(self: VirtualQCommandLinkButton, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QCommandLinkButtonpaintEvent(self[], param1)
proc cQCommandLinkButton_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method keyPressEvent*(self: VirtualQCommandLinkButton, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QCommandLinkButtonkeyPressEvent(self[], param1)
proc cQCommandLinkButton_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method focusInEvent*(self: VirtualQCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QCommandLinkButtonfocusInEvent(self[], param1)
proc cQCommandLinkButton_method_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QCommandLinkButtonfocusOutEvent(self[], param1)
proc cQCommandLinkButton_method_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusOutEvent(slotval1)

method hitButton*(self: VirtualQCommandLinkButton, pos: gen_qpoint_types.QPoint): bool {.base.} =
  QCommandLinkButtonhitButton(self[], pos)
proc cQCommandLinkButton_method_callback_hitButton(self: pointer, pos: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = inst.hitButton(slotval1)
  virtualReturn

method checkStateSet*(self: VirtualQCommandLinkButton): void {.base.} =
  QCommandLinkButtoncheckStateSet(self[])
proc cQCommandLinkButton_method_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  inst.checkStateSet()

method nextCheckState*(self: VirtualQCommandLinkButton): void {.base.} =
  QCommandLinkButtonnextCheckState(self[])
proc cQCommandLinkButton_method_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  inst.nextCheckState()

method keyReleaseEvent*(self: VirtualQCommandLinkButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QCommandLinkButtonkeyReleaseEvent(self[], e)
proc cQCommandLinkButton_method_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyReleaseEvent(slotval1)

method mousePressEvent*(self: VirtualQCommandLinkButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QCommandLinkButtonmousePressEvent(self[], e)
proc cQCommandLinkButton_method_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQCommandLinkButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QCommandLinkButtonmouseReleaseEvent(self[], e)
proc cQCommandLinkButton_method_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQCommandLinkButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QCommandLinkButtonmouseMoveEvent(self[], e)
proc cQCommandLinkButton_method_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseMoveEvent(slotval1)

method changeEvent*(self: VirtualQCommandLinkButton, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QCommandLinkButtonchangeEvent(self[], e)
proc cQCommandLinkButton_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

method timerEvent*(self: VirtualQCommandLinkButton, e: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QCommandLinkButtontimerEvent(self[], e)
proc cQCommandLinkButton_method_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  inst.timerEvent(slotval1)

method devType*(self: VirtualQCommandLinkButton): cint {.base.} =
  QCommandLinkButtondevType(self[])
proc cQCommandLinkButton_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQCommandLinkButton, visible: bool): void {.base.} =
  QCommandLinkButtonsetVisible(self[], visible)
proc cQCommandLinkButton_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method hasHeightForWidth*(self: VirtualQCommandLinkButton): bool {.base.} =
  QCommandLinkButtonhasHeightForWidth(self[])
proc cQCommandLinkButton_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQCommandLinkButton): gen_qpaintengine_types.QPaintEngine {.base.} =
  QCommandLinkButtonpaintEngine(self[])
proc cQCommandLinkButton_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QCommandLinkButtonmouseDoubleClickEvent(self[], event)
proc cQCommandLinkButton_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QCommandLinkButtonwheelEvent(self[], event)
proc cQCommandLinkButton_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method enterEvent*(self: VirtualQCommandLinkButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCommandLinkButtonenterEvent(self[], event)
proc cQCommandLinkButton_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQCommandLinkButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCommandLinkButtonleaveEvent(self[], event)
proc cQCommandLinkButton_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QCommandLinkButtonmoveEvent(self[], event)
proc cQCommandLinkButton_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QCommandLinkButtonresizeEvent(self[], event)
proc cQCommandLinkButton_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QCommandLinkButtoncloseEvent(self[], event)
proc cQCommandLinkButton_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QCommandLinkButtoncontextMenuEvent(self[], event)
proc cQCommandLinkButton_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QCommandLinkButtontabletEvent(self[], event)
proc cQCommandLinkButton_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QActionEvent): void {.base.} =
  QCommandLinkButtonactionEvent(self[], event)
proc cQCommandLinkButton_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QCommandLinkButtondragEnterEvent(self[], event)
proc cQCommandLinkButton_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QCommandLinkButtondragMoveEvent(self[], event)
proc cQCommandLinkButton_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QCommandLinkButtondragLeaveEvent(self[], event)
proc cQCommandLinkButton_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QDropEvent): void {.base.} =
  QCommandLinkButtondropEvent(self[], event)
proc cQCommandLinkButton_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QShowEvent): void {.base.} =
  QCommandLinkButtonshowEvent(self[], event)
proc cQCommandLinkButton_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QHideEvent): void {.base.} =
  QCommandLinkButtonhideEvent(self[], event)
proc cQCommandLinkButton_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQCommandLinkButton, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QCommandLinkButtonnativeEvent(self[], eventType, message, resultVal)
proc cQCommandLinkButton_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQCommandLinkButton, param1: cint): cint {.base.} =
  QCommandLinkButtonmetric(self[], param1)
proc cQCommandLinkButton_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQCommandLinkButton, painter: gen_qpainter_types.QPainter): void {.base.} =
  QCommandLinkButtoninitPainter(self[], painter)
proc cQCommandLinkButton_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQCommandLinkButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QCommandLinkButtonredirected(self[], offset)
proc cQCommandLinkButton_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQCommandLinkButton): gen_qpainter_types.QPainter {.base.} =
  QCommandLinkButtonsharedPainter(self[])
proc cQCommandLinkButton_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQCommandLinkButton, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QCommandLinkButtoninputMethodEvent(self[], param1)
proc cQCommandLinkButton_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQCommandLinkButton, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QCommandLinkButtoninputMethodQuery(self[], param1)
proc cQCommandLinkButton_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQCommandLinkButton, next: bool): bool {.base.} =
  QCommandLinkButtonfocusNextPrevChild(self[], next)
proc cQCommandLinkButton_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQCommandLinkButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCommandLinkButtoneventFilter(self[], watched, event)
proc cQCommandLinkButton_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQCommandLinkButton, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QCommandLinkButtonchildEvent(self[], event)
proc cQCommandLinkButton_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQCommandLinkButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCommandLinkButtoncustomEvent(self[], event)
proc cQCommandLinkButton_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCommandLinkButtonconnectNotify(self[], signal)
proc cQCommandLinkButton_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCommandLinkButtondisconnectNotify(self[], signal)
proc cQCommandLinkButton_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCommandLinkButton](fcQCommandLinkButton_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc initStyleOption*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, option: gen_qstyleoption_types.QStyleOptionButton): void =
  fcQCommandLinkButton_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): void =
  fcQCommandLinkButton_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): void =
  fcQCommandLinkButton_protectedbase_create(self.h)

proc destroy*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): void =
  fcQCommandLinkButton_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): bool =
  fcQCommandLinkButton_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): bool =
  fcQCommandLinkButton_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCommandLinkButton_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcommandlinkbutton_types.QCommandLinkButton): cint =
  fcQCommandLinkButton_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, signal: cstring): cint =
  fcQCommandLinkButton_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCommandLinkButton_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QCommandLinkButtonVTable = nil): gen_qcommandlinkbutton_types.QCommandLinkButton =
  let vtbl = if vtbl == nil: new QCommandLinkButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQCommandLinkButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQCommandLinkButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQCommandLinkButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQCommandLinkButton_vtable_callback_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQCommandLinkButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQCommandLinkButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQCommandLinkButton_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQCommandLinkButton_vtable_callback_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQCommandLinkButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQCommandLinkButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQCommandLinkButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQCommandLinkButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQCommandLinkButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQCommandLinkButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQCommandLinkButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQCommandLinkButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQCommandLinkButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQCommandLinkButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQCommandLinkButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQCommandLinkButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQCommandLinkButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQCommandLinkButton_vtable_callback_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQCommandLinkButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQCommandLinkButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQCommandLinkButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQCommandLinkButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQCommandLinkButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQCommandLinkButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQCommandLinkButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQCommandLinkButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQCommandLinkButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQCommandLinkButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQCommandLinkButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQCommandLinkButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQCommandLinkButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQCommandLinkButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQCommandLinkButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQCommandLinkButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQCommandLinkButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQCommandLinkButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQCommandLinkButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQCommandLinkButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQCommandLinkButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQCommandLinkButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQCommandLinkButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQCommandLinkButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQCommandLinkButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQCommandLinkButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQCommandLinkButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQCommandLinkButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQCommandLinkButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQCommandLinkButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQCommandLinkButton_vtable_callback_disconnectNotify
  gen_qcommandlinkbutton_types.QCommandLinkButton(h: fcQCommandLinkButton_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    vtbl: ref QCommandLinkButtonVTable = nil): gen_qcommandlinkbutton_types.QCommandLinkButton =
  let vtbl = if vtbl == nil: new QCommandLinkButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQCommandLinkButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQCommandLinkButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQCommandLinkButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQCommandLinkButton_vtable_callback_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQCommandLinkButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQCommandLinkButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQCommandLinkButton_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQCommandLinkButton_vtable_callback_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQCommandLinkButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQCommandLinkButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQCommandLinkButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQCommandLinkButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQCommandLinkButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQCommandLinkButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQCommandLinkButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQCommandLinkButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQCommandLinkButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQCommandLinkButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQCommandLinkButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQCommandLinkButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQCommandLinkButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQCommandLinkButton_vtable_callback_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQCommandLinkButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQCommandLinkButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQCommandLinkButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQCommandLinkButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQCommandLinkButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQCommandLinkButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQCommandLinkButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQCommandLinkButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQCommandLinkButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQCommandLinkButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQCommandLinkButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQCommandLinkButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQCommandLinkButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQCommandLinkButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQCommandLinkButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQCommandLinkButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQCommandLinkButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQCommandLinkButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQCommandLinkButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQCommandLinkButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQCommandLinkButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQCommandLinkButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQCommandLinkButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQCommandLinkButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQCommandLinkButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQCommandLinkButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQCommandLinkButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQCommandLinkButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQCommandLinkButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQCommandLinkButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQCommandLinkButton_vtable_callback_disconnectNotify
  gen_qcommandlinkbutton_types.QCommandLinkButton(h: fcQCommandLinkButton_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: openArray[char],
    vtbl: ref QCommandLinkButtonVTable = nil): gen_qcommandlinkbutton_types.QCommandLinkButton =
  let vtbl = if vtbl == nil: new QCommandLinkButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQCommandLinkButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQCommandLinkButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQCommandLinkButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQCommandLinkButton_vtable_callback_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQCommandLinkButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQCommandLinkButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQCommandLinkButton_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQCommandLinkButton_vtable_callback_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQCommandLinkButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQCommandLinkButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQCommandLinkButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQCommandLinkButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQCommandLinkButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQCommandLinkButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQCommandLinkButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQCommandLinkButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQCommandLinkButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQCommandLinkButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQCommandLinkButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQCommandLinkButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQCommandLinkButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQCommandLinkButton_vtable_callback_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQCommandLinkButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQCommandLinkButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQCommandLinkButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQCommandLinkButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQCommandLinkButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQCommandLinkButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQCommandLinkButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQCommandLinkButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQCommandLinkButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQCommandLinkButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQCommandLinkButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQCommandLinkButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQCommandLinkButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQCommandLinkButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQCommandLinkButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQCommandLinkButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQCommandLinkButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQCommandLinkButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQCommandLinkButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQCommandLinkButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQCommandLinkButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQCommandLinkButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQCommandLinkButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQCommandLinkButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQCommandLinkButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQCommandLinkButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQCommandLinkButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQCommandLinkButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQCommandLinkButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQCommandLinkButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQCommandLinkButton_vtable_callback_disconnectNotify
  gen_qcommandlinkbutton_types.QCommandLinkButton(h: fcQCommandLinkButton_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: openArray[char], description: openArray[char],
    vtbl: ref QCommandLinkButtonVTable = nil): gen_qcommandlinkbutton_types.QCommandLinkButton =
  let vtbl = if vtbl == nil: new QCommandLinkButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQCommandLinkButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQCommandLinkButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQCommandLinkButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQCommandLinkButton_vtable_callback_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQCommandLinkButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQCommandLinkButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQCommandLinkButton_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQCommandLinkButton_vtable_callback_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQCommandLinkButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQCommandLinkButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQCommandLinkButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQCommandLinkButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQCommandLinkButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQCommandLinkButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQCommandLinkButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQCommandLinkButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQCommandLinkButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQCommandLinkButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQCommandLinkButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQCommandLinkButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQCommandLinkButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQCommandLinkButton_vtable_callback_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQCommandLinkButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQCommandLinkButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQCommandLinkButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQCommandLinkButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQCommandLinkButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQCommandLinkButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQCommandLinkButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQCommandLinkButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQCommandLinkButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQCommandLinkButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQCommandLinkButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQCommandLinkButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQCommandLinkButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQCommandLinkButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQCommandLinkButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQCommandLinkButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQCommandLinkButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQCommandLinkButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQCommandLinkButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQCommandLinkButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQCommandLinkButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQCommandLinkButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQCommandLinkButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQCommandLinkButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQCommandLinkButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQCommandLinkButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQCommandLinkButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQCommandLinkButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQCommandLinkButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQCommandLinkButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQCommandLinkButton_vtable_callback_disconnectNotify
  gen_qcommandlinkbutton_types.QCommandLinkButton(h: fcQCommandLinkButton_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description)))), owned: true)

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: openArray[char], parent: gen_qwidget_types.QWidget,
    vtbl: ref QCommandLinkButtonVTable = nil): gen_qcommandlinkbutton_types.QCommandLinkButton =
  let vtbl = if vtbl == nil: new QCommandLinkButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQCommandLinkButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQCommandLinkButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQCommandLinkButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQCommandLinkButton_vtable_callback_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQCommandLinkButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQCommandLinkButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQCommandLinkButton_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQCommandLinkButton_vtable_callback_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQCommandLinkButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQCommandLinkButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQCommandLinkButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQCommandLinkButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQCommandLinkButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQCommandLinkButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQCommandLinkButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQCommandLinkButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQCommandLinkButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQCommandLinkButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQCommandLinkButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQCommandLinkButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQCommandLinkButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQCommandLinkButton_vtable_callback_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQCommandLinkButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQCommandLinkButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQCommandLinkButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQCommandLinkButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQCommandLinkButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQCommandLinkButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQCommandLinkButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQCommandLinkButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQCommandLinkButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQCommandLinkButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQCommandLinkButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQCommandLinkButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQCommandLinkButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQCommandLinkButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQCommandLinkButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQCommandLinkButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQCommandLinkButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQCommandLinkButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQCommandLinkButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQCommandLinkButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQCommandLinkButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQCommandLinkButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQCommandLinkButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQCommandLinkButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQCommandLinkButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQCommandLinkButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQCommandLinkButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQCommandLinkButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQCommandLinkButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQCommandLinkButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQCommandLinkButton_vtable_callback_disconnectNotify
  gen_qcommandlinkbutton_types.QCommandLinkButton(h: fcQCommandLinkButton_new5(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h), owned: true)

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: openArray[char], description: openArray[char], parent: gen_qwidget_types.QWidget,
    vtbl: ref QCommandLinkButtonVTable = nil): gen_qcommandlinkbutton_types.QCommandLinkButton =
  let vtbl = if vtbl == nil: new QCommandLinkButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCommandLinkButtonVTable](fcQCommandLinkButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQCommandLinkButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQCommandLinkButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQCommandLinkButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQCommandLinkButton_vtable_callback_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQCommandLinkButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQCommandLinkButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQCommandLinkButton_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQCommandLinkButton_vtable_callback_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQCommandLinkButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQCommandLinkButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQCommandLinkButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQCommandLinkButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQCommandLinkButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQCommandLinkButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQCommandLinkButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQCommandLinkButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQCommandLinkButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQCommandLinkButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQCommandLinkButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQCommandLinkButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQCommandLinkButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQCommandLinkButton_vtable_callback_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQCommandLinkButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQCommandLinkButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQCommandLinkButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQCommandLinkButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQCommandLinkButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQCommandLinkButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQCommandLinkButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQCommandLinkButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQCommandLinkButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQCommandLinkButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQCommandLinkButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQCommandLinkButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQCommandLinkButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQCommandLinkButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQCommandLinkButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQCommandLinkButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQCommandLinkButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQCommandLinkButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQCommandLinkButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQCommandLinkButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQCommandLinkButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQCommandLinkButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQCommandLinkButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQCommandLinkButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQCommandLinkButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQCommandLinkButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQCommandLinkButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQCommandLinkButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQCommandLinkButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQCommandLinkButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQCommandLinkButton_vtable_callback_disconnectNotify
  gen_qcommandlinkbutton_types.QCommandLinkButton(h: fcQCommandLinkButton_new6(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))), parent.h), owned: true)

const cQCommandLinkButton_mvtbl = cQCommandLinkButtonVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQCommandLinkButton()[])](self.fcQCommandLinkButton_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQCommandLinkButton_method_callback_metaObject,
  metacast: cQCommandLinkButton_method_callback_metacast,
  metacall: cQCommandLinkButton_method_callback_metacall,
  sizeHint: cQCommandLinkButton_method_callback_sizeHint,
  heightForWidth: cQCommandLinkButton_method_callback_heightForWidth,
  minimumSizeHint: cQCommandLinkButton_method_callback_minimumSizeHint,
  event: cQCommandLinkButton_method_callback_event,
  paintEvent: cQCommandLinkButton_method_callback_paintEvent,
  keyPressEvent: cQCommandLinkButton_method_callback_keyPressEvent,
  focusInEvent: cQCommandLinkButton_method_callback_focusInEvent,
  focusOutEvent: cQCommandLinkButton_method_callback_focusOutEvent,
  hitButton: cQCommandLinkButton_method_callback_hitButton,
  checkStateSet: cQCommandLinkButton_method_callback_checkStateSet,
  nextCheckState: cQCommandLinkButton_method_callback_nextCheckState,
  keyReleaseEvent: cQCommandLinkButton_method_callback_keyReleaseEvent,
  mousePressEvent: cQCommandLinkButton_method_callback_mousePressEvent,
  mouseReleaseEvent: cQCommandLinkButton_method_callback_mouseReleaseEvent,
  mouseMoveEvent: cQCommandLinkButton_method_callback_mouseMoveEvent,
  changeEvent: cQCommandLinkButton_method_callback_changeEvent,
  timerEvent: cQCommandLinkButton_method_callback_timerEvent,
  devType: cQCommandLinkButton_method_callback_devType,
  setVisible: cQCommandLinkButton_method_callback_setVisible,
  hasHeightForWidth: cQCommandLinkButton_method_callback_hasHeightForWidth,
  paintEngine: cQCommandLinkButton_method_callback_paintEngine,
  mouseDoubleClickEvent: cQCommandLinkButton_method_callback_mouseDoubleClickEvent,
  wheelEvent: cQCommandLinkButton_method_callback_wheelEvent,
  enterEvent: cQCommandLinkButton_method_callback_enterEvent,
  leaveEvent: cQCommandLinkButton_method_callback_leaveEvent,
  moveEvent: cQCommandLinkButton_method_callback_moveEvent,
  resizeEvent: cQCommandLinkButton_method_callback_resizeEvent,
  closeEvent: cQCommandLinkButton_method_callback_closeEvent,
  contextMenuEvent: cQCommandLinkButton_method_callback_contextMenuEvent,
  tabletEvent: cQCommandLinkButton_method_callback_tabletEvent,
  actionEvent: cQCommandLinkButton_method_callback_actionEvent,
  dragEnterEvent: cQCommandLinkButton_method_callback_dragEnterEvent,
  dragMoveEvent: cQCommandLinkButton_method_callback_dragMoveEvent,
  dragLeaveEvent: cQCommandLinkButton_method_callback_dragLeaveEvent,
  dropEvent: cQCommandLinkButton_method_callback_dropEvent,
  showEvent: cQCommandLinkButton_method_callback_showEvent,
  hideEvent: cQCommandLinkButton_method_callback_hideEvent,
  nativeEvent: cQCommandLinkButton_method_callback_nativeEvent,
  metric: cQCommandLinkButton_method_callback_metric,
  initPainter: cQCommandLinkButton_method_callback_initPainter,
  redirected: cQCommandLinkButton_method_callback_redirected,
  sharedPainter: cQCommandLinkButton_method_callback_sharedPainter,
  inputMethodEvent: cQCommandLinkButton_method_callback_inputMethodEvent,
  inputMethodQuery: cQCommandLinkButton_method_callback_inputMethodQuery,
  focusNextPrevChild: cQCommandLinkButton_method_callback_focusNextPrevChild,
  eventFilter: cQCommandLinkButton_method_callback_eventFilter,
  childEvent: cQCommandLinkButton_method_callback_childEvent,
  customEvent: cQCommandLinkButton_method_callback_customEvent,
  connectNotify: cQCommandLinkButton_method_callback_connectNotify,
  disconnectNotify: cQCommandLinkButton_method_callback_disconnectNotify,
)
proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQCommandLinkButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCommandLinkButton_new(addr(cQCommandLinkButton_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    inst: VirtualQCommandLinkButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCommandLinkButton_new2(addr(cQCommandLinkButton_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: openArray[char],
    inst: VirtualQCommandLinkButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCommandLinkButton_new3(addr(cQCommandLinkButton_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: openArray[char], description: openArray[char],
    inst: VirtualQCommandLinkButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCommandLinkButton_new4(addr(cQCommandLinkButton_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))))
  inst[].owned = true

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: openArray[char], parent: gen_qwidget_types.QWidget,
    inst: VirtualQCommandLinkButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCommandLinkButton_new5(addr(cQCommandLinkButton_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h)
  inst[].owned = true

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: openArray[char], description: openArray[char], parent: gen_qwidget_types.QWidget,
    inst: VirtualQCommandLinkButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCommandLinkButton_new6(addr(cQCommandLinkButton_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommandLinkButton_staticMetaObject())
