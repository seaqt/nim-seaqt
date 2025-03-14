import ./qtprintsupport_pkg

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


{.compile("gen_qpagesetupdialog.cpp", QtPrintSupportCFlags).}


import ./gen_qpagesetupdialog_types
export gen_qpagesetupdialog_types

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
  ../QtWidgets/gen_qdialog,
  ../QtWidgets/gen_qwidget_types,
  ./gen_qprinter_types
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
  gen_qwidget_types,
  gen_qprinter_types

type cQPageSetupDialog*{.exportc: "QPageSetupDialog", incompleteStruct.} = object

proc fcQPageSetupDialog_metaObject(self: pointer): pointer {.importc: "QPageSetupDialog_metaObject".}
proc fcQPageSetupDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QPageSetupDialog_metacast".}
proc fcQPageSetupDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPageSetupDialog_metacall".}
proc fcQPageSetupDialog_tr(s: cstring): struct_miqt_string {.importc: "QPageSetupDialog_tr".}
proc fcQPageSetupDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QPageSetupDialog_trUtf8".}
proc fcQPageSetupDialog_exec(self: pointer): cint {.importc: "QPageSetupDialog_exec".}
proc fcQPageSetupDialog_done(self: pointer, resultVal: cint): void {.importc: "QPageSetupDialog_done".}
proc fcQPageSetupDialog_printer(self: pointer): pointer {.importc: "QPageSetupDialog_printer".}
proc fcQPageSetupDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPageSetupDialog_tr2".}
proc fcQPageSetupDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPageSetupDialog_tr3".}
proc fcQPageSetupDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPageSetupDialog_trUtf82".}
proc fcQPageSetupDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPageSetupDialog_trUtf83".}
proc fcQPageSetupDialog_vtbl(self: pointer): pointer {.importc: "QPageSetupDialog_vtbl".}
proc fcQPageSetupDialog_vdata(self: pointer): pointer {.importc: "QPageSetupDialog_vdata".}
type cQPageSetupDialogVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  exec*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  done*: proc(self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
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
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQPageSetupDialog_virtualbase_metaObject(self: pointer): pointer {.importc: "QPageSetupDialog_virtualbase_metaObject".}
proc fcQPageSetupDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPageSetupDialog_virtualbase_metacast".}
proc fcQPageSetupDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPageSetupDialog_virtualbase_metacall".}
proc fcQPageSetupDialog_virtualbase_exec(self: pointer): cint {.importc: "QPageSetupDialog_virtualbase_exec".}
proc fcQPageSetupDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QPageSetupDialog_virtualbase_done".}
proc fcQPageSetupDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QPageSetupDialog_virtualbase_setVisible".}
proc fcQPageSetupDialog_virtualbase_sizeHint(self: pointer): pointer {.importc: "QPageSetupDialog_virtualbase_sizeHint".}
proc fcQPageSetupDialog_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QPageSetupDialog_virtualbase_minimumSizeHint".}
proc fcQPageSetupDialog_virtualbase_open(self: pointer): void {.importc: "QPageSetupDialog_virtualbase_open".}
proc fcQPageSetupDialog_virtualbase_accept(self: pointer): void {.importc: "QPageSetupDialog_virtualbase_accept".}
proc fcQPageSetupDialog_virtualbase_reject(self: pointer): void {.importc: "QPageSetupDialog_virtualbase_reject".}
proc fcQPageSetupDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_keyPressEvent".}
proc fcQPageSetupDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_closeEvent".}
proc fcQPageSetupDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_showEvent".}
proc fcQPageSetupDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_resizeEvent".}
proc fcQPageSetupDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_contextMenuEvent".}
proc fcQPageSetupDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QPageSetupDialog_virtualbase_eventFilter".}
proc fcQPageSetupDialog_virtualbase_devType(self: pointer): cint {.importc: "QPageSetupDialog_virtualbase_devType".}
proc fcQPageSetupDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QPageSetupDialog_virtualbase_heightForWidth".}
proc fcQPageSetupDialog_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QPageSetupDialog_virtualbase_hasHeightForWidth".}
proc fcQPageSetupDialog_virtualbase_paintEngine(self: pointer): pointer {.importc: "QPageSetupDialog_virtualbase_paintEngine".}
proc fcQPageSetupDialog_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPageSetupDialog_virtualbase_event".}
proc fcQPageSetupDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_mousePressEvent".}
proc fcQPageSetupDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_mouseReleaseEvent".}
proc fcQPageSetupDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQPageSetupDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_mouseMoveEvent".}
proc fcQPageSetupDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_wheelEvent".}
proc fcQPageSetupDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_keyReleaseEvent".}
proc fcQPageSetupDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_focusInEvent".}
proc fcQPageSetupDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_focusOutEvent".}
proc fcQPageSetupDialog_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_enterEvent".}
proc fcQPageSetupDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_leaveEvent".}
proc fcQPageSetupDialog_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_paintEvent".}
proc fcQPageSetupDialog_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_moveEvent".}
proc fcQPageSetupDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_tabletEvent".}
proc fcQPageSetupDialog_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_actionEvent".}
proc fcQPageSetupDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_dragEnterEvent".}
proc fcQPageSetupDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_dragMoveEvent".}
proc fcQPageSetupDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_dragLeaveEvent".}
proc fcQPageSetupDialog_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_dropEvent".}
proc fcQPageSetupDialog_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_hideEvent".}
proc fcQPageSetupDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QPageSetupDialog_virtualbase_nativeEvent".}
proc fcQPageSetupDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_changeEvent".}
proc fcQPageSetupDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QPageSetupDialog_virtualbase_metric".}
proc fcQPageSetupDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPageSetupDialog_virtualbase_initPainter".}
proc fcQPageSetupDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPageSetupDialog_virtualbase_redirected".}
proc fcQPageSetupDialog_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QPageSetupDialog_virtualbase_sharedPainter".}
proc fcQPageSetupDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_inputMethodEvent".}
proc fcQPageSetupDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QPageSetupDialog_virtualbase_inputMethodQuery".}
proc fcQPageSetupDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QPageSetupDialog_virtualbase_focusNextPrevChild".}
proc fcQPageSetupDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_timerEvent".}
proc fcQPageSetupDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_childEvent".}
proc fcQPageSetupDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_customEvent".}
proc fcQPageSetupDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPageSetupDialog_virtualbase_connectNotify".}
proc fcQPageSetupDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPageSetupDialog_virtualbase_disconnectNotify".}
proc fcQPageSetupDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_protectedbase_adjustPosition".}
proc fcQPageSetupDialog_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QPageSetupDialog_protectedbase_updateMicroFocus".}
proc fcQPageSetupDialog_protectedbase_create(self: pointer): void {.importc: "QPageSetupDialog_protectedbase_create".}
proc fcQPageSetupDialog_protectedbase_destroy(self: pointer): void {.importc: "QPageSetupDialog_protectedbase_destroy".}
proc fcQPageSetupDialog_protectedbase_focusNextChild(self: pointer): bool {.importc: "QPageSetupDialog_protectedbase_focusNextChild".}
proc fcQPageSetupDialog_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QPageSetupDialog_protectedbase_focusPreviousChild".}
proc fcQPageSetupDialog_protectedbase_sender(self: pointer): pointer {.importc: "QPageSetupDialog_protectedbase_sender".}
proc fcQPageSetupDialog_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPageSetupDialog_protectedbase_senderSignalIndex".}
proc fcQPageSetupDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPageSetupDialog_protectedbase_receivers".}
proc fcQPageSetupDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPageSetupDialog_protectedbase_isSignalConnected".}
proc fcQPageSetupDialog_new(vtbl, vdata: pointer, parent: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new".}
proc fcQPageSetupDialog_new2(vtbl, vdata: pointer, printer: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new2".}
proc fcQPageSetupDialog_new3(vtbl, vdata: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new3".}
proc fcQPageSetupDialog_new4(vtbl, vdata: pointer, printer: pointer, parent: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new4".}
proc fcQPageSetupDialog_staticMetaObject(): pointer {.importc: "QPageSetupDialog_staticMetaObject".}

proc metaObject*(self: gen_qpagesetupdialog_types.QPageSetupDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPageSetupDialog_metaObject(self.h), owned: false)

proc metacast*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cstring): pointer =
  fcQPageSetupDialog_metacast(self.h, param1)

proc metacall*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQPageSetupDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring): string =
  let v_ms = fcQPageSetupDialog_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring): string =
  let v_ms = fcQPageSetupDialog_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc exec*(self: gen_qpagesetupdialog_types.QPageSetupDialog): cint =
  fcQPageSetupDialog_exec(self.h)

proc done*(self: gen_qpagesetupdialog_types.QPageSetupDialog, resultVal: cint): void =
  fcQPageSetupDialog_done(self.h, resultVal)

proc printer*(self: gen_qpagesetupdialog_types.QPageSetupDialog): gen_qprinter_types.QPrinter =
  gen_qprinter_types.QPrinter(h: fcQPageSetupDialog_printer(self.h), owned: false)

proc tr*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPageSetupDialog_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPageSetupDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPageSetupDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPageSetupDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPageSetupDialogmetaObjectProc* = proc(self: QPageSetupDialog): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPageSetupDialogmetacastProc* = proc(self: QPageSetupDialog, param1: cstring): pointer {.raises: [], gcsafe.}
type QPageSetupDialogmetacallProc* = proc(self: QPageSetupDialog, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPageSetupDialogexecProc* = proc(self: QPageSetupDialog): cint {.raises: [], gcsafe.}
type QPageSetupDialogdoneProc* = proc(self: QPageSetupDialog, resultVal: cint): void {.raises: [], gcsafe.}
type QPageSetupDialogsetVisibleProc* = proc(self: QPageSetupDialog, visible: bool): void {.raises: [], gcsafe.}
type QPageSetupDialogsizeHintProc* = proc(self: QPageSetupDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPageSetupDialogminimumSizeHintProc* = proc(self: QPageSetupDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QPageSetupDialogopenProc* = proc(self: QPageSetupDialog): void {.raises: [], gcsafe.}
type QPageSetupDialogacceptProc* = proc(self: QPageSetupDialog): void {.raises: [], gcsafe.}
type QPageSetupDialogrejectProc* = proc(self: QPageSetupDialog): void {.raises: [], gcsafe.}
type QPageSetupDialogkeyPressEventProc* = proc(self: QPageSetupDialog, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogcloseEventProc* = proc(self: QPageSetupDialog, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogshowEventProc* = proc(self: QPageSetupDialog, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogresizeEventProc* = proc(self: QPageSetupDialog, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogcontextMenuEventProc* = proc(self: QPageSetupDialog, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogeventFilterProc* = proc(self: QPageSetupDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPageSetupDialogdevTypeProc* = proc(self: QPageSetupDialog): cint {.raises: [], gcsafe.}
type QPageSetupDialogheightForWidthProc* = proc(self: QPageSetupDialog, param1: cint): cint {.raises: [], gcsafe.}
type QPageSetupDialoghasHeightForWidthProc* = proc(self: QPageSetupDialog): bool {.raises: [], gcsafe.}
type QPageSetupDialogpaintEngineProc* = proc(self: QPageSetupDialog): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPageSetupDialogeventProc* = proc(self: QPageSetupDialog, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPageSetupDialogmousePressEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogmouseReleaseEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogmouseDoubleClickEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogmouseMoveEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogwheelEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogkeyReleaseEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogfocusInEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogfocusOutEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogenterEventProc* = proc(self: QPageSetupDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogleaveEventProc* = proc(self: QPageSetupDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogpaintEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogmoveEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogtabletEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogactionEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogdragEnterEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogdragMoveEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogdragLeaveEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogdropEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QPageSetupDialoghideEventProc* = proc(self: QPageSetupDialog, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QPageSetupDialognativeEventProc* = proc(self: QPageSetupDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QPageSetupDialogchangeEventProc* = proc(self: QPageSetupDialog, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogmetricProc* = proc(self: QPageSetupDialog, param1: cint): cint {.raises: [], gcsafe.}
type QPageSetupDialoginitPainterProc* = proc(self: QPageSetupDialog, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPageSetupDialogredirectedProc* = proc(self: QPageSetupDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPageSetupDialogsharedPainterProc* = proc(self: QPageSetupDialog): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPageSetupDialoginputMethodEventProc* = proc(self: QPageSetupDialog, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QPageSetupDialoginputMethodQueryProc* = proc(self: QPageSetupDialog, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QPageSetupDialogfocusNextPrevChildProc* = proc(self: QPageSetupDialog, next: bool): bool {.raises: [], gcsafe.}
type QPageSetupDialogtimerEventProc* = proc(self: QPageSetupDialog, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogchildEventProc* = proc(self: QPageSetupDialog, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogcustomEventProc* = proc(self: QPageSetupDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPageSetupDialogconnectNotifyProc* = proc(self: QPageSetupDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPageSetupDialogdisconnectNotifyProc* = proc(self: QPageSetupDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPageSetupDialogVTable* {.inheritable, pure.} = object
  vtbl: cQPageSetupDialogVTable
  metaObject*: QPageSetupDialogmetaObjectProc
  metacast*: QPageSetupDialogmetacastProc
  metacall*: QPageSetupDialogmetacallProc
  exec*: QPageSetupDialogexecProc
  done*: QPageSetupDialogdoneProc
  setVisible*: QPageSetupDialogsetVisibleProc
  sizeHint*: QPageSetupDialogsizeHintProc
  minimumSizeHint*: QPageSetupDialogminimumSizeHintProc
  open*: QPageSetupDialogopenProc
  accept*: QPageSetupDialogacceptProc
  reject*: QPageSetupDialogrejectProc
  keyPressEvent*: QPageSetupDialogkeyPressEventProc
  closeEvent*: QPageSetupDialogcloseEventProc
  showEvent*: QPageSetupDialogshowEventProc
  resizeEvent*: QPageSetupDialogresizeEventProc
  contextMenuEvent*: QPageSetupDialogcontextMenuEventProc
  eventFilter*: QPageSetupDialogeventFilterProc
  devType*: QPageSetupDialogdevTypeProc
  heightForWidth*: QPageSetupDialogheightForWidthProc
  hasHeightForWidth*: QPageSetupDialoghasHeightForWidthProc
  paintEngine*: QPageSetupDialogpaintEngineProc
  event*: QPageSetupDialogeventProc
  mousePressEvent*: QPageSetupDialogmousePressEventProc
  mouseReleaseEvent*: QPageSetupDialogmouseReleaseEventProc
  mouseDoubleClickEvent*: QPageSetupDialogmouseDoubleClickEventProc
  mouseMoveEvent*: QPageSetupDialogmouseMoveEventProc
  wheelEvent*: QPageSetupDialogwheelEventProc
  keyReleaseEvent*: QPageSetupDialogkeyReleaseEventProc
  focusInEvent*: QPageSetupDialogfocusInEventProc
  focusOutEvent*: QPageSetupDialogfocusOutEventProc
  enterEvent*: QPageSetupDialogenterEventProc
  leaveEvent*: QPageSetupDialogleaveEventProc
  paintEvent*: QPageSetupDialogpaintEventProc
  moveEvent*: QPageSetupDialogmoveEventProc
  tabletEvent*: QPageSetupDialogtabletEventProc
  actionEvent*: QPageSetupDialogactionEventProc
  dragEnterEvent*: QPageSetupDialogdragEnterEventProc
  dragMoveEvent*: QPageSetupDialogdragMoveEventProc
  dragLeaveEvent*: QPageSetupDialogdragLeaveEventProc
  dropEvent*: QPageSetupDialogdropEventProc
  hideEvent*: QPageSetupDialoghideEventProc
  nativeEvent*: QPageSetupDialognativeEventProc
  changeEvent*: QPageSetupDialogchangeEventProc
  metric*: QPageSetupDialogmetricProc
  initPainter*: QPageSetupDialoginitPainterProc
  redirected*: QPageSetupDialogredirectedProc
  sharedPainter*: QPageSetupDialogsharedPainterProc
  inputMethodEvent*: QPageSetupDialoginputMethodEventProc
  inputMethodQuery*: QPageSetupDialoginputMethodQueryProc
  focusNextPrevChild*: QPageSetupDialogfocusNextPrevChildProc
  timerEvent*: QPageSetupDialogtimerEventProc
  childEvent*: QPageSetupDialogchildEventProc
  customEvent*: QPageSetupDialogcustomEventProc
  connectNotify*: QPageSetupDialogconnectNotifyProc
  disconnectNotify*: QPageSetupDialogdisconnectNotifyProc
proc QPageSetupDialogmetaObject*(self: gen_qpagesetupdialog_types.QPageSetupDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPageSetupDialog_virtualbase_metaObject(self.h), owned: false)

proc cQPageSetupDialog_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPageSetupDialogmetacast*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cstring): pointer =
  fcQPageSetupDialog_virtualbase_metacast(self.h, param1)

proc cQPageSetupDialog_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPageSetupDialogmetacall*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQPageSetupDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQPageSetupDialog_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPageSetupDialogexec*(self: gen_qpagesetupdialog_types.QPageSetupDialog): cint =
  fcQPageSetupDialog_virtualbase_exec(self.h)

proc cQPageSetupDialog_vtable_callback_exec(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QPageSetupDialogdone*(self: gen_qpagesetupdialog_types.QPageSetupDialog, resultVal: cint): void =
  fcQPageSetupDialog_virtualbase_done(self.h, resultVal)

proc cQPageSetupDialog_vtable_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QPageSetupDialogsetVisible*(self: gen_qpagesetupdialog_types.QPageSetupDialog, visible: bool): void =
  fcQPageSetupDialog_virtualbase_setVisible(self.h, visible)

proc cQPageSetupDialog_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QPageSetupDialogsizeHint*(self: gen_qpagesetupdialog_types.QPageSetupDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPageSetupDialog_virtualbase_sizeHint(self.h), owned: true)

proc cQPageSetupDialog_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPageSetupDialogminimumSizeHint*(self: gen_qpagesetupdialog_types.QPageSetupDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPageSetupDialog_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQPageSetupDialog_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPageSetupDialogopen*(self: gen_qpagesetupdialog_types.QPageSetupDialog): void =
  fcQPageSetupDialog_virtualbase_open(self.h)

proc cQPageSetupDialog_vtable_callback_open(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  vtbl[].open(self)

proc QPageSetupDialogaccept*(self: gen_qpagesetupdialog_types.QPageSetupDialog): void =
  fcQPageSetupDialog_virtualbase_accept(self.h)

proc cQPageSetupDialog_vtable_callback_accept(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  vtbl[].accept(self)

proc QPageSetupDialogreject*(self: gen_qpagesetupdialog_types.QPageSetupDialog): void =
  fcQPageSetupDialog_virtualbase_reject(self.h)

proc cQPageSetupDialog_vtable_callback_reject(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  vtbl[].reject(self)

proc QPageSetupDialogkeyPressEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQPageSetupDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc cQPageSetupDialog_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QPageSetupDialogcloseEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQPageSetupDialog_virtualbase_closeEvent(self.h, param1.h)

proc cQPageSetupDialog_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QPageSetupDialogshowEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQPageSetupDialog_virtualbase_showEvent(self.h, param1.h)

proc cQPageSetupDialog_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QPageSetupDialogresizeEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQPageSetupDialog_virtualbase_resizeEvent(self.h, param1.h)

proc cQPageSetupDialog_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QPageSetupDialogcontextMenuEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQPageSetupDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQPageSetupDialog_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QPageSetupDialogeventFilter*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQPageSetupDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQPageSetupDialog_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPageSetupDialogdevType*(self: gen_qpagesetupdialog_types.QPageSetupDialog): cint =
  fcQPageSetupDialog_virtualbase_devType(self.h)

proc cQPageSetupDialog_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QPageSetupDialogheightForWidth*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint): cint =
  fcQPageSetupDialog_virtualbase_heightForWidth(self.h, param1)

proc cQPageSetupDialog_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QPageSetupDialoghasHeightForWidth*(self: gen_qpagesetupdialog_types.QPageSetupDialog): bool =
  fcQPageSetupDialog_virtualbase_hasHeightForWidth(self.h)

proc cQPageSetupDialog_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QPageSetupDialogpaintEngine*(self: gen_qpagesetupdialog_types.QPageSetupDialog): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPageSetupDialog_virtualbase_paintEngine(self.h), owned: false)

proc cQPageSetupDialog_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPageSetupDialogevent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQPageSetupDialog_virtualbase_event(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPageSetupDialogmousePressEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPageSetupDialog_virtualbase_mousePressEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QPageSetupDialogmouseReleaseEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPageSetupDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QPageSetupDialogmouseDoubleClickEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPageSetupDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QPageSetupDialogmouseMoveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPageSetupDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QPageSetupDialogwheelEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQPageSetupDialog_virtualbase_wheelEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QPageSetupDialogkeyReleaseEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQPageSetupDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QPageSetupDialogfocusInEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQPageSetupDialog_virtualbase_focusInEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QPageSetupDialogfocusOutEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQPageSetupDialog_virtualbase_focusOutEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QPageSetupDialogenterEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPageSetupDialog_virtualbase_enterEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QPageSetupDialogleaveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPageSetupDialog_virtualbase_leaveEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QPageSetupDialogpaintEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQPageSetupDialog_virtualbase_paintEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QPageSetupDialogmoveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQPageSetupDialog_virtualbase_moveEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QPageSetupDialogtabletEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQPageSetupDialog_virtualbase_tabletEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QPageSetupDialogactionEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QActionEvent): void =
  fcQPageSetupDialog_virtualbase_actionEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QPageSetupDialogdragEnterEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQPageSetupDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QPageSetupDialogdragMoveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQPageSetupDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QPageSetupDialogdragLeaveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQPageSetupDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QPageSetupDialogdropEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QDropEvent): void =
  fcQPageSetupDialog_virtualbase_dropEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QPageSetupDialoghideEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QHideEvent): void =
  fcQPageSetupDialog_virtualbase_hideEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QPageSetupDialognativeEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQPageSetupDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQPageSetupDialog_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPageSetupDialogchangeEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qcoreevent_types.QEvent): void =
  fcQPageSetupDialog_virtualbase_changeEvent(self.h, param1.h)

proc cQPageSetupDialog_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QPageSetupDialogmetric*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint): cint =
  fcQPageSetupDialog_virtualbase_metric(self.h, cint(param1))

proc cQPageSetupDialog_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPageSetupDialoginitPainter*(self: gen_qpagesetupdialog_types.QPageSetupDialog, painter: gen_qpainter_types.QPainter): void =
  fcQPageSetupDialog_virtualbase_initPainter(self.h, painter.h)

proc cQPageSetupDialog_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QPageSetupDialogredirected*(self: gen_qpagesetupdialog_types.QPageSetupDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPageSetupDialog_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQPageSetupDialog_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPageSetupDialogsharedPainter*(self: gen_qpagesetupdialog_types.QPageSetupDialog): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPageSetupDialog_virtualbase_sharedPainter(self.h), owned: false)

proc cQPageSetupDialog_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPageSetupDialoginputMethodEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQPageSetupDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQPageSetupDialog_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QPageSetupDialoginputMethodQuery*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPageSetupDialog_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQPageSetupDialog_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QPageSetupDialogfocusNextPrevChild*(self: gen_qpagesetupdialog_types.QPageSetupDialog, next: bool): bool =
  fcQPageSetupDialog_virtualbase_focusNextPrevChild(self.h, next)

proc cQPageSetupDialog_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QPageSetupDialogtimerEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPageSetupDialog_virtualbase_timerEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QPageSetupDialogchildEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPageSetupDialog_virtualbase_childEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QPageSetupDialogcustomEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPageSetupDialog_virtualbase_customEvent(self.h, event.h)

proc cQPageSetupDialog_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QPageSetupDialogconnectNotify*(self: gen_qpagesetupdialog_types.QPageSetupDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPageSetupDialog_virtualbase_connectNotify(self.h, signal.h)

proc cQPageSetupDialog_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QPageSetupDialogdisconnectNotify*(self: gen_qpagesetupdialog_types.QPageSetupDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPageSetupDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc cQPageSetupDialog_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPageSetupDialog* {.inheritable.} = ref object of QPageSetupDialog
  vtbl*: cQPageSetupDialogVTable
method metaObject*(self: VirtualQPageSetupDialog): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPageSetupDialogmetaObject(self[])
proc cQPageSetupDialog_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQPageSetupDialog, param1: cstring): pointer {.base.} =
  QPageSetupDialogmetacast(self[], param1)
proc cQPageSetupDialog_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQPageSetupDialog, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPageSetupDialogmetacall(self[], param1, param2, param3)
proc cQPageSetupDialog_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method exec*(self: VirtualQPageSetupDialog): cint {.base.} =
  QPageSetupDialogexec(self[])
proc cQPageSetupDialog_method_callback_exec(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  var virtualReturn = inst.exec()
  virtualReturn

method done*(self: VirtualQPageSetupDialog, resultVal: cint): void {.base.} =
  QPageSetupDialogdone(self[], resultVal)
proc cQPageSetupDialog_method_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = resultVal
  inst.done(slotval1)

method setVisible*(self: VirtualQPageSetupDialog, visible: bool): void {.base.} =
  QPageSetupDialogsetVisible(self[], visible)
proc cQPageSetupDialog_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQPageSetupDialog): gen_qsize_types.QSize {.base.} =
  QPageSetupDialogsizeHint(self[])
proc cQPageSetupDialog_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQPageSetupDialog): gen_qsize_types.QSize {.base.} =
  QPageSetupDialogminimumSizeHint(self[])
proc cQPageSetupDialog_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method open*(self: VirtualQPageSetupDialog): void {.base.} =
  QPageSetupDialogopen(self[])
proc cQPageSetupDialog_method_callback_open(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  inst.open()

method accept*(self: VirtualQPageSetupDialog): void {.base.} =
  QPageSetupDialogaccept(self[])
proc cQPageSetupDialog_method_callback_accept(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  inst.accept()

method reject*(self: VirtualQPageSetupDialog): void {.base.} =
  QPageSetupDialogreject(self[])
proc cQPageSetupDialog_method_callback_reject(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  inst.reject()

method keyPressEvent*(self: VirtualQPageSetupDialog, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QPageSetupDialogkeyPressEvent(self[], param1)
proc cQPageSetupDialog_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method closeEvent*(self: VirtualQPageSetupDialog, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QPageSetupDialogcloseEvent(self[], param1)
proc cQPageSetupDialog_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

method showEvent*(self: VirtualQPageSetupDialog, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QPageSetupDialogshowEvent(self[], param1)
proc cQPageSetupDialog_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

method resizeEvent*(self: VirtualQPageSetupDialog, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QPageSetupDialogresizeEvent(self[], param1)
proc cQPageSetupDialog_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method contextMenuEvent*(self: VirtualQPageSetupDialog, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QPageSetupDialogcontextMenuEvent(self[], param1)
proc cQPageSetupDialog_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method eventFilter*(self: VirtualQPageSetupDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPageSetupDialogeventFilter(self[], param1, param2)
proc cQPageSetupDialog_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method devType*(self: VirtualQPageSetupDialog): cint {.base.} =
  QPageSetupDialogdevType(self[])
proc cQPageSetupDialog_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method heightForWidth*(self: VirtualQPageSetupDialog, param1: cint): cint {.base.} =
  QPageSetupDialogheightForWidth(self[], param1)
proc cQPageSetupDialog_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQPageSetupDialog): bool {.base.} =
  QPageSetupDialoghasHeightForWidth(self[])
proc cQPageSetupDialog_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQPageSetupDialog): gen_qpaintengine_types.QPaintEngine {.base.} =
  QPageSetupDialogpaintEngine(self[])
proc cQPageSetupDialog_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQPageSetupDialog, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPageSetupDialogevent(self[], event)
proc cQPageSetupDialog_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPageSetupDialogmousePressEvent(self[], event)
proc cQPageSetupDialog_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPageSetupDialogmouseReleaseEvent(self[], event)
proc cQPageSetupDialog_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPageSetupDialogmouseDoubleClickEvent(self[], event)
proc cQPageSetupDialog_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QPageSetupDialogmouseMoveEvent(self[], event)
proc cQPageSetupDialog_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QPageSetupDialogwheelEvent(self[], event)
proc cQPageSetupDialog_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QPageSetupDialogkeyReleaseEvent(self[], event)
proc cQPageSetupDialog_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QPageSetupDialogfocusInEvent(self[], event)
proc cQPageSetupDialog_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QPageSetupDialogfocusOutEvent(self[], event)
proc cQPageSetupDialog_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQPageSetupDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPageSetupDialogenterEvent(self[], event)
proc cQPageSetupDialog_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQPageSetupDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPageSetupDialogleaveEvent(self[], event)
proc cQPageSetupDialog_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QPageSetupDialogpaintEvent(self[], event)
proc cQPageSetupDialog_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QPageSetupDialogmoveEvent(self[], event)
proc cQPageSetupDialog_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QPageSetupDialogtabletEvent(self[], event)
proc cQPageSetupDialog_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QActionEvent): void {.base.} =
  QPageSetupDialogactionEvent(self[], event)
proc cQPageSetupDialog_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QPageSetupDialogdragEnterEvent(self[], event)
proc cQPageSetupDialog_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QPageSetupDialogdragMoveEvent(self[], event)
proc cQPageSetupDialog_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QPageSetupDialogdragLeaveEvent(self[], event)
proc cQPageSetupDialog_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QDropEvent): void {.base.} =
  QPageSetupDialogdropEvent(self[], event)
proc cQPageSetupDialog_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method hideEvent*(self: VirtualQPageSetupDialog, event: gen_qevent_types.QHideEvent): void {.base.} =
  QPageSetupDialoghideEvent(self[], event)
proc cQPageSetupDialog_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQPageSetupDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QPageSetupDialognativeEvent(self[], eventType, message, resultVal)
proc cQPageSetupDialog_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQPageSetupDialog, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QPageSetupDialogchangeEvent(self[], param1)
proc cQPageSetupDialog_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQPageSetupDialog, param1: cint): cint {.base.} =
  QPageSetupDialogmetric(self[], param1)
proc cQPageSetupDialog_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQPageSetupDialog, painter: gen_qpainter_types.QPainter): void {.base.} =
  QPageSetupDialoginitPainter(self[], painter)
proc cQPageSetupDialog_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQPageSetupDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QPageSetupDialogredirected(self[], offset)
proc cQPageSetupDialog_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQPageSetupDialog): gen_qpainter_types.QPainter {.base.} =
  QPageSetupDialogsharedPainter(self[])
proc cQPageSetupDialog_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQPageSetupDialog, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QPageSetupDialoginputMethodEvent(self[], param1)
proc cQPageSetupDialog_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQPageSetupDialog, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QPageSetupDialoginputMethodQuery(self[], param1)
proc cQPageSetupDialog_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQPageSetupDialog, next: bool): bool {.base.} =
  QPageSetupDialogfocusNextPrevChild(self[], next)
proc cQPageSetupDialog_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQPageSetupDialog, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPageSetupDialogtimerEvent(self[], event)
proc cQPageSetupDialog_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQPageSetupDialog, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPageSetupDialogchildEvent(self[], event)
proc cQPageSetupDialog_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQPageSetupDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPageSetupDialogcustomEvent(self[], event)
proc cQPageSetupDialog_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQPageSetupDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPageSetupDialogconnectNotify(self[], signal)
proc cQPageSetupDialog_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQPageSetupDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPageSetupDialogdisconnectNotify(self[], signal)
proc cQPageSetupDialog_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPageSetupDialog](fcQPageSetupDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc adjustPosition*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qwidget_types.QWidget): void =
  fcQPageSetupDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qpagesetupdialog_types.QPageSetupDialog): void =
  fcQPageSetupDialog_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qpagesetupdialog_types.QPageSetupDialog): void =
  fcQPageSetupDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qpagesetupdialog_types.QPageSetupDialog): void =
  fcQPageSetupDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qpagesetupdialog_types.QPageSetupDialog): bool =
  fcQPageSetupDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qpagesetupdialog_types.QPageSetupDialog): bool =
  fcQPageSetupDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qpagesetupdialog_types.QPageSetupDialog): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPageSetupDialog_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qpagesetupdialog_types.QPageSetupDialog): cint =
  fcQPageSetupDialog_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpagesetupdialog_types.QPageSetupDialog, signal: cstring): cint =
  fcQPageSetupDialog_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpagesetupdialog_types.QPageSetupDialog, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPageSetupDialog_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QPageSetupDialogVTable = nil): gen_qpagesetupdialog_types.QPageSetupDialog =
  let vtbl = if vtbl == nil: new QPageSetupDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPageSetupDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPageSetupDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPageSetupDialog_vtable_callback_metacall
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPageSetupDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPageSetupDialog_vtable_callback_done
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPageSetupDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPageSetupDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPageSetupDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPageSetupDialog_vtable_callback_open
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPageSetupDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPageSetupDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPageSetupDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPageSetupDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPageSetupDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPageSetupDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPageSetupDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPageSetupDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPageSetupDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPageSetupDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPageSetupDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPageSetupDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPageSetupDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPageSetupDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPageSetupDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPageSetupDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPageSetupDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPageSetupDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPageSetupDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPageSetupDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPageSetupDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPageSetupDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPageSetupDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPageSetupDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPageSetupDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPageSetupDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPageSetupDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPageSetupDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPageSetupDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPageSetupDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPageSetupDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPageSetupDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPageSetupDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPageSetupDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPageSetupDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPageSetupDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPageSetupDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPageSetupDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPageSetupDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPageSetupDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPageSetupDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPageSetupDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPageSetupDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPageSetupDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPageSetupDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPageSetupDialog_vtable_callback_disconnectNotify
  gen_qpagesetupdialog_types.QPageSetupDialog(h: fcQPageSetupDialog_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog,
    printer: gen_qprinter_types.QPrinter,
    vtbl: ref QPageSetupDialogVTable = nil): gen_qpagesetupdialog_types.QPageSetupDialog =
  let vtbl = if vtbl == nil: new QPageSetupDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPageSetupDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPageSetupDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPageSetupDialog_vtable_callback_metacall
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPageSetupDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPageSetupDialog_vtable_callback_done
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPageSetupDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPageSetupDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPageSetupDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPageSetupDialog_vtable_callback_open
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPageSetupDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPageSetupDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPageSetupDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPageSetupDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPageSetupDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPageSetupDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPageSetupDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPageSetupDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPageSetupDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPageSetupDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPageSetupDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPageSetupDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPageSetupDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPageSetupDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPageSetupDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPageSetupDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPageSetupDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPageSetupDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPageSetupDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPageSetupDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPageSetupDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPageSetupDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPageSetupDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPageSetupDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPageSetupDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPageSetupDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPageSetupDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPageSetupDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPageSetupDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPageSetupDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPageSetupDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPageSetupDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPageSetupDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPageSetupDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPageSetupDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPageSetupDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPageSetupDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPageSetupDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPageSetupDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPageSetupDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPageSetupDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPageSetupDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPageSetupDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPageSetupDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPageSetupDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPageSetupDialog_vtable_callback_disconnectNotify
  gen_qpagesetupdialog_types.QPageSetupDialog(h: fcQPageSetupDialog_new2(addr(vtbl[].vtbl), addr(vtbl[]), printer.h), owned: true)

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog,
    vtbl: ref QPageSetupDialogVTable = nil): gen_qpagesetupdialog_types.QPageSetupDialog =
  let vtbl = if vtbl == nil: new QPageSetupDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPageSetupDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPageSetupDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPageSetupDialog_vtable_callback_metacall
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPageSetupDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPageSetupDialog_vtable_callback_done
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPageSetupDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPageSetupDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPageSetupDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPageSetupDialog_vtable_callback_open
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPageSetupDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPageSetupDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPageSetupDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPageSetupDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPageSetupDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPageSetupDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPageSetupDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPageSetupDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPageSetupDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPageSetupDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPageSetupDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPageSetupDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPageSetupDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPageSetupDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPageSetupDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPageSetupDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPageSetupDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPageSetupDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPageSetupDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPageSetupDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPageSetupDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPageSetupDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPageSetupDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPageSetupDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPageSetupDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPageSetupDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPageSetupDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPageSetupDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPageSetupDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPageSetupDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPageSetupDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPageSetupDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPageSetupDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPageSetupDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPageSetupDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPageSetupDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPageSetupDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPageSetupDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPageSetupDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPageSetupDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPageSetupDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPageSetupDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPageSetupDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPageSetupDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPageSetupDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPageSetupDialog_vtable_callback_disconnectNotify
  gen_qpagesetupdialog_types.QPageSetupDialog(h: fcQPageSetupDialog_new3(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    vtbl: ref QPageSetupDialogVTable = nil): gen_qpagesetupdialog_types.QPageSetupDialog =
  let vtbl = if vtbl == nil: new QPageSetupDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPageSetupDialogVTable](fcQPageSetupDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQPageSetupDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQPageSetupDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQPageSetupDialog_vtable_callback_metacall
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQPageSetupDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQPageSetupDialog_vtable_callback_done
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQPageSetupDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQPageSetupDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQPageSetupDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQPageSetupDialog_vtable_callback_open
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQPageSetupDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQPageSetupDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQPageSetupDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQPageSetupDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQPageSetupDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQPageSetupDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQPageSetupDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQPageSetupDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQPageSetupDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQPageSetupDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQPageSetupDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQPageSetupDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQPageSetupDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQPageSetupDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQPageSetupDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQPageSetupDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQPageSetupDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQPageSetupDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQPageSetupDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQPageSetupDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQPageSetupDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQPageSetupDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQPageSetupDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQPageSetupDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQPageSetupDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQPageSetupDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQPageSetupDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQPageSetupDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQPageSetupDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQPageSetupDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQPageSetupDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQPageSetupDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQPageSetupDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQPageSetupDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQPageSetupDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQPageSetupDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQPageSetupDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQPageSetupDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQPageSetupDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQPageSetupDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQPageSetupDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQPageSetupDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQPageSetupDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQPageSetupDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQPageSetupDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQPageSetupDialog_vtable_callback_disconnectNotify
  gen_qpagesetupdialog_types.QPageSetupDialog(h: fcQPageSetupDialog_new4(addr(vtbl[].vtbl), addr(vtbl[]), printer.h, parent.h), owned: true)

const cQPageSetupDialog_mvtbl = cQPageSetupDialogVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPageSetupDialog()[])](self.fcQPageSetupDialog_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQPageSetupDialog_method_callback_metaObject,
  metacast: cQPageSetupDialog_method_callback_metacast,
  metacall: cQPageSetupDialog_method_callback_metacall,
  exec: cQPageSetupDialog_method_callback_exec,
  done: cQPageSetupDialog_method_callback_done,
  setVisible: cQPageSetupDialog_method_callback_setVisible,
  sizeHint: cQPageSetupDialog_method_callback_sizeHint,
  minimumSizeHint: cQPageSetupDialog_method_callback_minimumSizeHint,
  open: cQPageSetupDialog_method_callback_open,
  accept: cQPageSetupDialog_method_callback_accept,
  reject: cQPageSetupDialog_method_callback_reject,
  keyPressEvent: cQPageSetupDialog_method_callback_keyPressEvent,
  closeEvent: cQPageSetupDialog_method_callback_closeEvent,
  showEvent: cQPageSetupDialog_method_callback_showEvent,
  resizeEvent: cQPageSetupDialog_method_callback_resizeEvent,
  contextMenuEvent: cQPageSetupDialog_method_callback_contextMenuEvent,
  eventFilter: cQPageSetupDialog_method_callback_eventFilter,
  devType: cQPageSetupDialog_method_callback_devType,
  heightForWidth: cQPageSetupDialog_method_callback_heightForWidth,
  hasHeightForWidth: cQPageSetupDialog_method_callback_hasHeightForWidth,
  paintEngine: cQPageSetupDialog_method_callback_paintEngine,
  event: cQPageSetupDialog_method_callback_event,
  mousePressEvent: cQPageSetupDialog_method_callback_mousePressEvent,
  mouseReleaseEvent: cQPageSetupDialog_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQPageSetupDialog_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQPageSetupDialog_method_callback_mouseMoveEvent,
  wheelEvent: cQPageSetupDialog_method_callback_wheelEvent,
  keyReleaseEvent: cQPageSetupDialog_method_callback_keyReleaseEvent,
  focusInEvent: cQPageSetupDialog_method_callback_focusInEvent,
  focusOutEvent: cQPageSetupDialog_method_callback_focusOutEvent,
  enterEvent: cQPageSetupDialog_method_callback_enterEvent,
  leaveEvent: cQPageSetupDialog_method_callback_leaveEvent,
  paintEvent: cQPageSetupDialog_method_callback_paintEvent,
  moveEvent: cQPageSetupDialog_method_callback_moveEvent,
  tabletEvent: cQPageSetupDialog_method_callback_tabletEvent,
  actionEvent: cQPageSetupDialog_method_callback_actionEvent,
  dragEnterEvent: cQPageSetupDialog_method_callback_dragEnterEvent,
  dragMoveEvent: cQPageSetupDialog_method_callback_dragMoveEvent,
  dragLeaveEvent: cQPageSetupDialog_method_callback_dragLeaveEvent,
  dropEvent: cQPageSetupDialog_method_callback_dropEvent,
  hideEvent: cQPageSetupDialog_method_callback_hideEvent,
  nativeEvent: cQPageSetupDialog_method_callback_nativeEvent,
  changeEvent: cQPageSetupDialog_method_callback_changeEvent,
  metric: cQPageSetupDialog_method_callback_metric,
  initPainter: cQPageSetupDialog_method_callback_initPainter,
  redirected: cQPageSetupDialog_method_callback_redirected,
  sharedPainter: cQPageSetupDialog_method_callback_sharedPainter,
  inputMethodEvent: cQPageSetupDialog_method_callback_inputMethodEvent,
  inputMethodQuery: cQPageSetupDialog_method_callback_inputMethodQuery,
  focusNextPrevChild: cQPageSetupDialog_method_callback_focusNextPrevChild,
  timerEvent: cQPageSetupDialog_method_callback_timerEvent,
  childEvent: cQPageSetupDialog_method_callback_childEvent,
  customEvent: cQPageSetupDialog_method_callback_customEvent,
  connectNotify: cQPageSetupDialog_method_callback_connectNotify,
  disconnectNotify: cQPageSetupDialog_method_callback_disconnectNotify,
)
proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQPageSetupDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPageSetupDialog_new(addr(cQPageSetupDialog_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog,
    printer: gen_qprinter_types.QPrinter,
    inst: VirtualQPageSetupDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPageSetupDialog_new2(addr(cQPageSetupDialog_mvtbl), addr(inst[]), printer.h)
  inst[].owned = true

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog,
    inst: VirtualQPageSetupDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPageSetupDialog_new3(addr(cQPageSetupDialog_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    inst: VirtualQPageSetupDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPageSetupDialog_new4(addr(cQPageSetupDialog_mvtbl), addr(inst[]), printer.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qpagesetupdialog_types.QPageSetupDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPageSetupDialog_staticMetaObject())
