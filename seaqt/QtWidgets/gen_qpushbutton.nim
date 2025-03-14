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


{.compile("gen_qpushbutton.cpp", QtWidgetsCFlags).}


import ./gen_qpushbutton_types
export gen_qpushbutton_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qabstractbutton,
  ./gen_qmenu_types,
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
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qabstractbutton,
  gen_qmenu_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQPushButton*{.exportc: "QPushButton", incompleteStruct.} = object

proc fcQPushButton_metaObject(self: pointer): pointer {.importc: "QPushButton_metaObject".}
proc fcQPushButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QPushButton_metacast".}
proc fcQPushButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPushButton_metacall".}
proc fcQPushButton_tr(s: cstring): struct_miqt_string {.importc: "QPushButton_tr".}
proc fcQPushButton_trUtf8(s: cstring): struct_miqt_string {.importc: "QPushButton_trUtf8".}
proc fcQPushButton_sizeHint(self: pointer): pointer {.importc: "QPushButton_sizeHint".}
proc fcQPushButton_minimumSizeHint(self: pointer): pointer {.importc: "QPushButton_minimumSizeHint".}
proc fcQPushButton_autoDefault(self: pointer): bool {.importc: "QPushButton_autoDefault".}
proc fcQPushButton_setAutoDefault(self: pointer, autoDefault: bool): void {.importc: "QPushButton_setAutoDefault".}
proc fcQPushButton_isDefault(self: pointer): bool {.importc: "QPushButton_isDefault".}
proc fcQPushButton_setDefault(self: pointer, default: bool): void {.importc: "QPushButton_setDefault".}
proc fcQPushButton_setMenu(self: pointer, menu: pointer): void {.importc: "QPushButton_setMenu".}
proc fcQPushButton_menu(self: pointer): pointer {.importc: "QPushButton_menu".}
proc fcQPushButton_setFlat(self: pointer, flat: bool): void {.importc: "QPushButton_setFlat".}
proc fcQPushButton_isFlat(self: pointer): bool {.importc: "QPushButton_isFlat".}
proc fcQPushButton_showMenu(self: pointer): void {.importc: "QPushButton_showMenu".}
proc fcQPushButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPushButton_tr2".}
proc fcQPushButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPushButton_tr3".}
proc fcQPushButton_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPushButton_trUtf82".}
proc fcQPushButton_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPushButton_trUtf83".}
proc fcQPushButton_vtbl(self: pointer): pointer {.importc: "QPushButton_vtbl".}
proc fcQPushButton_vdata(self: pointer): pointer {.importc: "QPushButton_vdata".}
type cQPushButtonVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
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
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
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
proc fcQPushButton_virtualbase_metaObject(self: pointer): pointer {.importc: "QPushButton_virtualbase_metaObject".}
proc fcQPushButton_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPushButton_virtualbase_metacast".}
proc fcQPushButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPushButton_virtualbase_metacall".}
proc fcQPushButton_virtualbase_sizeHint(self: pointer): pointer {.importc: "QPushButton_virtualbase_sizeHint".}
proc fcQPushButton_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QPushButton_virtualbase_minimumSizeHint".}
proc fcQPushButton_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QPushButton_virtualbase_event".}
proc fcQPushButton_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QPushButton_virtualbase_paintEvent".}
proc fcQPushButton_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QPushButton_virtualbase_keyPressEvent".}
proc fcQPushButton_virtualbase_focusInEvent(self: pointer, param1: pointer): void {.importc: "QPushButton_virtualbase_focusInEvent".}
proc fcQPushButton_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QPushButton_virtualbase_focusOutEvent".}
proc fcQPushButton_virtualbase_hitButton(self: pointer, pos: pointer): bool {.importc: "QPushButton_virtualbase_hitButton".}
proc fcQPushButton_virtualbase_checkStateSet(self: pointer): void {.importc: "QPushButton_virtualbase_checkStateSet".}
proc fcQPushButton_virtualbase_nextCheckState(self: pointer): void {.importc: "QPushButton_virtualbase_nextCheckState".}
proc fcQPushButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QPushButton_virtualbase_keyReleaseEvent".}
proc fcQPushButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QPushButton_virtualbase_mousePressEvent".}
proc fcQPushButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QPushButton_virtualbase_mouseReleaseEvent".}
proc fcQPushButton_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QPushButton_virtualbase_mouseMoveEvent".}
proc fcQPushButton_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QPushButton_virtualbase_changeEvent".}
proc fcQPushButton_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QPushButton_virtualbase_timerEvent".}
proc fcQPushButton_virtualbase_devType(self: pointer): cint {.importc: "QPushButton_virtualbase_devType".}
proc fcQPushButton_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QPushButton_virtualbase_setVisible".}
proc fcQPushButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QPushButton_virtualbase_heightForWidth".}
proc fcQPushButton_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QPushButton_virtualbase_hasHeightForWidth".}
proc fcQPushButton_virtualbase_paintEngine(self: pointer): pointer {.importc: "QPushButton_virtualbase_paintEngine".}
proc fcQPushButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_mouseDoubleClickEvent".}
proc fcQPushButton_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_wheelEvent".}
proc fcQPushButton_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_enterEvent".}
proc fcQPushButton_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_leaveEvent".}
proc fcQPushButton_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_moveEvent".}
proc fcQPushButton_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_resizeEvent".}
proc fcQPushButton_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_closeEvent".}
proc fcQPushButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_contextMenuEvent".}
proc fcQPushButton_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_tabletEvent".}
proc fcQPushButton_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_actionEvent".}
proc fcQPushButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_dragEnterEvent".}
proc fcQPushButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_dragMoveEvent".}
proc fcQPushButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_dragLeaveEvent".}
proc fcQPushButton_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_dropEvent".}
proc fcQPushButton_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_showEvent".}
proc fcQPushButton_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_hideEvent".}
proc fcQPushButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QPushButton_virtualbase_nativeEvent".}
proc fcQPushButton_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QPushButton_virtualbase_metric".}
proc fcQPushButton_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPushButton_virtualbase_initPainter".}
proc fcQPushButton_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPushButton_virtualbase_redirected".}
proc fcQPushButton_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QPushButton_virtualbase_sharedPainter".}
proc fcQPushButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QPushButton_virtualbase_inputMethodEvent".}
proc fcQPushButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QPushButton_virtualbase_inputMethodQuery".}
proc fcQPushButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QPushButton_virtualbase_focusNextPrevChild".}
proc fcQPushButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPushButton_virtualbase_eventFilter".}
proc fcQPushButton_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_childEvent".}
proc fcQPushButton_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPushButton_virtualbase_customEvent".}
proc fcQPushButton_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPushButton_virtualbase_connectNotify".}
proc fcQPushButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPushButton_virtualbase_disconnectNotify".}
proc fcQPushButton_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QPushButton_protectedbase_initStyleOption".}
proc fcQPushButton_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QPushButton_protectedbase_updateMicroFocus".}
proc fcQPushButton_protectedbase_create(self: pointer): void {.importc: "QPushButton_protectedbase_create".}
proc fcQPushButton_protectedbase_destroy(self: pointer): void {.importc: "QPushButton_protectedbase_destroy".}
proc fcQPushButton_protectedbase_focusNextChild(self: pointer): bool {.importc: "QPushButton_protectedbase_focusNextChild".}
proc fcQPushButton_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QPushButton_protectedbase_focusPreviousChild".}
proc fcQPushButton_protectedbase_sender(self: pointer): pointer {.importc: "QPushButton_protectedbase_sender".}
proc fcQPushButton_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPushButton_protectedbase_senderSignalIndex".}
proc fcQPushButton_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPushButton_protectedbase_receivers".}
proc fcQPushButton_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPushButton_protectedbase_isSignalConnected".}
proc fcQPushButton_new(vtbl, vdata: pointer, parent: pointer): ptr cQPushButton {.importc: "QPushButton_new".}
proc fcQPushButton_new2(vtbl, vdata: pointer): ptr cQPushButton {.importc: "QPushButton_new2".}
proc fcQPushButton_new3(vtbl, vdata: pointer, text: struct_miqt_string): ptr cQPushButton {.importc: "QPushButton_new3".}
proc fcQPushButton_new4(vtbl, vdata: pointer, icon: pointer, text: struct_miqt_string): ptr cQPushButton {.importc: "QPushButton_new4".}
proc fcQPushButton_new5(vtbl, vdata: pointer, text: struct_miqt_string, parent: pointer): ptr cQPushButton {.importc: "QPushButton_new5".}
proc fcQPushButton_new6(vtbl, vdata: pointer, icon: pointer, text: struct_miqt_string, parent: pointer): ptr cQPushButton {.importc: "QPushButton_new6".}
proc fcQPushButton_staticMetaObject(): pointer {.importc: "QPushButton_staticMetaObject".}

