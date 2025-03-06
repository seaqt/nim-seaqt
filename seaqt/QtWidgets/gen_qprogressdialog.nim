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

proc fcQProgressDialog_metaObject(self: pointer, ): pointer {.importc: "QProgressDialog_metaObject".}
proc fcQProgressDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QProgressDialog_metacast".}
proc fcQProgressDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProgressDialog_metacall".}
proc fcQProgressDialog_tr(s: cstring): struct_miqt_string {.importc: "QProgressDialog_tr".}
proc fcQProgressDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QProgressDialog_trUtf8".}
proc fcQProgressDialog_setLabel(self: pointer, label: pointer): void {.importc: "QProgressDialog_setLabel".}
proc fcQProgressDialog_setCancelButton(self: pointer, button: pointer): void {.importc: "QProgressDialog_setCancelButton".}
proc fcQProgressDialog_setBar(self: pointer, bar: pointer): void {.importc: "QProgressDialog_setBar".}
proc fcQProgressDialog_wasCanceled(self: pointer, ): bool {.importc: "QProgressDialog_wasCanceled".}
proc fcQProgressDialog_minimum(self: pointer, ): cint {.importc: "QProgressDialog_minimum".}
proc fcQProgressDialog_maximum(self: pointer, ): cint {.importc: "QProgressDialog_maximum".}
proc fcQProgressDialog_value(self: pointer, ): cint {.importc: "QProgressDialog_value".}
proc fcQProgressDialog_sizeHint(self: pointer, ): pointer {.importc: "QProgressDialog_sizeHint".}
proc fcQProgressDialog_labelText(self: pointer, ): struct_miqt_string {.importc: "QProgressDialog_labelText".}
proc fcQProgressDialog_minimumDuration(self: pointer, ): cint {.importc: "QProgressDialog_minimumDuration".}
proc fcQProgressDialog_setAutoReset(self: pointer, reset: bool): void {.importc: "QProgressDialog_setAutoReset".}
proc fcQProgressDialog_autoReset(self: pointer, ): bool {.importc: "QProgressDialog_autoReset".}
proc fcQProgressDialog_setAutoClose(self: pointer, close: bool): void {.importc: "QProgressDialog_setAutoClose".}
proc fcQProgressDialog_autoClose(self: pointer, ): bool {.importc: "QProgressDialog_autoClose".}
proc fcQProgressDialog_cancel(self: pointer, ): void {.importc: "QProgressDialog_cancel".}
proc fcQProgressDialog_reset(self: pointer, ): void {.importc: "QProgressDialog_reset".}
proc fcQProgressDialog_setMaximum(self: pointer, maximum: cint): void {.importc: "QProgressDialog_setMaximum".}
proc fcQProgressDialog_setMinimum(self: pointer, minimum: cint): void {.importc: "QProgressDialog_setMinimum".}
proc fcQProgressDialog_setRange(self: pointer, minimum: cint, maximum: cint): void {.importc: "QProgressDialog_setRange".}
proc fcQProgressDialog_setValue(self: pointer, progress: cint): void {.importc: "QProgressDialog_setValue".}
proc fcQProgressDialog_setLabelText(self: pointer, text: struct_miqt_string): void {.importc: "QProgressDialog_setLabelText".}
proc fcQProgressDialog_setCancelButtonText(self: pointer, text: struct_miqt_string): void {.importc: "QProgressDialog_setCancelButtonText".}
proc fcQProgressDialog_setMinimumDuration(self: pointer, ms: cint): void {.importc: "QProgressDialog_setMinimumDuration".}
proc fcQProgressDialog_canceled(self: pointer, ): void {.importc: "QProgressDialog_canceled".}
proc fcQProgressDialog_connect_canceled(self: pointer, slot: int) {.importc: "QProgressDialog_connect_canceled".}
proc fcQProgressDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QProgressDialog_tr2".}
proc fcQProgressDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProgressDialog_tr3".}
proc fcQProgressDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QProgressDialog_trUtf82".}
proc fcQProgressDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProgressDialog_trUtf83".}
type cQProgressDialogVTable = object
  destructor*: proc(vtbl: ptr cQProgressDialogVTable, self: ptr cQProgressDialog) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  done*: proc(vtbl, self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  accept*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQProgressDialog_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QProgressDialog_virtualbase_metaObject".}
proc fcQProgressDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QProgressDialog_virtualbase_metacast".}
proc fcQProgressDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProgressDialog_virtualbase_metacall".}
proc fcQProgressDialog_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QProgressDialog_virtualbase_sizeHint".}
proc fcQProgressDialog_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_resizeEvent".}
proc fcQProgressDialog_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_closeEvent".}
proc fcQProgressDialog_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_changeEvent".}
proc fcQProgressDialog_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_showEvent".}
proc fcQProgressDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QProgressDialog_virtualbase_setVisible".}
proc fcQProgressDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QProgressDialog_virtualbase_minimumSizeHint".}
proc fcQProgressDialog_virtualbase_open(self: pointer, ): void {.importc: "QProgressDialog_virtualbase_open".}
proc fcQProgressDialog_virtualbase_exec(self: pointer, ): cint {.importc: "QProgressDialog_virtualbase_exec".}
proc fcQProgressDialog_virtualbase_done(self: pointer, param1: cint): void {.importc: "QProgressDialog_virtualbase_done".}
proc fcQProgressDialog_virtualbase_accept(self: pointer, ): void {.importc: "QProgressDialog_virtualbase_accept".}
proc fcQProgressDialog_virtualbase_reject(self: pointer, ): void {.importc: "QProgressDialog_virtualbase_reject".}
proc fcQProgressDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QProgressDialog_virtualbase_keyPressEvent".}
proc fcQProgressDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QProgressDialog_virtualbase_contextMenuEvent".}
proc fcQProgressDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QProgressDialog_virtualbase_eventFilter".}
proc fcQProgressDialog_virtualbase_devType(self: pointer, ): cint {.importc: "QProgressDialog_virtualbase_devType".}
proc fcQProgressDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QProgressDialog_virtualbase_heightForWidth".}
proc fcQProgressDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QProgressDialog_virtualbase_hasHeightForWidth".}
proc fcQProgressDialog_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QProgressDialog_virtualbase_paintEngine".}
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
proc fcQProgressDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QProgressDialog_virtualbase_nativeEvent".}
proc fcQProgressDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QProgressDialog_virtualbase_metric".}
proc fcQProgressDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QProgressDialog_virtualbase_initPainter".}
proc fcQProgressDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QProgressDialog_virtualbase_redirected".}
proc fcQProgressDialog_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QProgressDialog_virtualbase_sharedPainter".}
proc fcQProgressDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QProgressDialog_virtualbase_inputMethodEvent".}
proc fcQProgressDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QProgressDialog_virtualbase_inputMethodQuery".}
proc fcQProgressDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QProgressDialog_virtualbase_focusNextPrevChild".}
proc fcQProgressDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_timerEvent".}
proc fcQProgressDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_childEvent".}
proc fcQProgressDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QProgressDialog_virtualbase_customEvent".}
proc fcQProgressDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QProgressDialog_virtualbase_connectNotify".}
proc fcQProgressDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QProgressDialog_virtualbase_disconnectNotify".}
proc fcQProgressDialog_new(vtbl: pointer, parent: pointer): ptr cQProgressDialog {.importc: "QProgressDialog_new".}
proc fcQProgressDialog_new2(vtbl: pointer, ): ptr cQProgressDialog {.importc: "QProgressDialog_new2".}
proc fcQProgressDialog_new3(vtbl: pointer, labelText: struct_miqt_string, cancelButtonText: struct_miqt_string, minimum: cint, maximum: cint): ptr cQProgressDialog {.importc: "QProgressDialog_new3".}
proc fcQProgressDialog_new4(vtbl: pointer, parent: pointer, flags: cint): ptr cQProgressDialog {.importc: "QProgressDialog_new4".}
proc fcQProgressDialog_new5(vtbl: pointer, labelText: struct_miqt_string, cancelButtonText: struct_miqt_string, minimum: cint, maximum: cint, parent: pointer): ptr cQProgressDialog {.importc: "QProgressDialog_new5".}
proc fcQProgressDialog_new6(vtbl: pointer, labelText: struct_miqt_string, cancelButtonText: struct_miqt_string, minimum: cint, maximum: cint, parent: pointer, flags: cint): ptr cQProgressDialog {.importc: "QProgressDialog_new6".}
proc fcQProgressDialog_staticMetaObject(): pointer {.importc: "QProgressDialog_staticMetaObject".}
proc fcQProgressDialog_delete(self: pointer) {.importc: "QProgressDialog_delete".}

proc metaObject*(self: gen_qprogressdialog_types.QProgressDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressDialog_metaObject(self.h))

proc metacast*(self: gen_qprogressdialog_types.QProgressDialog, param1: cstring): pointer =
  fcQProgressDialog_metacast(self.h, param1)

proc metacall*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQProgressDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qprogressdialog_types.QProgressDialog, s: cstring): string =
  let v_ms = fcQProgressDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprogressdialog_types.QProgressDialog, s: cstring): string =
  let v_ms = fcQProgressDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setLabel*(self: gen_qprogressdialog_types.QProgressDialog, label: gen_qlabel_types.QLabel): void =
  fcQProgressDialog_setLabel(self.h, label.h)

