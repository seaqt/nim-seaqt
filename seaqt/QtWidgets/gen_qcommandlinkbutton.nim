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

proc fcQCommandLinkButton_metaObject(self: pointer, ): pointer {.importc: "QCommandLinkButton_metaObject".}
proc fcQCommandLinkButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QCommandLinkButton_metacast".}
proc fcQCommandLinkButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCommandLinkButton_metacall".}
proc fcQCommandLinkButton_tr(s: cstring): struct_miqt_string {.importc: "QCommandLinkButton_tr".}
proc fcQCommandLinkButton_description(self: pointer, ): struct_miqt_string {.importc: "QCommandLinkButton_description".}
proc fcQCommandLinkButton_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QCommandLinkButton_setDescription".}
proc fcQCommandLinkButton_sizeHint(self: pointer, ): pointer {.importc: "QCommandLinkButton_sizeHint".}
proc fcQCommandLinkButton_heightForWidth(self: pointer, param1: cint): cint {.importc: "QCommandLinkButton_heightForWidth".}
proc fcQCommandLinkButton_minimumSizeHint(self: pointer, ): pointer {.importc: "QCommandLinkButton_minimumSizeHint".}
proc fcQCommandLinkButton_initStyleOption(self: pointer, option: pointer): void {.importc: "QCommandLinkButton_initStyleOption".}
proc fcQCommandLinkButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCommandLinkButton_tr2".}
proc fcQCommandLinkButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCommandLinkButton_tr3".}
type cQCommandLinkButtonVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQCommandLinkButtonVTable, self: ptr cQCommandLinkButton) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  hitButton*: proc(vtbl, self: pointer, pos: pointer): bool {.cdecl, raises: [], gcsafe.}
  checkStateSet*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  nextCheckState*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQCommandLinkButton_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QCommandLinkButton_virtualbase_metaObject".}
proc fcQCommandLinkButton_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCommandLinkButton_virtualbase_metacast".}
proc fcQCommandLinkButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCommandLinkButton_virtualbase_metacall".}
proc fcQCommandLinkButton_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QCommandLinkButton_virtualbase_sizeHint".}
proc fcQCommandLinkButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QCommandLinkButton_virtualbase_heightForWidth".}
proc fcQCommandLinkButton_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QCommandLinkButton_virtualbase_minimumSizeHint".}
proc fcQCommandLinkButton_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QCommandLinkButton_virtualbase_initStyleOption".}
proc fcQCommandLinkButton_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QCommandLinkButton_virtualbase_event".}
proc fcQCommandLinkButton_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QCommandLinkButton_virtualbase_paintEvent".}
proc fcQCommandLinkButton_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QCommandLinkButton_virtualbase_keyPressEvent".}
proc fcQCommandLinkButton_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QCommandLinkButton_virtualbase_focusInEvent".}
proc fcQCommandLinkButton_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QCommandLinkButton_virtualbase_focusOutEvent".}
proc fcQCommandLinkButton_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QCommandLinkButton_virtualbase_mouseMoveEvent".}
proc fcQCommandLinkButton_virtualbase_hitButton(self: pointer, pos: pointer): bool {.importc: "QCommandLinkButton_virtualbase_hitButton".}
proc fcQCommandLinkButton_virtualbase_checkStateSet(self: pointer, ): void {.importc: "QCommandLinkButton_virtualbase_checkStateSet".}
proc fcQCommandLinkButton_virtualbase_nextCheckState(self: pointer, ): void {.importc: "QCommandLinkButton_virtualbase_nextCheckState".}
proc fcQCommandLinkButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QCommandLinkButton_virtualbase_keyReleaseEvent".}
proc fcQCommandLinkButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QCommandLinkButton_virtualbase_mousePressEvent".}
proc fcQCommandLinkButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QCommandLinkButton_virtualbase_mouseReleaseEvent".}
proc fcQCommandLinkButton_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QCommandLinkButton_virtualbase_changeEvent".}
proc fcQCommandLinkButton_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QCommandLinkButton_virtualbase_timerEvent".}
proc fcQCommandLinkButton_virtualbase_devType(self: pointer, ): cint {.importc: "QCommandLinkButton_virtualbase_devType".}
proc fcQCommandLinkButton_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QCommandLinkButton_virtualbase_setVisible".}
proc fcQCommandLinkButton_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QCommandLinkButton_virtualbase_hasHeightForWidth".}
proc fcQCommandLinkButton_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QCommandLinkButton_virtualbase_paintEngine".}
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
proc fcQCommandLinkButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QCommandLinkButton_virtualbase_nativeEvent".}
proc fcQCommandLinkButton_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QCommandLinkButton_virtualbase_metric".}
proc fcQCommandLinkButton_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QCommandLinkButton_virtualbase_initPainter".}
proc fcQCommandLinkButton_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QCommandLinkButton_virtualbase_redirected".}
proc fcQCommandLinkButton_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QCommandLinkButton_virtualbase_sharedPainter".}
proc fcQCommandLinkButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QCommandLinkButton_virtualbase_inputMethodEvent".}
proc fcQCommandLinkButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QCommandLinkButton_virtualbase_inputMethodQuery".}
proc fcQCommandLinkButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QCommandLinkButton_virtualbase_focusNextPrevChild".}
proc fcQCommandLinkButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCommandLinkButton_virtualbase_eventFilter".}
proc fcQCommandLinkButton_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_childEvent".}
proc fcQCommandLinkButton_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCommandLinkButton_virtualbase_customEvent".}
proc fcQCommandLinkButton_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCommandLinkButton_virtualbase_connectNotify".}
proc fcQCommandLinkButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCommandLinkButton_virtualbase_disconnectNotify".}
proc fcQCommandLinkButton_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QCommandLinkButton_protectedbase_updateMicroFocus".}
proc fcQCommandLinkButton_protectedbase_create(self: pointer, ): void {.importc: "QCommandLinkButton_protectedbase_create".}
proc fcQCommandLinkButton_protectedbase_destroy(self: pointer, ): void {.importc: "QCommandLinkButton_protectedbase_destroy".}
proc fcQCommandLinkButton_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QCommandLinkButton_protectedbase_focusNextChild".}
proc fcQCommandLinkButton_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QCommandLinkButton_protectedbase_focusPreviousChild".}
proc fcQCommandLinkButton_protectedbase_sender(self: pointer, ): pointer {.importc: "QCommandLinkButton_protectedbase_sender".}
proc fcQCommandLinkButton_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QCommandLinkButton_protectedbase_senderSignalIndex".}
proc fcQCommandLinkButton_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCommandLinkButton_protectedbase_receivers".}
proc fcQCommandLinkButton_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCommandLinkButton_protectedbase_isSignalConnected".}
proc fcQCommandLinkButton_new(vtbl: pointer, parent: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new".}
proc fcQCommandLinkButton_new2(vtbl: pointer, ): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new2".}
proc fcQCommandLinkButton_new3(vtbl: pointer, text: struct_miqt_string): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new3".}
proc fcQCommandLinkButton_new4(vtbl: pointer, text: struct_miqt_string, description: struct_miqt_string): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new4".}
proc fcQCommandLinkButton_new5(vtbl: pointer, text: struct_miqt_string, parent: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new5".}
proc fcQCommandLinkButton_new6(vtbl: pointer, text: struct_miqt_string, description: struct_miqt_string, parent: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new6".}
proc fcQCommandLinkButton_staticMetaObject(): pointer {.importc: "QCommandLinkButton_staticMetaObject".}

proc metaObject*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommandLinkButton_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cstring): pointer =
  fcQCommandLinkButton_metacast(self.h, param1)

proc metacall*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQCommandLinkButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton, s: cstring): string =
  let v_ms = fcQCommandLinkButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc description*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): string =
  let v_ms = fcQCommandLinkButton_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDescription*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, description: string): void =
  fcQCommandLinkButton_setDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc sizeHint*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCommandLinkButton_sizeHint(self.h), owned: true)

