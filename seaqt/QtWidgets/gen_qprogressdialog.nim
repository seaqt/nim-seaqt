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
{.compile("gen_qprogressdialog.cpp", cflags).}


import ./gen_qprogressdialog_types
export gen_qprogressdialog_types

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
  ./gen_qlabel_types,
  ./gen_qprogressbar_types,
  ./gen_qpushbutton_types,
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
  gen_qlabel_types,
  gen_qprogressbar_types,
  gen_qpushbutton_types,
  gen_qwidget_types

type cQProgressDialog*{.exportc: "QProgressDialog", incompleteStruct.} = object

proc fcQProgressDialog_metaObject(self: pointer): pointer {.importc: "QProgressDialog_metaObject".}
proc fcQProgressDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QProgressDialog_metacast".}
proc fcQProgressDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProgressDialog_metacall".}
proc fcQProgressDialog_tr(s: cstring): struct_miqt_string {.importc: "QProgressDialog_tr".}
proc fcQProgressDialog_setLabel(self: pointer, label: pointer): void {.importc: "QProgressDialog_setLabel".}
proc fcQProgressDialog_setCancelButton(self: pointer, button: pointer): void {.importc: "QProgressDialog_setCancelButton".}
proc fcQProgressDialog_setBar(self: pointer, bar: pointer): void {.importc: "QProgressDialog_setBar".}
proc fcQProgressDialog_wasCanceled(self: pointer): bool {.importc: "QProgressDialog_wasCanceled".}
proc fcQProgressDialog_minimum(self: pointer): cint {.importc: "QProgressDialog_minimum".}
proc fcQProgressDialog_maximum(self: pointer): cint {.importc: "QProgressDialog_maximum".}
proc fcQProgressDialog_value(self: pointer): cint {.importc: "QProgressDialog_value".}
proc fcQProgressDialog_sizeHint(self: pointer): pointer {.importc: "QProgressDialog_sizeHint".}
proc fcQProgressDialog_labelText(self: pointer): struct_miqt_string {.importc: "QProgressDialog_labelText".}
proc fcQProgressDialog_minimumDuration(self: pointer): cint {.importc: "QProgressDialog_minimumDuration".}
proc fcQProgressDialog_setAutoReset(self: pointer, reset: bool): void {.importc: "QProgressDialog_setAutoReset".}
proc fcQProgressDialog_autoReset(self: pointer): bool {.importc: "QProgressDialog_autoReset".}
proc fcQProgressDialog_setAutoClose(self: pointer, close: bool): void {.importc: "QProgressDialog_setAutoClose".}
proc fcQProgressDialog_autoClose(self: pointer): bool {.importc: "QProgressDialog_autoClose".}
proc fcQProgressDialog_cancel(self: pointer): void {.importc: "QProgressDialog_cancel".}
proc fcQProgressDialog_reset(self: pointer): void {.importc: "QProgressDialog_reset".}
proc fcQProgressDialog_setMaximum(self: pointer, maximum: cint): void {.importc: "QProgressDialog_setMaximum".}
proc fcQProgressDialog_setMinimum(self: pointer, minimum: cint): void {.importc: "QProgressDialog_setMinimum".}
proc fcQProgressDialog_setRange(self: pointer, minimum: cint, maximum: cint): void {.importc: "QProgressDialog_setRange".}
proc fcQProgressDialog_setValue(self: pointer, progress: cint): void {.importc: "QProgressDialog_setValue".}
proc fcQProgressDialog_setLabelText(self: pointer, text: struct_miqt_string): void {.importc: "QProgressDialog_setLabelText".}
proc fcQProgressDialog_setCancelButtonText(self: pointer, text: struct_miqt_string): void {.importc: "QProgressDialog_setCancelButtonText".}
proc fcQProgressDialog_setMinimumDuration(self: pointer, ms: cint): void {.importc: "QProgressDialog_setMinimumDuration".}
proc fcQProgressDialog_canceled(self: pointer): void {.importc: "QProgressDialog_canceled".}
proc fcQProgressDialog_connect_canceled(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QProgressDialog_connect_canceled".}
proc fcQProgressDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QProgressDialog_tr2".}
proc fcQProgressDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProgressDialog_tr3".}
proc fcQProgressDialog_vtbl(self: pointer): pointer {.importc: "QProgressDialog_vtbl".}
proc fcQProgressDialog_vdata(self: pointer): pointer {.importc: "QProgressDialog_vdata".}
type cQProgressDialogVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  done*: proc(self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  accept*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQProgressDialog_virtualbase_metaObject(self: pointer): pointer {.importc: "QProgressDialog_virtualbase_metaObject".}
proc fcQProgressDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QProgressDialog_virtualbase_metacast".}
proc fcQProgressDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProgressDialog_virtualbase_metacall".}
proc fcQProgressDialog_virtualbase_sizeHint(self: pointer): pointer {.importc: "QProgressDialog_virtualbase_sizeHint".}
proc fcQProgressDialog_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_resizeEvent".}
proc fcQProgressDialog_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_closeEvent".}
proc fcQProgressDialog_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_changeEvent".}
proc fcQProgressDialog_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_showEvent".}
proc fcQProgressDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QProgressDialog_virtualbase_setVisible".}
proc fcQProgressDialog_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QProgressDialog_virtualbase_minimumSizeHint".}
proc fcQProgressDialog_virtualbase_open(self: pointer): void {.importc: "QProgressDialog_virtualbase_open".}
proc fcQProgressDialog_virtualbase_exec(self: pointer): cint {.importc: "QProgressDialog_virtualbase_exec".}
proc fcQProgressDialog_virtualbase_done(self: pointer, param1: cint): void {.importc: "QProgressDialog_virtualbase_done".}
proc fcQProgressDialog_virtualbase_accept(self: pointer): void {.importc: "QProgressDialog_virtualbase_accept".}
proc fcQProgressDialog_virtualbase_reject(self: pointer): void {.importc: "QProgressDialog_virtualbase_reject".}
proc fcQProgressDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QProgressDialog_virtualbase_keyPressEvent".}
proc fcQProgressDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QProgressDialog_virtualbase_contextMenuEvent".}
proc fcQProgressDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QProgressDialog_virtualbase_eventFilter".}
proc fcQProgressDialog_virtualbase_devType(self: pointer): cint {.importc: "QProgressDialog_virtualbase_devType".}
proc fcQProgressDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QProgressDialog_virtualbase_heightForWidth".}
proc fcQProgressDialog_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QProgressDialog_virtualbase_hasHeightForWidth".}
proc fcQProgressDialog_virtualbase_paintEngine(self: pointer): pointer {.importc: "QProgressDialog_virtualbase_paintEngine".}
proc fcQProgressDialog_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QProgressDialog_virtualbase_event".}
proc fcQProgressDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_mousePressEvent".}
proc fcQProgressDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_mouseReleaseEvent".}
proc fcQProgressDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQProgressDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_mouseMoveEvent".}
proc fcQProgressDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_wheelEvent".}
proc fcQProgressDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_keyReleaseEvent".}
proc fcQProgressDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_focusInEvent".}
proc fcQProgressDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_focusOutEvent".}
proc fcQProgressDialog_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_enterEvent".}
proc fcQProgressDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_leaveEvent".}
proc fcQProgressDialog_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_paintEvent".}
proc fcQProgressDialog_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_moveEvent".}
proc fcQProgressDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_tabletEvent".}
proc fcQProgressDialog_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_actionEvent".}
proc fcQProgressDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_dragEnterEvent".}
proc fcQProgressDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_dragMoveEvent".}
proc fcQProgressDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_dragLeaveEvent".}
proc fcQProgressDialog_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_dropEvent".}
proc fcQProgressDialog_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_hideEvent".}
proc fcQProgressDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QProgressDialog_virtualbase_nativeEvent".}
proc fcQProgressDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QProgressDialog_virtualbase_metric".}
proc fcQProgressDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QProgressDialog_virtualbase_initPainter".}
proc fcQProgressDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QProgressDialog_virtualbase_redirected".}
proc fcQProgressDialog_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QProgressDialog_virtualbase_sharedPainter".}
proc fcQProgressDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QProgressDialog_virtualbase_inputMethodEvent".}
proc fcQProgressDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QProgressDialog_virtualbase_inputMethodQuery".}
proc fcQProgressDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QProgressDialog_virtualbase_focusNextPrevChild".}
proc fcQProgressDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_timerEvent".}
proc fcQProgressDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_childEvent".}
proc fcQProgressDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_customEvent".}
proc fcQProgressDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QProgressDialog_virtualbase_connectNotify".}
proc fcQProgressDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QProgressDialog_virtualbase_disconnectNotify".}
proc fcQProgressDialog_protectedbase_forceShow(self: pointer): void {.importc: "QProgressDialog_protectedbase_forceShow".}
proc fcQProgressDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QProgressDialog_protectedbase_adjustPosition".}
proc fcQProgressDialog_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QProgressDialog_protectedbase_updateMicroFocus".}
proc fcQProgressDialog_protectedbase_create(self: pointer): void {.importc: "QProgressDialog_protectedbase_create".}
proc fcQProgressDialog_protectedbase_destroy(self: pointer): void {.importc: "QProgressDialog_protectedbase_destroy".}
proc fcQProgressDialog_protectedbase_focusNextChild(self: pointer): bool {.importc: "QProgressDialog_protectedbase_focusNextChild".}
proc fcQProgressDialog_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QProgressDialog_protectedbase_focusPreviousChild".}
proc fcQProgressDialog_protectedbase_sender(self: pointer): pointer {.importc: "QProgressDialog_protectedbase_sender".}
proc fcQProgressDialog_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QProgressDialog_protectedbase_senderSignalIndex".}
proc fcQProgressDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QProgressDialog_protectedbase_receivers".}
proc fcQProgressDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QProgressDialog_protectedbase_isSignalConnected".}
proc fcQProgressDialog_new(vtbl, vdata: pointer, parent: pointer): ptr cQProgressDialog {.importc: "QProgressDialog_new".}
proc fcQProgressDialog_new2(vtbl, vdata: pointer): ptr cQProgressDialog {.importc: "QProgressDialog_new2".}
proc fcQProgressDialog_new3(vtbl, vdata: pointer, labelText: struct_miqt_string, cancelButtonText: struct_miqt_string, minimum: cint, maximum: cint): ptr cQProgressDialog {.importc: "QProgressDialog_new3".}
proc fcQProgressDialog_new4(vtbl, vdata: pointer, parent: pointer, flags: cint): ptr cQProgressDialog {.importc: "QProgressDialog_new4".}
proc fcQProgressDialog_new5(vtbl, vdata: pointer, labelText: struct_miqt_string, cancelButtonText: struct_miqt_string, minimum: cint, maximum: cint, parent: pointer): ptr cQProgressDialog {.importc: "QProgressDialog_new5".}
proc fcQProgressDialog_new6(vtbl, vdata: pointer, labelText: struct_miqt_string, cancelButtonText: struct_miqt_string, minimum: cint, maximum: cint, parent: pointer, flags: cint): ptr cQProgressDialog {.importc: "QProgressDialog_new6".}
proc fcQProgressDialog_staticMetaObject(): pointer {.importc: "QProgressDialog_staticMetaObject".}

proc metaObject*(self: gen_qprogressdialog_types.QProgressDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressDialog_metaObject(self.h), owned: false)

proc metacast*(self: gen_qprogressdialog_types.QProgressDialog, param1: cstring): pointer =
  fcQProgressDialog_metacast(self.h, param1)

proc metacall*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQProgressDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qprogressdialog_types.QProgressDialog, s: cstring): string =
  let v_ms = fcQProgressDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setLabel*(self: gen_qprogressdialog_types.QProgressDialog, label: gen_qlabel_types.QLabel): void =
  fcQProgressDialog_setLabel(self.h, label.h)

proc setCancelButton*(self: gen_qprogressdialog_types.QProgressDialog, button: gen_qpushbutton_types.QPushButton): void =
  fcQProgressDialog_setCancelButton(self.h, button.h)

proc setBar*(self: gen_qprogressdialog_types.QProgressDialog, bar: gen_qprogressbar_types.QProgressBar): void =
  fcQProgressDialog_setBar(self.h, bar.h)

proc wasCanceled*(self: gen_qprogressdialog_types.QProgressDialog): bool =
  fcQProgressDialog_wasCanceled(self.h)

proc minimum*(self: gen_qprogressdialog_types.QProgressDialog): cint =
  fcQProgressDialog_minimum(self.h)

proc maximum*(self: gen_qprogressdialog_types.QProgressDialog): cint =
  fcQProgressDialog_maximum(self.h)

proc value*(self: gen_qprogressdialog_types.QProgressDialog): cint =
  fcQProgressDialog_value(self.h)

proc sizeHint*(self: gen_qprogressdialog_types.QProgressDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressDialog_sizeHint(self.h), owned: true)

proc labelText*(self: gen_qprogressdialog_types.QProgressDialog): string =
  let v_ms = fcQProgressDialog_labelText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc minimumDuration*(self: gen_qprogressdialog_types.QProgressDialog): cint =
  fcQProgressDialog_minimumDuration(self.h)

proc setAutoReset*(self: gen_qprogressdialog_types.QProgressDialog, reset: bool): void =
  fcQProgressDialog_setAutoReset(self.h, reset)

proc autoReset*(self: gen_qprogressdialog_types.QProgressDialog): bool =
  fcQProgressDialog_autoReset(self.h)

proc setAutoClose*(self: gen_qprogressdialog_types.QProgressDialog, close: bool): void =
  fcQProgressDialog_setAutoClose(self.h, close)

proc autoClose*(self: gen_qprogressdialog_types.QProgressDialog): bool =
  fcQProgressDialog_autoClose(self.h)

proc cancel*(self: gen_qprogressdialog_types.QProgressDialog): void =
  fcQProgressDialog_cancel(self.h)

proc reset*(self: gen_qprogressdialog_types.QProgressDialog): void =
  fcQProgressDialog_reset(self.h)

proc setMaximum*(self: gen_qprogressdialog_types.QProgressDialog, maximum: cint): void =
  fcQProgressDialog_setMaximum(self.h, maximum)

proc setMinimum*(self: gen_qprogressdialog_types.QProgressDialog, minimum: cint): void =
  fcQProgressDialog_setMinimum(self.h, minimum)

proc setRange*(self: gen_qprogressdialog_types.QProgressDialog, minimum: cint, maximum: cint): void =
  fcQProgressDialog_setRange(self.h, minimum, maximum)

proc setValue*(self: gen_qprogressdialog_types.QProgressDialog, progress: cint): void =
  fcQProgressDialog_setValue(self.h, progress)

proc setLabelText*(self: gen_qprogressdialog_types.QProgressDialog, text: string): void =
  fcQProgressDialog_setLabelText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setCancelButtonText*(self: gen_qprogressdialog_types.QProgressDialog, text: string): void =
  fcQProgressDialog_setCancelButtonText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setMinimumDuration*(self: gen_qprogressdialog_types.QProgressDialog, ms: cint): void =
  fcQProgressDialog_setMinimumDuration(self.h, ms)

proc canceled*(self: gen_qprogressdialog_types.QProgressDialog): void =
  fcQProgressDialog_canceled(self.h)

type QProgressDialogcanceledSlot* = proc()
proc cQProgressDialog_slot_callback_canceled(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QProgressDialogcanceledSlot](cast[pointer](slot))
  nimfunc[]()

proc cQProgressDialog_slot_callback_canceled_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QProgressDialogcanceledSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncanceled*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogcanceledSlot) =
  var tmp = new QProgressDialogcanceledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_connect_canceled(self.h, cast[int](addr tmp[]), cQProgressDialog_slot_callback_canceled, cQProgressDialog_slot_callback_canceled_release)

