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
{.compile("gen_qdialog.cpp", cflags).}


type QDialogDialogCodeEnum* = distinct cint
template Rejected*(_: type QDialogDialogCodeEnum): untyped = 0
template Accepted*(_: type QDialogDialogCodeEnum): untyped = 1


import ./gen_qdialog_types
export gen_qdialog_types

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

type cQDialog*{.exportc: "QDialog", incompleteStruct.} = object

proc fcQDialog_metaObject(self: pointer, ): pointer {.importc: "QDialog_metaObject".}
proc fcQDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QDialog_metacast".}
proc fcQDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDialog_metacall".}
proc fcQDialog_tr(s: cstring): struct_miqt_string {.importc: "QDialog_tr".}
proc fcQDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QDialog_trUtf8".}
proc fcQDialog_resultX(self: pointer, ): cint {.importc: "QDialog_result".}
proc fcQDialog_setVisible(self: pointer, visible: bool): void {.importc: "QDialog_setVisible".}
proc fcQDialog_setOrientation(self: pointer, orientation: cint): void {.importc: "QDialog_setOrientation".}
proc fcQDialog_orientation(self: pointer, ): cint {.importc: "QDialog_orientation".}
proc fcQDialog_setExtension(self: pointer, extension: pointer): void {.importc: "QDialog_setExtension".}
proc fcQDialog_extension(self: pointer, ): pointer {.importc: "QDialog_extension".}
proc fcQDialog_sizeHint(self: pointer, ): pointer {.importc: "QDialog_sizeHint".}
proc fcQDialog_minimumSizeHint(self: pointer, ): pointer {.importc: "QDialog_minimumSizeHint".}
proc fcQDialog_setSizeGripEnabled(self: pointer, sizeGripEnabled: bool): void {.importc: "QDialog_setSizeGripEnabled".}
proc fcQDialog_isSizeGripEnabled(self: pointer, ): bool {.importc: "QDialog_isSizeGripEnabled".}
proc fcQDialog_setModal(self: pointer, modal: bool): void {.importc: "QDialog_setModal".}
proc fcQDialog_setResult(self: pointer, r: cint): void {.importc: "QDialog_setResult".}
proc fcQDialog_finished(self: pointer, resultVal: cint): void {.importc: "QDialog_finished".}
proc fcQDialog_connect_finished(self: pointer, slot: int) {.importc: "QDialog_connect_finished".}
proc fcQDialog_accepted(self: pointer, ): void {.importc: "QDialog_accepted".}
proc fcQDialog_connect_accepted(self: pointer, slot: int) {.importc: "QDialog_connect_accepted".}
proc fcQDialog_rejected(self: pointer, ): void {.importc: "QDialog_rejected".}
proc fcQDialog_connect_rejected(self: pointer, slot: int) {.importc: "QDialog_connect_rejected".}
proc fcQDialog_open(self: pointer, ): void {.importc: "QDialog_open".}
proc fcQDialog_exec(self: pointer, ): cint {.importc: "QDialog_exec".}
proc fcQDialog_done(self: pointer, param1: cint): void {.importc: "QDialog_done".}
proc fcQDialog_accept(self: pointer, ): void {.importc: "QDialog_accept".}
proc fcQDialog_reject(self: pointer, ): void {.importc: "QDialog_reject".}
proc fcQDialog_showExtension(self: pointer, param1: bool): void {.importc: "QDialog_showExtension".}
proc fcQDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDialog_tr2".}
proc fcQDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDialog_tr3".}
proc fcQDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDialog_trUtf82".}
proc fcQDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDialog_trUtf83".}
type cQDialogVTable = object
  destructor*: proc(vtbl: ptr cQDialogVTable, self: ptr cQDialog) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  done*: proc(vtbl, self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
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
proc fcQDialog_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QDialog_virtualbase_metaObject".}
proc fcQDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDialog_virtualbase_metacast".}
proc fcQDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDialog_virtualbase_metacall".}
proc fcQDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDialog_virtualbase_setVisible".}
proc fcQDialog_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QDialog_virtualbase_sizeHint".}
proc fcQDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QDialog_virtualbase_minimumSizeHint".}
proc fcQDialog_virtualbase_open(self: pointer, ): void {.importc: "QDialog_virtualbase_open".}
proc fcQDialog_virtualbase_exec(self: pointer, ): cint {.importc: "QDialog_virtualbase_exec".}
proc fcQDialog_virtualbase_done(self: pointer, param1: cint): void {.importc: "QDialog_virtualbase_done".}
proc fcQDialog_virtualbase_accept(self: pointer, ): void {.importc: "QDialog_virtualbase_accept".}
proc fcQDialog_virtualbase_reject(self: pointer, ): void {.importc: "QDialog_virtualbase_reject".}
proc fcQDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_keyPressEvent".}
proc fcQDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_closeEvent".}
proc fcQDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_showEvent".}
proc fcQDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_resizeEvent".}
proc fcQDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_contextMenuEvent".}
proc fcQDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QDialog_virtualbase_eventFilter".}
proc fcQDialog_virtualbase_devType(self: pointer, ): cint {.importc: "QDialog_virtualbase_devType".}
proc fcQDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDialog_virtualbase_heightForWidth".}
proc fcQDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QDialog_virtualbase_hasHeightForWidth".}
proc fcQDialog_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QDialog_virtualbase_paintEngine".}
proc fcQDialog_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDialog_virtualbase_event".}
proc fcQDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_mousePressEvent".}
proc fcQDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_mouseReleaseEvent".}
proc fcQDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_mouseMoveEvent".}
proc fcQDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_wheelEvent".}
proc fcQDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_keyReleaseEvent".}
proc fcQDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_focusInEvent".}
proc fcQDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_focusOutEvent".}
proc fcQDialog_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_enterEvent".}
proc fcQDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_leaveEvent".}
proc fcQDialog_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_paintEvent".}
proc fcQDialog_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_moveEvent".}
proc fcQDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_tabletEvent".}
proc fcQDialog_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_actionEvent".}
proc fcQDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_dragEnterEvent".}
proc fcQDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_dragMoveEvent".}
proc fcQDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_dragLeaveEvent".}
proc fcQDialog_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_dropEvent".}
proc fcQDialog_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_hideEvent".}
proc fcQDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QDialog_virtualbase_nativeEvent".}
proc fcQDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_changeEvent".}
proc fcQDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDialog_virtualbase_metric".}
proc fcQDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDialog_virtualbase_initPainter".}
proc fcQDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDialog_virtualbase_redirected".}
proc fcQDialog_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QDialog_virtualbase_sharedPainter".}
proc fcQDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_inputMethodEvent".}
proc fcQDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDialog_virtualbase_inputMethodQuery".}
proc fcQDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDialog_virtualbase_focusNextPrevChild".}
proc fcQDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_timerEvent".}
proc fcQDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_childEvent".}
proc fcQDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_customEvent".}
proc fcQDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDialog_virtualbase_connectNotify".}
proc fcQDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDialog_virtualbase_disconnectNotify".}
proc fcQDialog_new(vtbl: pointer, parent: pointer): ptr cQDialog {.importc: "QDialog_new".}
proc fcQDialog_new2(vtbl: pointer, ): ptr cQDialog {.importc: "QDialog_new2".}
proc fcQDialog_new3(vtbl: pointer, parent: pointer, f: cint): ptr cQDialog {.importc: "QDialog_new3".}
proc fcQDialog_staticMetaObject(): pointer {.importc: "QDialog_staticMetaObject".}
proc fcQDialog_delete(self: pointer) {.importc: "QDialog_delete".}

proc metaObject*(self: gen_qdialog_types.QDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialog_metaObject(self.h))

proc metacast*(self: gen_qdialog_types.QDialog, param1: cstring): pointer =
  fcQDialog_metacast(self.h, param1)

proc metacall*(self: gen_qdialog_types.QDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdialog_types.QDialog, s: cstring): string =
  let v_ms = fcQDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdialog_types.QDialog, s: cstring): string =
  let v_ms = fcQDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resultX*(self: gen_qdialog_types.QDialog, ): cint =
  fcQDialog_resultX(self.h)