proc heightForWidth*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint): cint =
  fcQCommandLinkButton_heightForWidth(self.h, param1)

proc minimumSizeHint*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCommandLinkButton_minimumSizeHint(self.h), owned: true)

proc initStyleOption*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, option: gen_qstyleoption_types.QStyleOptionButton): void =
  fcQCommandLinkButton_initStyleOption(self.h, option.h)

proc tr*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton, s: cstring, c: cstring): string =
  let v_ms = fcQCommandLinkButton_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCommandLinkButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QCommandLinkButtonmetaObjectProc* = proc(self: QCommandLinkButton): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QCommandLinkButtonmetacastProc* = proc(self: QCommandLinkButton, param1: cstring): pointer {.raises: [], gcsafe.}
type QCommandLinkButtonmetacallProc* = proc(self: QCommandLinkButton, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QCommandLinkButtonsizeHintProc* = proc(self: QCommandLinkButton): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QCommandLinkButtonheightForWidthProc* = proc(self: QCommandLinkButton, param1: cint): cint {.raises: [], gcsafe.}
type QCommandLinkButtonminimumSizeHintProc* = proc(self: QCommandLinkButton): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QCommandLinkButtoninitStyleOptionProc* = proc(self: QCommandLinkButton, option: gen_qstyleoption_types.QStyleOptionButton): void {.raises: [], gcsafe.}
type QCommandLinkButtoneventProc* = proc(self: QCommandLinkButton, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCommandLinkButtonpaintEventProc* = proc(self: QCommandLinkButton, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonkeyPressEventProc* = proc(self: QCommandLinkButton, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonfocusInEventProc* = proc(self: QCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonfocusOutEventProc* = proc(self: QCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonmouseMoveEventProc* = proc(self: QCommandLinkButton, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonhitButtonProc* = proc(self: QCommandLinkButton, pos: gen_qpoint_types.QPoint): bool {.raises: [], gcsafe.}
type QCommandLinkButtoncheckStateSetProc* = proc(self: QCommandLinkButton): void {.raises: [], gcsafe.}
type QCommandLinkButtonnextCheckStateProc* = proc(self: QCommandLinkButton): void {.raises: [], gcsafe.}
type QCommandLinkButtonkeyReleaseEventProc* = proc(self: QCommandLinkButton, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonmousePressEventProc* = proc(self: QCommandLinkButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonmouseReleaseEventProc* = proc(self: QCommandLinkButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonchangeEventProc* = proc(self: QCommandLinkButton, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtontimerEventProc* = proc(self: QCommandLinkButton, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtondevTypeProc* = proc(self: QCommandLinkButton): cint {.raises: [], gcsafe.}
type QCommandLinkButtonsetVisibleProc* = proc(self: QCommandLinkButton, visible: bool): void {.raises: [], gcsafe.}
type QCommandLinkButtonhasHeightForWidthProc* = proc(self: QCommandLinkButton): bool {.raises: [], gcsafe.}
type QCommandLinkButtonpaintEngineProc* = proc(self: QCommandLinkButton): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QCommandLinkButtonmouseDoubleClickEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonwheelEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QCommandLinkButtonenterEventProc* = proc(self: QCommandLinkButton, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
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
type QCommandLinkButtonnativeEventProc* = proc(self: QCommandLinkButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
  initStyleOption*: QCommandLinkButtoninitStyleOptionProc
  event*: QCommandLinkButtoneventProc
  paintEvent*: QCommandLinkButtonpaintEventProc
  keyPressEvent*: QCommandLinkButtonkeyPressEventProc
  focusInEvent*: QCommandLinkButtonfocusInEventProc
  focusOutEvent*: QCommandLinkButtonfocusOutEventProc
  mouseMoveEvent*: QCommandLinkButtonmouseMoveEventProc
  hitButton*: QCommandLinkButtonhitButtonProc
  checkStateSet*: QCommandLinkButtoncheckStateSetProc
  nextCheckState*: QCommandLinkButtonnextCheckStateProc
  keyReleaseEvent*: QCommandLinkButtonkeyReleaseEventProc
  mousePressEvent*: QCommandLinkButtonmousePressEventProc
  mouseReleaseEvent*: QCommandLinkButtonmouseReleaseEventProc
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
proc QCommandLinkButtonmetaObject*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommandLinkButton_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQCommandLinkButton_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtonmetacast*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cstring): pointer =
  fcQCommandLinkButton_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQCommandLinkButton_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QCommandLinkButtonmetacall*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQCommandLinkButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQCommandLinkButton_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCommandLinkButtonsizeHint*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCommandLinkButton_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQCommandLinkButton_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtonheightForWidth*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint): cint =
  fcQCommandLinkButton_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQCommandLinkButton_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QCommandLinkButtonminimumSizeHint*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCommandLinkButton_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQCommandLinkButton_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtoninitStyleOption*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, option: gen_qstyleoption_types.QStyleOptionButton): void =
  fcQCommandLinkButton_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQCommandLinkButton_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionButton(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QCommandLinkButtonevent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qcoreevent_types.QEvent): bool =
  fcQCommandLinkButton_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQCommandLinkButton_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QCommandLinkButtonpaintEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QPaintEvent): void =
  fcQCommandLinkButton_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQCommandLinkButton_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QCommandLinkButtonkeyPressEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QKeyEvent): void =
  fcQCommandLinkButton_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQCommandLinkButton_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QCommandLinkButtonfocusInEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void =
  fcQCommandLinkButton_virtualbase_focusInEvent(self.h, param1.h)

proc miqt_exec_callback_cQCommandLinkButton_focusInEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QCommandLinkButtonfocusOutEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void =
  fcQCommandLinkButton_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQCommandLinkButton_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QCommandLinkButtonmouseMoveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QMouseEvent): void =
  fcQCommandLinkButton_virtualbase_mouseMoveEvent(self.h, param1.h)

proc miqt_exec_callback_cQCommandLinkButton_mouseMoveEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QCommandLinkButtonhitButton*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, pos: gen_qpoint_types.QPoint): bool =
  fcQCommandLinkButton_virtualbase_hitButton(self.h, pos.h)

proc miqt_exec_callback_cQCommandLinkButton_hitButton(vtbl: pointer, self: pointer, pos: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = vtbl[].hitButton(self, slotval1)
  virtualReturn

proc QCommandLinkButtoncheckStateSet*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): void =
  fcQCommandLinkButton_virtualbase_checkStateSet(self.h)

proc miqt_exec_callback_cQCommandLinkButton_checkStateSet(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  vtbl[].checkStateSet(self)

proc QCommandLinkButtonnextCheckState*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): void =
  fcQCommandLinkButton_virtualbase_nextCheckState(self.h)

proc miqt_exec_callback_cQCommandLinkButton_nextCheckState(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  vtbl[].nextCheckState(self)

proc QCommandLinkButtonkeyReleaseEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qevent_types.QKeyEvent): void =
  fcQCommandLinkButton_virtualbase_keyReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQCommandLinkButton_keyReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QCommandLinkButtonmousePressEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qevent_types.QMouseEvent): void =
  fcQCommandLinkButton_virtualbase_mousePressEvent(self.h, e.h)

proc miqt_exec_callback_cQCommandLinkButton_mousePressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QCommandLinkButtonmouseReleaseEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qevent_types.QMouseEvent): void =
  fcQCommandLinkButton_virtualbase_mouseReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQCommandLinkButton_mouseReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QCommandLinkButtonchangeEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qcoreevent_types.QEvent): void =
  fcQCommandLinkButton_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQCommandLinkButton_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QCommandLinkButtontimerEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQCommandLinkButton_virtualbase_timerEvent(self.h, e.h)

proc miqt_exec_callback_cQCommandLinkButton_timerEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QCommandLinkButtondevType*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): cint =
  fcQCommandLinkButton_virtualbase_devType(self.h)

proc miqt_exec_callback_cQCommandLinkButton_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QCommandLinkButtonsetVisible*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, visible: bool): void =
  fcQCommandLinkButton_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQCommandLinkButton_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QCommandLinkButtonhasHeightForWidth*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): bool =
  fcQCommandLinkButton_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQCommandLinkButton_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QCommandLinkButtonpaintEngine*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQCommandLinkButton_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQCommandLinkButton_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtonmouseDoubleClickEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QMouseEvent): void =
  fcQCommandLinkButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QCommandLinkButtonwheelEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QWheelEvent): void =
  fcQCommandLinkButton_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QCommandLinkButtonenterEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QEnterEvent): void =
  fcQCommandLinkButton_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QCommandLinkButtonleaveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qcoreevent_types.QEvent): void =
  fcQCommandLinkButton_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QCommandLinkButtonmoveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QMoveEvent): void =
  fcQCommandLinkButton_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QCommandLinkButtonresizeEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QResizeEvent): void =
  fcQCommandLinkButton_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QCommandLinkButtoncloseEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QCloseEvent): void =
  fcQCommandLinkButton_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QCommandLinkButtoncontextMenuEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QContextMenuEvent): void =
  fcQCommandLinkButton_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QCommandLinkButtontabletEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QTabletEvent): void =
  fcQCommandLinkButton_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QCommandLinkButtonactionEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QActionEvent): void =
  fcQCommandLinkButton_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QCommandLinkButtondragEnterEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QDragEnterEvent): void =
  fcQCommandLinkButton_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QCommandLinkButtondragMoveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QDragMoveEvent): void =
  fcQCommandLinkButton_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QCommandLinkButtondragLeaveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQCommandLinkButton_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QCommandLinkButtondropEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QDropEvent): void =
  fcQCommandLinkButton_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QCommandLinkButtonshowEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QShowEvent): void =
  fcQCommandLinkButton_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QCommandLinkButtonhideEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QHideEvent): void =
  fcQCommandLinkButton_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QCommandLinkButtonnativeEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQCommandLinkButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQCommandLinkButton_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCommandLinkButtonmetric*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint): cint =
  fcQCommandLinkButton_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQCommandLinkButton_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QCommandLinkButtoninitPainter*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, painter: gen_qpainter_types.QPainter): void =
  fcQCommandLinkButton_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQCommandLinkButton_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QCommandLinkButtonredirected*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQCommandLinkButton_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQCommandLinkButton_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtonsharedPainter*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQCommandLinkButton_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQCommandLinkButton_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtoninputMethodEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQCommandLinkButton_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQCommandLinkButton_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QCommandLinkButtoninputMethodQuery*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCommandLinkButton_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQCommandLinkButton_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QCommandLinkButtonfocusNextPrevChild*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, next: bool): bool =
  fcQCommandLinkButton_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQCommandLinkButton_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QCommandLinkButtoneventFilter*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCommandLinkButton_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QCommandLinkButtonchildEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCommandLinkButton_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QCommandLinkButtoncustomEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qcoreevent_types.QEvent): void =
  fcQCommandLinkButton_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQCommandLinkButton_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QCommandLinkButtonconnectNotify*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCommandLinkButton_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCommandLinkButton_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QCommandLinkButtondisconnectNotify*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCommandLinkButton_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCommandLinkButton_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCommandLinkButtonVTable](vtbl)
  let self = QCommandLinkButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQCommandLinkButton* {.inheritable.} = ref object of QCommandLinkButton
  vtbl*: cQCommandLinkButtonVTable