proc setCancelButton*(self: gen_qprogressdialog_types.QProgressDialog, button: gen_qpushbutton_types.QPushButton): void =
  fcQProgressDialog_setCancelButton(self.h, button.h)

proc setBar*(self: gen_qprogressdialog_types.QProgressDialog, bar: gen_qprogressbar_types.QProgressBar): void =
  fcQProgressDialog_setBar(self.h, bar.h)

proc wasCanceled*(self: gen_qprogressdialog_types.QProgressDialog, ): bool =
  fcQProgressDialog_wasCanceled(self.h)

proc minimum*(self: gen_qprogressdialog_types.QProgressDialog, ): cint =
  fcQProgressDialog_minimum(self.h)

proc maximum*(self: gen_qprogressdialog_types.QProgressDialog, ): cint =
  fcQProgressDialog_maximum(self.h)

proc value*(self: gen_qprogressdialog_types.QProgressDialog, ): cint =
  fcQProgressDialog_value(self.h)

proc sizeHint*(self: gen_qprogressdialog_types.QProgressDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressDialog_sizeHint(self.h))

proc labelText*(self: gen_qprogressdialog_types.QProgressDialog, ): string =
  let v_ms = fcQProgressDialog_labelText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc minimumDuration*(self: gen_qprogressdialog_types.QProgressDialog, ): cint =
  fcQProgressDialog_minimumDuration(self.h)

