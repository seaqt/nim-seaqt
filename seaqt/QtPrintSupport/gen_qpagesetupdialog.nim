import ./Qt5PrintSupport_libs

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

const cflags = gorge("pkg-config --cflags Qt5PrintSupport")  & " -fPIC"
{.compile("gen_qpagesetupdialog.cpp", cflags).}


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

proc fcQPageSetupDialog_metaObject(self: pointer, ): pointer {.importc: "QPageSetupDialog_metaObject".}
proc fcQPageSetupDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QPageSetupDialog_metacast".}
proc fcQPageSetupDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPageSetupDialog_metacall".}
proc fcQPageSetupDialog_tr(s: cstring): struct_miqt_string {.importc: "QPageSetupDialog_tr".}
proc fcQPageSetupDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QPageSetupDialog_trUtf8".}
proc fcQPageSetupDialog_exec(self: pointer, ): cint {.importc: "QPageSetupDialog_exec".}
proc fcQPageSetupDialog_done(self: pointer, resultVal: cint): void {.importc: "QPageSetupDialog_done".}
proc fcQPageSetupDialog_printer(self: pointer, ): pointer {.importc: "QPageSetupDialog_printer".}
proc fcQPageSetupDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPageSetupDialog_tr2".}
proc fcQPageSetupDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPageSetupDialog_tr3".}
proc fcQPageSetupDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPageSetupDialog_trUtf82".}
proc fcQPageSetupDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPageSetupDialog_trUtf83".}
type cQPageSetupDialogVTable = object
  destructor*: proc(vtbl: ptr cQPageSetupDialogVTable, self: ptr cQPageSetupDialog) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  exec*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  done*: proc(vtbl, self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  accept*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPageSetupDialog_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QPageSetupDialog_virtualbase_metaObject".}
proc fcQPageSetupDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPageSetupDialog_virtualbase_metacast".}
proc fcQPageSetupDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPageSetupDialog_virtualbase_metacall".}
proc fcQPageSetupDialog_virtualbase_exec(self: pointer, ): cint {.importc: "QPageSetupDialog_virtualbase_exec".}
proc fcQPageSetupDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QPageSetupDialog_virtualbase_done".}
proc fcQPageSetupDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QPageSetupDialog_virtualbase_setVisible".}
proc fcQPageSetupDialog_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QPageSetupDialog_virtualbase_sizeHint".}
proc fcQPageSetupDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QPageSetupDialog_virtualbase_minimumSizeHint".}
proc fcQPageSetupDialog_virtualbase_open(self: pointer, ): void {.importc: "QPageSetupDialog_virtualbase_open".}
proc fcQPageSetupDialog_virtualbase_accept(self: pointer, ): void {.importc: "QPageSetupDialog_virtualbase_accept".}
proc fcQPageSetupDialog_virtualbase_reject(self: pointer, ): void {.importc: "QPageSetupDialog_virtualbase_reject".}
proc fcQPageSetupDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_keyPressEvent".}
proc fcQPageSetupDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_closeEvent".}
proc fcQPageSetupDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_showEvent".}
proc fcQPageSetupDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_resizeEvent".}
proc fcQPageSetupDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_contextMenuEvent".}
proc fcQPageSetupDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QPageSetupDialog_virtualbase_eventFilter".}
proc fcQPageSetupDialog_virtualbase_devType(self: pointer, ): cint {.importc: "QPageSetupDialog_virtualbase_devType".}
proc fcQPageSetupDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QPageSetupDialog_virtualbase_heightForWidth".}
proc fcQPageSetupDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QPageSetupDialog_virtualbase_hasHeightForWidth".}
proc fcQPageSetupDialog_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QPageSetupDialog_virtualbase_paintEngine".}
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
proc fcQPageSetupDialog_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QPageSetupDialog_virtualbase_sharedPainter".}
proc fcQPageSetupDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_virtualbase_inputMethodEvent".}
proc fcQPageSetupDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QPageSetupDialog_virtualbase_inputMethodQuery".}
proc fcQPageSetupDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QPageSetupDialog_virtualbase_focusNextPrevChild".}
proc fcQPageSetupDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_timerEvent".}
proc fcQPageSetupDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_childEvent".}
proc fcQPageSetupDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPageSetupDialog_virtualbase_customEvent".}
proc fcQPageSetupDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPageSetupDialog_virtualbase_connectNotify".}
proc fcQPageSetupDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPageSetupDialog_virtualbase_disconnectNotify".}
proc fcQPageSetupDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QPageSetupDialog_protectedbase_adjustPosition".}
proc fcQPageSetupDialog_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QPageSetupDialog_protectedbase_updateMicroFocus".}
proc fcQPageSetupDialog_protectedbase_create(self: pointer, ): void {.importc: "QPageSetupDialog_protectedbase_create".}
proc fcQPageSetupDialog_protectedbase_destroy(self: pointer, ): void {.importc: "QPageSetupDialog_protectedbase_destroy".}
proc fcQPageSetupDialog_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QPageSetupDialog_protectedbase_focusNextChild".}
proc fcQPageSetupDialog_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QPageSetupDialog_protectedbase_focusPreviousChild".}
proc fcQPageSetupDialog_protectedbase_sender(self: pointer, ): pointer {.importc: "QPageSetupDialog_protectedbase_sender".}
proc fcQPageSetupDialog_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QPageSetupDialog_protectedbase_senderSignalIndex".}
proc fcQPageSetupDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPageSetupDialog_protectedbase_receivers".}
proc fcQPageSetupDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPageSetupDialog_protectedbase_isSignalConnected".}
proc fcQPageSetupDialog_new(vtbl: pointer, parent: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new".}
proc fcQPageSetupDialog_new2(vtbl: pointer, printer: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new2".}
proc fcQPageSetupDialog_new3(vtbl: pointer, ): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new3".}
proc fcQPageSetupDialog_new4(vtbl: pointer, printer: pointer, parent: pointer): ptr cQPageSetupDialog {.importc: "QPageSetupDialog_new4".}
proc fcQPageSetupDialog_staticMetaObject(): pointer {.importc: "QPageSetupDialog_staticMetaObject".}
proc fcQPageSetupDialog_delete(self: pointer) {.importc: "QPageSetupDialog_delete".}

proc metaObject*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPageSetupDialog_metaObject(self.h))

proc metacast*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cstring): pointer =
  fcQPageSetupDialog_metacast(self.h, param1)

proc metacall*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQPageSetupDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring): string =
  let v_ms = fcQPageSetupDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring): string =
  let v_ms = fcQPageSetupDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exec*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): cint =
  fcQPageSetupDialog_exec(self.h)