proc metaObject*(self: gen_qpushbutton_types.QPushButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPushButton_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpushbutton_types.QPushButton, param1: cstring): pointer =
  fcQPushButton_metacast(self.h, param1)

proc metacall*(self: gen_qpushbutton_types.QPushButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQPushButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpushbutton_types.QPushButton, s: cstring): string =
  let v_ms = fcQPushButton_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpushbutton_types.QPushButton, s: cstring): string =
  let v_ms = fcQPushButton_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qpushbutton_types.QPushButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPushButton_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qpushbutton_types.QPushButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPushButton_minimumSizeHint(self.h), owned: true)

proc autoDefault*(self: gen_qpushbutton_types.QPushButton): bool =
  fcQPushButton_autoDefault(self.h)

proc setAutoDefault*(self: gen_qpushbutton_types.QPushButton, autoDefault: bool): void =
  fcQPushButton_setAutoDefault(self.h, autoDefault)

proc isDefault*(self: gen_qpushbutton_types.QPushButton): bool =
  fcQPushButton_isDefault(self.h)

proc setDefault*(self: gen_qpushbutton_types.QPushButton, default: bool): void =
  fcQPushButton_setDefault(self.h, default)

proc setMenu*(self: gen_qpushbutton_types.QPushButton, menu: gen_qmenu_types.QMenu): void =
  fcQPushButton_setMenu(self.h, menu.h)

proc menu*(self: gen_qpushbutton_types.QPushButton): gen_qmenu_types.QMenu =
  gen_qmenu_types.QMenu(h: fcQPushButton_menu(self.h), owned: false)

proc setFlat*(self: gen_qpushbutton_types.QPushButton, flat: bool): void =
  fcQPushButton_setFlat(self.h, flat)

proc isFlat*(self: gen_qpushbutton_types.QPushButton): bool =
  fcQPushButton_isFlat(self.h)

proc showMenu*(self: gen_qpushbutton_types.QPushButton): void =
  fcQPushButton_showMenu(self.h)

proc tr*(_: type gen_qpushbutton_types.QPushButton, s: cstring, c: cstring): string =
  let v_ms = fcQPushButton_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpushbutton_types.QPushButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPushButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpushbutton_types.QPushButton, s: cstring, c: cstring): string =
  let v_ms = fcQPushButton_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpushbutton_types.QPushButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPushButton_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPushButtonmetaObjectProc* = proc(self: QPushButton): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPushButtonmetacastProc* = proc(self: QPushButton, param1: cstring): pointer {.raises: [], gcsafe.}