proc setVisible*(self: gen_qdialog_types.QDialog, visible: bool): void =
  fcQDialog_setVisible(self.h, visible)

proc setOrientation*(self: gen_qdialog_types.QDialog, orientation: cint): void =
  fcQDialog_setOrientation(self.h, cint(orientation))

proc orientation*(self: gen_qdialog_types.QDialog, ): cint =
  cint(fcQDialog_orientation(self.h))

proc setExtension*(self: gen_qdialog_types.QDialog, extension: gen_qwidget_types.QWidget): void =
  fcQDialog_setExtension(self.h, extension.h)

proc extension*(self: gen_qdialog_types.QDialog, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDialog_extension(self.h))

proc sizeHint*(self: gen_qdialog_types.QDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDialog_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qdialog_types.QDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDialog_minimumSizeHint(self.h))

proc setSizeGripEnabled*(self: gen_qdialog_types.QDialog, sizeGripEnabled: bool): void =
  fcQDialog_setSizeGripEnabled(self.h, sizeGripEnabled)

proc isSizeGripEnabled*(self: gen_qdialog_types.QDialog, ): bool =
  fcQDialog_isSizeGripEnabled(self.h)

proc setModal*(self: gen_qdialog_types.QDialog, modal: bool): void =
  fcQDialog_setModal(self.h, modal)