proc done*(self: gen_qpagesetupdialog_types.QPageSetupDialog, resultVal: cint): void =
  fcQPageSetupDialog_done(self.h, resultVal)

proc printer*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qprinter_types.QPrinter =
  gen_qprinter_types.QPrinter(h: fcQPageSetupDialog_printer(self.h))

proc tr*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPageSetupDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPageSetupDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPageSetupDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qpagesetupdialog_types.QPageSetupDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPageSetupDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QPageSetupDialognativeEventProc* = proc(self: QPageSetupDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QPageSetupDialogVTable* = object
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
proc QPageSetupDialogmetaObject*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPageSetupDialog_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQPageSetupDialog_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QPageSetupDialogmetacast*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cstring): pointer =
  fcQPageSetupDialog_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQPageSetupDialog_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPageSetupDialogmetacall*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQPageSetupDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQPageSetupDialog_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPageSetupDialogexec*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): cint =
  fcQPageSetupDialog_virtualbase_exec(self.h)

proc miqt_exec_callback_cQPageSetupDialog_exec(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QPageSetupDialogdone*(self: gen_qpagesetupdialog_types.QPageSetupDialog, resultVal: cint): void =
  fcQPageSetupDialog_virtualbase_done(self.h, resultVal)

proc miqt_exec_callback_cQPageSetupDialog_done(vtbl: pointer, self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QPageSetupDialogsetVisible*(self: gen_qpagesetupdialog_types.QPageSetupDialog, visible: bool): void =
  fcQPageSetupDialog_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQPageSetupDialog_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QPageSetupDialogsizeHint*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPageSetupDialog_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQPageSetupDialog_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QPageSetupDialogminimumSizeHint*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPageSetupDialog_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQPageSetupDialog_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QPageSetupDialogopen*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): void =
  fcQPageSetupDialog_virtualbase_open(self.h)

proc miqt_exec_callback_cQPageSetupDialog_open(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  vtbl[].open(self)

proc QPageSetupDialogaccept*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): void =
  fcQPageSetupDialog_virtualbase_accept(self.h)

proc miqt_exec_callback_cQPageSetupDialog_accept(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  vtbl[].accept(self)

proc QPageSetupDialogreject*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): void =
  fcQPageSetupDialog_virtualbase_reject(self.h)

proc miqt_exec_callback_cQPageSetupDialog_reject(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  vtbl[].reject(self)

proc QPageSetupDialogkeyPressEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQPageSetupDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQPageSetupDialog_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QPageSetupDialogcloseEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQPageSetupDialog_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQPageSetupDialog_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)
  vtbl[].closeEvent(self, slotval1)

proc QPageSetupDialogshowEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQPageSetupDialog_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQPageSetupDialog_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QPageSetupDialogresizeEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQPageSetupDialog_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQPageSetupDialog_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QPageSetupDialogcontextMenuEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQPageSetupDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQPageSetupDialog_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QPageSetupDialogeventFilter*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQPageSetupDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQPageSetupDialog_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPageSetupDialogdevType*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): cint =
  fcQPageSetupDialog_virtualbase_devType(self.h)