type QPushButtonmetacallProc* = proc(self: QPushButton, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPushButtonsizeHintProc* = proc(self: QPushButton): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPushButtonminimumSizeHintProc* = proc(self: QPushButton): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPushButtoneventProc* = proc(self: QPushButton, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPushButtonpaintEventProc* = proc(self: QPushButton, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QPushButtonkeyPressEventProc* = proc(self: QPushButton, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPushButtonfocusInEventProc* = proc(self: QPushButton, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPushButtonfocusOutEventProc* = proc(self: QPushButton, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPushButtonhitButtonProc* = proc(self: QPushButton, pos: gen_qpoint_types.QPoint): bool {.raises: [], gcsafe.}
type QPushButtoncheckStateSetProc* = proc(self: QPushButton): void {.raises: [], gcsafe.}
type QPushButtonnextCheckStateProc* = proc(self: QPushButton): void {.raises: [], gcsafe.}
type QPushButtonkeyReleaseEventProc* = proc(self: QPushButton, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPushButtonmousePressEventProc* = proc(self: QPushButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPushButtonmouseReleaseEventProc* = proc(self: QPushButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPushButtonmouseMoveEventProc* = proc(self: QPushButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPushButtonchangeEventProc* = proc(self: QPushButton, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPushButtontimerEventProc* = proc(self: QPushButton, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPushButtondevTypeProc* = proc(self: QPushButton): cint {.raises: [], gcsafe.}
type QPushButtonsetVisibleProc* = proc(self: QPushButton, visible: bool): void {.raises: [], gcsafe.}
type QPushButtonheightForWidthProc* = proc(self: QPushButton, param1: cint): cint {.raises: [], gcsafe.}
type QPushButtonhasHeightForWidthProc* = proc(self: QPushButton): bool {.raises: [], gcsafe.}
type QPushButtonpaintEngineProc* = proc(self: QPushButton): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPushButtonmouseDoubleClickEventProc* = proc(self: QPushButton, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPushButtonwheelEventProc* = proc(self: QPushButton, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QPushButtonenterEventProc* = proc(self: QPushButton, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPushButtonleaveEventProc* = proc(self: QPushButton, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPushButtonmoveEventProc* = proc(self: QPushButton, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QPushButtonresizeEventProc* = proc(self: QPushButton, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QPushButtoncloseEventProc* = proc(self: QPushButton, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QPushButtoncontextMenuEventProc* = proc(self: QPushButton, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QPushButtontabletEventProc* = proc(self: QPushButton, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QPushButtonactionEventProc* = proc(self: QPushButton, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QPushButtondragEnterEventProc* = proc(self: QPushButton, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QPushButtondragMoveEventProc* = proc(self: QPushButton, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QPushButtondragLeaveEventProc* = proc(self: QPushButton, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QPushButtondropEventProc* = proc(self: QPushButton, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QPushButtonshowEventProc* = proc(self: QPushButton, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QPushButtonhideEventProc* = proc(self: QPushButton, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QPushButtonnativeEventProc* = proc(self: QPushButton, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QPushButtonmetricProc* = proc(self: QPushButton, param1: cint): cint {.raises: [], gcsafe.}
type QPushButtoninitPainterProc* = proc(self: QPushButton, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPushButtonredirectedProc* = proc(self: QPushButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPushButtonsharedPainterProc* = proc(self: QPushButton): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPushButtoninputMethodEventProc* = proc(self: QPushButton, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QPushButtoninputMethodQueryProc* = proc(self: QPushButton, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPushButtonfocusNextPrevChildProc* = proc(self: QPushButton, next: bool): bool {.raises: [], gcsafe.}
type QPushButtoneventFilterProc* = proc(self: QPushButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPushButtonchildEventProc* = proc(self: QPushButton, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPushButtoncustomEventProc* = proc(self: QPushButton, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPushButtonconnectNotifyProc* = proc(self: QPushButton, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPushButtondisconnectNotifyProc* = proc(self: QPushButton, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPushButtonVTable* {.inheritable, pure.} = object
  vtbl: cQPushButtonVTable
  metaObject*: QPushButtonmetaObjectProc
  metacast*: QPushButtonmetacastProc
  metacall*: QPushButtonmetacallProc
  sizeHint*: QPushButtonsizeHintProc
  minimumSizeHint*: QPushButtonminimumSizeHintProc
  event*: QPushButtoneventProc
  paintEvent*: QPushButtonpaintEventProc
  keyPressEvent*: QPushButtonkeyPressEventProc
  focusInEvent*: QPushButtonfocusInEventProc
  focusOutEvent*: QPushButtonfocusOutEventProc
  hitButton*: QPushButtonhitButtonProc
  checkStateSet*: QPushButtoncheckStateSetProc
  nextCheckState*: QPushButtonnextCheckStateProc
  keyReleaseEvent*: QPushButtonkeyReleaseEventProc
  mousePressEvent*: QPushButtonmousePressEventProc
  mouseReleaseEvent*: QPushButtonmouseReleaseEventProc
  mouseMoveEvent*: QPushButtonmouseMoveEventProc
  changeEvent*: QPushButtonchangeEventProc
  timerEvent*: QPushButtontimerEventProc
  devType*: QPushButtondevTypeProc
  setVisible*: QPushButtonsetVisibleProc
  heightForWidth*: QPushButtonheightForWidthProc
  hasHeightForWidth*: QPushButtonhasHeightForWidthProc
  paintEngine*: QPushButtonpaintEngineProc
  mouseDoubleClickEvent*: QPushButtonmouseDoubleClickEventProc
  wheelEvent*: QPushButtonwheelEventProc
  enterEvent*: QPushButtonenterEventProc
  leaveEvent*: QPushButtonleaveEventProc
  moveEvent*: QPushButtonmoveEventProc
  resizeEvent*: QPushButtonresizeEventProc
  closeEvent*: QPushButtoncloseEventProc
  contextMenuEvent*: QPushButtoncontextMenuEventProc
  tabletEvent*: QPushButtontabletEventProc
  actionEvent*: QPushButtonactionEventProc
  dragEnterEvent*: QPushButtondragEnterEventProc
  dragMoveEvent*: QPushButtondragMoveEventProc
  dragLeaveEvent*: QPushButtondragLeaveEventProc
  dropEvent*: QPushButtondropEventProc
  showEvent*: QPushButtonshowEventProc
  hideEvent*: QPushButtonhideEventProc
  nativeEvent*: QPushButtonnativeEventProc
  metric*: QPushButtonmetricProc
  initPainter*: QPushButtoninitPainterProc
  redirected*: QPushButtonredirectedProc
  sharedPainter*: QPushButtonsharedPainterProc
  inputMethodEvent*: QPushButtoninputMethodEventProc
  inputMethodQuery*: QPushButtoninputMethodQueryProc
  focusNextPrevChild*: QPushButtonfocusNextPrevChildProc
  eventFilter*: QPushButtoneventFilterProc
  childEvent*: QPushButtonchildEventProc
  customEvent*: QPushButtoncustomEventProc
  connectNotify*: QPushButtonconnectNotifyProc
  disconnectNotify*: QPushButtondisconnectNotifyProc
proc QPushButtonmetaObject*(self: gen_qpushbutton_types.QPushButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPushButton_virtualbase_metaObject(self.h), owned: false)

proc cQPushButton_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPushButtonmetacast*(self: gen_qpushbutton_types.QPushButton, param1: cstring): pointer =
  fcQPushButton_virtualbase_metacast(self.h, param1)

proc cQPushButton_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPushButtonmetacall*(self: gen_qpushbutton_types.QPushButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQPushButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQPushButton_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPushButtonsizeHint*(self: gen_qpushbutton_types.QPushButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPushButton_virtualbase_sizeHint(self.h), owned: true)

proc cQPushButton_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPushButtonminimumSizeHint*(self: gen_qpushbutton_types.QPushButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPushButton_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQPushButton_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPushButtonevent*(self: gen_qpushbutton_types.QPushButton, e: gen_qcoreevent_types.QEvent): bool =
  fcQPushButton_virtualbase_event(self.h, e.h)

proc cQPushButton_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPushButtonpaintEvent*(self: gen_qpushbutton_types.QPushButton, param1: gen_qevent_types.QPaintEvent): void =
  fcQPushButton_virtualbase_paintEvent(self.h, param1.h)

proc cQPushButton_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QPushButtonkeyPressEvent*(self: gen_qpushbutton_types.QPushButton, param1: gen_qevent_types.QKeyEvent): void =
  fcQPushButton_virtualbase_keyPressEvent(self.h, param1.h)

proc cQPushButton_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QPushButtonfocusInEvent*(self: gen_qpushbutton_types.QPushButton, param1: gen_qevent_types.QFocusEvent): void =
  fcQPushButton_virtualbase_focusInEvent(self.h, param1.h)

proc cQPushButton_vtable_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QPushButtonfocusOutEvent*(self: gen_qpushbutton_types.QPushButton, param1: gen_qevent_types.QFocusEvent): void =
  fcQPushButton_virtualbase_focusOutEvent(self.h, param1.h)

proc cQPushButton_vtable_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QPushButtonhitButton*(self: gen_qpushbutton_types.QPushButton, pos: gen_qpoint_types.QPoint): bool =
  fcQPushButton_virtualbase_hitButton(self.h, pos.h)

proc cQPushButton_vtable_callback_hitButton(self: pointer, pos: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = vtbl[].hitButton(self, slotval1)
  virtualReturn

proc QPushButtoncheckStateSet*(self: gen_qpushbutton_types.QPushButton): void =
  fcQPushButton_virtualbase_checkStateSet(self.h)

proc cQPushButton_vtable_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  vtbl[].checkStateSet(self)

proc QPushButtonnextCheckState*(self: gen_qpushbutton_types.QPushButton): void =
  fcQPushButton_virtualbase_nextCheckState(self.h)

proc cQPushButton_vtable_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  vtbl[].nextCheckState(self)

proc QPushButtonkeyReleaseEvent*(self: gen_qpushbutton_types.QPushButton, e: gen_qevent_types.QKeyEvent): void =
  fcQPushButton_virtualbase_keyReleaseEvent(self.h, e.h)

proc cQPushButton_vtable_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QPushButtonmousePressEvent*(self: gen_qpushbutton_types.QPushButton, e: gen_qevent_types.QMouseEvent): void =
  fcQPushButton_virtualbase_mousePressEvent(self.h, e.h)

proc cQPushButton_vtable_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QPushButtonmouseReleaseEvent*(self: gen_qpushbutton_types.QPushButton, e: gen_qevent_types.QMouseEvent): void =
  fcQPushButton_virtualbase_mouseReleaseEvent(self.h, e.h)

proc cQPushButton_vtable_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QPushButtonmouseMoveEvent*(self: gen_qpushbutton_types.QPushButton, e: gen_qevent_types.QMouseEvent): void =
  fcQPushButton_virtualbase_mouseMoveEvent(self.h, e.h)

proc cQPushButton_vtable_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QPushButtonchangeEvent*(self: gen_qpushbutton_types.QPushButton, e: gen_qcoreevent_types.QEvent): void =
  fcQPushButton_virtualbase_changeEvent(self.h, e.h)

proc cQPushButton_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QPushButtontimerEvent*(self: gen_qpushbutton_types.QPushButton, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQPushButton_virtualbase_timerEvent(self.h, e.h)

proc cQPushButton_vtable_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QPushButtondevType*(self: gen_qpushbutton_types.QPushButton): cint =
  fcQPushButton_virtualbase_devType(self.h)

proc cQPushButton_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QPushButtonsetVisible*(self: gen_qpushbutton_types.QPushButton, visible: bool): void =
  fcQPushButton_virtualbase_setVisible(self.h, visible)

proc cQPushButton_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QPushButtonheightForWidth*(self: gen_qpushbutton_types.QPushButton, param1: cint): cint =
  fcQPushButton_virtualbase_heightForWidth(self.h, param1)

proc cQPushButton_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QPushButtonhasHeightForWidth*(self: gen_qpushbutton_types.QPushButton): bool =
  fcQPushButton_virtualbase_hasHeightForWidth(self.h)

proc cQPushButton_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QPushButtonpaintEngine*(self: gen_qpushbutton_types.QPushButton): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPushButton_virtualbase_paintEngine(self.h), owned: false)

proc cQPushButton_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPushButtonmouseDoubleClickEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QMouseEvent): void =
  fcQPushButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQPushButton_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QPushButtonwheelEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QWheelEvent): void =
  fcQPushButton_virtualbase_wheelEvent(self.h, event.h)

proc cQPushButton_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QPushButtonenterEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qcoreevent_types.QEvent): void =
  fcQPushButton_virtualbase_enterEvent(self.h, event.h)

proc cQPushButton_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QPushButtonleaveEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qcoreevent_types.QEvent): void =
  fcQPushButton_virtualbase_leaveEvent(self.h, event.h)

proc cQPushButton_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QPushButtonmoveEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QMoveEvent): void =
  fcQPushButton_virtualbase_moveEvent(self.h, event.h)

proc cQPushButton_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QPushButtonresizeEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QResizeEvent): void =
  fcQPushButton_virtualbase_resizeEvent(self.h, event.h)

proc cQPushButton_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QPushButtoncloseEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QCloseEvent): void =
  fcQPushButton_virtualbase_closeEvent(self.h, event.h)

proc cQPushButton_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QPushButtoncontextMenuEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QContextMenuEvent): void =
  fcQPushButton_virtualbase_contextMenuEvent(self.h, event.h)

proc cQPushButton_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QPushButtontabletEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QTabletEvent): void =
  fcQPushButton_virtualbase_tabletEvent(self.h, event.h)

proc cQPushButton_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QPushButtonactionEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QActionEvent): void =
  fcQPushButton_virtualbase_actionEvent(self.h, event.h)

proc cQPushButton_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QPushButtondragEnterEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QDragEnterEvent): void =
  fcQPushButton_virtualbase_dragEnterEvent(self.h, event.h)

proc cQPushButton_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QPushButtondragMoveEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QDragMoveEvent): void =
  fcQPushButton_virtualbase_dragMoveEvent(self.h, event.h)

proc cQPushButton_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QPushButtondragLeaveEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQPushButton_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQPushButton_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QPushButtondropEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QDropEvent): void =
  fcQPushButton_virtualbase_dropEvent(self.h, event.h)

proc cQPushButton_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QPushButtonshowEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QShowEvent): void =
  fcQPushButton_virtualbase_showEvent(self.h, event.h)

proc cQPushButton_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QPushButtonhideEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qevent_types.QHideEvent): void =
  fcQPushButton_virtualbase_hideEvent(self.h, event.h)

proc cQPushButton_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QPushButtonnativeEvent*(self: gen_qpushbutton_types.QPushButton, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQPushButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQPushButton_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPushButtonmetric*(self: gen_qpushbutton_types.QPushButton, param1: cint): cint =
  fcQPushButton_virtualbase_metric(self.h, cint(param1))

proc cQPushButton_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPushButtoninitPainter*(self: gen_qpushbutton_types.QPushButton, painter: gen_qpainter_types.QPainter): void =
  fcQPushButton_virtualbase_initPainter(self.h, painter.h)

proc cQPushButton_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QPushButtonredirected*(self: gen_qpushbutton_types.QPushButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPushButton_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQPushButton_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPushButtonsharedPainter*(self: gen_qpushbutton_types.QPushButton): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPushButton_virtualbase_sharedPainter(self.h), owned: false)

proc cQPushButton_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPushButtoninputMethodEvent*(self: gen_qpushbutton_types.QPushButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQPushButton_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQPushButton_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QPushButtoninputMethodQuery*(self: gen_qpushbutton_types.QPushButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPushButton_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQPushButton_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPushButtonfocusNextPrevChild*(self: gen_qpushbutton_types.QPushButton, next: bool): bool =
  fcQPushButton_virtualbase_focusNextPrevChild(self.h, next)

proc cQPushButton_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QPushButtoneventFilter*(self: gen_qpushbutton_types.QPushButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPushButton_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQPushButton_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPushButtonchildEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPushButton_virtualbase_childEvent(self.h, event.h)

proc cQPushButton_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QPushButtoncustomEvent*(self: gen_qpushbutton_types.QPushButton, event: gen_qcoreevent_types.QEvent): void =
  fcQPushButton_virtualbase_customEvent(self.h, event.h)

proc cQPushButton_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QPushButtonconnectNotify*(self: gen_qpushbutton_types.QPushButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPushButton_virtualbase_connectNotify(self.h, signal.h)

proc cQPushButton_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QPushButtondisconnectNotify*(self: gen_qpushbutton_types.QPushButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPushButton_virtualbase_disconnectNotify(self.h, signal.h)

proc cQPushButton_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPushButtonVTable](fcQPushButton_vdata(self))
  let self = QPushButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPushButton* {.inheritable.} = ref object of QPushButton
  vtbl*: cQPushButtonVTable
method metaObject*(self: VirtualQPushButton): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPushButtonmetaObject(self[])
proc cQPushButton_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQPushButton, param1: cstring): pointer {.base.} =
  QPushButtonmetacast(self[], param1)
proc cQPushButton_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQPushButton, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPushButtonmetacall(self[], param1, param2, param3)
proc cQPushButton_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQPushButton): gen_qsize_types.QSize {.base.} =
  QPushButtonsizeHint(self[])
proc cQPushButton_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQPushButton): gen_qsize_types.QSize {.base.} =
  QPushButtonminimumSizeHint(self[])
proc cQPushButton_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQPushButton, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPushButtonevent(self[], e)
proc cQPushButton_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method paintEvent*(self: VirtualQPushButton, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QPushButtonpaintEvent(self[], param1)
proc cQPushButton_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method keyPressEvent*(self: VirtualQPushButton, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QPushButtonkeyPressEvent(self[], param1)
proc cQPushButton_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method focusInEvent*(self: VirtualQPushButton, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QPushButtonfocusInEvent(self[], param1)
proc cQPushButton_method_callback_focusInEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQPushButton, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QPushButtonfocusOutEvent(self[], param1)
proc cQPushButton_method_callback_focusOutEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  inst.focusOutEvent(slotval1)

method hitButton*(self: VirtualQPushButton, pos: gen_qpoint_types.QPoint): bool {.base.} =
  QPushButtonhitButton(self[], pos)
proc cQPushButton_method_callback_hitButton(self: pointer, pos: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = inst.hitButton(slotval1)
  virtualReturn

method checkStateSet*(self: VirtualQPushButton): void {.base.} =
  QPushButtoncheckStateSet(self[])
proc cQPushButton_method_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  inst.checkStateSet()

method nextCheckState*(self: VirtualQPushButton): void {.base.} =
  QPushButtonnextCheckState(self[])
proc cQPushButton_method_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  inst.nextCheckState()

method keyReleaseEvent*(self: VirtualQPushButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QPushButtonkeyReleaseEvent(self[], e)
proc cQPushButton_method_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyReleaseEvent(slotval1)

method mousePressEvent*(self: VirtualQPushButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QPushButtonmousePressEvent(self[], e)
proc cQPushButton_method_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQPushButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QPushButtonmouseReleaseEvent(self[], e)
proc cQPushButton_method_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseMoveEvent*(self: VirtualQPushButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QPushButtonmouseMoveEvent(self[], e)
proc cQPushButton_method_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseMoveEvent(slotval1)

method changeEvent*(self: VirtualQPushButton, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QPushButtonchangeEvent(self[], e)
proc cQPushButton_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

method timerEvent*(self: VirtualQPushButton, e: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPushButtontimerEvent(self[], e)
proc cQPushButton_method_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  inst.timerEvent(slotval1)

method devType*(self: VirtualQPushButton): cint {.base.} =
  QPushButtondevType(self[])
proc cQPushButton_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQPushButton, visible: bool): void {.base.} =
  QPushButtonsetVisible(self[], visible)
proc cQPushButton_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQPushButton, param1: cint): cint {.base.} =
  QPushButtonheightForWidth(self[], param1)
proc cQPushButton_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQPushButton): bool {.base.} =
  QPushButtonhasHeightForWidth(self[])
proc cQPushButton_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQPushButton): gen_qpaintengine_types.QPaintEngine {.base.} =
  QPushButtonpaintEngine(self[])
proc cQPushButton_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQPushButton, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPushButtonmouseDoubleClickEvent(self[], event)
proc cQPushButton_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQPushButton, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QPushButtonwheelEvent(self[], event)
proc cQPushButton_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method enterEvent*(self: VirtualQPushButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPushButtonenterEvent(self[], event)
proc cQPushButton_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQPushButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPushButtonleaveEvent(self[], event)
proc cQPushButton_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQPushButton, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QPushButtonmoveEvent(self[], event)
proc cQPushButton_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQPushButton, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QPushButtonresizeEvent(self[], event)
proc cQPushButton_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQPushButton, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QPushButtoncloseEvent(self[], event)
proc cQPushButton_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQPushButton, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QPushButtoncontextMenuEvent(self[], event)
proc cQPushButton_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQPushButton, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QPushButtontabletEvent(self[], event)
proc cQPushButton_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQPushButton, event: gen_qevent_types.QActionEvent): void {.base.} =
  QPushButtonactionEvent(self[], event)
proc cQPushButton_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQPushButton, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QPushButtondragEnterEvent(self[], event)
proc cQPushButton_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQPushButton, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QPushButtondragMoveEvent(self[], event)
proc cQPushButton_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQPushButton, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QPushButtondragLeaveEvent(self[], event)
proc cQPushButton_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQPushButton, event: gen_qevent_types.QDropEvent): void {.base.} =
  QPushButtondropEvent(self[], event)
proc cQPushButton_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQPushButton, event: gen_qevent_types.QShowEvent): void {.base.} =
  QPushButtonshowEvent(self[], event)
proc cQPushButton_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQPushButton, event: gen_qevent_types.QHideEvent): void {.base.} =
  QPushButtonhideEvent(self[], event)
proc cQPushButton_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQPushButton, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QPushButtonnativeEvent(self[], eventType, message, resultVal)
proc cQPushButton_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQPushButton, param1: cint): cint {.base.} =
  QPushButtonmetric(self[], param1)
proc cQPushButton_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQPushButton, painter: gen_qpainter_types.QPainter): void {.base.} =
  QPushButtoninitPainter(self[], painter)
proc cQPushButton_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQPushButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QPushButtonredirected(self[], offset)
proc cQPushButton_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQPushButton): gen_qpainter_types.QPainter {.base.} =
  QPushButtonsharedPainter(self[])
proc cQPushButton_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQPushButton, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QPushButtoninputMethodEvent(self[], param1)
proc cQPushButton_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQPushButton, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QPushButtoninputMethodQuery(self[], param1)
proc cQPushButton_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQPushButton, next: bool): bool {.base.} =
  QPushButtonfocusNextPrevChild(self[], next)
proc cQPushButton_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQPushButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPushButtoneventFilter(self[], watched, event)
proc cQPushButton_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQPushButton, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPushButtonchildEvent(self[], event)
proc cQPushButton_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQPushButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPushButtoncustomEvent(self[], event)
proc cQPushButton_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQPushButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPushButtonconnectNotify(self[], signal)
proc cQPushButton_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQPushButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPushButtondisconnectNotify(self[], signal)
proc cQPushButton_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPushButton](fcQPushButton_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc initStyleOption*(self: gen_qpushbutton_types.QPushButton, option: gen_qstyleoption_types.QStyleOptionButton): void =
  fcQPushButton_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qpushbutton_types.QPushButton): void =
  fcQPushButton_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qpushbutton_types.QPushButton): void =
  fcQPushButton_protectedbase_create(self.h)

proc destroy*(self: gen_qpushbutton_types.QPushButton): void =
  fcQPushButton_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qpushbutton_types.QPushButton): bool =
  fcQPushButton_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qpushbutton_types.QPushButton): bool =
  fcQPushButton_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qpushbutton_types.QPushButton): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPushButton_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpushbutton_types.QPushButton): cint =
  fcQPushButton_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpushbutton_types.QPushButton, signal: cstring): cint =
  fcQPushButton_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpushbutton_types.QPushButton, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPushButton_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpushbutton_types.QPushButton,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QPushButtonVTable = nil): gen_qpushbutton_types.QPushButton =
  let vtbl = if vtbl == nil: new QPushButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPushButtonVTable](fcQPushButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPushButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPushButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPushButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPushButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPushButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPushButton_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPushButton_vtable_callback_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPushButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPushButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPushButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQPushButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQPushButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQPushButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPushButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPushButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPushButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPushButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPushButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPushButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPushButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPushButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPushButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPushButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPushButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPushButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPushButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPushButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPushButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPushButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPushButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPushButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPushButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPushButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPushButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPushButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPushButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPushButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPushButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPushButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPushButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPushButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPushButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPushButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPushButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPushButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPushButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPushButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPushButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPushButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPushButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPushButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPushButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPushButton_vtable_callback_disconnectNotify
  gen_qpushbutton_types.QPushButton(h: fcQPushButton_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qpushbutton_types.QPushButton,
    vtbl: ref QPushButtonVTable = nil): gen_qpushbutton_types.QPushButton =
  let vtbl = if vtbl == nil: new QPushButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPushButtonVTable](fcQPushButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPushButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPushButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPushButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPushButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPushButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPushButton_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPushButton_vtable_callback_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPushButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPushButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPushButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQPushButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQPushButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQPushButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPushButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPushButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPushButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPushButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPushButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPushButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPushButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPushButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPushButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPushButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPushButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPushButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPushButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPushButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPushButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPushButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPushButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPushButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPushButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPushButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPushButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPushButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPushButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPushButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPushButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPushButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPushButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPushButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPushButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPushButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPushButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPushButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPushButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPushButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPushButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPushButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPushButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPushButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPushButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPushButton_vtable_callback_disconnectNotify
  gen_qpushbutton_types.QPushButton(h: fcQPushButton_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qpushbutton_types.QPushButton,
    text: openArray[char],
    vtbl: ref QPushButtonVTable = nil): gen_qpushbutton_types.QPushButton =
  let vtbl = if vtbl == nil: new QPushButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPushButtonVTable](fcQPushButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPushButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPushButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPushButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPushButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPushButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPushButton_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPushButton_vtable_callback_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPushButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPushButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPushButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQPushButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQPushButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQPushButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPushButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPushButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPushButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPushButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPushButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPushButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPushButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPushButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPushButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPushButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPushButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPushButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPushButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPushButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPushButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPushButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPushButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPushButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPushButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPushButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPushButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPushButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPushButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPushButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPushButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPushButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPushButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPushButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPushButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPushButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPushButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPushButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPushButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPushButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPushButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPushButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPushButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPushButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPushButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPushButton_vtable_callback_disconnectNotify
  gen_qpushbutton_types.QPushButton(h: fcQPushButton_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qpushbutton_types.QPushButton,
    icon: gen_qicon_types.QIcon, text: openArray[char],
    vtbl: ref QPushButtonVTable = nil): gen_qpushbutton_types.QPushButton =
  let vtbl = if vtbl == nil: new QPushButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPushButtonVTable](fcQPushButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPushButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPushButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPushButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPushButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPushButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPushButton_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPushButton_vtable_callback_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPushButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPushButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPushButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQPushButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQPushButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQPushButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPushButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPushButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPushButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPushButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPushButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPushButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPushButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPushButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPushButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPushButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPushButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPushButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPushButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPushButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPushButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPushButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPushButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPushButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPushButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPushButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPushButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPushButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPushButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPushButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPushButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPushButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPushButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPushButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPushButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPushButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPushButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPushButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPushButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPushButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPushButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPushButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPushButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPushButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPushButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPushButton_vtable_callback_disconnectNotify
  gen_qpushbutton_types.QPushButton(h: fcQPushButton_new4(addr(vtbl[].vtbl), addr(vtbl[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qpushbutton_types.QPushButton,
    text: openArray[char], parent: gen_qwidget_types.QWidget,
    vtbl: ref QPushButtonVTable = nil): gen_qpushbutton_types.QPushButton =
  let vtbl = if vtbl == nil: new QPushButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPushButtonVTable](fcQPushButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPushButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPushButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPushButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPushButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPushButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPushButton_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPushButton_vtable_callback_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPushButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPushButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPushButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQPushButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQPushButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQPushButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPushButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPushButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPushButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPushButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPushButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPushButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPushButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPushButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPushButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPushButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPushButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPushButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPushButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPushButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPushButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPushButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPushButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPushButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPushButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPushButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPushButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPushButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPushButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPushButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPushButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPushButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPushButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPushButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPushButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPushButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPushButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPushButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPushButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPushButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPushButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPushButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPushButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPushButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPushButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPushButton_vtable_callback_disconnectNotify
  gen_qpushbutton_types.QPushButton(h: fcQPushButton_new5(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h), owned: true)

proc create*(T: type gen_qpushbutton_types.QPushButton,
    icon: gen_qicon_types.QIcon, text: openArray[char], parent: gen_qwidget_types.QWidget,
    vtbl: ref QPushButtonVTable = nil): gen_qpushbutton_types.QPushButton =
  let vtbl = if vtbl == nil: new QPushButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPushButtonVTable](fcQPushButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPushButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPushButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPushButton_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPushButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPushButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPushButton_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPushButton_vtable_callback_paintEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPushButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPushButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPushButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = cQPushButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = cQPushButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = cQPushButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPushButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPushButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPushButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPushButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPushButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPushButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPushButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPushButton_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPushButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPushButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPushButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPushButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPushButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPushButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPushButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPushButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPushButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPushButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPushButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPushButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPushButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPushButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPushButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPushButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPushButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPushButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPushButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPushButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPushButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPushButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPushButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPushButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPushButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPushButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPushButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPushButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPushButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPushButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPushButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPushButton_vtable_callback_disconnectNotify
  gen_qpushbutton_types.QPushButton(h: fcQPushButton_new6(addr(vtbl[].vtbl), addr(vtbl[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h), owned: true)

const cQPushButton_mvtbl = cQPushButtonVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPushButton()[])](self.fcQPushButton_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQPushButton_method_callback_metaObject,
  metacast: cQPushButton_method_callback_metacast,
  metacall: cQPushButton_method_callback_metacall,
  sizeHint: cQPushButton_method_callback_sizeHint,
  minimumSizeHint: cQPushButton_method_callback_minimumSizeHint,
  event: cQPushButton_method_callback_event,
  paintEvent: cQPushButton_method_callback_paintEvent,
  keyPressEvent: cQPushButton_method_callback_keyPressEvent,
  focusInEvent: cQPushButton_method_callback_focusInEvent,
  focusOutEvent: cQPushButton_method_callback_focusOutEvent,
  hitButton: cQPushButton_method_callback_hitButton,
  checkStateSet: cQPushButton_method_callback_checkStateSet,
  nextCheckState: cQPushButton_method_callback_nextCheckState,
  keyReleaseEvent: cQPushButton_method_callback_keyReleaseEvent,
  mousePressEvent: cQPushButton_method_callback_mousePressEvent,
  mouseReleaseEvent: cQPushButton_method_callback_mouseReleaseEvent,
  mouseMoveEvent: cQPushButton_method_callback_mouseMoveEvent,
  changeEvent: cQPushButton_method_callback_changeEvent,
  timerEvent: cQPushButton_method_callback_timerEvent,
  devType: cQPushButton_method_callback_devType,
  setVisible: cQPushButton_method_callback_setVisible,
  heightForWidth: cQPushButton_method_callback_heightForWidth,
  hasHeightForWidth: cQPushButton_method_callback_hasHeightForWidth,
  paintEngine: cQPushButton_method_callback_paintEngine,
  mouseDoubleClickEvent: cQPushButton_method_callback_mouseDoubleClickEvent,
  wheelEvent: cQPushButton_method_callback_wheelEvent,
  enterEvent: cQPushButton_method_callback_enterEvent,
  leaveEvent: cQPushButton_method_callback_leaveEvent,
  moveEvent: cQPushButton_method_callback_moveEvent,
  resizeEvent: cQPushButton_method_callback_resizeEvent,
  closeEvent: cQPushButton_method_callback_closeEvent,
  contextMenuEvent: cQPushButton_method_callback_contextMenuEvent,
  tabletEvent: cQPushButton_method_callback_tabletEvent,
  actionEvent: cQPushButton_method_callback_actionEvent,
  dragEnterEvent: cQPushButton_method_callback_dragEnterEvent,
  dragMoveEvent: cQPushButton_method_callback_dragMoveEvent,
  dragLeaveEvent: cQPushButton_method_callback_dragLeaveEvent,
  dropEvent: cQPushButton_method_callback_dropEvent,
  showEvent: cQPushButton_method_callback_showEvent,
  hideEvent: cQPushButton_method_callback_hideEvent,
  nativeEvent: cQPushButton_method_callback_nativeEvent,
  metric: cQPushButton_method_callback_metric,
  initPainter: cQPushButton_method_callback_initPainter,
  redirected: cQPushButton_method_callback_redirected,
  sharedPainter: cQPushButton_method_callback_sharedPainter,
  inputMethodEvent: cQPushButton_method_callback_inputMethodEvent,
  inputMethodQuery: cQPushButton_method_callback_inputMethodQuery,
  focusNextPrevChild: cQPushButton_method_callback_focusNextPrevChild,
  eventFilter: cQPushButton_method_callback_eventFilter,
  childEvent: cQPushButton_method_callback_childEvent,
  customEvent: cQPushButton_method_callback_customEvent,
  connectNotify: cQPushButton_method_callback_connectNotify,
  disconnectNotify: cQPushButton_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpushbutton_types.QPushButton,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQPushButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPushButton_new(addr(cQPushButton_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qpushbutton_types.QPushButton,
    inst: VirtualQPushButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPushButton_new2(addr(cQPushButton_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qpushbutton_types.QPushButton,
    text: openArray[char],
    inst: VirtualQPushButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPushButton_new3(addr(cQPushButton_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qpushbutton_types.QPushButton,
    icon: gen_qicon_types.QIcon, text: openArray[char],
    inst: VirtualQPushButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPushButton_new4(addr(cQPushButton_mvtbl), addr(inst[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qpushbutton_types.QPushButton,
    text: openArray[char], parent: gen_qwidget_types.QWidget,
    inst: VirtualQPushButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPushButton_new5(addr(cQPushButton_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h)
  inst[].owned = true

proc create*(T: type gen_qpushbutton_types.QPushButton,
    icon: gen_qicon_types.QIcon, text: openArray[char], parent: gen_qwidget_types.QWidget,
    inst: VirtualQPushButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPushButton_new6(addr(cQPushButton_mvtbl), addr(inst[]), icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpushbutton_types.QPushButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPushButton_staticMetaObject())
