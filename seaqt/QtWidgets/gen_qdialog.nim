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

proc fcQDialog_metaObject(self: pointer): pointer {.importc: "QDialog_metaObject".}
proc fcQDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QDialog_metacast".}
proc fcQDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDialog_metacall".}
proc fcQDialog_tr(s: cstring): struct_miqt_string {.importc: "QDialog_tr".}
proc fcQDialog_resultX(self: pointer): cint {.importc: "QDialog_result".}
proc fcQDialog_setVisible(self: pointer, visible: bool): void {.importc: "QDialog_setVisible".}
proc fcQDialog_sizeHint(self: pointer): pointer {.importc: "QDialog_sizeHint".}
proc fcQDialog_minimumSizeHint(self: pointer): pointer {.importc: "QDialog_minimumSizeHint".}
proc fcQDialog_setSizeGripEnabled(self: pointer, sizeGripEnabled: bool): void {.importc: "QDialog_setSizeGripEnabled".}
proc fcQDialog_isSizeGripEnabled(self: pointer): bool {.importc: "QDialog_isSizeGripEnabled".}
proc fcQDialog_setModal(self: pointer, modal: bool): void {.importc: "QDialog_setModal".}
proc fcQDialog_setResult(self: pointer, r: cint): void {.importc: "QDialog_setResult".}
proc fcQDialog_finished(self: pointer, resultVal: cint): void {.importc: "QDialog_finished".}
proc fcQDialog_connect_finished(self: pointer, slot: int, callback: proc (slot: int, resultVal: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDialog_connect_finished".}
proc fcQDialog_accepted(self: pointer): void {.importc: "QDialog_accepted".}
proc fcQDialog_connect_accepted(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDialog_connect_accepted".}
proc fcQDialog_rejected(self: pointer): void {.importc: "QDialog_rejected".}
proc fcQDialog_connect_rejected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDialog_connect_rejected".}
proc fcQDialog_open(self: pointer): void {.importc: "QDialog_open".}
proc fcQDialog_exec(self: pointer): cint {.importc: "QDialog_exec".}
proc fcQDialog_done(self: pointer, param1: cint): void {.importc: "QDialog_done".}
proc fcQDialog_accept(self: pointer): void {.importc: "QDialog_accept".}
proc fcQDialog_reject(self: pointer): void {.importc: "QDialog_reject".}
proc fcQDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDialog_tr2".}
proc fcQDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDialog_tr3".}
proc fcQDialog_vtbl(self: pointer): pointer {.importc: "QDialog_vtbl".}
proc fcQDialog_vdata(self: pointer): pointer {.importc: "QDialog_vdata".}
type cQDialogVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  done*: proc(self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQDialog_virtualbase_metaObject(self: pointer): pointer {.importc: "QDialog_virtualbase_metaObject".}
proc fcQDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDialog_virtualbase_metacast".}
proc fcQDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDialog_virtualbase_metacall".}
proc fcQDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDialog_virtualbase_setVisible".}
proc fcQDialog_virtualbase_sizeHint(self: pointer): pointer {.importc: "QDialog_virtualbase_sizeHint".}
proc fcQDialog_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QDialog_virtualbase_minimumSizeHint".}
proc fcQDialog_virtualbase_open(self: pointer): void {.importc: "QDialog_virtualbase_open".}
proc fcQDialog_virtualbase_exec(self: pointer): cint {.importc: "QDialog_virtualbase_exec".}
proc fcQDialog_virtualbase_done(self: pointer, param1: cint): void {.importc: "QDialog_virtualbase_done".}
proc fcQDialog_virtualbase_accept(self: pointer): void {.importc: "QDialog_virtualbase_accept".}
proc fcQDialog_virtualbase_reject(self: pointer): void {.importc: "QDialog_virtualbase_reject".}
proc fcQDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_keyPressEvent".}
proc fcQDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_closeEvent".}
proc fcQDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_showEvent".}
proc fcQDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_resizeEvent".}
proc fcQDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_contextMenuEvent".}
proc fcQDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QDialog_virtualbase_eventFilter".}
proc fcQDialog_virtualbase_devType(self: pointer): cint {.importc: "QDialog_virtualbase_devType".}
proc fcQDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDialog_virtualbase_heightForWidth".}
proc fcQDialog_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QDialog_virtualbase_hasHeightForWidth".}
proc fcQDialog_virtualbase_paintEngine(self: pointer): pointer {.importc: "QDialog_virtualbase_paintEngine".}
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
proc fcQDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QDialog_virtualbase_nativeEvent".}
proc fcQDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_changeEvent".}
proc fcQDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDialog_virtualbase_metric".}
proc fcQDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDialog_virtualbase_initPainter".}
proc fcQDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDialog_virtualbase_redirected".}
proc fcQDialog_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QDialog_virtualbase_sharedPainter".}
proc fcQDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDialog_virtualbase_inputMethodEvent".}
proc fcQDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDialog_virtualbase_inputMethodQuery".}
proc fcQDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDialog_virtualbase_focusNextPrevChild".}
proc fcQDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_timerEvent".}
proc fcQDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_childEvent".}
proc fcQDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDialog_virtualbase_customEvent".}
proc fcQDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDialog_virtualbase_connectNotify".}
proc fcQDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDialog_virtualbase_disconnectNotify".}
proc fcQDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QDialog_protectedbase_adjustPosition".}
proc fcQDialog_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDialog_protectedbase_updateMicroFocus".}
proc fcQDialog_protectedbase_create(self: pointer): void {.importc: "QDialog_protectedbase_create".}
proc fcQDialog_protectedbase_destroy(self: pointer): void {.importc: "QDialog_protectedbase_destroy".}
proc fcQDialog_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDialog_protectedbase_focusNextChild".}
proc fcQDialog_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDialog_protectedbase_focusPreviousChild".}
proc fcQDialog_protectedbase_sender(self: pointer): pointer {.importc: "QDialog_protectedbase_sender".}
proc fcQDialog_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDialog_protectedbase_senderSignalIndex".}
proc fcQDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDialog_protectedbase_receivers".}
proc fcQDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDialog_protectedbase_isSignalConnected".}
proc fcQDialog_new(vtbl, vdata: pointer, parent: pointer): ptr cQDialog {.importc: "QDialog_new".}
proc fcQDialog_new2(vtbl, vdata: pointer): ptr cQDialog {.importc: "QDialog_new2".}
proc fcQDialog_new3(vtbl, vdata: pointer, parent: pointer, f: cint): ptr cQDialog {.importc: "QDialog_new3".}
proc fcQDialog_staticMetaObject(): pointer {.importc: "QDialog_staticMetaObject".}

proc metaObject*(self: gen_qdialog_types.QDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialog_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdialog_types.QDialog, param1: cstring): pointer =
  fcQDialog_metacast(self.h, param1)

proc metacall*(self: gen_qdialog_types.QDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdialog_types.QDialog, s: cstring): string =
  let v_ms = fcQDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resultX*(self: gen_qdialog_types.QDialog): cint =
  fcQDialog_resultX(self.h)

proc setVisible*(self: gen_qdialog_types.QDialog, visible: bool): void =
  fcQDialog_setVisible(self.h, visible)

proc sizeHint*(self: gen_qdialog_types.QDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDialog_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qdialog_types.QDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDialog_minimumSizeHint(self.h), owned: true)

proc setSizeGripEnabled*(self: gen_qdialog_types.QDialog, sizeGripEnabled: bool): void =
  fcQDialog_setSizeGripEnabled(self.h, sizeGripEnabled)

proc isSizeGripEnabled*(self: gen_qdialog_types.QDialog): bool =
  fcQDialog_isSizeGripEnabled(self.h)

proc setModal*(self: gen_qdialog_types.QDialog, modal: bool): void =
  fcQDialog_setModal(self.h, modal)

proc setResult*(self: gen_qdialog_types.QDialog, r: cint): void =
  fcQDialog_setResult(self.h, r)

proc finished*(self: gen_qdialog_types.QDialog, resultVal: cint): void =
  fcQDialog_finished(self.h, resultVal)

type QDialogfinishedSlot* = proc(resultVal: cint)
proc cQDialog_slot_callback_finished(slot: int, resultVal: cint) {.cdecl.} =
  let nimfunc = cast[ptr QDialogfinishedSlot](cast[pointer](slot))
  let slotval1 = resultVal

  nimfunc[](slotval1)

proc cQDialog_slot_callback_finished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDialogfinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfinished*(self: gen_qdialog_types.QDialog, slot: QDialogfinishedSlot) =
  var tmp = new QDialogfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_connect_finished(self.h, cast[int](addr tmp[]), cQDialog_slot_callback_finished, cQDialog_slot_callback_finished_release)

proc accepted*(self: gen_qdialog_types.QDialog): void =
  fcQDialog_accepted(self.h)

type QDialogacceptedSlot* = proc()
proc cQDialog_slot_callback_accepted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDialogacceptedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQDialog_slot_callback_accepted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDialogacceptedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaccepted*(self: gen_qdialog_types.QDialog, slot: QDialogacceptedSlot) =
  var tmp = new QDialogacceptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_connect_accepted(self.h, cast[int](addr tmp[]), cQDialog_slot_callback_accepted, cQDialog_slot_callback_accepted_release)

proc rejected*(self: gen_qdialog_types.QDialog): void =
  fcQDialog_rejected(self.h)

type QDialogrejectedSlot* = proc()
proc cQDialog_slot_callback_rejected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDialogrejectedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQDialog_slot_callback_rejected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDialogrejectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrejected*(self: gen_qdialog_types.QDialog, slot: QDialogrejectedSlot) =
  var tmp = new QDialogrejectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_connect_rejected(self.h, cast[int](addr tmp[]), cQDialog_slot_callback_rejected, cQDialog_slot_callback_rejected_release)

proc open*(self: gen_qdialog_types.QDialog): void =
  fcQDialog_open(self.h)

proc exec*(self: gen_qdialog_types.QDialog): cint =
  fcQDialog_exec(self.h)

proc done*(self: gen_qdialog_types.QDialog, param1: cint): void =
  fcQDialog_done(self.h, param1)

proc accept*(self: gen_qdialog_types.QDialog): void =
  fcQDialog_accept(self.h)

proc reject*(self: gen_qdialog_types.QDialog): void =
  fcQDialog_reject(self.h)

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
type QDialogenterEventProc* = proc(self: QDialog, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
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
type QDialognativeEventProc* = proc(self: QDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QDialogVTable* {.inheritable, pure.} = object
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
proc QDialogmetaObject*(self: gen_qdialog_types.QDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialog_virtualbase_metaObject(self.h), owned: false)

proc cQDialog_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogmetacast*(self: gen_qdialog_types.QDialog, param1: cstring): pointer =
  fcQDialog_virtualbase_metacast(self.h, param1)

proc cQDialog_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDialogmetacall*(self: gen_qdialog_types.QDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQDialog_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDialogsetVisible*(self: gen_qdialog_types.QDialog, visible: bool): void =
  fcQDialog_virtualbase_setVisible(self.h, visible)

proc cQDialog_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QDialogsizeHint*(self: gen_qdialog_types.QDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDialog_virtualbase_sizeHint(self.h), owned: true)

proc cQDialog_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogminimumSizeHint*(self: gen_qdialog_types.QDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDialog_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQDialog_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogopen*(self: gen_qdialog_types.QDialog): void =
  fcQDialog_virtualbase_open(self.h)

proc cQDialog_vtable_callback_open(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  vtbl[].open(self)

proc QDialogexec*(self: gen_qdialog_types.QDialog): cint =
  fcQDialog_virtualbase_exec(self.h)

proc cQDialog_vtable_callback_exec(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QDialogdone*(self: gen_qdialog_types.QDialog, param1: cint): void =
  fcQDialog_virtualbase_done(self.h, param1)

proc cQDialog_vtable_callback_done(self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = param1
  vtbl[].done(self, slotval1)

proc QDialogaccept*(self: gen_qdialog_types.QDialog): void =
  fcQDialog_virtualbase_accept(self.h)

proc cQDialog_vtable_callback_accept(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  vtbl[].accept(self)

proc QDialogreject*(self: gen_qdialog_types.QDialog): void =
  fcQDialog_virtualbase_reject(self.h)

proc cQDialog_vtable_callback_reject(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  vtbl[].reject(self)

proc QDialogkeyPressEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc cQDialog_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QDialogcloseEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQDialog_virtualbase_closeEvent(self.h, param1.h)

proc cQDialog_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QDialogshowEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQDialog_virtualbase_showEvent(self.h, param1.h)

proc cQDialog_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QDialogresizeEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQDialog_virtualbase_resizeEvent(self.h, param1.h)

proc cQDialog_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QDialogcontextMenuEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQDialog_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QDialogeventFilter*(self: gen_qdialog_types.QDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQDialog_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDialogdevType*(self: gen_qdialog_types.QDialog): cint =
  fcQDialog_virtualbase_devType(self.h)

proc cQDialog_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QDialogheightForWidth*(self: gen_qdialog_types.QDialog, param1: cint): cint =
  fcQDialog_virtualbase_heightForWidth(self.h, param1)

proc cQDialog_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QDialoghasHeightForWidth*(self: gen_qdialog_types.QDialog): bool =
  fcQDialog_virtualbase_hasHeightForWidth(self.h)

proc cQDialog_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QDialogpaintEngine*(self: gen_qdialog_types.QDialog): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDialog_virtualbase_paintEngine(self.h), owned: false)

proc cQDialog_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogevent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQDialog_virtualbase_event(self.h, event.h)

proc cQDialog_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDialogmousePressEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQDialog_virtualbase_mousePressEvent(self.h, event.h)

proc cQDialog_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QDialogmouseReleaseEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQDialog_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QDialogmouseDoubleClickEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQDialog_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QDialogmouseMoveEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQDialog_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QDialogwheelEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQDialog_virtualbase_wheelEvent(self.h, event.h)

proc cQDialog_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QDialogkeyReleaseEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQDialog_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QDialogfocusInEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQDialog_virtualbase_focusInEvent(self.h, event.h)

proc cQDialog_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QDialogfocusOutEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQDialog_virtualbase_focusOutEvent(self.h, event.h)

proc cQDialog_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QDialogenterEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QEnterEvent): void =
  fcQDialog_virtualbase_enterEvent(self.h, event.h)

proc cQDialog_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QDialogleaveEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQDialog_virtualbase_leaveEvent(self.h, event.h)

proc cQDialog_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QDialogpaintEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQDialog_virtualbase_paintEvent(self.h, event.h)

proc cQDialog_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QDialogmoveEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQDialog_virtualbase_moveEvent(self.h, event.h)

proc cQDialog_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QDialogtabletEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQDialog_virtualbase_tabletEvent(self.h, event.h)

proc cQDialog_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QDialogactionEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QActionEvent): void =
  fcQDialog_virtualbase_actionEvent(self.h, event.h)

proc cQDialog_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QDialogdragEnterEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc cQDialog_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QDialogdragMoveEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc cQDialog_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QDialogdragLeaveEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQDialog_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QDialogdropEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QDropEvent): void =
  fcQDialog_virtualbase_dropEvent(self.h, event.h)

proc cQDialog_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QDialoghideEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QHideEvent): void =
  fcQDialog_virtualbase_hideEvent(self.h, event.h)

proc cQDialog_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QDialognativeEvent*(self: gen_qdialog_types.QDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQDialog_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
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

proc cQDialog_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QDialogmetric*(self: gen_qdialog_types.QDialog, param1: cint): cint =
  fcQDialog_virtualbase_metric(self.h, cint(param1))

proc cQDialog_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QDialoginitPainter*(self: gen_qdialog_types.QDialog, painter: gen_qpainter_types.QPainter): void =
  fcQDialog_virtualbase_initPainter(self.h, painter.h)

proc cQDialog_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QDialogredirected*(self: gen_qdialog_types.QDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDialog_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQDialog_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogsharedPainter*(self: gen_qdialog_types.QDialog): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDialog_virtualbase_sharedPainter(self.h), owned: false)

proc cQDialog_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialoginputMethodEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQDialog_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QDialoginputMethodQuery*(self: gen_qdialog_types.QDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDialog_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQDialog_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogfocusNextPrevChild*(self: gen_qdialog_types.QDialog, next: bool): bool =
  fcQDialog_virtualbase_focusNextPrevChild(self.h, next)

proc cQDialog_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QDialogtimerEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDialog_virtualbase_timerEvent(self.h, event.h)

proc cQDialog_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QDialogchildEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDialog_virtualbase_childEvent(self.h, event.h)

proc cQDialog_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QDialogcustomEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQDialog_virtualbase_customEvent(self.h, event.h)

proc cQDialog_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QDialogconnectNotify*(self: gen_qdialog_types.QDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDialog_virtualbase_connectNotify(self.h, signal.h)

proc cQDialog_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QDialogdisconnectNotify*(self: gen_qdialog_types.QDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc cQDialog_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogVTable](fcQDialog_vdata(self))
  let self = QDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDialog* {.inheritable.} = ref object of QDialog
  vtbl*: cQDialogVTable
method metaObject*(self: VirtualQDialog): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDialogmetaObject(self[])
proc cQDialog_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQDialog, param1: cstring): pointer {.base.} =
  QDialogmetacast(self[], param1)
proc cQDialog_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQDialog, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDialogmetacall(self[], param1, param2, param3)
proc cQDialog_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setVisible*(self: VirtualQDialog, visible: bool): void {.base.} =
  QDialogsetVisible(self[], visible)
proc cQDialog_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQDialog): gen_qsize_types.QSize {.base.} =
  QDialogsizeHint(self[])
proc cQDialog_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQDialog): gen_qsize_types.QSize {.base.} =
  QDialogminimumSizeHint(self[])
proc cQDialog_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method open*(self: VirtualQDialog): void {.base.} =
  QDialogopen(self[])
proc cQDialog_method_callback_open(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  inst.open()

method exec*(self: VirtualQDialog): cint {.base.} =
  QDialogexec(self[])
proc cQDialog_method_callback_exec(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  var virtualReturn = inst.exec()
  virtualReturn

method done*(self: VirtualQDialog, param1: cint): void {.base.} =
  QDialogdone(self[], param1)
proc cQDialog_method_callback_done(self: pointer, param1: cint): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = param1
  inst.done(slotval1)

method accept*(self: VirtualQDialog): void {.base.} =
  QDialogaccept(self[])
proc cQDialog_method_callback_accept(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  inst.accept()

method reject*(self: VirtualQDialog): void {.base.} =
  QDialogreject(self[])
proc cQDialog_method_callback_reject(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  inst.reject()

method keyPressEvent*(self: VirtualQDialog, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QDialogkeyPressEvent(self[], param1)
proc cQDialog_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method closeEvent*(self: VirtualQDialog, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QDialogcloseEvent(self[], param1)
proc cQDialog_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

method showEvent*(self: VirtualQDialog, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QDialogshowEvent(self[], param1)
proc cQDialog_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

method resizeEvent*(self: VirtualQDialog, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QDialogresizeEvent(self[], param1)
proc cQDialog_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method contextMenuEvent*(self: VirtualQDialog, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDialogcontextMenuEvent(self[], param1)
proc cQDialog_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method eventFilter*(self: VirtualQDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDialogeventFilter(self[], param1, param2)
proc cQDialog_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method devType*(self: VirtualQDialog): cint {.base.} =
  QDialogdevType(self[])
proc cQDialog_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method heightForWidth*(self: VirtualQDialog, param1: cint): cint {.base.} =
  QDialogheightForWidth(self[], param1)
proc cQDialog_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQDialog): bool {.base.} =
  QDialoghasHeightForWidth(self[])
proc cQDialog_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQDialog): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDialogpaintEngine(self[])
proc cQDialog_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQDialog, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDialogevent(self[], event)
proc cQDialog_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialogmousePressEvent(self[], event)
proc cQDialog_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialogmouseReleaseEvent(self[], event)
proc cQDialog_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialogmouseDoubleClickEvent(self[], event)
proc cQDialog_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialogmouseMoveEvent(self[], event)
proc cQDialog_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQDialog, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QDialogwheelEvent(self[], event)
proc cQDialog_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQDialog, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDialogkeyReleaseEvent(self[], event)
proc cQDialog_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDialogfocusInEvent(self[], event)
proc cQDialog_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDialogfocusOutEvent(self[], event)
proc cQDialog_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQDialog, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QDialogenterEvent(self[], event)
proc cQDialog_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialogleaveEvent(self[], event)
proc cQDialog_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQDialog, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QDialogpaintEvent(self[], event)
proc cQDialog_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQDialog, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDialogmoveEvent(self[], event)
proc cQDialog_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQDialog, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDialogtabletEvent(self[], event)
proc cQDialog_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQDialog, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDialogactionEvent(self[], event)
proc cQDialog_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQDialog, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDialogdragEnterEvent(self[], event)
proc cQDialog_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQDialog, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDialogdragMoveEvent(self[], event)
proc cQDialog_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQDialog, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDialogdragLeaveEvent(self[], event)
proc cQDialog_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQDialog, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDialogdropEvent(self[], event)
proc cQDialog_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method hideEvent*(self: VirtualQDialog, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDialoghideEvent(self[], event)
proc cQDialog_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QDialognativeEvent(self[], eventType, message, resultVal)
proc cQDialog_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQDialog, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialogchangeEvent(self[], param1)
proc cQDialog_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQDialog, param1: cint): cint {.base.} =
  QDialogmetric(self[], param1)
proc cQDialog_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQDialog, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDialoginitPainter(self[], painter)
proc cQDialog_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDialogredirected(self[], offset)
proc cQDialog_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQDialog): gen_qpainter_types.QPainter {.base.} =
  QDialogsharedPainter(self[])
proc cQDialog_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQDialog, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDialoginputMethodEvent(self[], param1)
proc cQDialog_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQDialog, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDialoginputMethodQuery(self[], param1)
proc cQDialog_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQDialog, next: bool): bool {.base.} =
  QDialogfocusNextPrevChild(self[], next)
proc cQDialog_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQDialog, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDialogtimerEvent(self[], event)
proc cQDialog_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQDialog, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDialogchildEvent(self[], event)
proc cQDialog_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialogcustomEvent(self[], event)
proc cQDialog_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDialogconnectNotify(self[], signal)
proc cQDialog_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDialogdisconnectNotify(self[], signal)
proc cQDialog_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialog](fcQDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc adjustPosition*(self: gen_qdialog_types.QDialog, param1: gen_qwidget_types.QWidget): void =
  fcQDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qdialog_types.QDialog): void =
  fcQDialog_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qdialog_types.QDialog): void =
  fcQDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qdialog_types.QDialog): void =
  fcQDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qdialog_types.QDialog): bool =
  fcQDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qdialog_types.QDialog): bool =
  fcQDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qdialog_types.QDialog): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDialog_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdialog_types.QDialog): cint =
  fcQDialog_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdialog_types.QDialog, signal: cstring): cint =
  fcQDialog_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdialog_types.QDialog, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDialog_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdialog_types.QDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDialogVTable = nil): gen_qdialog_types.QDialog =
  let vtbl = if vtbl == nil: new QDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialogVTable](fcQDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDialog_vtable_callback_disconnectNotify
  gen_qdialog_types.QDialog(h: fcQDialog_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qdialog_types.QDialog,
    vtbl: ref QDialogVTable = nil): gen_qdialog_types.QDialog =
  let vtbl = if vtbl == nil: new QDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialogVTable](fcQDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDialog_vtable_callback_disconnectNotify
  gen_qdialog_types.QDialog(h: fcQDialog_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qdialog_types.QDialog,
    parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QDialogVTable = nil): gen_qdialog_types.QDialog =
  let vtbl = if vtbl == nil: new QDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialogVTable](fcQDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDialog_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQDialog_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQDialog_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDialog_vtable_callback_disconnectNotify
  gen_qdialog_types.QDialog(h: fcQDialog_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(f)), owned: true)

const cQDialog_mvtbl = cQDialogVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDialog()[])](self.fcQDialog_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQDialog_method_callback_metaObject,
  metacast: cQDialog_method_callback_metacast,
  metacall: cQDialog_method_callback_metacall,
  setVisible: cQDialog_method_callback_setVisible,
  sizeHint: cQDialog_method_callback_sizeHint,
  minimumSizeHint: cQDialog_method_callback_minimumSizeHint,
  open: cQDialog_method_callback_open,
  exec: cQDialog_method_callback_exec,
  done: cQDialog_method_callback_done,
  accept: cQDialog_method_callback_accept,
  reject: cQDialog_method_callback_reject,
  keyPressEvent: cQDialog_method_callback_keyPressEvent,
  closeEvent: cQDialog_method_callback_closeEvent,
  showEvent: cQDialog_method_callback_showEvent,
  resizeEvent: cQDialog_method_callback_resizeEvent,
  contextMenuEvent: cQDialog_method_callback_contextMenuEvent,
  eventFilter: cQDialog_method_callback_eventFilter,
  devType: cQDialog_method_callback_devType,
  heightForWidth: cQDialog_method_callback_heightForWidth,
  hasHeightForWidth: cQDialog_method_callback_hasHeightForWidth,
  paintEngine: cQDialog_method_callback_paintEngine,
  event: cQDialog_method_callback_event,
  mousePressEvent: cQDialog_method_callback_mousePressEvent,
  mouseReleaseEvent: cQDialog_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQDialog_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQDialog_method_callback_mouseMoveEvent,
  wheelEvent: cQDialog_method_callback_wheelEvent,
  keyReleaseEvent: cQDialog_method_callback_keyReleaseEvent,
  focusInEvent: cQDialog_method_callback_focusInEvent,
  focusOutEvent: cQDialog_method_callback_focusOutEvent,
  enterEvent: cQDialog_method_callback_enterEvent,
  leaveEvent: cQDialog_method_callback_leaveEvent,
  paintEvent: cQDialog_method_callback_paintEvent,
  moveEvent: cQDialog_method_callback_moveEvent,
  tabletEvent: cQDialog_method_callback_tabletEvent,
  actionEvent: cQDialog_method_callback_actionEvent,
  dragEnterEvent: cQDialog_method_callback_dragEnterEvent,
  dragMoveEvent: cQDialog_method_callback_dragMoveEvent,
  dragLeaveEvent: cQDialog_method_callback_dragLeaveEvent,
  dropEvent: cQDialog_method_callback_dropEvent,
  hideEvent: cQDialog_method_callback_hideEvent,
  nativeEvent: cQDialog_method_callback_nativeEvent,
  changeEvent: cQDialog_method_callback_changeEvent,
  metric: cQDialog_method_callback_metric,
  initPainter: cQDialog_method_callback_initPainter,
  redirected: cQDialog_method_callback_redirected,
  sharedPainter: cQDialog_method_callback_sharedPainter,
  inputMethodEvent: cQDialog_method_callback_inputMethodEvent,
  inputMethodQuery: cQDialog_method_callback_inputMethodQuery,
  focusNextPrevChild: cQDialog_method_callback_focusNextPrevChild,
  timerEvent: cQDialog_method_callback_timerEvent,
  childEvent: cQDialog_method_callback_childEvent,
  customEvent: cQDialog_method_callback_customEvent,
  connectNotify: cQDialog_method_callback_connectNotify,
  disconnectNotify: cQDialog_method_callback_disconnectNotify,
)
proc create*(T: type gen_qdialog_types.QDialog,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDialog_new(addr(cQDialog_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qdialog_types.QDialog,
    inst: VirtualQDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDialog_new2(addr(cQDialog_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qdialog_types.QDialog,
    parent: gen_qwidget_types.QWidget, f: cint,
    inst: VirtualQDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDialog_new3(addr(cQDialog_mvtbl), addr(inst[]), parent.h, cint(f))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qdialog_types.QDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialog_staticMetaObject())