proc tr*(_: type gen_qprogressdialog_types.QProgressDialog, s: cstring, c: cstring): string =
  let v_ms = fcQProgressDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qprogressdialog_types.QProgressDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQProgressDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QProgressDialogmetaObjectProc* = proc(self: QProgressDialog): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QProgressDialogmetacastProc* = proc(self: QProgressDialog, param1: cstring): pointer {.raises: [], gcsafe.}
type QProgressDialogmetacallProc* = proc(self: QProgressDialog, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QProgressDialogsizeHintProc* = proc(self: QProgressDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QProgressDialogresizeEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QProgressDialogcloseEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QProgressDialogchangeEventProc* = proc(self: QProgressDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QProgressDialogshowEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QProgressDialogsetVisibleProc* = proc(self: QProgressDialog, visible: bool): void {.raises: [], gcsafe.}
type QProgressDialogminimumSizeHintProc* = proc(self: QProgressDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QProgressDialogopenProc* = proc(self: QProgressDialog): void {.raises: [], gcsafe.}
type QProgressDialogexecProc* = proc(self: QProgressDialog): cint {.raises: [], gcsafe.}
type QProgressDialogdoneProc* = proc(self: QProgressDialog, param1: cint): void {.raises: [], gcsafe.}
type QProgressDialogacceptProc* = proc(self: QProgressDialog): void {.raises: [], gcsafe.}
type QProgressDialogrejectProc* = proc(self: QProgressDialog): void {.raises: [], gcsafe.}
type QProgressDialogkeyPressEventProc* = proc(self: QProgressDialog, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QProgressDialogcontextMenuEventProc* = proc(self: QProgressDialog, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QProgressDialogeventFilterProc* = proc(self: QProgressDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QProgressDialogdevTypeProc* = proc(self: QProgressDialog): cint {.raises: [], gcsafe.}
type QProgressDialogheightForWidthProc* = proc(self: QProgressDialog, param1: cint): cint {.raises: [], gcsafe.}
type QProgressDialoghasHeightForWidthProc* = proc(self: QProgressDialog): bool {.raises: [], gcsafe.}
type QProgressDialogpaintEngineProc* = proc(self: QProgressDialog): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QProgressDialogeventProc* = proc(self: QProgressDialog, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QProgressDialogmousePressEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QProgressDialogmouseReleaseEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QProgressDialogmouseDoubleClickEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QProgressDialogmouseMoveEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QProgressDialogwheelEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QProgressDialogkeyReleaseEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QProgressDialogfocusInEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QProgressDialogfocusOutEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QProgressDialogenterEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QProgressDialogleaveEventProc* = proc(self: QProgressDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QProgressDialogpaintEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QProgressDialogmoveEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QProgressDialogtabletEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QProgressDialogactionEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QProgressDialogdragEnterEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QProgressDialogdragMoveEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QProgressDialogdragLeaveEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QProgressDialogdropEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QProgressDialoghideEventProc* = proc(self: QProgressDialog, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QProgressDialognativeEventProc* = proc(self: QProgressDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QProgressDialogmetricProc* = proc(self: QProgressDialog, param1: cint): cint {.raises: [], gcsafe.}
type QProgressDialoginitPainterProc* = proc(self: QProgressDialog, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QProgressDialogredirectedProc* = proc(self: QProgressDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QProgressDialogsharedPainterProc* = proc(self: QProgressDialog): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QProgressDialoginputMethodEventProc* = proc(self: QProgressDialog, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QProgressDialoginputMethodQueryProc* = proc(self: QProgressDialog, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QProgressDialogfocusNextPrevChildProc* = proc(self: QProgressDialog, next: bool): bool {.raises: [], gcsafe.}
type QProgressDialogtimerEventProc* = proc(self: QProgressDialog, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QProgressDialogchildEventProc* = proc(self: QProgressDialog, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QProgressDialogcustomEventProc* = proc(self: QProgressDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QProgressDialogconnectNotifyProc* = proc(self: QProgressDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QProgressDialogdisconnectNotifyProc* = proc(self: QProgressDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QProgressDialogVTable* {.inheritable, pure.} = object
  vtbl: cQProgressDialogVTable
  metaObject*: QProgressDialogmetaObjectProc
  metacast*: QProgressDialogmetacastProc
  metacall*: QProgressDialogmetacallProc
  sizeHint*: QProgressDialogsizeHintProc
  resizeEvent*: QProgressDialogresizeEventProc
  closeEvent*: QProgressDialogcloseEventProc
  changeEvent*: QProgressDialogchangeEventProc
  showEvent*: QProgressDialogshowEventProc
  setVisible*: QProgressDialogsetVisibleProc
  minimumSizeHint*: QProgressDialogminimumSizeHintProc
  open*: QProgressDialogopenProc
  exec*: QProgressDialogexecProc
  done*: QProgressDialogdoneProc
  accept*: QProgressDialogacceptProc
  reject*: QProgressDialogrejectProc
  keyPressEvent*: QProgressDialogkeyPressEventProc
  contextMenuEvent*: QProgressDialogcontextMenuEventProc
  eventFilter*: QProgressDialogeventFilterProc
  devType*: QProgressDialogdevTypeProc
  heightForWidth*: QProgressDialogheightForWidthProc
  hasHeightForWidth*: QProgressDialoghasHeightForWidthProc
  paintEngine*: QProgressDialogpaintEngineProc
  event*: QProgressDialogeventProc
  mousePressEvent*: QProgressDialogmousePressEventProc
  mouseReleaseEvent*: QProgressDialogmouseReleaseEventProc
  mouseDoubleClickEvent*: QProgressDialogmouseDoubleClickEventProc
  mouseMoveEvent*: QProgressDialogmouseMoveEventProc
  wheelEvent*: QProgressDialogwheelEventProc
  keyReleaseEvent*: QProgressDialogkeyReleaseEventProc
  focusInEvent*: QProgressDialogfocusInEventProc
  focusOutEvent*: QProgressDialogfocusOutEventProc
  enterEvent*: QProgressDialogenterEventProc
  leaveEvent*: QProgressDialogleaveEventProc
  paintEvent*: QProgressDialogpaintEventProc
  moveEvent*: QProgressDialogmoveEventProc
  tabletEvent*: QProgressDialogtabletEventProc
  actionEvent*: QProgressDialogactionEventProc
  dragEnterEvent*: QProgressDialogdragEnterEventProc
  dragMoveEvent*: QProgressDialogdragMoveEventProc
  dragLeaveEvent*: QProgressDialogdragLeaveEventProc
  dropEvent*: QProgressDialogdropEventProc
  hideEvent*: QProgressDialoghideEventProc
  nativeEvent*: QProgressDialognativeEventProc
  metric*: QProgressDialogmetricProc
  initPainter*: QProgressDialoginitPainterProc
  redirected*: QProgressDialogredirectedProc
  sharedPainter*: QProgressDialogsharedPainterProc
  inputMethodEvent*: QProgressDialoginputMethodEventProc
  inputMethodQuery*: QProgressDialoginputMethodQueryProc
  focusNextPrevChild*: QProgressDialogfocusNextPrevChildProc
  timerEvent*: QProgressDialogtimerEventProc
  childEvent*: QProgressDialogchildEventProc
  customEvent*: QProgressDialogcustomEventProc
  connectNotify*: QProgressDialogconnectNotifyProc
  disconnectNotify*: QProgressDialogdisconnectNotifyProc
proc QProgressDialogmetaObject*(self: gen_qprogressdialog_types.QProgressDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressDialog_virtualbase_metaObject(self.h), owned: false)

proc cQProgressDialog_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressDialogmetacast*(self: gen_qprogressdialog_types.QProgressDialog, param1: cstring): pointer =
  fcQProgressDialog_virtualbase_metacast(self.h, param1)

proc cQProgressDialog_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QProgressDialogmetacall*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQProgressDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQProgressDialog_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QProgressDialogsizeHint*(self: gen_qprogressdialog_types.QProgressDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressDialog_virtualbase_sizeHint(self.h), owned: true)

proc cQProgressDialog_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressDialogresizeEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QResizeEvent): void =
  fcQProgressDialog_virtualbase_resizeEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QProgressDialogcloseEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QCloseEvent): void =
  fcQProgressDialog_virtualbase_closeEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QProgressDialogchangeEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQProgressDialog_virtualbase_changeEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QProgressDialogshowEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QShowEvent): void =
  fcQProgressDialog_virtualbase_showEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QProgressDialogsetVisible*(self: gen_qprogressdialog_types.QProgressDialog, visible: bool): void =
  fcQProgressDialog_virtualbase_setVisible(self.h, visible)

proc cQProgressDialog_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QProgressDialogminimumSizeHint*(self: gen_qprogressdialog_types.QProgressDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressDialog_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQProgressDialog_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressDialogopen*(self: gen_qprogressdialog_types.QProgressDialog): void =
  fcQProgressDialog_virtualbase_open(self.h)

proc cQProgressDialog_vtable_callback_open(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  vtbl[].open(self)

proc QProgressDialogexec*(self: gen_qprogressdialog_types.QProgressDialog): cint =
  fcQProgressDialog_virtualbase_exec(self.h)

proc cQProgressDialog_vtable_callback_exec(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QProgressDialogdone*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint): void =
  fcQProgressDialog_virtualbase_done(self.h, param1)

proc cQProgressDialog_vtable_callback_done(self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = param1
  vtbl[].done(self, slotval1)

proc QProgressDialogaccept*(self: gen_qprogressdialog_types.QProgressDialog): void =
  fcQProgressDialog_virtualbase_accept(self.h)

proc cQProgressDialog_vtable_callback_accept(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  vtbl[].accept(self)

proc QProgressDialogreject*(self: gen_qprogressdialog_types.QProgressDialog): void =
  fcQProgressDialog_virtualbase_reject(self.h)

proc cQProgressDialog_vtable_callback_reject(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  vtbl[].reject(self)

proc QProgressDialogkeyPressEvent*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQProgressDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc cQProgressDialog_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QProgressDialogcontextMenuEvent*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQProgressDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQProgressDialog_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QProgressDialogeventFilter*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQProgressDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQProgressDialog_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QProgressDialogdevType*(self: gen_qprogressdialog_types.QProgressDialog): cint =
  fcQProgressDialog_virtualbase_devType(self.h)

proc cQProgressDialog_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QProgressDialogheightForWidth*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint): cint =
  fcQProgressDialog_virtualbase_heightForWidth(self.h, param1)

proc cQProgressDialog_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QProgressDialoghasHeightForWidth*(self: gen_qprogressdialog_types.QProgressDialog): bool =
  fcQProgressDialog_virtualbase_hasHeightForWidth(self.h)

proc cQProgressDialog_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QProgressDialogpaintEngine*(self: gen_qprogressdialog_types.QProgressDialog): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQProgressDialog_virtualbase_paintEngine(self.h), owned: false)

proc cQProgressDialog_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressDialogevent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQProgressDialog_virtualbase_event(self.h, event.h)

proc cQProgressDialog_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QProgressDialogmousePressEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressDialog_virtualbase_mousePressEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QProgressDialogmouseReleaseEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QProgressDialogmouseDoubleClickEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QProgressDialogmouseMoveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QProgressDialogwheelEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQProgressDialog_virtualbase_wheelEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QProgressDialogkeyReleaseEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQProgressDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QProgressDialogfocusInEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQProgressDialog_virtualbase_focusInEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QProgressDialogfocusOutEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQProgressDialog_virtualbase_focusOutEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QProgressDialogenterEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QEnterEvent): void =
  fcQProgressDialog_virtualbase_enterEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QProgressDialogleaveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQProgressDialog_virtualbase_leaveEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QProgressDialogpaintEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQProgressDialog_virtualbase_paintEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QProgressDialogmoveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQProgressDialog_virtualbase_moveEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QProgressDialogtabletEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQProgressDialog_virtualbase_tabletEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QProgressDialogactionEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QActionEvent): void =
  fcQProgressDialog_virtualbase_actionEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QProgressDialogdragEnterEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQProgressDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QProgressDialogdragMoveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQProgressDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QProgressDialogdragLeaveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQProgressDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QProgressDialogdropEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QDropEvent): void =
  fcQProgressDialog_virtualbase_dropEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QProgressDialoghideEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QHideEvent): void =
  fcQProgressDialog_virtualbase_hideEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QProgressDialognativeEvent*(self: gen_qprogressdialog_types.QProgressDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQProgressDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQProgressDialog_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QProgressDialogmetric*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint): cint =
  fcQProgressDialog_virtualbase_metric(self.h, cint(param1))

proc cQProgressDialog_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QProgressDialoginitPainter*(self: gen_qprogressdialog_types.QProgressDialog, painter: gen_qpainter_types.QPainter): void =
  fcQProgressDialog_virtualbase_initPainter(self.h, painter.h)

proc cQProgressDialog_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QProgressDialogredirected*(self: gen_qprogressdialog_types.QProgressDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQProgressDialog_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQProgressDialog_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressDialogsharedPainter*(self: gen_qprogressdialog_types.QProgressDialog): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQProgressDialog_virtualbase_sharedPainter(self.h), owned: false)

proc cQProgressDialog_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressDialoginputMethodEvent*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQProgressDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQProgressDialog_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QProgressDialoginputMethodQuery*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQProgressDialog_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQProgressDialog_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressDialogfocusNextPrevChild*(self: gen_qprogressdialog_types.QProgressDialog, next: bool): bool =
  fcQProgressDialog_virtualbase_focusNextPrevChild(self.h, next)

proc cQProgressDialog_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QProgressDialogtimerEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQProgressDialog_virtualbase_timerEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QProgressDialogchildEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQProgressDialog_virtualbase_childEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QProgressDialogcustomEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQProgressDialog_virtualbase_customEvent(self.h, event.h)

proc cQProgressDialog_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QProgressDialogconnectNotify*(self: gen_qprogressdialog_types.QProgressDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQProgressDialog_virtualbase_connectNotify(self.h, signal.h)

proc cQProgressDialog_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QProgressDialogdisconnectNotify*(self: gen_qprogressdialog_types.QProgressDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQProgressDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc cQProgressDialog_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](fcQProgressDialog_vdata(self))
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQProgressDialog* {.inheritable.} = ref object of QProgressDialog
  vtbl*: cQProgressDialogVTable
method metaObject*(self: VirtualQProgressDialog): gen_qobjectdefs_types.QMetaObject {.base.} =
  QProgressDialogmetaObject(self[])
proc cQProgressDialog_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQProgressDialog, param1: cstring): pointer {.base.} =
  QProgressDialogmetacast(self[], param1)
proc cQProgressDialog_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQProgressDialog, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QProgressDialogmetacall(self[], param1, param2, param3)
proc cQProgressDialog_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQProgressDialog): gen_qsize_types.QSize {.base.} =
  QProgressDialogsizeHint(self[])
proc cQProgressDialog_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method resizeEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QProgressDialogresizeEvent(self[], event)
proc cQProgressDialog_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QProgressDialogcloseEvent(self[], event)
proc cQProgressDialog_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method changeEvent*(self: VirtualQProgressDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QProgressDialogchangeEvent(self[], event)
proc cQProgressDialog_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

method showEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QShowEvent): void {.base.} =
  QProgressDialogshowEvent(self[], event)
proc cQProgressDialog_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method setVisible*(self: VirtualQProgressDialog, visible: bool): void {.base.} =
  QProgressDialogsetVisible(self[], visible)
proc cQProgressDialog_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method minimumSizeHint*(self: VirtualQProgressDialog): gen_qsize_types.QSize {.base.} =
  QProgressDialogminimumSizeHint(self[])
proc cQProgressDialog_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method open*(self: VirtualQProgressDialog): void {.base.} =
  QProgressDialogopen(self[])
proc cQProgressDialog_method_callback_open(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  inst.open()

method exec*(self: VirtualQProgressDialog): cint {.base.} =
  QProgressDialogexec(self[])
proc cQProgressDialog_method_callback_exec(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  var virtualReturn = inst.exec()
  virtualReturn

method done*(self: VirtualQProgressDialog, param1: cint): void {.base.} =
  QProgressDialogdone(self[], param1)
proc cQProgressDialog_method_callback_done(self: pointer, param1: cint): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = param1
  inst.done(slotval1)

method accept*(self: VirtualQProgressDialog): void {.base.} =
  QProgressDialogaccept(self[])
proc cQProgressDialog_method_callback_accept(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  inst.accept()

method reject*(self: VirtualQProgressDialog): void {.base.} =
  QProgressDialogreject(self[])
proc cQProgressDialog_method_callback_reject(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  inst.reject()

method keyPressEvent*(self: VirtualQProgressDialog, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QProgressDialogkeyPressEvent(self[], param1)
proc cQProgressDialog_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method contextMenuEvent*(self: VirtualQProgressDialog, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QProgressDialogcontextMenuEvent(self[], param1)
proc cQProgressDialog_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method eventFilter*(self: VirtualQProgressDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QProgressDialogeventFilter(self[], param1, param2)
proc cQProgressDialog_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method devType*(self: VirtualQProgressDialog): cint {.base.} =
  QProgressDialogdevType(self[])
proc cQProgressDialog_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method heightForWidth*(self: VirtualQProgressDialog, param1: cint): cint {.base.} =
  QProgressDialogheightForWidth(self[], param1)
proc cQProgressDialog_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQProgressDialog): bool {.base.} =
  QProgressDialoghasHeightForWidth(self[])
proc cQProgressDialog_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQProgressDialog): gen_qpaintengine_types.QPaintEngine {.base.} =
  QProgressDialogpaintEngine(self[])
proc cQProgressDialog_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQProgressDialog, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QProgressDialogevent(self[], event)
proc cQProgressDialog_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QProgressDialogmousePressEvent(self[], event)
proc cQProgressDialog_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QProgressDialogmouseReleaseEvent(self[], event)
proc cQProgressDialog_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QProgressDialogmouseDoubleClickEvent(self[], event)
proc cQProgressDialog_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QProgressDialogmouseMoveEvent(self[], event)
proc cQProgressDialog_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QProgressDialogwheelEvent(self[], event)
proc cQProgressDialog_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QProgressDialogkeyReleaseEvent(self[], event)
proc cQProgressDialog_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QProgressDialogfocusInEvent(self[], event)
proc cQProgressDialog_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QProgressDialogfocusOutEvent(self[], event)
proc cQProgressDialog_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QProgressDialogenterEvent(self[], event)
proc cQProgressDialog_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQProgressDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QProgressDialogleaveEvent(self[], event)
proc cQProgressDialog_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QProgressDialogpaintEvent(self[], event)
proc cQProgressDialog_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QProgressDialogmoveEvent(self[], event)
proc cQProgressDialog_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QProgressDialogtabletEvent(self[], event)
proc cQProgressDialog_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QActionEvent): void {.base.} =
  QProgressDialogactionEvent(self[], event)
proc cQProgressDialog_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QProgressDialogdragEnterEvent(self[], event)
proc cQProgressDialog_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QProgressDialogdragMoveEvent(self[], event)
proc cQProgressDialog_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QProgressDialogdragLeaveEvent(self[], event)
proc cQProgressDialog_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QDropEvent): void {.base.} =
  QProgressDialogdropEvent(self[], event)
proc cQProgressDialog_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method hideEvent*(self: VirtualQProgressDialog, event: gen_qevent_types.QHideEvent): void {.base.} =
  QProgressDialoghideEvent(self[], event)
proc cQProgressDialog_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQProgressDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QProgressDialognativeEvent(self[], eventType, message, resultVal)
proc cQProgressDialog_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQProgressDialog, param1: cint): cint {.base.} =
  QProgressDialogmetric(self[], param1)
proc cQProgressDialog_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQProgressDialog, painter: gen_qpainter_types.QPainter): void {.base.} =
  QProgressDialoginitPainter(self[], painter)
proc cQProgressDialog_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQProgressDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QProgressDialogredirected(self[], offset)
proc cQProgressDialog_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQProgressDialog): gen_qpainter_types.QPainter {.base.} =
  QProgressDialogsharedPainter(self[])
proc cQProgressDialog_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQProgressDialog, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QProgressDialoginputMethodEvent(self[], param1)
proc cQProgressDialog_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQProgressDialog, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QProgressDialoginputMethodQuery(self[], param1)
proc cQProgressDialog_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQProgressDialog, next: bool): bool {.base.} =
  QProgressDialogfocusNextPrevChild(self[], next)
proc cQProgressDialog_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQProgressDialog, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QProgressDialogtimerEvent(self[], event)
proc cQProgressDialog_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQProgressDialog, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QProgressDialogchildEvent(self[], event)
proc cQProgressDialog_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQProgressDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QProgressDialogcustomEvent(self[], event)
proc cQProgressDialog_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQProgressDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QProgressDialogconnectNotify(self[], signal)
proc cQProgressDialog_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQProgressDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QProgressDialogdisconnectNotify(self[], signal)
proc cQProgressDialog_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressDialog](fcQProgressDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc forceShow*(self: gen_qprogressdialog_types.QProgressDialog): void =
  fcQProgressDialog_protectedbase_forceShow(self.h)

proc adjustPosition*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qwidget_types.QWidget): void =
  fcQProgressDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qprogressdialog_types.QProgressDialog): void =
  fcQProgressDialog_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qprogressdialog_types.QProgressDialog): void =
  fcQProgressDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qprogressdialog_types.QProgressDialog): void =
  fcQProgressDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qprogressdialog_types.QProgressDialog): bool =
  fcQProgressDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qprogressdialog_types.QProgressDialog): bool =
  fcQProgressDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qprogressdialog_types.QProgressDialog): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQProgressDialog_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qprogressdialog_types.QProgressDialog): cint =
  fcQProgressDialog_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qprogressdialog_types.QProgressDialog, signal: cstring): cint =
  fcQProgressDialog_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qprogressdialog_types.QProgressDialog, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQProgressDialog_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QProgressDialogVTable = nil): gen_qprogressdialog_types.QProgressDialog =
  let vtbl = if vtbl == nil: new QProgressDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QProgressDialogVTable](fcQProgressDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQProgressDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQProgressDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQProgressDialog_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQProgressDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQProgressDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQProgressDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQProgressDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQProgressDialog_vtable_callback_showEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQProgressDialog_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQProgressDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQProgressDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQProgressDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQProgressDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQProgressDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQProgressDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQProgressDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQProgressDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQProgressDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQProgressDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQProgressDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQProgressDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQProgressDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQProgressDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQProgressDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQProgressDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQProgressDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQProgressDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQProgressDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQProgressDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQProgressDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQProgressDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQProgressDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQProgressDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQProgressDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQProgressDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQProgressDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQProgressDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQProgressDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQProgressDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQProgressDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQProgressDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQProgressDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQProgressDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQProgressDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQProgressDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQProgressDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQProgressDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQProgressDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQProgressDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQProgressDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQProgressDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQProgressDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQProgressDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQProgressDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQProgressDialog_vtable_callback_disconnectNotify
  gen_qprogressdialog_types.QProgressDialog(h: fcQProgressDialog_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    vtbl: ref QProgressDialogVTable = nil): gen_qprogressdialog_types.QProgressDialog =
  let vtbl = if vtbl == nil: new QProgressDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QProgressDialogVTable](fcQProgressDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQProgressDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQProgressDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQProgressDialog_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQProgressDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQProgressDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQProgressDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQProgressDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQProgressDialog_vtable_callback_showEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQProgressDialog_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQProgressDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQProgressDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQProgressDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQProgressDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQProgressDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQProgressDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQProgressDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQProgressDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQProgressDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQProgressDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQProgressDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQProgressDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQProgressDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQProgressDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQProgressDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQProgressDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQProgressDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQProgressDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQProgressDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQProgressDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQProgressDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQProgressDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQProgressDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQProgressDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQProgressDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQProgressDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQProgressDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQProgressDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQProgressDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQProgressDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQProgressDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQProgressDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQProgressDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQProgressDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQProgressDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQProgressDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQProgressDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQProgressDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQProgressDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQProgressDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQProgressDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQProgressDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQProgressDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQProgressDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQProgressDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQProgressDialog_vtable_callback_disconnectNotify
  gen_qprogressdialog_types.QProgressDialog(h: fcQProgressDialog_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    labelText: string, cancelButtonText: string, minimum: cint, maximum: cint,
    vtbl: ref QProgressDialogVTable = nil): gen_qprogressdialog_types.QProgressDialog =
  let vtbl = if vtbl == nil: new QProgressDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QProgressDialogVTable](fcQProgressDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQProgressDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQProgressDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQProgressDialog_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQProgressDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQProgressDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQProgressDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQProgressDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQProgressDialog_vtable_callback_showEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQProgressDialog_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQProgressDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQProgressDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQProgressDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQProgressDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQProgressDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQProgressDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQProgressDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQProgressDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQProgressDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQProgressDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQProgressDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQProgressDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQProgressDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQProgressDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQProgressDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQProgressDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQProgressDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQProgressDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQProgressDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQProgressDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQProgressDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQProgressDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQProgressDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQProgressDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQProgressDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQProgressDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQProgressDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQProgressDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQProgressDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQProgressDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQProgressDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQProgressDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQProgressDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQProgressDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQProgressDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQProgressDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQProgressDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQProgressDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQProgressDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQProgressDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQProgressDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQProgressDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQProgressDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQProgressDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQProgressDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQProgressDialog_vtable_callback_disconnectNotify
  gen_qprogressdialog_types.QProgressDialog(h: fcQProgressDialog_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum), owned: true)

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QProgressDialogVTable = nil): gen_qprogressdialog_types.QProgressDialog =
  let vtbl = if vtbl == nil: new QProgressDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QProgressDialogVTable](fcQProgressDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQProgressDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQProgressDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQProgressDialog_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQProgressDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQProgressDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQProgressDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQProgressDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQProgressDialog_vtable_callback_showEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQProgressDialog_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQProgressDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQProgressDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQProgressDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQProgressDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQProgressDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQProgressDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQProgressDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQProgressDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQProgressDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQProgressDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQProgressDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQProgressDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQProgressDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQProgressDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQProgressDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQProgressDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQProgressDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQProgressDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQProgressDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQProgressDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQProgressDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQProgressDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQProgressDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQProgressDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQProgressDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQProgressDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQProgressDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQProgressDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQProgressDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQProgressDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQProgressDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQProgressDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQProgressDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQProgressDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQProgressDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQProgressDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQProgressDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQProgressDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQProgressDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQProgressDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQProgressDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQProgressDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQProgressDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQProgressDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQProgressDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQProgressDialog_vtable_callback_disconnectNotify
  gen_qprogressdialog_types.QProgressDialog(h: fcQProgressDialog_new4(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(flags)), owned: true)

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    labelText: string, cancelButtonText: string, minimum: cint, maximum: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QProgressDialogVTable = nil): gen_qprogressdialog_types.QProgressDialog =
  let vtbl = if vtbl == nil: new QProgressDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QProgressDialogVTable](fcQProgressDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQProgressDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQProgressDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQProgressDialog_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQProgressDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQProgressDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQProgressDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQProgressDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQProgressDialog_vtable_callback_showEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQProgressDialog_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQProgressDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQProgressDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQProgressDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQProgressDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQProgressDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQProgressDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQProgressDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQProgressDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQProgressDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQProgressDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQProgressDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQProgressDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQProgressDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQProgressDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQProgressDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQProgressDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQProgressDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQProgressDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQProgressDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQProgressDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQProgressDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQProgressDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQProgressDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQProgressDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQProgressDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQProgressDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQProgressDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQProgressDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQProgressDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQProgressDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQProgressDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQProgressDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQProgressDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQProgressDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQProgressDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQProgressDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQProgressDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQProgressDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQProgressDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQProgressDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQProgressDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQProgressDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQProgressDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQProgressDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQProgressDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQProgressDialog_vtable_callback_disconnectNotify
  gen_qprogressdialog_types.QProgressDialog(h: fcQProgressDialog_new5(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum, parent.h), owned: true)

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    labelText: string, cancelButtonText: string, minimum: cint, maximum: cint, parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QProgressDialogVTable = nil): gen_qprogressdialog_types.QProgressDialog =
  let vtbl = if vtbl == nil: new QProgressDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QProgressDialogVTable](fcQProgressDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQProgressDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQProgressDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQProgressDialog_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQProgressDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQProgressDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQProgressDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQProgressDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQProgressDialog_vtable_callback_showEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQProgressDialog_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQProgressDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQProgressDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQProgressDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQProgressDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQProgressDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQProgressDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQProgressDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQProgressDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQProgressDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQProgressDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQProgressDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQProgressDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQProgressDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQProgressDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQProgressDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQProgressDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQProgressDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQProgressDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQProgressDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQProgressDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQProgressDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQProgressDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQProgressDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQProgressDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQProgressDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQProgressDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQProgressDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQProgressDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQProgressDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQProgressDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQProgressDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQProgressDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQProgressDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQProgressDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQProgressDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQProgressDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQProgressDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQProgressDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQProgressDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQProgressDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQProgressDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQProgressDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQProgressDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQProgressDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQProgressDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQProgressDialog_vtable_callback_disconnectNotify
  gen_qprogressdialog_types.QProgressDialog(h: fcQProgressDialog_new6(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum, parent.h, cint(flags)), owned: true)

const cQProgressDialog_mvtbl = cQProgressDialogVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQProgressDialog()[])](self.fcQProgressDialog_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQProgressDialog_method_callback_metaObject,
  metacast: cQProgressDialog_method_callback_metacast,
  metacall: cQProgressDialog_method_callback_metacall,
  sizeHint: cQProgressDialog_method_callback_sizeHint,
  resizeEvent: cQProgressDialog_method_callback_resizeEvent,
  closeEvent: cQProgressDialog_method_callback_closeEvent,
  changeEvent: cQProgressDialog_method_callback_changeEvent,
  showEvent: cQProgressDialog_method_callback_showEvent,
  setVisible: cQProgressDialog_method_callback_setVisible,
  minimumSizeHint: cQProgressDialog_method_callback_minimumSizeHint,
  open: cQProgressDialog_method_callback_open,
  exec: cQProgressDialog_method_callback_exec,
  done: cQProgressDialog_method_callback_done,
  accept: cQProgressDialog_method_callback_accept,
  reject: cQProgressDialog_method_callback_reject,
  keyPressEvent: cQProgressDialog_method_callback_keyPressEvent,
  contextMenuEvent: cQProgressDialog_method_callback_contextMenuEvent,
  eventFilter: cQProgressDialog_method_callback_eventFilter,
  devType: cQProgressDialog_method_callback_devType,
  heightForWidth: cQProgressDialog_method_callback_heightForWidth,
  hasHeightForWidth: cQProgressDialog_method_callback_hasHeightForWidth,
  paintEngine: cQProgressDialog_method_callback_paintEngine,
  event: cQProgressDialog_method_callback_event,
  mousePressEvent: cQProgressDialog_method_callback_mousePressEvent,
  mouseReleaseEvent: cQProgressDialog_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQProgressDialog_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQProgressDialog_method_callback_mouseMoveEvent,
  wheelEvent: cQProgressDialog_method_callback_wheelEvent,
  keyReleaseEvent: cQProgressDialog_method_callback_keyReleaseEvent,
  focusInEvent: cQProgressDialog_method_callback_focusInEvent,
  focusOutEvent: cQProgressDialog_method_callback_focusOutEvent,
  enterEvent: cQProgressDialog_method_callback_enterEvent,
  leaveEvent: cQProgressDialog_method_callback_leaveEvent,
  paintEvent: cQProgressDialog_method_callback_paintEvent,
  moveEvent: cQProgressDialog_method_callback_moveEvent,
  tabletEvent: cQProgressDialog_method_callback_tabletEvent,
  actionEvent: cQProgressDialog_method_callback_actionEvent,
  dragEnterEvent: cQProgressDialog_method_callback_dragEnterEvent,
  dragMoveEvent: cQProgressDialog_method_callback_dragMoveEvent,
  dragLeaveEvent: cQProgressDialog_method_callback_dragLeaveEvent,
  dropEvent: cQProgressDialog_method_callback_dropEvent,
  hideEvent: cQProgressDialog_method_callback_hideEvent,
  nativeEvent: cQProgressDialog_method_callback_nativeEvent,
  metric: cQProgressDialog_method_callback_metric,
  initPainter: cQProgressDialog_method_callback_initPainter,
  redirected: cQProgressDialog_method_callback_redirected,
  sharedPainter: cQProgressDialog_method_callback_sharedPainter,
  inputMethodEvent: cQProgressDialog_method_callback_inputMethodEvent,
  inputMethodQuery: cQProgressDialog_method_callback_inputMethodQuery,
  focusNextPrevChild: cQProgressDialog_method_callback_focusNextPrevChild,
  timerEvent: cQProgressDialog_method_callback_timerEvent,
  childEvent: cQProgressDialog_method_callback_childEvent,
  customEvent: cQProgressDialog_method_callback_customEvent,
  connectNotify: cQProgressDialog_method_callback_connectNotify,
  disconnectNotify: cQProgressDialog_method_callback_disconnectNotify,
)
proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQProgressDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQProgressDialog_new(addr(cQProgressDialog_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    inst: VirtualQProgressDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQProgressDialog_new2(addr(cQProgressDialog_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    labelText: string, cancelButtonText: string, minimum: cint, maximum: cint,
    inst: VirtualQProgressDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQProgressDialog_new3(addr(cQProgressDialog_mvtbl), addr(inst[]), struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum)
  inst[].owned = true

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQProgressDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQProgressDialog_new4(addr(cQProgressDialog_mvtbl), addr(inst[]), parent.h, cint(flags))
  inst[].owned = true

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    labelText: string, cancelButtonText: string, minimum: cint, maximum: cint, parent: gen_qwidget_types.QWidget,
    inst: VirtualQProgressDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQProgressDialog_new5(addr(cQProgressDialog_mvtbl), addr(inst[]), struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum, parent.h)
  inst[].owned = true

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    labelText: string, cancelButtonText: string, minimum: cint, maximum: cint, parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQProgressDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQProgressDialog_new6(addr(cQProgressDialog_mvtbl), addr(inst[]), struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum, parent.h, cint(flags))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qprogressdialog_types.QProgressDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressDialog_staticMetaObject())