proc setAutoReset*(self: gen_qprogressdialog_types.QProgressDialog, reset: bool): void =
  fcQProgressDialog_setAutoReset(self.h, reset)

proc autoReset*(self: gen_qprogressdialog_types.QProgressDialog, ): bool =
  fcQProgressDialog_autoReset(self.h)

proc setAutoClose*(self: gen_qprogressdialog_types.QProgressDialog, close: bool): void =
  fcQProgressDialog_setAutoClose(self.h, close)

proc autoClose*(self: gen_qprogressdialog_types.QProgressDialog, ): bool =
  fcQProgressDialog_autoClose(self.h)

proc cancel*(self: gen_qprogressdialog_types.QProgressDialog, ): void =
  fcQProgressDialog_cancel(self.h)

proc reset*(self: gen_qprogressdialog_types.QProgressDialog, ): void =
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

proc canceled*(self: gen_qprogressdialog_types.QProgressDialog, ): void =
  fcQProgressDialog_canceled(self.h)

type QProgressDialogcanceledSlot* = proc()
proc miqt_exec_callback_cQProgressDialog_canceled(slot: int) {.exportc: "miqt_exec_callback_QProgressDialog_canceled".} =
  let nimfunc = cast[ptr QProgressDialogcanceledSlot](cast[pointer](slot))
  nimfunc[]()

