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

proc fcQProgressDialog_new(parent: pointer): ptr cQProgressDialog {.importc: "QProgressDialog_new".}
proc fcQProgressDialog_new2(): ptr cQProgressDialog {.importc: "QProgressDialog_new2".}
proc fcQProgressDialog_new3(labelText: struct_miqt_string, cancelButtonText: struct_miqt_string, minimum: cint, maximum: cint): ptr cQProgressDialog {.importc: "QProgressDialog_new3".}
proc fcQProgressDialog_new4(parent: pointer, flags: cint): ptr cQProgressDialog {.importc: "QProgressDialog_new4".}
proc fcQProgressDialog_new5(labelText: struct_miqt_string, cancelButtonText: struct_miqt_string, minimum: cint, maximum: cint, parent: pointer): ptr cQProgressDialog {.importc: "QProgressDialog_new5".}
proc fcQProgressDialog_new6(labelText: struct_miqt_string, cancelButtonText: struct_miqt_string, minimum: cint, maximum: cint, parent: pointer, flags: cint): ptr cQProgressDialog {.importc: "QProgressDialog_new6".}
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
proc fQProgressDialog_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QProgressDialog_virtualbase_metaObject".}
proc fcQProgressDialog_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_metaObject".}
proc fQProgressDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QProgressDialog_virtualbase_metacast".}
proc fcQProgressDialog_override_virtual_metacast(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_metacast".}
proc fQProgressDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QProgressDialog_virtualbase_metacall".}
proc fcQProgressDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_metacall".}
proc fQProgressDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QProgressDialog_virtualbase_sizeHint".}
proc fcQProgressDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_sizeHint".}
proc fQProgressDialog_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_resizeEvent".}
proc fcQProgressDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_resizeEvent".}
proc fQProgressDialog_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_closeEvent".}
proc fcQProgressDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_closeEvent".}
proc fQProgressDialog_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_changeEvent".}
proc fcQProgressDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_changeEvent".}
proc fQProgressDialog_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_showEvent".}
proc fcQProgressDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_showEvent".}
proc fQProgressDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QProgressDialog_virtualbase_setVisible".}
proc fcQProgressDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_setVisible".}
proc fQProgressDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QProgressDialog_virtualbase_minimumSizeHint".}
proc fcQProgressDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_minimumSizeHint".}
proc fQProgressDialog_virtualbase_open(self: pointer, ): void{.importc: "QProgressDialog_virtualbase_open".}
proc fcQProgressDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_open".}
proc fQProgressDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QProgressDialog_virtualbase_exec".}
proc fcQProgressDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_exec".}
proc fQProgressDialog_virtualbase_done(self: pointer, param1: cint): void{.importc: "QProgressDialog_virtualbase_done".}
proc fcQProgressDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_done".}
proc fQProgressDialog_virtualbase_accept(self: pointer, ): void{.importc: "QProgressDialog_virtualbase_accept".}
proc fcQProgressDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_accept".}
proc fQProgressDialog_virtualbase_reject(self: pointer, ): void{.importc: "QProgressDialog_virtualbase_reject".}
proc fcQProgressDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_reject".}
proc fQProgressDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QProgressDialog_virtualbase_keyPressEvent".}
proc fcQProgressDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_keyPressEvent".}
proc fQProgressDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QProgressDialog_virtualbase_contextMenuEvent".}
proc fcQProgressDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_contextMenuEvent".}
proc fQProgressDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QProgressDialog_virtualbase_eventFilter".}
proc fcQProgressDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_eventFilter".}
proc fQProgressDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QProgressDialog_virtualbase_devType".}
proc fcQProgressDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_devType".}
proc fQProgressDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QProgressDialog_virtualbase_heightForWidth".}
proc fcQProgressDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_heightForWidth".}
proc fQProgressDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QProgressDialog_virtualbase_hasHeightForWidth".}
proc fcQProgressDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_hasHeightForWidth".}
proc fQProgressDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QProgressDialog_virtualbase_paintEngine".}
proc fcQProgressDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_paintEngine".}
proc fQProgressDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QProgressDialog_virtualbase_event".}
proc fcQProgressDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_event".}
proc fQProgressDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_mousePressEvent".}
proc fcQProgressDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_mousePressEvent".}
proc fQProgressDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_mouseReleaseEvent".}
proc fcQProgressDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_mouseReleaseEvent".}
proc fQProgressDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQProgressDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_mouseDoubleClickEvent".}
proc fQProgressDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_mouseMoveEvent".}
proc fcQProgressDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_mouseMoveEvent".}
proc fQProgressDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_wheelEvent".}
proc fcQProgressDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_wheelEvent".}
proc fQProgressDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_keyReleaseEvent".}
proc fcQProgressDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_keyReleaseEvent".}
proc fQProgressDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_focusInEvent".}
proc fcQProgressDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_focusInEvent".}
proc fQProgressDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_focusOutEvent".}
proc fcQProgressDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_focusOutEvent".}
proc fQProgressDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_enterEvent".}
proc fcQProgressDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_enterEvent".}
proc fQProgressDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_leaveEvent".}
proc fcQProgressDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_leaveEvent".}
proc fQProgressDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_paintEvent".}
proc fcQProgressDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_paintEvent".}
proc fQProgressDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_moveEvent".}
proc fcQProgressDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_moveEvent".}
proc fQProgressDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_tabletEvent".}
proc fcQProgressDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_tabletEvent".}
proc fQProgressDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_actionEvent".}
proc fcQProgressDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_actionEvent".}
proc fQProgressDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_dragEnterEvent".}
proc fcQProgressDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_dragEnterEvent".}
proc fQProgressDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_dragMoveEvent".}
proc fcQProgressDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_dragMoveEvent".}
proc fQProgressDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_dragLeaveEvent".}
proc fcQProgressDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_dragLeaveEvent".}
proc fQProgressDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_dropEvent".}
proc fcQProgressDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_dropEvent".}
proc fQProgressDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_hideEvent".}
proc fcQProgressDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_hideEvent".}
proc fQProgressDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QProgressDialog_virtualbase_nativeEvent".}
proc fcQProgressDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_nativeEvent".}
proc fQProgressDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QProgressDialog_virtualbase_metric".}
proc fcQProgressDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_metric".}
proc fQProgressDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QProgressDialog_virtualbase_initPainter".}
proc fcQProgressDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_initPainter".}
proc fQProgressDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QProgressDialog_virtualbase_redirected".}
proc fcQProgressDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_redirected".}
proc fQProgressDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QProgressDialog_virtualbase_sharedPainter".}
proc fcQProgressDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_sharedPainter".}
proc fQProgressDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QProgressDialog_virtualbase_inputMethodEvent".}
proc fcQProgressDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_inputMethodEvent".}
proc fQProgressDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QProgressDialog_virtualbase_inputMethodQuery".}
proc fcQProgressDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_inputMethodQuery".}
proc fQProgressDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QProgressDialog_virtualbase_focusNextPrevChild".}
proc fcQProgressDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_focusNextPrevChild".}
proc fQProgressDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_timerEvent".}
proc fcQProgressDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_timerEvent".}
proc fQProgressDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_childEvent".}
proc fcQProgressDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_childEvent".}
proc fQProgressDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QProgressDialog_virtualbase_customEvent".}
proc fcQProgressDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_customEvent".}
proc fQProgressDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QProgressDialog_virtualbase_connectNotify".}
proc fcQProgressDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_connectNotify".}
proc fQProgressDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QProgressDialog_virtualbase_disconnectNotify".}
proc fcQProgressDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QProgressDialog_override_virtual_disconnectNotify".}
proc fcQProgressDialog_staticMetaObject(): pointer {.importc: "QProgressDialog_staticMetaObject".}
proc fcQProgressDialog_delete(self: pointer) {.importc: "QProgressDialog_delete".}


func init*(T: type gen_qprogressdialog_types.QProgressDialog, h: ptr cQProgressDialog): gen_qprogressdialog_types.QProgressDialog =
  T(h: h)
proc create*(T: type gen_qprogressdialog_types.QProgressDialog, parent: gen_qwidget_types.QWidget): gen_qprogressdialog_types.QProgressDialog =
  gen_qprogressdialog_types.QProgressDialog.init(fcQProgressDialog_new(parent.h))

proc create*(T: type gen_qprogressdialog_types.QProgressDialog, ): gen_qprogressdialog_types.QProgressDialog =
  gen_qprogressdialog_types.QProgressDialog.init(fcQProgressDialog_new2())

proc create*(T: type gen_qprogressdialog_types.QProgressDialog, labelText: string, cancelButtonText: string, minimum: cint, maximum: cint): gen_qprogressdialog_types.QProgressDialog =
  gen_qprogressdialog_types.QProgressDialog.init(fcQProgressDialog_new3(struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum))

proc create*(T: type gen_qprogressdialog_types.QProgressDialog, parent: gen_qwidget_types.QWidget, flags: cint): gen_qprogressdialog_types.QProgressDialog =
  gen_qprogressdialog_types.QProgressDialog.init(fcQProgressDialog_new4(parent.h, cint(flags)))

proc create*(T: type gen_qprogressdialog_types.QProgressDialog, labelText: string, cancelButtonText: string, minimum: cint, maximum: cint, parent: gen_qwidget_types.QWidget): gen_qprogressdialog_types.QProgressDialog =
  gen_qprogressdialog_types.QProgressDialog.init(fcQProgressDialog_new5(struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum, parent.h))

proc create*(T: type gen_qprogressdialog_types.QProgressDialog, labelText: string, cancelButtonText: string, minimum: cint, maximum: cint, parent: gen_qwidget_types.QWidget, flags: cint): gen_qprogressdialog_types.QProgressDialog =
  gen_qprogressdialog_types.QProgressDialog.init(fcQProgressDialog_new6(struct_miqt_string(data: labelText, len: csize_t(len(labelText))), struct_miqt_string(data: cancelButtonText, len: csize_t(len(cancelButtonText))), minimum, maximum, parent.h, cint(flags)))

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
proc miqt_exec_callback_QProgressDialog_canceled(slot: int) {.exportc.} =
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

proc QProgressDialogmetaObject*(self: gen_qprogressdialog_types.QProgressDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQProgressDialog_virtualbase_metaObject(self.h))

type QProgressDialogmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogmetaObjectProc) =
  # TODO check subclass
  var tmp = new QProgressDialogmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_metaObject(self: ptr cQProgressDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressDialog_metaObject ".} =
  var nimfunc = cast[ptr QProgressDialogmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QProgressDialogmetacast*(self: gen_qprogressdialog_types.QProgressDialog, param1: cstring): pointer =
  fQProgressDialog_virtualbase_metacast(self.h, param1)

type QProgressDialogmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogmetacastProc) =
  # TODO check subclass
  var tmp = new QProgressDialogmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_metacast(self: ptr cQProgressDialog, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QProgressDialog_metacast ".} =
  var nimfunc = cast[ptr QProgressDialogmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProgressDialogmetacall*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint, param2: cint, param3: pointer): cint =
  fQProgressDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QProgressDialogmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogmetacallProc) =
  # TODO check subclass
  var tmp = new QProgressDialogmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_metacall(self: ptr cQProgressDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QProgressDialog_metacall ".} =
  var nimfunc = cast[ptr QProgressDialogmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QProgressDialogsizeHint*(self: gen_qprogressdialog_types.QProgressDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQProgressDialog_virtualbase_sizeHint(self.h))

type QProgressDialogsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogsizeHintProc) =
  # TODO check subclass
  var tmp = new QProgressDialogsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_sizeHint(self: ptr cQProgressDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressDialog_sizeHint ".} =
  var nimfunc = cast[ptr QProgressDialogsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QProgressDialogresizeEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QResizeEvent): void =
  fQProgressDialog_virtualbase_resizeEvent(self.h, event.h)

type QProgressDialogresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogresizeEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_resizeEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_resizeEvent ".} =
  var nimfunc = cast[ptr QProgressDialogresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogcloseEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QCloseEvent): void =
  fQProgressDialog_virtualbase_closeEvent(self.h, event.h)

type QProgressDialogcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogcloseEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_closeEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_closeEvent ".} =
  var nimfunc = cast[ptr QProgressDialogcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogchangeEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): void =
  fQProgressDialog_virtualbase_changeEvent(self.h, event.h)

type QProgressDialogchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogchangeEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_changeEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_changeEvent ".} =
  var nimfunc = cast[ptr QProgressDialogchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogshowEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QShowEvent): void =
  fQProgressDialog_virtualbase_showEvent(self.h, event.h)

type QProgressDialogshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogshowEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_showEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_showEvent ".} =
  var nimfunc = cast[ptr QProgressDialogshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogsetVisible*(self: gen_qprogressdialog_types.QProgressDialog, visible: bool): void =
  fQProgressDialog_virtualbase_setVisible(self.h, visible)

type QProgressDialogsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogsetVisibleProc) =
  # TODO check subclass
  var tmp = new QProgressDialogsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_setVisible(self: ptr cQProgressDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QProgressDialog_setVisible ".} =
  var nimfunc = cast[ptr QProgressDialogsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QProgressDialogminimumSizeHint*(self: gen_qprogressdialog_types.QProgressDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQProgressDialog_virtualbase_minimumSizeHint(self.h))

type QProgressDialogminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QProgressDialogminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_minimumSizeHint(self: ptr cQProgressDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressDialog_minimumSizeHint ".} =
  var nimfunc = cast[ptr QProgressDialogminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QProgressDialogopen*(self: gen_qprogressdialog_types.QProgressDialog, ): void =
  fQProgressDialog_virtualbase_open(self.h)

type QProgressDialogopenProc* = proc(): void
proc onopen*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogopenProc) =
  # TODO check subclass
  var tmp = new QProgressDialogopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_open(self: ptr cQProgressDialog, slot: int): void {.exportc: "miqt_exec_callback_QProgressDialog_open ".} =
  var nimfunc = cast[ptr QProgressDialogopenProc](cast[pointer](slot))

  nimfunc[]()
proc QProgressDialogexec*(self: gen_qprogressdialog_types.QProgressDialog, ): cint =
  fQProgressDialog_virtualbase_exec(self.h)

type QProgressDialogexecProc* = proc(): cint
proc onexec*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogexecProc) =
  # TODO check subclass
  var tmp = new QProgressDialogexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_exec(self: ptr cQProgressDialog, slot: int): cint {.exportc: "miqt_exec_callback_QProgressDialog_exec ".} =
  var nimfunc = cast[ptr QProgressDialogexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProgressDialogdone*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint): void =
  fQProgressDialog_virtualbase_done(self.h, param1)

type QProgressDialogdoneProc* = proc(param1: cint): void
proc ondone*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogdoneProc) =
  # TODO check subclass
  var tmp = new QProgressDialogdoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_done(self: ptr cQProgressDialog, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QProgressDialog_done ".} =
  var nimfunc = cast[ptr QProgressDialogdoneProc](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)
proc QProgressDialogaccept*(self: gen_qprogressdialog_types.QProgressDialog, ): void =
  fQProgressDialog_virtualbase_accept(self.h)

type QProgressDialogacceptProc* = proc(): void
proc onaccept*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogacceptProc) =
  # TODO check subclass
  var tmp = new QProgressDialogacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_accept(self: ptr cQProgressDialog, slot: int): void {.exportc: "miqt_exec_callback_QProgressDialog_accept ".} =
  var nimfunc = cast[ptr QProgressDialogacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QProgressDialogreject*(self: gen_qprogressdialog_types.QProgressDialog, ): void =
  fQProgressDialog_virtualbase_reject(self.h)

type QProgressDialogrejectProc* = proc(): void
proc onreject*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogrejectProc) =
  # TODO check subclass
  var tmp = new QProgressDialogrejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_reject(self: ptr cQProgressDialog, slot: int): void {.exportc: "miqt_exec_callback_QProgressDialog_reject ".} =
  var nimfunc = cast[ptr QProgressDialogrejectProc](cast[pointer](slot))

  nimfunc[]()
proc QProgressDialogkeyPressEvent*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qevent_types.QKeyEvent): void =
  fQProgressDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QProgressDialogkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_keyPressEvent(self: ptr cQProgressDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_keyPressEvent ".} =
  var nimfunc = cast[ptr QProgressDialogkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QProgressDialogcontextMenuEvent*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fQProgressDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QProgressDialogcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_contextMenuEvent(self: ptr cQProgressDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_contextMenuEvent ".} =
  var nimfunc = cast[ptr QProgressDialogcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QProgressDialogeventFilter*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQProgressDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QProgressDialogeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogeventFilterProc) =
  # TODO check subclass
  var tmp = new QProgressDialogeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_eventFilter(self: ptr cQProgressDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QProgressDialog_eventFilter ".} =
  var nimfunc = cast[ptr QProgressDialogeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QProgressDialogdevType*(self: gen_qprogressdialog_types.QProgressDialog, ): cint =
  fQProgressDialog_virtualbase_devType(self.h)

type QProgressDialogdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogdevTypeProc) =
  # TODO check subclass
  var tmp = new QProgressDialogdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_devType(self: ptr cQProgressDialog, slot: int): cint {.exportc: "miqt_exec_callback_QProgressDialog_devType ".} =
  var nimfunc = cast[ptr QProgressDialogdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProgressDialogheightForWidth*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint): cint =
  fQProgressDialog_virtualbase_heightForWidth(self.h, param1)

type QProgressDialogheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogheightForWidthProc) =
  # TODO check subclass
  var tmp = new QProgressDialogheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_heightForWidth(self: ptr cQProgressDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QProgressDialog_heightForWidth ".} =
  var nimfunc = cast[ptr QProgressDialogheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProgressDialoghasHeightForWidth*(self: gen_qprogressdialog_types.QProgressDialog, ): bool =
  fQProgressDialog_virtualbase_hasHeightForWidth(self.h)

type QProgressDialoghasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialoghasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QProgressDialoghasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_hasHeightForWidth(self: ptr cQProgressDialog, slot: int): bool {.exportc: "miqt_exec_callback_QProgressDialog_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QProgressDialoghasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProgressDialogpaintEngine*(self: gen_qprogressdialog_types.QProgressDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQProgressDialog_virtualbase_paintEngine(self.h))

type QProgressDialogpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogpaintEngineProc) =
  # TODO check subclass
  var tmp = new QProgressDialogpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_paintEngine(self: ptr cQProgressDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressDialog_paintEngine ".} =
  var nimfunc = cast[ptr QProgressDialogpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QProgressDialogevent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): bool =
  fQProgressDialog_virtualbase_event(self.h, event.h)

type QProgressDialogeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogeventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_event(self: ptr cQProgressDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QProgressDialog_event ".} =
  var nimfunc = cast[ptr QProgressDialogeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProgressDialogmousePressEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMouseEvent): void =
  fQProgressDialog_virtualbase_mousePressEvent(self.h, event.h)

type QProgressDialogmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogmousePressEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_mousePressEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_mousePressEvent ".} =
  var nimfunc = cast[ptr QProgressDialogmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogmouseReleaseEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMouseEvent): void =
  fQProgressDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QProgressDialogmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_mouseReleaseEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QProgressDialogmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogmouseDoubleClickEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMouseEvent): void =
  fQProgressDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QProgressDialogmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_mouseDoubleClickEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QProgressDialogmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogmouseMoveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMouseEvent): void =
  fQProgressDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QProgressDialogmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_mouseMoveEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QProgressDialogmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogwheelEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QWheelEvent): void =
  fQProgressDialog_virtualbase_wheelEvent(self.h, event.h)

type QProgressDialogwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogwheelEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_wheelEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_wheelEvent ".} =
  var nimfunc = cast[ptr QProgressDialogwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogkeyReleaseEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QKeyEvent): void =
  fQProgressDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QProgressDialogkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_keyReleaseEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QProgressDialogkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogfocusInEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QFocusEvent): void =
  fQProgressDialog_virtualbase_focusInEvent(self.h, event.h)

type QProgressDialogfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogfocusInEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_focusInEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_focusInEvent ".} =
  var nimfunc = cast[ptr QProgressDialogfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogfocusOutEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QFocusEvent): void =
  fQProgressDialog_virtualbase_focusOutEvent(self.h, event.h)

type QProgressDialogfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_focusOutEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_focusOutEvent ".} =
  var nimfunc = cast[ptr QProgressDialogfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogenterEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): void =
  fQProgressDialog_virtualbase_enterEvent(self.h, event.h)

type QProgressDialogenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogenterEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_enterEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_enterEvent ".} =
  var nimfunc = cast[ptr QProgressDialogenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogleaveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): void =
  fQProgressDialog_virtualbase_leaveEvent(self.h, event.h)

type QProgressDialogleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogleaveEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_leaveEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_leaveEvent ".} =
  var nimfunc = cast[ptr QProgressDialogleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogpaintEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QPaintEvent): void =
  fQProgressDialog_virtualbase_paintEvent(self.h, event.h)

type QProgressDialogpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogpaintEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_paintEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_paintEvent ".} =
  var nimfunc = cast[ptr QProgressDialogpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogmoveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QMoveEvent): void =
  fQProgressDialog_virtualbase_moveEvent(self.h, event.h)

type QProgressDialogmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogmoveEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_moveEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_moveEvent ".} =
  var nimfunc = cast[ptr QProgressDialogmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogtabletEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QTabletEvent): void =
  fQProgressDialog_virtualbase_tabletEvent(self.h, event.h)

type QProgressDialogtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogtabletEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_tabletEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_tabletEvent ".} =
  var nimfunc = cast[ptr QProgressDialogtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogactionEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QActionEvent): void =
  fQProgressDialog_virtualbase_actionEvent(self.h, event.h)

type QProgressDialogactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogactionEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_actionEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_actionEvent ".} =
  var nimfunc = cast[ptr QProgressDialogactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogdragEnterEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fQProgressDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QProgressDialogdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_dragEnterEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_dragEnterEvent ".} =
  var nimfunc = cast[ptr QProgressDialogdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogdragMoveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fQProgressDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QProgressDialogdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_dragMoveEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_dragMoveEvent ".} =
  var nimfunc = cast[ptr QProgressDialogdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogdragLeaveEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fQProgressDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QProgressDialogdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_dragLeaveEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QProgressDialogdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogdropEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QDropEvent): void =
  fQProgressDialog_virtualbase_dropEvent(self.h, event.h)

type QProgressDialogdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogdropEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_dropEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_dropEvent ".} =
  var nimfunc = cast[ptr QProgressDialogdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialoghideEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qevent_types.QHideEvent): void =
  fQProgressDialog_virtualbase_hideEvent(self.h, event.h)

type QProgressDialoghideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialoghideEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialoghideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_hideEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_hideEvent ".} =
  var nimfunc = cast[ptr QProgressDialoghideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialognativeEvent*(self: gen_qprogressdialog_types.QProgressDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQProgressDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QProgressDialognativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialognativeEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialognativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_nativeEvent(self: ptr cQProgressDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QProgressDialog_nativeEvent ".} =
  var nimfunc = cast[ptr QProgressDialognativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QProgressDialogmetric*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint): cint =
  fQProgressDialog_virtualbase_metric(self.h, cint(param1))

type QProgressDialogmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogmetricProc) =
  # TODO check subclass
  var tmp = new QProgressDialogmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_metric(self: ptr cQProgressDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QProgressDialog_metric ".} =
  var nimfunc = cast[ptr QProgressDialogmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProgressDialoginitPainter*(self: gen_qprogressdialog_types.QProgressDialog, painter: gen_qpainter_types.QPainter): void =
  fQProgressDialog_virtualbase_initPainter(self.h, painter.h)

type QProgressDialoginitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialoginitPainterProc) =
  # TODO check subclass
  var tmp = new QProgressDialoginitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_initPainter(self: ptr cQProgressDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_initPainter ".} =
  var nimfunc = cast[ptr QProgressDialoginitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QProgressDialogredirected*(self: gen_qprogressdialog_types.QProgressDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQProgressDialog_virtualbase_redirected(self.h, offset.h))

type QProgressDialogredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogredirectedProc) =
  # TODO check subclass
  var tmp = new QProgressDialogredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_redirected(self: ptr cQProgressDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QProgressDialog_redirected ".} =
  var nimfunc = cast[ptr QProgressDialogredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QProgressDialogsharedPainter*(self: gen_qprogressdialog_types.QProgressDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQProgressDialog_virtualbase_sharedPainter(self.h))

type QProgressDialogsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogsharedPainterProc) =
  # TODO check subclass
  var tmp = new QProgressDialogsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_sharedPainter(self: ptr cQProgressDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressDialog_sharedPainter ".} =
  var nimfunc = cast[ptr QProgressDialogsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QProgressDialoginputMethodEvent*(self: gen_qprogressdialog_types.QProgressDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fQProgressDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QProgressDialoginputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialoginputMethodEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialoginputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_inputMethodEvent(self: ptr cQProgressDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_inputMethodEvent ".} =
  var nimfunc = cast[ptr QProgressDialoginputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QProgressDialoginputMethodQuery*(self: gen_qprogressdialog_types.QProgressDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQProgressDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QProgressDialoginputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialoginputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QProgressDialoginputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_inputMethodQuery(self: ptr cQProgressDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QProgressDialog_inputMethodQuery ".} =
  var nimfunc = cast[ptr QProgressDialoginputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QProgressDialogfocusNextPrevChild*(self: gen_qprogressdialog_types.QProgressDialog, next: bool): bool =
  fQProgressDialog_virtualbase_focusNextPrevChild(self.h, next)

type QProgressDialogfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QProgressDialogfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_focusNextPrevChild(self: ptr cQProgressDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QProgressDialog_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QProgressDialogfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProgressDialogtimerEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fQProgressDialog_virtualbase_timerEvent(self.h, event.h)

type QProgressDialogtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogtimerEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_timerEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_timerEvent ".} =
  var nimfunc = cast[ptr QProgressDialogtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogchildEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fQProgressDialog_virtualbase_childEvent(self.h, event.h)

type QProgressDialogchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogchildEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_childEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_childEvent ".} =
  var nimfunc = cast[ptr QProgressDialogchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogcustomEvent*(self: gen_qprogressdialog_types.QProgressDialog, event: gen_qcoreevent_types.QEvent): void =
  fQProgressDialog_virtualbase_customEvent(self.h, event.h)

type QProgressDialogcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogcustomEventProc) =
  # TODO check subclass
  var tmp = new QProgressDialogcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_customEvent(self: ptr cQProgressDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_customEvent ".} =
  var nimfunc = cast[ptr QProgressDialogcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QProgressDialogconnectNotify*(self: gen_qprogressdialog_types.QProgressDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQProgressDialog_virtualbase_connectNotify(self.h, signal.h)

type QProgressDialogconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QProgressDialogconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_connectNotify(self: ptr cQProgressDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_connectNotify ".} =
  var nimfunc = cast[ptr QProgressDialogconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QProgressDialogdisconnectNotify*(self: gen_qprogressdialog_types.QProgressDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQProgressDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QProgressDialogdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qprogressdialog_types.QProgressDialog, slot: QProgressDialogdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QProgressDialogdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressDialog_disconnectNotify(self: ptr cQProgressDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProgressDialog_disconnectNotify ".} =
  var nimfunc = cast[ptr QProgressDialogdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qprogressdialog_types.QProgressDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressDialog_staticMetaObject())
proc delete*(self: gen_qprogressdialog_types.QProgressDialog) =
  fcQProgressDialog_delete(self.h)