proc setResult*(self: gen_qdialog_types.QDialog, r: cint): void =
  fcQDialog_setResult(self.h, r)

proc finished*(self: gen_qdialog_types.QDialog, resultVal: cint): void =
  fcQDialog_finished(self.h, resultVal)

type QDialogfinishedSlot* = proc(resultVal: cint)
proc miqt_exec_callback_cQDialog_finished(slot: int, resultVal: cint) {.exportc: "miqt_exec_callback_QDialog_finished".} =
  let nimfunc = cast[ptr QDialogfinishedSlot](cast[pointer](slot))
  let slotval1 = resultVal

  nimfunc[](slotval1)

proc onfinished*(self: gen_qdialog_types.QDialog, slot: QDialogfinishedSlot) =
  var tmp = new QDialogfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_connect_finished(self.h, cast[int](addr tmp[]))

proc accepted*(self: gen_qdialog_types.QDialog, ): void =
  fcQDialog_accepted(self.h)

type QDialogacceptedSlot* = proc()
proc miqt_exec_callback_cQDialog_accepted(slot: int) {.exportc: "miqt_exec_callback_QDialog_accepted".} =
  let nimfunc = cast[ptr QDialogacceptedSlot](cast[pointer](slot))
  nimfunc[]()

proc onaccepted*(self: gen_qdialog_types.QDialog, slot: QDialogacceptedSlot) =
  var tmp = new QDialogacceptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_connect_accepted(self.h, cast[int](addr tmp[]))

proc rejected*(self: gen_qdialog_types.QDialog, ): void =
  fcQDialog_rejected(self.h)

type QDialogrejectedSlot* = proc()
proc miqt_exec_callback_cQDialog_rejected(slot: int) {.exportc: "miqt_exec_callback_QDialog_rejected".} =
  let nimfunc = cast[ptr QDialogrejectedSlot](cast[pointer](slot))
  nimfunc[]()

proc onrejected*(self: gen_qdialog_types.QDialog, slot: QDialogrejectedSlot) =
  var tmp = new QDialogrejectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_connect_rejected(self.h, cast[int](addr tmp[]))

proc open*(self: gen_qdialog_types.QDialog, ): void =
  fcQDialog_open(self.h)

proc exec*(self: gen_qdialog_types.QDialog, ): cint =
  fcQDialog_exec(self.h)

proc done*(self: gen_qdialog_types.QDialog, param1: cint): void =
  fcQDialog_done(self.h, param1)

proc accept*(self: gen_qdialog_types.QDialog, ): void =
  fcQDialog_accept(self.h)

proc reject*(self: gen_qdialog_types.QDialog, ): void =
  fcQDialog_reject(self.h)

proc showExtension*(self: gen_qdialog_types.QDialog, param1: bool): void =
  fcQDialog_showExtension(self.h, param1)

proc tr*(_: type gen_qdialog_types.QDialog, s: cstring, c: cstring): string =
  let v_ms = fcQDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdialog_types.QDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdialog_types.QDialog, s: cstring, c: cstring): string =
  let v_ms = fcQDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdialog_types.QDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QDialogmetaObjectProc* = proc(self: QDialog): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDialogmetacastProc* = proc(self: QDialog, param1: cstring): pointer {.raises: [], gcsafe.}