proc oncanceled*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogcanceledSlot) =
  var tmp = new QProgressDialogcanceledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_connect_canceled(self.h, cast[int](addr tmp[]))

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

proc trUtf8*(_: type gen_qprogressdialog_types.QProgressDialog, s: cstring, c: cstring): string =
  let v_ms = fcQProgressDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprogressdialog_types.QProgressDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQProgressDialog_trUtf83(s, c, n)
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
type QProgressDialogenterEventProc* = proc(self: QProgressDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
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
type QProgressDialognativeEventProc* = proc(self: QProgressDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QProgressDialogVTable* = object
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
proc QProgressDialogmetaObject*(self: gen_qprogressdialog_types.QProgressDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressDialog_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQProgressDialog_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QProgressDialogmetacast*(self: gen_qprogressdialog_types.QProgressDialog, param1: cstring): pointer =
  fcQProgressDialog_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQProgressDialog_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QProgressDialogmetacall*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQProgressDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQProgressDialog_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QProgressDialogsizeHint*(self: gen_qprogressdialog_types.QProgressDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressDialog_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQProgressDialog_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QProgressDialogresizeEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QResizeEvent): void =
  fcQProgressDialog_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QProgressDialogcloseEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QCloseEvent): void =
  fcQProgressDialog_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QProgressDialogchangeEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQProgressDialog_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].changeEvent(self, slotval1)

proc QProgressDialogshowEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QShowEvent): void =
  fcQProgressDialog_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QProgressDialogsetVisible*(self: gen_qprogressdialog_types.QProgressDialog, visible: bool): void =
  fcQProgressDialog_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQProgressDialog_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QProgressDialogminimumSizeHint*(self: gen_qprogressdialog_types.QProgressDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressDialog_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQProgressDialog_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QProgressDialogopen*(self: gen_qprogressdialog_types.QProgressDialog, ): void =
  fcQProgressDialog_virtualbase_open(self.h)

proc miqt_exec_callback_cQProgressDialog_open(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  vtbl[].open(self)

proc QProgressDialogexec*(self: gen_qprogressdialog_types.QProgressDialog, ): cint =
  fcQProgressDialog_virtualbase_exec(self.h)

proc miqt_exec_callback_cQProgressDialog_exec(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QProgressDialogdone*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint): void =
  fcQProgressDialog_virtualbase_done(self.h, param1)

proc miqt_exec_callback_cQProgressDialog_done(vtbl: pointer, self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = param1
  vtbl[].done(self, slotval1)

proc QProgressDialogaccept*(self: gen_qprogressdialog_types.QProgressDialog, ): void =
  fcQProgressDialog_virtualbase_accept(self.h)

proc miqt_exec_callback_cQProgressDialog_accept(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  vtbl[].accept(self)

proc QProgressDialogreject*(self: gen_qprogressdialog_types.QProgressDialog, ): void =
  fcQProgressDialog_virtualbase_reject(self.h)

proc miqt_exec_callback_cQProgressDialog_reject(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  vtbl[].reject(self)

proc QProgressDialogkeyPressEvent*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQProgressDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQProgressDialog_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QProgressDialogcontextMenuEvent*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQProgressDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQProgressDialog_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QProgressDialogeventFilter*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQProgressDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQProgressDialog_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QProgressDialogdevType*(self: gen_qprogressdialog_types.QProgressDialog, ): cint =
  fcQProgressDialog_virtualbase_devType(self.h)

proc miqt_exec_callback_cQProgressDialog_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QProgressDialogheightForWidth*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint): cint =
  fcQProgressDialog_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQProgressDialog_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QProgressDialoghasHeightForWidth*(self: gen_qprogressdialog_types.QProgressDialog, ): bool =
  fcQProgressDialog_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQProgressDialog_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QProgressDialogpaintEngine*(self: gen_qprogressdialog_types.QProgressDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQProgressDialog_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQProgressDialog_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QProgressDialogevent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQProgressDialog_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QProgressDialogmousePressEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressDialog_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QProgressDialogmouseReleaseEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QProgressDialogmouseDoubleClickEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QProgressDialogmouseMoveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QProgressDialogwheelEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQProgressDialog_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QProgressDialogkeyReleaseEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQProgressDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QProgressDialogfocusInEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQProgressDialog_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QProgressDialogfocusOutEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQProgressDialog_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QProgressDialogenterEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQProgressDialog_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QProgressDialogleaveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQProgressDialog_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QProgressDialogpaintEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQProgressDialog_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QProgressDialogmoveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQProgressDialog_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QProgressDialogtabletEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQProgressDialog_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QProgressDialogactionEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QActionEvent): void =
  fcQProgressDialog_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QProgressDialogdragEnterEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQProgressDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QProgressDialogdragMoveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQProgressDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QProgressDialogdragLeaveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQProgressDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QProgressDialogdropEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QDropEvent): void =
  fcQProgressDialog_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QProgressDialoghideEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QHideEvent): void =
  fcQProgressDialog_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QProgressDialognativeEvent*(self: gen_qprogressdialog_types.QProgressDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQProgressDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQProgressDialog_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
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

proc miqt_exec_callback_cQProgressDialog_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QProgressDialoginitPainter*(self: gen_qprogressdialog_types.QProgressDialog, painter: gen_qpainter_types.QPainter): void =
  fcQProgressDialog_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQProgressDialog_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QProgressDialogredirected*(self: gen_qprogressdialog_types.QProgressDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQProgressDialog_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQProgressDialog_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QProgressDialogsharedPainter*(self: gen_qprogressdialog_types.QProgressDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQProgressDialog_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQProgressDialog_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QProgressDialoginputMethodEvent*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQProgressDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQProgressDialog_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QProgressDialoginputMethodQuery*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQProgressDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQProgressDialog_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QProgressDialogfocusNextPrevChild*(self: gen_qprogressdialog_types.QProgressDialog, next: bool): bool =
  fcQProgressDialog_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQProgressDialog_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QProgressDialogtimerEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQProgressDialog_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QProgressDialogchildEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQProgressDialog_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QProgressDialogcustomEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQProgressDialog_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressDialog_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QProgressDialogconnectNotify*(self: gen_qprogressdialog_types.QProgressDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQProgressDialog_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQProgressDialog_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QProgressDialogdisconnectNotify*(self: gen_qprogressdialog_types.QProgressDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQProgressDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQProgressDialog_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressDialogVTable](vtbl)
  let self = QProgressDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QProgressDialogVTable = nil): gen_qprogressdialog_types.QProgressDialog =
  let vtbl = if vtbl == nil: new QProgressDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProgressDialogVTable, _: ptr cQProgressDialog) {.cdecl.} =
    let vtbl = cast[ref QProgressDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProgressDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProgressDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProgressDialog_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQProgressDialog_sizeHint
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQProgressDialog_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQProgressDialog_closeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQProgressDialog_changeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQProgressDialog_showEvent
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQProgressDialog_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQProgressDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQProgressDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQProgressDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQProgressDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQProgressDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQProgressDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQProgressDialog_keyPressEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQProgressDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProgressDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQProgressDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQProgressDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQProgressDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQProgressDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProgressDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQProgressDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQProgressDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQProgressDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQProgressDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQProgressDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQProgressDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQProgressDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQProgressDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQProgressDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQProgressDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQProgressDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQProgressDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQProgressDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQProgressDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQProgressDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQProgressDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQProgressDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQProgressDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQProgressDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQProgressDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQProgressDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQProgressDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQProgressDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQProgressDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQProgressDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQProgressDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQProgressDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProgressDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProgressDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProgressDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProgressDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProgressDialog_disconnectNotify
  gen_qprogressdialog_types.QProgressDialog(h: fcQProgressDialog_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    vtbl: ref QProgressDialogVTable = nil): gen_qprogressdialog_types.QProgressDialog =
  let vtbl = if vtbl == nil: new QProgressDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProgressDialogVTable, _: ptr cQProgressDialog) {.cdecl.} =
    let vtbl = cast[ref QProgressDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProgressDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProgressDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProgressDialog_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQProgressDialog_sizeHint
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQProgressDialog_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQProgressDialog_closeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQProgressDialog_changeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQProgressDialog_showEvent
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQProgressDialog_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQProgressDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQProgressDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQProgressDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQProgressDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQProgressDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQProgressDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQProgressDialog_keyPressEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQProgressDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProgressDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQProgressDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQProgressDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQProgressDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQProgressDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProgressDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQProgressDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQProgressDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQProgressDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQProgressDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQProgressDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQProgressDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQProgressDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQProgressDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQProgressDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQProgressDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQProgressDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQProgressDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQProgressDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQProgressDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQProgressDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQProgressDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQProgressDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQProgressDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQProgressDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQProgressDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQProgressDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQProgressDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQProgressDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQProgressDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQProgressDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQProgressDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQProgressDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProgressDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProgressDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProgressDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProgressDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProgressDialog_disconnectNotify
  gen_qprogressdialog_types.QProgressDialog(h: fcQProgressDialog_new2(addr(vtbl[]), ))

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    labelText: string, cancelButtonText: string, minimum: cint, maximum: cint,
    vtbl: ref QProgressDialogVTable = nil): gen_qprogressdialog_types.QProgressDialog =
  let vtbl = if vtbl == nil: new QProgressDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProgressDialogVTable, _: ptr cQProgressDialog) {.cdecl.} =
    let vtbl = cast[ref QProgressDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProgressDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProgressDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProgressDialog_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQProgressDialog_sizeHint
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQProgressDialog_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQProgressDialog_closeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQProgressDialog_changeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQProgressDialog_showEvent
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQProgressDialog_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQProgressDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQProgressDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQProgressDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQProgressDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQProgressDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQProgressDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQProgressDialog_keyPressEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQProgressDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProgressDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQProgressDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQProgressDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQProgressDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQProgressDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProgressDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQProgressDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQProgressDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQProgressDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQProgressDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQProgressDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQProgressDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQProgressDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQProgressDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQProgressDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQProgressDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQProgressDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQProgressDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQProgressDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQProgressDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQProgressDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQProgressDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQProgressDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQProgressDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQProgressDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQProgressDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQProgressDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQProgressDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQProgressDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQProgressDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQProgressDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQProgressDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQProgressDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProgressDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProgressDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProgressDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProgressDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProgressDialog_disconnectNotify
  gen_qprogressdialog_types.QProgressDialog(h: fcQProgressDialog_new3(addr(vtbl[]), struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum))

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QProgressDialogVTable = nil): gen_qprogressdialog_types.QProgressDialog =
  let vtbl = if vtbl == nil: new QProgressDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProgressDialogVTable, _: ptr cQProgressDialog) {.cdecl.} =
    let vtbl = cast[ref QProgressDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProgressDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProgressDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProgressDialog_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQProgressDialog_sizeHint
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQProgressDialog_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQProgressDialog_closeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQProgressDialog_changeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQProgressDialog_showEvent
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQProgressDialog_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQProgressDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQProgressDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQProgressDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQProgressDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQProgressDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQProgressDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQProgressDialog_keyPressEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQProgressDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProgressDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQProgressDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQProgressDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQProgressDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQProgressDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProgressDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQProgressDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQProgressDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQProgressDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQProgressDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQProgressDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQProgressDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQProgressDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQProgressDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQProgressDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQProgressDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQProgressDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQProgressDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQProgressDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQProgressDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQProgressDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQProgressDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQProgressDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQProgressDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQProgressDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQProgressDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQProgressDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQProgressDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQProgressDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQProgressDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQProgressDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQProgressDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQProgressDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProgressDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProgressDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProgressDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProgressDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProgressDialog_disconnectNotify
  gen_qprogressdialog_types.QProgressDialog(h: fcQProgressDialog_new4(addr(vtbl[]), parent.h, cint(flags)))

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    labelText: string, cancelButtonText: string, minimum: cint, maximum: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QProgressDialogVTable = nil): gen_qprogressdialog_types.QProgressDialog =
  let vtbl = if vtbl == nil: new QProgressDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProgressDialogVTable, _: ptr cQProgressDialog) {.cdecl.} =
    let vtbl = cast[ref QProgressDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProgressDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProgressDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProgressDialog_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQProgressDialog_sizeHint
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQProgressDialog_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQProgressDialog_closeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQProgressDialog_changeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQProgressDialog_showEvent
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQProgressDialog_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQProgressDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQProgressDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQProgressDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQProgressDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQProgressDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQProgressDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQProgressDialog_keyPressEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQProgressDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProgressDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQProgressDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQProgressDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQProgressDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQProgressDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProgressDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQProgressDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQProgressDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQProgressDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQProgressDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQProgressDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQProgressDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQProgressDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQProgressDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQProgressDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQProgressDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQProgressDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQProgressDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQProgressDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQProgressDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQProgressDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQProgressDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQProgressDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQProgressDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQProgressDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQProgressDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQProgressDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQProgressDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQProgressDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQProgressDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQProgressDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQProgressDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQProgressDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProgressDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProgressDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProgressDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProgressDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProgressDialog_disconnectNotify
  gen_qprogressdialog_types.QProgressDialog(h: fcQProgressDialog_new5(addr(vtbl[]), struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum, parent.h))

proc create*(T: type gen_qprogressdialog_types.QProgressDialog,
    labelText: string, cancelButtonText: string, minimum: cint, maximum: cint, parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QProgressDialogVTable = nil): gen_qprogressdialog_types.QProgressDialog =
  let vtbl = if vtbl == nil: new QProgressDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProgressDialogVTable, _: ptr cQProgressDialog) {.cdecl.} =
    let vtbl = cast[ref QProgressDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProgressDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProgressDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProgressDialog_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQProgressDialog_sizeHint
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQProgressDialog_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQProgressDialog_closeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQProgressDialog_changeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQProgressDialog_showEvent
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQProgressDialog_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQProgressDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQProgressDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQProgressDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQProgressDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQProgressDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQProgressDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQProgressDialog_keyPressEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQProgressDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProgressDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQProgressDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQProgressDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQProgressDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQProgressDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProgressDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQProgressDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQProgressDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQProgressDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQProgressDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQProgressDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQProgressDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQProgressDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQProgressDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQProgressDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQProgressDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQProgressDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQProgressDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQProgressDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQProgressDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQProgressDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQProgressDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQProgressDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQProgressDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQProgressDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQProgressDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQProgressDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQProgressDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQProgressDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQProgressDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQProgressDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQProgressDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQProgressDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProgressDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProgressDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProgressDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProgressDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProgressDialog_disconnectNotify
  gen_qprogressdialog_types.QProgressDialog(h: fcQProgressDialog_new6(addr(vtbl[]), struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum, parent.h, cint(flags)))

proc staticMetaObject*(_: type gen_qprogressdialog_types.QProgressDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressDialog_staticMetaObject())
proc delete*(self: gen_qprogressdialog_types.QProgressDialog) =
  fcQProgressDialog_delete(self.h)