proc miqt_exec_callback_cQPageSetupDialog_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QPageSetupDialogheightForWidth*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint): cint =
  fcQPageSetupDialog_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQPageSetupDialog_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QPageSetupDialoghasHeightForWidth*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): bool =
  fcQPageSetupDialog_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQPageSetupDialog_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QPageSetupDialogpaintEngine*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPageSetupDialog_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQPageSetupDialog_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QPageSetupDialogevent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQPageSetupDialog_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPageSetupDialogmousePressEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPageSetupDialog_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QPageSetupDialogmouseReleaseEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPageSetupDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QPageSetupDialogmouseDoubleClickEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPageSetupDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QPageSetupDialogmouseMoveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQPageSetupDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QPageSetupDialogwheelEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQPageSetupDialog_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QPageSetupDialogkeyReleaseEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQPageSetupDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QPageSetupDialogfocusInEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQPageSetupDialog_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QPageSetupDialogfocusOutEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQPageSetupDialog_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QPageSetupDialogenterEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPageSetupDialog_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QPageSetupDialogleaveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPageSetupDialog_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QPageSetupDialogpaintEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQPageSetupDialog_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QPageSetupDialogmoveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQPageSetupDialog_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QPageSetupDialogtabletEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQPageSetupDialog_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QPageSetupDialogactionEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QActionEvent): void =
  fcQPageSetupDialog_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QPageSetupDialogdragEnterEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQPageSetupDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QPageSetupDialogdragMoveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQPageSetupDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QPageSetupDialogdragLeaveEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQPageSetupDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QPageSetupDialogdropEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QDropEvent): void =
  fcQPageSetupDialog_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QPageSetupDialoghideEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qevent_types.QHideEvent): void =
  fcQPageSetupDialog_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QPageSetupDialognativeEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQPageSetupDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQPageSetupDialog_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPageSetupDialogchangeEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qcoreevent_types.QEvent): void =
  fcQPageSetupDialog_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQPageSetupDialog_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QPageSetupDialogmetric*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint): cint =
  fcQPageSetupDialog_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQPageSetupDialog_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPageSetupDialoginitPainter*(self: gen_qpagesetupdialog_types.QPageSetupDialog, painter: gen_qpainter_types.QPainter): void =
  fcQPageSetupDialog_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQPageSetupDialog_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QPageSetupDialogredirected*(self: gen_qpagesetupdialog_types.QPageSetupDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPageSetupDialog_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQPageSetupDialog_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QPageSetupDialogsharedPainter*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPageSetupDialog_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQPageSetupDialog_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QPageSetupDialoginputMethodEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQPageSetupDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQPageSetupDialog_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QPageSetupDialoginputMethodQuery*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPageSetupDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQPageSetupDialog_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QPageSetupDialogfocusNextPrevChild*(self: gen_qpagesetupdialog_types.QPageSetupDialog, next: bool): bool =
  fcQPageSetupDialog_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQPageSetupDialog_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QPageSetupDialogtimerEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPageSetupDialog_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QPageSetupDialogchildEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPageSetupDialog_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QPageSetupDialogcustomEvent*(self: gen_qpagesetupdialog_types.QPageSetupDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQPageSetupDialog_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQPageSetupDialog_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QPageSetupDialogconnectNotify*(self: gen_qpagesetupdialog_types.QPageSetupDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPageSetupDialog_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPageSetupDialog_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QPageSetupDialogdisconnectNotify*(self: gen_qpagesetupdialog_types.QPageSetupDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPageSetupDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPageSetupDialog_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPageSetupDialogVTable](vtbl)
  let self = QPageSetupDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc adjustPosition*(self: gen_qpagesetupdialog_types.QPageSetupDialog, param1: gen_qwidget_types.QWidget): void =
  fcQPageSetupDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): void =
  fcQPageSetupDialog_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): void =
  fcQPageSetupDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): void =
  fcQPageSetupDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): bool =
  fcQPageSetupDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): bool =
  fcQPageSetupDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPageSetupDialog_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qpagesetupdialog_types.QPageSetupDialog, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPageSetupDialogVTable, _: ptr cQPageSetupDialog) {.cdecl.} =
    let vtbl = cast[ref QPageSetupDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPageSetupDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPageSetupDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPageSetupDialog_metacall
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQPageSetupDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQPageSetupDialog_done
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPageSetupDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPageSetupDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPageSetupDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQPageSetupDialog_open
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQPageSetupDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQPageSetupDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPageSetupDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPageSetupDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPageSetupDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPageSetupDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPageSetupDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPageSetupDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPageSetupDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPageSetupDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPageSetupDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPageSetupDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPageSetupDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPageSetupDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPageSetupDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPageSetupDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPageSetupDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPageSetupDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPageSetupDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPageSetupDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPageSetupDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPageSetupDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPageSetupDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPageSetupDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPageSetupDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPageSetupDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPageSetupDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPageSetupDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPageSetupDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPageSetupDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPageSetupDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPageSetupDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPageSetupDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPageSetupDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPageSetupDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPageSetupDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPageSetupDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPageSetupDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPageSetupDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPageSetupDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPageSetupDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPageSetupDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPageSetupDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPageSetupDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPageSetupDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPageSetupDialog_disconnectNotify
  gen_qpagesetupdialog_types.QPageSetupDialog(h: fcQPageSetupDialog_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog,
    printer: gen_qprinter_types.QPrinter,
    vtbl: ref QPageSetupDialogVTable = nil): gen_qpagesetupdialog_types.QPageSetupDialog =
  let vtbl = if vtbl == nil: new QPageSetupDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPageSetupDialogVTable, _: ptr cQPageSetupDialog) {.cdecl.} =
    let vtbl = cast[ref QPageSetupDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPageSetupDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPageSetupDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPageSetupDialog_metacall
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQPageSetupDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQPageSetupDialog_done
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPageSetupDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPageSetupDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPageSetupDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQPageSetupDialog_open
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQPageSetupDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQPageSetupDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPageSetupDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPageSetupDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPageSetupDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPageSetupDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPageSetupDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPageSetupDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPageSetupDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPageSetupDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPageSetupDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPageSetupDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPageSetupDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPageSetupDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPageSetupDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPageSetupDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPageSetupDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPageSetupDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPageSetupDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPageSetupDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPageSetupDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPageSetupDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPageSetupDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPageSetupDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPageSetupDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPageSetupDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPageSetupDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPageSetupDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPageSetupDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPageSetupDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPageSetupDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPageSetupDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPageSetupDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPageSetupDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPageSetupDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPageSetupDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPageSetupDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPageSetupDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPageSetupDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPageSetupDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPageSetupDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPageSetupDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPageSetupDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPageSetupDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPageSetupDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPageSetupDialog_disconnectNotify
  gen_qpagesetupdialog_types.QPageSetupDialog(h: fcQPageSetupDialog_new2(addr(vtbl[]), printer.h))

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog,
    vtbl: ref QPageSetupDialogVTable = nil): gen_qpagesetupdialog_types.QPageSetupDialog =
  let vtbl = if vtbl == nil: new QPageSetupDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPageSetupDialogVTable, _: ptr cQPageSetupDialog) {.cdecl.} =
    let vtbl = cast[ref QPageSetupDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPageSetupDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPageSetupDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPageSetupDialog_metacall
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQPageSetupDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQPageSetupDialog_done
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPageSetupDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPageSetupDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPageSetupDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQPageSetupDialog_open
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQPageSetupDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQPageSetupDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPageSetupDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPageSetupDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPageSetupDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPageSetupDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPageSetupDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPageSetupDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPageSetupDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPageSetupDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPageSetupDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPageSetupDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPageSetupDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPageSetupDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPageSetupDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPageSetupDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPageSetupDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPageSetupDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPageSetupDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPageSetupDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPageSetupDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPageSetupDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPageSetupDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPageSetupDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPageSetupDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPageSetupDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPageSetupDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPageSetupDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPageSetupDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPageSetupDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPageSetupDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPageSetupDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPageSetupDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPageSetupDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPageSetupDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPageSetupDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPageSetupDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPageSetupDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPageSetupDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPageSetupDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPageSetupDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPageSetupDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPageSetupDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPageSetupDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPageSetupDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPageSetupDialog_disconnectNotify
  gen_qpagesetupdialog_types.QPageSetupDialog(h: fcQPageSetupDialog_new3(addr(vtbl[]), ))

proc create*(T: type gen_qpagesetupdialog_types.QPageSetupDialog,
    printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget,
    vtbl: ref QPageSetupDialogVTable = nil): gen_qpagesetupdialog_types.QPageSetupDialog =
  let vtbl = if vtbl == nil: new QPageSetupDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPageSetupDialogVTable, _: ptr cQPageSetupDialog) {.cdecl.} =
    let vtbl = cast[ref QPageSetupDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPageSetupDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPageSetupDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPageSetupDialog_metacall
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQPageSetupDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQPageSetupDialog_done
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQPageSetupDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQPageSetupDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQPageSetupDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQPageSetupDialog_open
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQPageSetupDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQPageSetupDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQPageSetupDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQPageSetupDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQPageSetupDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQPageSetupDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQPageSetupDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPageSetupDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPageSetupDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQPageSetupDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQPageSetupDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPageSetupDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPageSetupDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQPageSetupDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQPageSetupDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQPageSetupDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQPageSetupDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQPageSetupDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQPageSetupDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQPageSetupDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQPageSetupDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQPageSetupDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQPageSetupDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQPageSetupDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQPageSetupDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQPageSetupDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQPageSetupDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQPageSetupDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQPageSetupDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQPageSetupDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQPageSetupDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQPageSetupDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQPageSetupDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQPageSetupDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPageSetupDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPageSetupDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPageSetupDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPageSetupDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQPageSetupDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQPageSetupDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQPageSetupDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPageSetupDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPageSetupDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPageSetupDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPageSetupDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPageSetupDialog_disconnectNotify
  gen_qpagesetupdialog_types.QPageSetupDialog(h: fcQPageSetupDialog_new4(addr(vtbl[]), printer.h, parent.h))

proc staticMetaObject*(_: type gen_qpagesetupdialog_types.QPageSetupDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPageSetupDialog_staticMetaObject())
proc delete*(self: gen_qpagesetupdialog_types.QPageSetupDialog) =
  fcQPageSetupDialog_delete(self.h)