type QDialogmetacallProc* = proc(self: QDialog, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDialogsetVisibleProc* = proc(self: QDialog, visible: bool): void {.raises: [], gcsafe.}
type QDialogsizeHintProc* = proc(self: QDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDialogminimumSizeHintProc* = proc(self: QDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDialogopenProc* = proc(self: QDialog): void {.raises: [], gcsafe.}
type QDialogexecProc* = proc(self: QDialog): cint {.raises: [], gcsafe.}
type QDialogdoneProc* = proc(self: QDialog, param1: cint): void {.raises: [], gcsafe.}
type QDialogacceptProc* = proc(self: QDialog): void {.raises: [], gcsafe.}
type QDialogrejectProc* = proc(self: QDialog): void {.raises: [], gcsafe.}
type QDialogkeyPressEventProc* = proc(self: QDialog, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDialogcloseEventProc* = proc(self: QDialog, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDialogshowEventProc* = proc(self: QDialog, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDialogresizeEventProc* = proc(self: QDialog, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDialogcontextMenuEventProc* = proc(self: QDialog, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDialogeventFilterProc* = proc(self: QDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDialogdevTypeProc* = proc(self: QDialog): cint {.raises: [], gcsafe.}
type QDialogheightForWidthProc* = proc(self: QDialog, param1: cint): cint {.raises: [], gcsafe.}
type QDialoghasHeightForWidthProc* = proc(self: QDialog): bool {.raises: [], gcsafe.}
type QDialogpaintEngineProc* = proc(self: QDialog): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDialogeventProc* = proc(self: QDialog, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDialogmousePressEventProc* = proc(self: QDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDialogmouseReleaseEventProc* = proc(self: QDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDialogmouseDoubleClickEventProc* = proc(self: QDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDialogmouseMoveEventProc* = proc(self: QDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDialogwheelEventProc* = proc(self: QDialog, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDialogkeyReleaseEventProc* = proc(self: QDialog, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDialogfocusInEventProc* = proc(self: QDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDialogfocusOutEventProc* = proc(self: QDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDialogenterEventProc* = proc(self: QDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDialogleaveEventProc* = proc(self: QDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDialogpaintEventProc* = proc(self: QDialog, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDialogmoveEventProc* = proc(self: QDialog, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDialogtabletEventProc* = proc(self: QDialog, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDialogactionEventProc* = proc(self: QDialog, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDialogdragEnterEventProc* = proc(self: QDialog, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDialogdragMoveEventProc* = proc(self: QDialog, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDialogdragLeaveEventProc* = proc(self: QDialog, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDialogdropEventProc* = proc(self: QDialog, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDialoghideEventProc* = proc(self: QDialog, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDialognativeEventProc* = proc(self: QDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QDialogchangeEventProc* = proc(self: QDialog, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDialogmetricProc* = proc(self: QDialog, param1: cint): cint {.raises: [], gcsafe.}
type QDialoginitPainterProc* = proc(self: QDialog, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDialogredirectedProc* = proc(self: QDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDialogsharedPainterProc* = proc(self: QDialog): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDialoginputMethodEventProc* = proc(self: QDialog, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDialoginputMethodQueryProc* = proc(self: QDialog, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDialogfocusNextPrevChildProc* = proc(self: QDialog, next: bool): bool {.raises: [], gcsafe.}
type QDialogtimerEventProc* = proc(self: QDialog, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDialogchildEventProc* = proc(self: QDialog, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDialogcustomEventProc* = proc(self: QDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDialogconnectNotifyProc* = proc(self: QDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDialogdisconnectNotifyProc* = proc(self: QDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDialogVTable* = object
  vtbl: cQDialogVTable
  metaObject*: QDialogmetaObjectProc
  metacast*: QDialogmetacastProc
  metacall*: QDialogmetacallProc
  setVisible*: QDialogsetVisibleProc
  sizeHint*: QDialogsizeHintProc
  minimumSizeHint*: QDialogminimumSizeHintProc
  open*: QDialogopenProc
  exec*: QDialogexecProc
  done*: QDialogdoneProc
  accept*: QDialogacceptProc
  reject*: QDialogrejectProc
  keyPressEvent*: QDialogkeyPressEventProc
  closeEvent*: QDialogcloseEventProc
  showEvent*: QDialogshowEventProc
  resizeEvent*: QDialogresizeEventProc
  contextMenuEvent*: QDialogcontextMenuEventProc
  eventFilter*: QDialogeventFilterProc
  devType*: QDialogdevTypeProc
  heightForWidth*: QDialogheightForWidthProc
  hasHeightForWidth*: QDialoghasHeightForWidthProc
  paintEngine*: QDialogpaintEngineProc
  event*: QDialogeventProc
  mousePressEvent*: QDialogmousePressEventProc
  mouseReleaseEvent*: QDialogmouseReleaseEventProc
  mouseDoubleClickEvent*: QDialogmouseDoubleClickEventProc
  mouseMoveEvent*: QDialogmouseMoveEventProc
  wheelEvent*: QDialogwheelEventProc
  keyReleaseEvent*: QDialogkeyReleaseEventProc
  focusInEvent*: QDialogfocusInEventProc
  focusOutEvent*: QDialogfocusOutEventProc
  enterEvent*: QDialogenterEventProc
  leaveEvent*: QDialogleaveEventProc
  paintEvent*: QDialogpaintEventProc
  moveEvent*: QDialogmoveEventProc
  tabletEvent*: QDialogtabletEventProc
  actionEvent*: QDialogactionEventProc
  dragEnterEvent*: QDialogdragEnterEventProc
  dragMoveEvent*: QDialogdragMoveEventProc
  dragLeaveEvent*: QDialogdragLeaveEventProc
  dropEvent*: QDialogdropEventProc
  hideEvent*: QDialoghideEventProc
  nativeEvent*: QDialognativeEventProc
  changeEvent*: QDialogchangeEventProc
  metric*: QDialogmetricProc
  initPainter*: QDialoginitPainterProc
  redirected*: QDialogredirectedProc
  sharedPainter*: QDialogsharedPainterProc
  inputMethodEvent*: QDialoginputMethodEventProc
  inputMethodQuery*: QDialoginputMethodQueryProc
  focusNextPrevChild*: QDialogfocusNextPrevChildProc
  timerEvent*: QDialogtimerEventProc
  childEvent*: QDialogchildEventProc
  customEvent*: QDialogcustomEventProc
  connectNotify*: QDialogconnectNotifyProc
  disconnectNotify*: QDialogdisconnectNotifyProc
proc QDialogmetaObject*(self: gen_qdialog_types.QDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialog_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQDialog_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QDialogmetacast*(self: gen_qdialog_types.QDialog, param1: cstring): pointer =
  fcQDialog_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQDialog_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDialogmetacall*(self: gen_qdialog_types.QDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQDialog_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDialogsetVisible*(self: gen_qdialog_types.QDialog, visible: bool): void =
  fcQDialog_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQDialog_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QDialogsizeHint*(self: gen_qdialog_types.QDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDialog_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQDialog_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QDialogminimumSizeHint*(self: gen_qdialog_types.QDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDialog_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQDialog_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QDialogopen*(self: gen_qdialog_types.QDialog, ): void =
  fcQDialog_virtualbase_open(self.h)

proc miqt_exec_callback_cQDialog_open(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  vtbl[].open(self)

proc QDialogexec*(self: gen_qdialog_types.QDialog, ): cint =
  fcQDialog_virtualbase_exec(self.h)

proc miqt_exec_callback_cQDialog_exec(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QDialogdone*(self: gen_qdialog_types.QDialog, param1: cint): void =
  fcQDialog_virtualbase_done(self.h, param1)

proc miqt_exec_callback_cQDialog_done(vtbl: pointer, self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = param1
  vtbl[].done(self, slotval1)

proc QDialogaccept*(self: gen_qdialog_types.QDialog, ): void =
  fcQDialog_virtualbase_accept(self.h)

proc miqt_exec_callback_cQDialog_accept(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  vtbl[].accept(self)

proc QDialogreject*(self: gen_qdialog_types.QDialog, ): void =
  fcQDialog_virtualbase_reject(self.h)

proc miqt_exec_callback_cQDialog_reject(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  vtbl[].reject(self)

proc QDialogkeyPressEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQDialog_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QDialogcloseEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQDialog_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQDialog_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)
  vtbl[].closeEvent(self, slotval1)

proc QDialogshowEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQDialog_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQDialog_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QDialogresizeEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQDialog_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQDialog_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QDialogcontextMenuEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQDialog_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QDialogeventFilter*(self: gen_qdialog_types.QDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQDialog_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDialogdevType*(self: gen_qdialog_types.QDialog, ): cint =
  fcQDialog_virtualbase_devType(self.h)

proc miqt_exec_callback_cQDialog_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QDialogheightForWidth*(self: gen_qdialog_types.QDialog, param1: cint): cint =
  fcQDialog_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQDialog_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QDialoghasHeightForWidth*(self: gen_qdialog_types.QDialog, ): bool =
  fcQDialog_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQDialog_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QDialogpaintEngine*(self: gen_qdialog_types.QDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDialog_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQDialog_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QDialogevent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQDialog_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQDialog_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDialogmousePressEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQDialog_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QDialogmouseReleaseEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QDialogmouseDoubleClickEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QDialogmouseMoveEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QDialogwheelEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQDialog_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QDialogkeyReleaseEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QDialogfocusInEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQDialog_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QDialogfocusOutEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQDialog_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QDialogenterEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQDialog_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QDialogleaveEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQDialog_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QDialogpaintEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQDialog_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QDialogmoveEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQDialog_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QDialogtabletEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQDialog_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QDialogactionEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QActionEvent): void =
  fcQDialog_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QDialogdragEnterEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QDialogdragMoveEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QDialogdragLeaveEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QDialogdropEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QDropEvent): void =
  fcQDialog_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QDialoghideEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QHideEvent): void =
  fcQDialog_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QDialognativeEvent*(self: gen_qdialog_types.QDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQDialog_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDialogchangeEvent*(self: gen_qdialog_types.QDialog, param1: gen_qcoreevent_types.QEvent): void =
  fcQDialog_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQDialog_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QDialogmetric*(self: gen_qdialog_types.QDialog, param1: cint): cint =
  fcQDialog_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQDialog_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QDialoginitPainter*(self: gen_qdialog_types.QDialog, painter: gen_qpainter_types.QPainter): void =
  fcQDialog_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQDialog_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QDialogredirected*(self: gen_qdialog_types.QDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDialog_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQDialog_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QDialogsharedPainter*(self: gen_qdialog_types.QDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDialog_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQDialog_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QDialoginputMethodEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQDialog_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QDialoginputMethodQuery*(self: gen_qdialog_types.QDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQDialog_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QDialogfocusNextPrevChild*(self: gen_qdialog_types.QDialog, next: bool): bool =
  fcQDialog_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQDialog_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QDialogtimerEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDialog_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QDialogchildEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDialog_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QDialogcustomEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQDialog_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQDialog_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QDialogconnectNotify*(self: gen_qdialog_types.QDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDialog_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDialog_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QDialogdisconnectNotify*(self: gen_qdialog_types.QDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDialog_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](vtbl)
  let self = QDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qdialog_types.QDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDialogVTable = nil): gen_qdialog_types.QDialog =
  let vtbl = if vtbl == nil: new QDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDialogVTable, _: ptr cQDialog) {.cdecl.} =
    let vtbl = cast[ref QDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDialog_disconnectNotify
  gen_qdialog_types.QDialog(h: fcQDialog_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qdialog_types.QDialog,
    vtbl: ref QDialogVTable = nil): gen_qdialog_types.QDialog =
  let vtbl = if vtbl == nil: new QDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDialogVTable, _: ptr cQDialog) {.cdecl.} =
    let vtbl = cast[ref QDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDialog_disconnectNotify
  gen_qdialog_types.QDialog(h: fcQDialog_new2(addr(vtbl[]), ))

proc create*(T: type gen_qdialog_types.QDialog,
    parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QDialogVTable = nil): gen_qdialog_types.QDialog =
  let vtbl = if vtbl == nil: new QDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDialogVTable, _: ptr cQDialog) {.cdecl.} =
    let vtbl = cast[ref QDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDialog_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQDialog_exec
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQDialog_done
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDialog_disconnectNotify
  gen_qdialog_types.QDialog(h: fcQDialog_new3(addr(vtbl[]), parent.h, cint(f)))

proc staticMetaObject*(_: type gen_qdialog_types.QDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialog_staticMetaObject())
proc delete*(self: gen_qdialog_types.QDialog) =
  fcQDialog_delete(self.h)