method metaObject*(self: VirtualQCommandLinkButton, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QCommandLinkButtonmetaObject(self[])
proc miqt_exec_method_cQCommandLinkButton_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQCommandLinkButton, param1: cstring): pointer {.base.} =
  QCommandLinkButtonmetacast(self[], param1)
proc miqt_exec_method_cQCommandLinkButton_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQCommandLinkButton, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QCommandLinkButtonmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQCommandLinkButton_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQCommandLinkButton, ): gen_qsize_types.QSize {.base.} =
  QCommandLinkButtonsizeHint(self[])
proc miqt_exec_method_cQCommandLinkButton_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQCommandLinkButton, param1: cint): cint {.base.} =
  QCommandLinkButtonheightForWidth(self[], param1)
proc miqt_exec_method_cQCommandLinkButton_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method minimumSizeHint*(self: VirtualQCommandLinkButton, ): gen_qsize_types.QSize {.base.} =
  QCommandLinkButtonminimumSizeHint(self[])
proc miqt_exec_method_cQCommandLinkButton_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method initStyleOption*(self: VirtualQCommandLinkButton, option: gen_qstyleoption_types.QStyleOptionButton): void {.base.} =
  QCommandLinkButtoninitStyleOption(self[], option)
proc miqt_exec_method_cQCommandLinkButton_initStyleOption(vtbl: pointer, inst: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qstyleoption_types.QStyleOptionButton(h: option, owned: false)
  vtbl.initStyleOption(slotval1)

method event*(self: VirtualQCommandLinkButton, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCommandLinkButtonevent(self[], e)
proc miqt_exec_method_cQCommandLinkButton_event(vtbl: pointer, inst: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method paintEvent*(self: VirtualQCommandLinkButton, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QCommandLinkButtonpaintEvent(self[], param1)
proc miqt_exec_method_cQCommandLinkButton_paintEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl.paintEvent(slotval1)

method keyPressEvent*(self: VirtualQCommandLinkButton, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QCommandLinkButtonkeyPressEvent(self[], param1)
proc miqt_exec_method_cQCommandLinkButton_keyPressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl.keyPressEvent(slotval1)

method focusInEvent*(self: VirtualQCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QCommandLinkButtonfocusInEvent(self[], param1)
proc miqt_exec_method_cQCommandLinkButton_focusInEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QCommandLinkButtonfocusOutEvent(self[], param1)
proc miqt_exec_method_cQCommandLinkButton_focusOutEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl.focusOutEvent(slotval1)

method mouseMoveEvent*(self: VirtualQCommandLinkButton, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QCommandLinkButtonmouseMoveEvent(self[], param1)
proc miqt_exec_method_cQCommandLinkButton_mouseMoveEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method hitButton*(self: VirtualQCommandLinkButton, pos: gen_qpoint_types.QPoint): bool {.base.} =
  QCommandLinkButtonhitButton(self[], pos)
proc miqt_exec_method_cQCommandLinkButton_hitButton(vtbl: pointer, inst: pointer, pos: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = vtbl.hitButton(slotval1)
  virtualReturn

method checkStateSet*(self: VirtualQCommandLinkButton, ): void {.base.} =
  QCommandLinkButtoncheckStateSet(self[])
proc miqt_exec_method_cQCommandLinkButton_checkStateSet(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  vtbl.checkStateSet()

method nextCheckState*(self: VirtualQCommandLinkButton, ): void {.base.} =
  QCommandLinkButtonnextCheckState(self[])
proc miqt_exec_method_cQCommandLinkButton_nextCheckState(vtbl: pointer, inst: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  vtbl.nextCheckState()

method keyReleaseEvent*(self: VirtualQCommandLinkButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QCommandLinkButtonkeyReleaseEvent(self[], e)
proc miqt_exec_method_cQCommandLinkButton_keyReleaseEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method mousePressEvent*(self: VirtualQCommandLinkButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QCommandLinkButtonmousePressEvent(self[], e)
proc miqt_exec_method_cQCommandLinkButton_mousePressEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQCommandLinkButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QCommandLinkButtonmouseReleaseEvent(self[], e)
proc miqt_exec_method_cQCommandLinkButton_mouseReleaseEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method changeEvent*(self: VirtualQCommandLinkButton, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QCommandLinkButtonchangeEvent(self[], e)
proc miqt_exec_method_cQCommandLinkButton_changeEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl.changeEvent(slotval1)

method timerEvent*(self: VirtualQCommandLinkButton, e: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QCommandLinkButtontimerEvent(self[], e)
proc miqt_exec_method_cQCommandLinkButton_timerEvent(vtbl: pointer, inst: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  vtbl.timerEvent(slotval1)

method devType*(self: VirtualQCommandLinkButton, ): cint {.base.} =
  QCommandLinkButtondevType(self[])
proc miqt_exec_method_cQCommandLinkButton_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQCommandLinkButton, visible: bool): void {.base.} =
  QCommandLinkButtonsetVisible(self[], visible)
proc miqt_exec_method_cQCommandLinkButton_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method hasHeightForWidth*(self: VirtualQCommandLinkButton, ): bool {.base.} =
  QCommandLinkButtonhasHeightForWidth(self[])
proc miqt_exec_method_cQCommandLinkButton_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQCommandLinkButton, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QCommandLinkButtonpaintEngine(self[])
proc miqt_exec_method_cQCommandLinkButton_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QCommandLinkButtonmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QCommandLinkButtonwheelEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method enterEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QCommandLinkButtonenterEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQCommandLinkButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCommandLinkButtonleaveEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method moveEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QCommandLinkButtonmoveEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method resizeEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QCommandLinkButtonresizeEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method closeEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QCommandLinkButtoncloseEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QCommandLinkButtoncontextMenuEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QCommandLinkButtontabletEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QActionEvent): void {.base.} =
  QCommandLinkButtonactionEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QCommandLinkButtondragEnterEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QCommandLinkButtondragMoveEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QCommandLinkButtondragLeaveEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QDropEvent): void {.base.} =
  QCommandLinkButtondropEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method showEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QShowEvent): void {.base.} =
  QCommandLinkButtonshowEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQCommandLinkButton, event: gen_qevent_types.QHideEvent): void {.base.} =
  QCommandLinkButtonhideEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method nativeEvent*(self: VirtualQCommandLinkButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QCommandLinkButtonnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQCommandLinkButton_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQCommandLinkButton, param1: cint): cint {.base.} =
  QCommandLinkButtonmetric(self[], param1)
proc miqt_exec_method_cQCommandLinkButton_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQCommandLinkButton, painter: gen_qpainter_types.QPainter): void {.base.} =
  QCommandLinkButtoninitPainter(self[], painter)
proc miqt_exec_method_cQCommandLinkButton_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQCommandLinkButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QCommandLinkButtonredirected(self[], offset)
proc miqt_exec_method_cQCommandLinkButton_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQCommandLinkButton, ): gen_qpainter_types.QPainter {.base.} =
  QCommandLinkButtonsharedPainter(self[])
proc miqt_exec_method_cQCommandLinkButton_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQCommandLinkButton, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QCommandLinkButtoninputMethodEvent(self[], param1)
proc miqt_exec_method_cQCommandLinkButton_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQCommandLinkButton, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QCommandLinkButtoninputMethodQuery(self[], param1)
proc miqt_exec_method_cQCommandLinkButton_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQCommandLinkButton, next: bool): bool {.base.} =
  QCommandLinkButtonfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQCommandLinkButton_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQCommandLinkButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCommandLinkButtoneventFilter(self[], watched, event)
proc miqt_exec_method_cQCommandLinkButton_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQCommandLinkButton, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QCommandLinkButtonchildEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQCommandLinkButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCommandLinkButtoncustomEvent(self[], event)
proc miqt_exec_method_cQCommandLinkButton_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCommandLinkButtonconnectNotify(self[], signal)
proc miqt_exec_method_cQCommandLinkButton_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCommandLinkButtondisconnectNotify(self[], signal)
proc miqt_exec_method_cQCommandLinkButton_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQCommandLinkButton](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): void =
  fcQCommandLinkButton_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): void =
  fcQCommandLinkButton_protectedbase_create(self.h)

proc destroy*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): void =
  fcQCommandLinkButton_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): bool =
  fcQCommandLinkButton_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): bool =
  fcQCommandLinkButton_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCommandLinkButton_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): cint =
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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCommandLinkButtonVTable, _: ptr cQCommandLinkButton) {.cdecl.} =
    let vtbl = cast[ref QCommandLinkButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCommandLinkButton_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCommandLinkButton_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCommandLinkButton_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCommandLinkButton_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCommandLinkButton_heightForWidth
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCommandLinkButton_minimumSizeHint
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQCommandLinkButton_initStyleOption
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCommandLinkButton_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCommandLinkButton_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCommandLinkButton_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCommandLinkButton_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCommandLinkButton_focusOutEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCommandLinkButton_mouseMoveEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQCommandLinkButton_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQCommandLinkButton_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQCommandLinkButton_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCommandLinkButton_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCommandLinkButton_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCommandLinkButton_mouseReleaseEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCommandLinkButton_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCommandLinkButton_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCommandLinkButton_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCommandLinkButton_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCommandLinkButton_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCommandLinkButton_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCommandLinkButton_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCommandLinkButton_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCommandLinkButton_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCommandLinkButton_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCommandLinkButton_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCommandLinkButton_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCommandLinkButton_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCommandLinkButton_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCommandLinkButton_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCommandLinkButton_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCommandLinkButton_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCommandLinkButton_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCommandLinkButton_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCommandLinkButton_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCommandLinkButton_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCommandLinkButton_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCommandLinkButton_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCommandLinkButton_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCommandLinkButton_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCommandLinkButton_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCommandLinkButton_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCommandLinkButton_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCommandLinkButton_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCommandLinkButton_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCommandLinkButton_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCommandLinkButton_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCommandLinkButton_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCommandLinkButton_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCommandLinkButton_disconnectNotify
  gen_qcommandlinkbutton_types.QCommandLinkButton(h: fcQCommandLinkButton_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    vtbl: ref QCommandLinkButtonVTable = nil): gen_qcommandlinkbutton_types.QCommandLinkButton =
  let vtbl = if vtbl == nil: new QCommandLinkButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCommandLinkButtonVTable, _: ptr cQCommandLinkButton) {.cdecl.} =
    let vtbl = cast[ref QCommandLinkButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCommandLinkButton_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCommandLinkButton_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCommandLinkButton_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCommandLinkButton_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCommandLinkButton_heightForWidth
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCommandLinkButton_minimumSizeHint
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQCommandLinkButton_initStyleOption
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCommandLinkButton_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCommandLinkButton_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCommandLinkButton_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCommandLinkButton_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCommandLinkButton_focusOutEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCommandLinkButton_mouseMoveEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQCommandLinkButton_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQCommandLinkButton_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQCommandLinkButton_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCommandLinkButton_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCommandLinkButton_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCommandLinkButton_mouseReleaseEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCommandLinkButton_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCommandLinkButton_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCommandLinkButton_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCommandLinkButton_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCommandLinkButton_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCommandLinkButton_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCommandLinkButton_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCommandLinkButton_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCommandLinkButton_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCommandLinkButton_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCommandLinkButton_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCommandLinkButton_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCommandLinkButton_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCommandLinkButton_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCommandLinkButton_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCommandLinkButton_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCommandLinkButton_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCommandLinkButton_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCommandLinkButton_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCommandLinkButton_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCommandLinkButton_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCommandLinkButton_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCommandLinkButton_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCommandLinkButton_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCommandLinkButton_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCommandLinkButton_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCommandLinkButton_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCommandLinkButton_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCommandLinkButton_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCommandLinkButton_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCommandLinkButton_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCommandLinkButton_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCommandLinkButton_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCommandLinkButton_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCommandLinkButton_disconnectNotify
  gen_qcommandlinkbutton_types.QCommandLinkButton(h: fcQCommandLinkButton_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: string,
    vtbl: ref QCommandLinkButtonVTable = nil): gen_qcommandlinkbutton_types.QCommandLinkButton =
  let vtbl = if vtbl == nil: new QCommandLinkButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCommandLinkButtonVTable, _: ptr cQCommandLinkButton) {.cdecl.} =
    let vtbl = cast[ref QCommandLinkButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCommandLinkButton_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCommandLinkButton_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCommandLinkButton_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCommandLinkButton_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCommandLinkButton_heightForWidth
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCommandLinkButton_minimumSizeHint
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQCommandLinkButton_initStyleOption
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCommandLinkButton_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCommandLinkButton_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCommandLinkButton_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCommandLinkButton_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCommandLinkButton_focusOutEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCommandLinkButton_mouseMoveEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQCommandLinkButton_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQCommandLinkButton_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQCommandLinkButton_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCommandLinkButton_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCommandLinkButton_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCommandLinkButton_mouseReleaseEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCommandLinkButton_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCommandLinkButton_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCommandLinkButton_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCommandLinkButton_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCommandLinkButton_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCommandLinkButton_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCommandLinkButton_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCommandLinkButton_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCommandLinkButton_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCommandLinkButton_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCommandLinkButton_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCommandLinkButton_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCommandLinkButton_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCommandLinkButton_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCommandLinkButton_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCommandLinkButton_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCommandLinkButton_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCommandLinkButton_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCommandLinkButton_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCommandLinkButton_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCommandLinkButton_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCommandLinkButton_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCommandLinkButton_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCommandLinkButton_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCommandLinkButton_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCommandLinkButton_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCommandLinkButton_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCommandLinkButton_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCommandLinkButton_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCommandLinkButton_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCommandLinkButton_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCommandLinkButton_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCommandLinkButton_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCommandLinkButton_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCommandLinkButton_disconnectNotify
  gen_qcommandlinkbutton_types.QCommandLinkButton(h: fcQCommandLinkButton_new3(addr(vtbl[].vtbl), struct_miqt_string(data: text, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: string, description: string,
    vtbl: ref QCommandLinkButtonVTable = nil): gen_qcommandlinkbutton_types.QCommandLinkButton =
  let vtbl = if vtbl == nil: new QCommandLinkButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCommandLinkButtonVTable, _: ptr cQCommandLinkButton) {.cdecl.} =
    let vtbl = cast[ref QCommandLinkButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCommandLinkButton_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCommandLinkButton_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCommandLinkButton_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCommandLinkButton_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCommandLinkButton_heightForWidth
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCommandLinkButton_minimumSizeHint
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQCommandLinkButton_initStyleOption
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCommandLinkButton_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCommandLinkButton_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCommandLinkButton_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCommandLinkButton_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCommandLinkButton_focusOutEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCommandLinkButton_mouseMoveEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQCommandLinkButton_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQCommandLinkButton_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQCommandLinkButton_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCommandLinkButton_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCommandLinkButton_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCommandLinkButton_mouseReleaseEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCommandLinkButton_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCommandLinkButton_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCommandLinkButton_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCommandLinkButton_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCommandLinkButton_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCommandLinkButton_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCommandLinkButton_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCommandLinkButton_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCommandLinkButton_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCommandLinkButton_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCommandLinkButton_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCommandLinkButton_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCommandLinkButton_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCommandLinkButton_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCommandLinkButton_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCommandLinkButton_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCommandLinkButton_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCommandLinkButton_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCommandLinkButton_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCommandLinkButton_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCommandLinkButton_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCommandLinkButton_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCommandLinkButton_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCommandLinkButton_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCommandLinkButton_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCommandLinkButton_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCommandLinkButton_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCommandLinkButton_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCommandLinkButton_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCommandLinkButton_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCommandLinkButton_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCommandLinkButton_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCommandLinkButton_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCommandLinkButton_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCommandLinkButton_disconnectNotify
  gen_qcommandlinkbutton_types.QCommandLinkButton(h: fcQCommandLinkButton_new4(addr(vtbl[].vtbl), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: description, len: csize_t(len(description)))), owned: true)

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: string, parent: gen_qwidget_types.QWidget,
    vtbl: ref QCommandLinkButtonVTable = nil): gen_qcommandlinkbutton_types.QCommandLinkButton =
  let vtbl = if vtbl == nil: new QCommandLinkButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCommandLinkButtonVTable, _: ptr cQCommandLinkButton) {.cdecl.} =
    let vtbl = cast[ref QCommandLinkButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCommandLinkButton_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCommandLinkButton_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCommandLinkButton_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCommandLinkButton_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCommandLinkButton_heightForWidth
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCommandLinkButton_minimumSizeHint
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQCommandLinkButton_initStyleOption
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCommandLinkButton_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCommandLinkButton_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCommandLinkButton_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCommandLinkButton_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCommandLinkButton_focusOutEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCommandLinkButton_mouseMoveEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQCommandLinkButton_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQCommandLinkButton_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQCommandLinkButton_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCommandLinkButton_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCommandLinkButton_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCommandLinkButton_mouseReleaseEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCommandLinkButton_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCommandLinkButton_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCommandLinkButton_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCommandLinkButton_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCommandLinkButton_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCommandLinkButton_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCommandLinkButton_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCommandLinkButton_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCommandLinkButton_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCommandLinkButton_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCommandLinkButton_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCommandLinkButton_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCommandLinkButton_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCommandLinkButton_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCommandLinkButton_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCommandLinkButton_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCommandLinkButton_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCommandLinkButton_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCommandLinkButton_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCommandLinkButton_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCommandLinkButton_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCommandLinkButton_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCommandLinkButton_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCommandLinkButton_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCommandLinkButton_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCommandLinkButton_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCommandLinkButton_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCommandLinkButton_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCommandLinkButton_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCommandLinkButton_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCommandLinkButton_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCommandLinkButton_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCommandLinkButton_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCommandLinkButton_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCommandLinkButton_disconnectNotify
  gen_qcommandlinkbutton_types.QCommandLinkButton(h: fcQCommandLinkButton_new5(addr(vtbl[].vtbl), struct_miqt_string(data: text, len: csize_t(len(text))), parent.h), owned: true)

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: string, description: string, parent: gen_qwidget_types.QWidget,
    vtbl: ref QCommandLinkButtonVTable = nil): gen_qcommandlinkbutton_types.QCommandLinkButton =
  let vtbl = if vtbl == nil: new QCommandLinkButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCommandLinkButtonVTable, _: ptr cQCommandLinkButton) {.cdecl.} =
    let vtbl = cast[ref QCommandLinkButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCommandLinkButton_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCommandLinkButton_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCommandLinkButton_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCommandLinkButton_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCommandLinkButton_heightForWidth
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCommandLinkButton_minimumSizeHint
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQCommandLinkButton_initStyleOption
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCommandLinkButton_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCommandLinkButton_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCommandLinkButton_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCommandLinkButton_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCommandLinkButton_focusOutEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCommandLinkButton_mouseMoveEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQCommandLinkButton_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQCommandLinkButton_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQCommandLinkButton_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCommandLinkButton_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCommandLinkButton_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCommandLinkButton_mouseReleaseEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCommandLinkButton_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCommandLinkButton_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCommandLinkButton_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCommandLinkButton_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCommandLinkButton_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCommandLinkButton_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCommandLinkButton_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCommandLinkButton_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCommandLinkButton_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCommandLinkButton_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCommandLinkButton_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCommandLinkButton_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCommandLinkButton_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCommandLinkButton_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCommandLinkButton_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCommandLinkButton_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCommandLinkButton_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCommandLinkButton_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCommandLinkButton_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCommandLinkButton_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCommandLinkButton_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCommandLinkButton_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCommandLinkButton_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCommandLinkButton_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCommandLinkButton_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCommandLinkButton_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCommandLinkButton_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCommandLinkButton_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCommandLinkButton_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCommandLinkButton_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCommandLinkButton_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCommandLinkButton_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCommandLinkButton_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCommandLinkButton_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCommandLinkButton_disconnectNotify
  gen_qcommandlinkbutton_types.QCommandLinkButton(h: fcQCommandLinkButton_new6(addr(vtbl[].vtbl), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: description, len: csize_t(len(description))), parent.h), owned: true)

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQCommandLinkButton) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCommandLinkButtonVTable, _: ptr cQCommandLinkButton) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCommandLinkButton()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCommandLinkButton_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCommandLinkButton_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCommandLinkButton_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQCommandLinkButton_sizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQCommandLinkButton_heightForWidth
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQCommandLinkButton_minimumSizeHint
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQCommandLinkButton_initStyleOption
  vtbl[].vtbl.event = miqt_exec_method_cQCommandLinkButton_event
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQCommandLinkButton_paintEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQCommandLinkButton_keyPressEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQCommandLinkButton_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQCommandLinkButton_focusOutEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQCommandLinkButton_mouseMoveEvent
  vtbl[].vtbl.hitButton = miqt_exec_method_cQCommandLinkButton_hitButton
  vtbl[].vtbl.checkStateSet = miqt_exec_method_cQCommandLinkButton_checkStateSet
  vtbl[].vtbl.nextCheckState = miqt_exec_method_cQCommandLinkButton_nextCheckState
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQCommandLinkButton_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQCommandLinkButton_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQCommandLinkButton_mouseReleaseEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQCommandLinkButton_changeEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCommandLinkButton_timerEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQCommandLinkButton_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQCommandLinkButton_setVisible
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQCommandLinkButton_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQCommandLinkButton_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQCommandLinkButton_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQCommandLinkButton_wheelEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQCommandLinkButton_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQCommandLinkButton_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQCommandLinkButton_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQCommandLinkButton_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQCommandLinkButton_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQCommandLinkButton_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQCommandLinkButton_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQCommandLinkButton_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQCommandLinkButton_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQCommandLinkButton_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQCommandLinkButton_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQCommandLinkButton_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQCommandLinkButton_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQCommandLinkButton_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQCommandLinkButton_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQCommandLinkButton_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQCommandLinkButton_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQCommandLinkButton_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQCommandLinkButton_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQCommandLinkButton_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQCommandLinkButton_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQCommandLinkButton_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCommandLinkButton_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCommandLinkButton_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCommandLinkButton_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCommandLinkButton_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCommandLinkButton_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCommandLinkButton_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    vtbl: VirtualQCommandLinkButton) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCommandLinkButtonVTable, _: ptr cQCommandLinkButton) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCommandLinkButton()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCommandLinkButton_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCommandLinkButton_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCommandLinkButton_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQCommandLinkButton_sizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQCommandLinkButton_heightForWidth
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQCommandLinkButton_minimumSizeHint
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQCommandLinkButton_initStyleOption
  vtbl[].vtbl.event = miqt_exec_method_cQCommandLinkButton_event
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQCommandLinkButton_paintEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQCommandLinkButton_keyPressEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQCommandLinkButton_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQCommandLinkButton_focusOutEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQCommandLinkButton_mouseMoveEvent
  vtbl[].vtbl.hitButton = miqt_exec_method_cQCommandLinkButton_hitButton
  vtbl[].vtbl.checkStateSet = miqt_exec_method_cQCommandLinkButton_checkStateSet
  vtbl[].vtbl.nextCheckState = miqt_exec_method_cQCommandLinkButton_nextCheckState
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQCommandLinkButton_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQCommandLinkButton_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQCommandLinkButton_mouseReleaseEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQCommandLinkButton_changeEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCommandLinkButton_timerEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQCommandLinkButton_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQCommandLinkButton_setVisible
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQCommandLinkButton_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQCommandLinkButton_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQCommandLinkButton_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQCommandLinkButton_wheelEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQCommandLinkButton_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQCommandLinkButton_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQCommandLinkButton_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQCommandLinkButton_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQCommandLinkButton_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQCommandLinkButton_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQCommandLinkButton_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQCommandLinkButton_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQCommandLinkButton_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQCommandLinkButton_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQCommandLinkButton_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQCommandLinkButton_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQCommandLinkButton_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQCommandLinkButton_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQCommandLinkButton_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQCommandLinkButton_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQCommandLinkButton_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQCommandLinkButton_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQCommandLinkButton_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQCommandLinkButton_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQCommandLinkButton_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQCommandLinkButton_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCommandLinkButton_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCommandLinkButton_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCommandLinkButton_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCommandLinkButton_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCommandLinkButton_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCommandLinkButton_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: string,
    vtbl: VirtualQCommandLinkButton) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCommandLinkButtonVTable, _: ptr cQCommandLinkButton) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCommandLinkButton()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCommandLinkButton_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCommandLinkButton_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCommandLinkButton_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQCommandLinkButton_sizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQCommandLinkButton_heightForWidth
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQCommandLinkButton_minimumSizeHint
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQCommandLinkButton_initStyleOption
  vtbl[].vtbl.event = miqt_exec_method_cQCommandLinkButton_event
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQCommandLinkButton_paintEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQCommandLinkButton_keyPressEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQCommandLinkButton_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQCommandLinkButton_focusOutEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQCommandLinkButton_mouseMoveEvent
  vtbl[].vtbl.hitButton = miqt_exec_method_cQCommandLinkButton_hitButton
  vtbl[].vtbl.checkStateSet = miqt_exec_method_cQCommandLinkButton_checkStateSet
  vtbl[].vtbl.nextCheckState = miqt_exec_method_cQCommandLinkButton_nextCheckState
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQCommandLinkButton_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQCommandLinkButton_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQCommandLinkButton_mouseReleaseEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQCommandLinkButton_changeEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCommandLinkButton_timerEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQCommandLinkButton_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQCommandLinkButton_setVisible
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQCommandLinkButton_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQCommandLinkButton_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQCommandLinkButton_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQCommandLinkButton_wheelEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQCommandLinkButton_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQCommandLinkButton_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQCommandLinkButton_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQCommandLinkButton_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQCommandLinkButton_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQCommandLinkButton_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQCommandLinkButton_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQCommandLinkButton_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQCommandLinkButton_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQCommandLinkButton_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQCommandLinkButton_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQCommandLinkButton_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQCommandLinkButton_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQCommandLinkButton_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQCommandLinkButton_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQCommandLinkButton_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQCommandLinkButton_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQCommandLinkButton_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQCommandLinkButton_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQCommandLinkButton_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQCommandLinkButton_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQCommandLinkButton_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCommandLinkButton_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCommandLinkButton_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCommandLinkButton_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCommandLinkButton_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCommandLinkButton_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCommandLinkButton_new3(addr(vtbl[].vtbl), struct_miqt_string(data: text, len: csize_t(len(text))))
  vtbl[].owned = true

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: string, description: string,
    vtbl: VirtualQCommandLinkButton) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCommandLinkButtonVTable, _: ptr cQCommandLinkButton) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCommandLinkButton()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCommandLinkButton_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCommandLinkButton_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCommandLinkButton_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQCommandLinkButton_sizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQCommandLinkButton_heightForWidth
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQCommandLinkButton_minimumSizeHint
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQCommandLinkButton_initStyleOption
  vtbl[].vtbl.event = miqt_exec_method_cQCommandLinkButton_event
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQCommandLinkButton_paintEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQCommandLinkButton_keyPressEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQCommandLinkButton_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQCommandLinkButton_focusOutEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQCommandLinkButton_mouseMoveEvent
  vtbl[].vtbl.hitButton = miqt_exec_method_cQCommandLinkButton_hitButton
  vtbl[].vtbl.checkStateSet = miqt_exec_method_cQCommandLinkButton_checkStateSet
  vtbl[].vtbl.nextCheckState = miqt_exec_method_cQCommandLinkButton_nextCheckState
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQCommandLinkButton_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQCommandLinkButton_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQCommandLinkButton_mouseReleaseEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQCommandLinkButton_changeEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCommandLinkButton_timerEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQCommandLinkButton_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQCommandLinkButton_setVisible
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQCommandLinkButton_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQCommandLinkButton_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQCommandLinkButton_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQCommandLinkButton_wheelEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQCommandLinkButton_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQCommandLinkButton_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQCommandLinkButton_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQCommandLinkButton_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQCommandLinkButton_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQCommandLinkButton_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQCommandLinkButton_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQCommandLinkButton_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQCommandLinkButton_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQCommandLinkButton_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQCommandLinkButton_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQCommandLinkButton_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQCommandLinkButton_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQCommandLinkButton_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQCommandLinkButton_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQCommandLinkButton_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQCommandLinkButton_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQCommandLinkButton_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQCommandLinkButton_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQCommandLinkButton_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQCommandLinkButton_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQCommandLinkButton_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCommandLinkButton_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCommandLinkButton_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCommandLinkButton_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCommandLinkButton_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCommandLinkButton_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCommandLinkButton_new4(addr(vtbl[].vtbl), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: description, len: csize_t(len(description))))
  vtbl[].owned = true

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: string, parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQCommandLinkButton) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCommandLinkButtonVTable, _: ptr cQCommandLinkButton) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCommandLinkButton()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCommandLinkButton_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCommandLinkButton_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCommandLinkButton_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQCommandLinkButton_sizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQCommandLinkButton_heightForWidth
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQCommandLinkButton_minimumSizeHint
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQCommandLinkButton_initStyleOption
  vtbl[].vtbl.event = miqt_exec_method_cQCommandLinkButton_event
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQCommandLinkButton_paintEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQCommandLinkButton_keyPressEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQCommandLinkButton_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQCommandLinkButton_focusOutEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQCommandLinkButton_mouseMoveEvent
  vtbl[].vtbl.hitButton = miqt_exec_method_cQCommandLinkButton_hitButton
  vtbl[].vtbl.checkStateSet = miqt_exec_method_cQCommandLinkButton_checkStateSet
  vtbl[].vtbl.nextCheckState = miqt_exec_method_cQCommandLinkButton_nextCheckState
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQCommandLinkButton_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQCommandLinkButton_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQCommandLinkButton_mouseReleaseEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQCommandLinkButton_changeEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCommandLinkButton_timerEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQCommandLinkButton_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQCommandLinkButton_setVisible
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQCommandLinkButton_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQCommandLinkButton_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQCommandLinkButton_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQCommandLinkButton_wheelEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQCommandLinkButton_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQCommandLinkButton_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQCommandLinkButton_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQCommandLinkButton_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQCommandLinkButton_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQCommandLinkButton_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQCommandLinkButton_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQCommandLinkButton_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQCommandLinkButton_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQCommandLinkButton_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQCommandLinkButton_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQCommandLinkButton_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQCommandLinkButton_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQCommandLinkButton_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQCommandLinkButton_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQCommandLinkButton_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQCommandLinkButton_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQCommandLinkButton_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQCommandLinkButton_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQCommandLinkButton_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQCommandLinkButton_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQCommandLinkButton_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCommandLinkButton_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCommandLinkButton_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCommandLinkButton_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCommandLinkButton_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCommandLinkButton_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCommandLinkButton_new5(addr(vtbl[].vtbl), struct_miqt_string(data: text, len: csize_t(len(text))), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton,
    text: string, description: string, parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQCommandLinkButton) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQCommandLinkButtonVTable, _: ptr cQCommandLinkButton) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQCommandLinkButton()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQCommandLinkButton, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQCommandLinkButton_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQCommandLinkButton_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQCommandLinkButton_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQCommandLinkButton_sizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQCommandLinkButton_heightForWidth
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQCommandLinkButton_minimumSizeHint
  vtbl[].vtbl.initStyleOption = miqt_exec_method_cQCommandLinkButton_initStyleOption
  vtbl[].vtbl.event = miqt_exec_method_cQCommandLinkButton_event
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQCommandLinkButton_paintEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQCommandLinkButton_keyPressEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQCommandLinkButton_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQCommandLinkButton_focusOutEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQCommandLinkButton_mouseMoveEvent
  vtbl[].vtbl.hitButton = miqt_exec_method_cQCommandLinkButton_hitButton
  vtbl[].vtbl.checkStateSet = miqt_exec_method_cQCommandLinkButton_checkStateSet
  vtbl[].vtbl.nextCheckState = miqt_exec_method_cQCommandLinkButton_nextCheckState
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQCommandLinkButton_keyReleaseEvent
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQCommandLinkButton_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQCommandLinkButton_mouseReleaseEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQCommandLinkButton_changeEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQCommandLinkButton_timerEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQCommandLinkButton_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQCommandLinkButton_setVisible
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQCommandLinkButton_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQCommandLinkButton_paintEngine
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQCommandLinkButton_mouseDoubleClickEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQCommandLinkButton_wheelEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQCommandLinkButton_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQCommandLinkButton_leaveEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQCommandLinkButton_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQCommandLinkButton_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQCommandLinkButton_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQCommandLinkButton_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQCommandLinkButton_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQCommandLinkButton_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQCommandLinkButton_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQCommandLinkButton_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQCommandLinkButton_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQCommandLinkButton_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQCommandLinkButton_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQCommandLinkButton_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQCommandLinkButton_nativeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQCommandLinkButton_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQCommandLinkButton_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQCommandLinkButton_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQCommandLinkButton_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQCommandLinkButton_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQCommandLinkButton_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQCommandLinkButton_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQCommandLinkButton_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQCommandLinkButton_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQCommandLinkButton_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQCommandLinkButton_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQCommandLinkButton_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQCommandLinkButton_new6(addr(vtbl[].vtbl), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: description, len: csize_t(len(description))), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommandLinkButton_staticMetaObject())
