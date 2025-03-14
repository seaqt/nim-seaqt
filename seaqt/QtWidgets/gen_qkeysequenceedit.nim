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


{.compile("gen_qkeysequenceedit.cpp", QtWidgetsCFlags).}


import ./gen_qkeysequenceedit_types
export gen_qkeysequenceedit_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qkeysequence_types,
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
  gen_qkeysequence_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qwidget

type cQKeySequenceEdit*{.exportc: "QKeySequenceEdit", incompleteStruct.} = object

proc fcQKeySequenceEdit_metaObject(self: pointer): pointer {.importc: "QKeySequenceEdit_metaObject".}
proc fcQKeySequenceEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QKeySequenceEdit_metacast".}
proc fcQKeySequenceEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QKeySequenceEdit_metacall".}
proc fcQKeySequenceEdit_tr(s: cstring): struct_miqt_string {.importc: "QKeySequenceEdit_tr".}
proc fcQKeySequenceEdit_trUtf8(s: cstring): struct_miqt_string {.importc: "QKeySequenceEdit_trUtf8".}
proc fcQKeySequenceEdit_keySequence(self: pointer): pointer {.importc: "QKeySequenceEdit_keySequence".}
proc fcQKeySequenceEdit_setKeySequence(self: pointer, keySequence: pointer): void {.importc: "QKeySequenceEdit_setKeySequence".}
proc fcQKeySequenceEdit_clear(self: pointer): void {.importc: "QKeySequenceEdit_clear".}
proc fcQKeySequenceEdit_editingFinished(self: pointer): void {.importc: "QKeySequenceEdit_editingFinished".}
proc fcQKeySequenceEdit_connect_editingFinished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QKeySequenceEdit_connect_editingFinished".}
proc fcQKeySequenceEdit_keySequenceChanged(self: pointer, keySequence: pointer): void {.importc: "QKeySequenceEdit_keySequenceChanged".}
proc fcQKeySequenceEdit_connect_keySequenceChanged(self: pointer, slot: int, callback: proc (slot: int, keySequence: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QKeySequenceEdit_connect_keySequenceChanged".}
proc fcQKeySequenceEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeySequenceEdit_tr2".}
proc fcQKeySequenceEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeySequenceEdit_tr3".}
proc fcQKeySequenceEdit_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeySequenceEdit_trUtf82".}
proc fcQKeySequenceEdit_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeySequenceEdit_trUtf83".}
proc fcQKeySequenceEdit_vtbl(self: pointer): pointer {.importc: "QKeySequenceEdit_vtbl".}
proc fcQKeySequenceEdit_vdata(self: pointer): pointer {.importc: "QKeySequenceEdit_vdata".}
type cQKeySequenceEditVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQKeySequenceEdit_virtualbase_metaObject(self: pointer): pointer {.importc: "QKeySequenceEdit_virtualbase_metaObject".}
proc fcQKeySequenceEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QKeySequenceEdit_virtualbase_metacast".}
proc fcQKeySequenceEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QKeySequenceEdit_virtualbase_metacall".}
proc fcQKeySequenceEdit_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QKeySequenceEdit_virtualbase_event".}
proc fcQKeySequenceEdit_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QKeySequenceEdit_virtualbase_keyPressEvent".}
proc fcQKeySequenceEdit_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void {.importc: "QKeySequenceEdit_virtualbase_keyReleaseEvent".}
proc fcQKeySequenceEdit_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QKeySequenceEdit_virtualbase_timerEvent".}
proc fcQKeySequenceEdit_virtualbase_devType(self: pointer): cint {.importc: "QKeySequenceEdit_virtualbase_devType".}
proc fcQKeySequenceEdit_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QKeySequenceEdit_virtualbase_setVisible".}
proc fcQKeySequenceEdit_virtualbase_sizeHint(self: pointer): pointer {.importc: "QKeySequenceEdit_virtualbase_sizeHint".}
proc fcQKeySequenceEdit_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QKeySequenceEdit_virtualbase_minimumSizeHint".}
proc fcQKeySequenceEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QKeySequenceEdit_virtualbase_heightForWidth".}
proc fcQKeySequenceEdit_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QKeySequenceEdit_virtualbase_hasHeightForWidth".}
proc fcQKeySequenceEdit_virtualbase_paintEngine(self: pointer): pointer {.importc: "QKeySequenceEdit_virtualbase_paintEngine".}
proc fcQKeySequenceEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_mousePressEvent".}
proc fcQKeySequenceEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_mouseReleaseEvent".}
proc fcQKeySequenceEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQKeySequenceEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_mouseMoveEvent".}
proc fcQKeySequenceEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_wheelEvent".}
proc fcQKeySequenceEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_focusInEvent".}
proc fcQKeySequenceEdit_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_focusOutEvent".}
proc fcQKeySequenceEdit_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_enterEvent".}
proc fcQKeySequenceEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_leaveEvent".}
proc fcQKeySequenceEdit_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_paintEvent".}
proc fcQKeySequenceEdit_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_moveEvent".}
proc fcQKeySequenceEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_resizeEvent".}
proc fcQKeySequenceEdit_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_closeEvent".}
proc fcQKeySequenceEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_contextMenuEvent".}
proc fcQKeySequenceEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_tabletEvent".}
proc fcQKeySequenceEdit_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_actionEvent".}
proc fcQKeySequenceEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_dragEnterEvent".}
proc fcQKeySequenceEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_dragMoveEvent".}
proc fcQKeySequenceEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_dragLeaveEvent".}
proc fcQKeySequenceEdit_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_dropEvent".}
proc fcQKeySequenceEdit_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_showEvent".}
proc fcQKeySequenceEdit_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_hideEvent".}
proc fcQKeySequenceEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QKeySequenceEdit_virtualbase_nativeEvent".}
proc fcQKeySequenceEdit_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QKeySequenceEdit_virtualbase_changeEvent".}
proc fcQKeySequenceEdit_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QKeySequenceEdit_virtualbase_metric".}
proc fcQKeySequenceEdit_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QKeySequenceEdit_virtualbase_initPainter".}
proc fcQKeySequenceEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QKeySequenceEdit_virtualbase_redirected".}
proc fcQKeySequenceEdit_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QKeySequenceEdit_virtualbase_sharedPainter".}
proc fcQKeySequenceEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QKeySequenceEdit_virtualbase_inputMethodEvent".}
proc fcQKeySequenceEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QKeySequenceEdit_virtualbase_inputMethodQuery".}
proc fcQKeySequenceEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QKeySequenceEdit_virtualbase_focusNextPrevChild".}
proc fcQKeySequenceEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QKeySequenceEdit_virtualbase_eventFilter".}
proc fcQKeySequenceEdit_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_childEvent".}
proc fcQKeySequenceEdit_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_customEvent".}
proc fcQKeySequenceEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QKeySequenceEdit_virtualbase_connectNotify".}
proc fcQKeySequenceEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QKeySequenceEdit_virtualbase_disconnectNotify".}
proc fcQKeySequenceEdit_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QKeySequenceEdit_protectedbase_updateMicroFocus".}
proc fcQKeySequenceEdit_protectedbase_create(self: pointer): void {.importc: "QKeySequenceEdit_protectedbase_create".}
proc fcQKeySequenceEdit_protectedbase_destroy(self: pointer): void {.importc: "QKeySequenceEdit_protectedbase_destroy".}
proc fcQKeySequenceEdit_protectedbase_focusNextChild(self: pointer): bool {.importc: "QKeySequenceEdit_protectedbase_focusNextChild".}
proc fcQKeySequenceEdit_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QKeySequenceEdit_protectedbase_focusPreviousChild".}
proc fcQKeySequenceEdit_protectedbase_sender(self: pointer): pointer {.importc: "QKeySequenceEdit_protectedbase_sender".}
proc fcQKeySequenceEdit_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QKeySequenceEdit_protectedbase_senderSignalIndex".}
proc fcQKeySequenceEdit_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QKeySequenceEdit_protectedbase_receivers".}
proc fcQKeySequenceEdit_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QKeySequenceEdit_protectedbase_isSignalConnected".}
proc fcQKeySequenceEdit_new(vtbl, vdata: pointer, parent: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new".}
proc fcQKeySequenceEdit_new2(vtbl, vdata: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new2".}
proc fcQKeySequenceEdit_new3(vtbl, vdata: pointer, keySequence: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new3".}
proc fcQKeySequenceEdit_new4(vtbl, vdata: pointer, keySequence: pointer, parent: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new4".}
proc fcQKeySequenceEdit_staticMetaObject(): pointer {.importc: "QKeySequenceEdit_staticMetaObject".}

proc metaObject*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeySequenceEdit_metaObject(self.h), owned: false)

proc metacast*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cstring): pointer =
  fcQKeySequenceEdit_metacast(self.h, param1)

proc metacall*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQKeySequenceEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qkeysequenceedit_types.QKeySequenceEdit, s: cstring): string =
  let v_ms = fcQKeySequenceEdit_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qkeysequenceedit_types.QKeySequenceEdit, s: cstring): string =
  let v_ms = fcQKeySequenceEdit_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc keySequence*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequenceEdit_keySequence(self.h), owned: true)

proc setKeySequence*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, keySequence: gen_qkeysequence_types.QKeySequence): void =
  fcQKeySequenceEdit_setKeySequence(self.h, keySequence.h)

proc clear*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): void =
  fcQKeySequenceEdit_clear(self.h)

proc editingFinished*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): void =
  fcQKeySequenceEdit_editingFinished(self.h)

type QKeySequenceEditeditingFinishedSlot* = proc()
proc cQKeySequenceEdit_slot_callback_editingFinished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QKeySequenceEditeditingFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQKeySequenceEdit_slot_callback_editingFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QKeySequenceEditeditingFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oneditingFinished*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditeditingFinishedSlot) =
  var tmp = new QKeySequenceEditeditingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_connect_editingFinished(self.h, cast[int](addr tmp[]), cQKeySequenceEdit_slot_callback_editingFinished, cQKeySequenceEdit_slot_callback_editingFinished_release)

proc keySequenceChanged*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, keySequence: gen_qkeysequence_types.QKeySequence): void =
  fcQKeySequenceEdit_keySequenceChanged(self.h, keySequence.h)

type QKeySequenceEditkeySequenceChangedSlot* = proc(keySequence: gen_qkeysequence_types.QKeySequence)
proc cQKeySequenceEdit_slot_callback_keySequenceChanged(slot: int, keySequence: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QKeySequenceEditkeySequenceChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qkeysequence_types.QKeySequence(h: keySequence, owned: false)

  nimfunc[](slotval1)

proc cQKeySequenceEdit_slot_callback_keySequenceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QKeySequenceEditkeySequenceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onkeySequenceChanged*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditkeySequenceChangedSlot) =
  var tmp = new QKeySequenceEditkeySequenceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_connect_keySequenceChanged(self.h, cast[int](addr tmp[]), cQKeySequenceEdit_slot_callback_keySequenceChanged, cQKeySequenceEdit_slot_callback_keySequenceChanged_release)

proc tr*(_: type gen_qkeysequenceedit_types.QKeySequenceEdit, s: cstring, c: cstring): string =
  let v_ms = fcQKeySequenceEdit_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qkeysequenceedit_types.QKeySequenceEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQKeySequenceEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qkeysequenceedit_types.QKeySequenceEdit, s: cstring, c: cstring): string =
  let v_ms = fcQKeySequenceEdit_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qkeysequenceedit_types.QKeySequenceEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQKeySequenceEdit_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QKeySequenceEditmetaObjectProc* = proc(self: QKeySequenceEdit): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QKeySequenceEditmetacastProc* = proc(self: QKeySequenceEdit, param1: cstring): pointer {.raises: [], gcsafe.}
type QKeySequenceEditmetacallProc* = proc(self: QKeySequenceEdit, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QKeySequenceEditeventProc* = proc(self: QKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QKeySequenceEditkeyPressEventProc* = proc(self: QKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditkeyReleaseEventProc* = proc(self: QKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QKeySequenceEdittimerEventProc* = proc(self: QKeySequenceEdit, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditdevTypeProc* = proc(self: QKeySequenceEdit): cint {.raises: [], gcsafe.}
type QKeySequenceEditsetVisibleProc* = proc(self: QKeySequenceEdit, visible: bool): void {.raises: [], gcsafe.}
type QKeySequenceEditsizeHintProc* = proc(self: QKeySequenceEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QKeySequenceEditminimumSizeHintProc* = proc(self: QKeySequenceEdit): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QKeySequenceEditheightForWidthProc* = proc(self: QKeySequenceEdit, param1: cint): cint {.raises: [], gcsafe.}
type QKeySequenceEdithasHeightForWidthProc* = proc(self: QKeySequenceEdit): bool {.raises: [], gcsafe.}
type QKeySequenceEditpaintEngineProc* = proc(self: QKeySequenceEdit): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QKeySequenceEditmousePressEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditmouseReleaseEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditmouseDoubleClickEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditmouseMoveEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditwheelEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditfocusInEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditfocusOutEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditenterEventProc* = proc(self: QKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditleaveEventProc* = proc(self: QKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditpaintEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditmoveEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditresizeEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditcloseEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditcontextMenuEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QKeySequenceEdittabletEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditactionEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditdragEnterEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditdragMoveEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditdragLeaveEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditdropEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditshowEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QKeySequenceEdithideEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditnativeEventProc* = proc(self: QKeySequenceEdit, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QKeySequenceEditchangeEventProc* = proc(self: QKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditmetricProc* = proc(self: QKeySequenceEdit, param1: cint): cint {.raises: [], gcsafe.}
type QKeySequenceEditinitPainterProc* = proc(self: QKeySequenceEdit, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QKeySequenceEditredirectedProc* = proc(self: QKeySequenceEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QKeySequenceEditsharedPainterProc* = proc(self: QKeySequenceEdit): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QKeySequenceEditinputMethodEventProc* = proc(self: QKeySequenceEdit, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditinputMethodQueryProc* = proc(self: QKeySequenceEdit, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QKeySequenceEditfocusNextPrevChildProc* = proc(self: QKeySequenceEdit, next: bool): bool {.raises: [], gcsafe.}
type QKeySequenceEditeventFilterProc* = proc(self: QKeySequenceEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QKeySequenceEditchildEventProc* = proc(self: QKeySequenceEdit, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditcustomEventProc* = proc(self: QKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditconnectNotifyProc* = proc(self: QKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QKeySequenceEditdisconnectNotifyProc* = proc(self: QKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QKeySequenceEditVTable* {.inheritable, pure.} = object
  vtbl: cQKeySequenceEditVTable
  metaObject*: QKeySequenceEditmetaObjectProc
  metacast*: QKeySequenceEditmetacastProc
  metacall*: QKeySequenceEditmetacallProc
  event*: QKeySequenceEditeventProc
  keyPressEvent*: QKeySequenceEditkeyPressEventProc
  keyReleaseEvent*: QKeySequenceEditkeyReleaseEventProc
  timerEvent*: QKeySequenceEdittimerEventProc
  devType*: QKeySequenceEditdevTypeProc
  setVisible*: QKeySequenceEditsetVisibleProc
  sizeHint*: QKeySequenceEditsizeHintProc
  minimumSizeHint*: QKeySequenceEditminimumSizeHintProc
  heightForWidth*: QKeySequenceEditheightForWidthProc
  hasHeightForWidth*: QKeySequenceEdithasHeightForWidthProc
  paintEngine*: QKeySequenceEditpaintEngineProc
  mousePressEvent*: QKeySequenceEditmousePressEventProc
  mouseReleaseEvent*: QKeySequenceEditmouseReleaseEventProc
  mouseDoubleClickEvent*: QKeySequenceEditmouseDoubleClickEventProc
  mouseMoveEvent*: QKeySequenceEditmouseMoveEventProc
  wheelEvent*: QKeySequenceEditwheelEventProc
  focusInEvent*: QKeySequenceEditfocusInEventProc
  focusOutEvent*: QKeySequenceEditfocusOutEventProc
  enterEvent*: QKeySequenceEditenterEventProc
  leaveEvent*: QKeySequenceEditleaveEventProc
  paintEvent*: QKeySequenceEditpaintEventProc
  moveEvent*: QKeySequenceEditmoveEventProc
  resizeEvent*: QKeySequenceEditresizeEventProc
  closeEvent*: QKeySequenceEditcloseEventProc
  contextMenuEvent*: QKeySequenceEditcontextMenuEventProc
  tabletEvent*: QKeySequenceEdittabletEventProc
  actionEvent*: QKeySequenceEditactionEventProc
  dragEnterEvent*: QKeySequenceEditdragEnterEventProc
  dragMoveEvent*: QKeySequenceEditdragMoveEventProc
  dragLeaveEvent*: QKeySequenceEditdragLeaveEventProc
  dropEvent*: QKeySequenceEditdropEventProc
  showEvent*: QKeySequenceEditshowEventProc
  hideEvent*: QKeySequenceEdithideEventProc
  nativeEvent*: QKeySequenceEditnativeEventProc
  changeEvent*: QKeySequenceEditchangeEventProc
  metric*: QKeySequenceEditmetricProc
  initPainter*: QKeySequenceEditinitPainterProc
  redirected*: QKeySequenceEditredirectedProc
  sharedPainter*: QKeySequenceEditsharedPainterProc
  inputMethodEvent*: QKeySequenceEditinputMethodEventProc
  inputMethodQuery*: QKeySequenceEditinputMethodQueryProc
  focusNextPrevChild*: QKeySequenceEditfocusNextPrevChildProc
  eventFilter*: QKeySequenceEditeventFilterProc
  childEvent*: QKeySequenceEditchildEventProc
  customEvent*: QKeySequenceEditcustomEventProc
  connectNotify*: QKeySequenceEditconnectNotifyProc
  disconnectNotify*: QKeySequenceEditdisconnectNotifyProc
proc QKeySequenceEditmetaObject*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeySequenceEdit_virtualbase_metaObject(self.h), owned: false)

proc cQKeySequenceEdit_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditmetacast*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cstring): pointer =
  fcQKeySequenceEdit_virtualbase_metacast(self.h, param1)

proc cQKeySequenceEdit_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QKeySequenceEditmetacall*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQKeySequenceEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQKeySequenceEdit_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QKeySequenceEditevent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): bool =
  fcQKeySequenceEdit_virtualbase_event(self.h, param1.h)

proc cQKeySequenceEdit_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QKeySequenceEditkeyPressEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void =
  fcQKeySequenceEdit_virtualbase_keyPressEvent(self.h, param1.h)

proc cQKeySequenceEdit_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QKeySequenceEditkeyReleaseEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void =
  fcQKeySequenceEdit_virtualbase_keyReleaseEvent(self.h, param1.h)

proc cQKeySequenceEdit_vtable_callback_keyReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QKeySequenceEdittimerEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQKeySequenceEdit_virtualbase_timerEvent(self.h, param1.h)

proc cQKeySequenceEdit_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QKeySequenceEditdevType*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): cint =
  fcQKeySequenceEdit_virtualbase_devType(self.h)

proc cQKeySequenceEdit_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QKeySequenceEditsetVisible*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, visible: bool): void =
  fcQKeySequenceEdit_virtualbase_setVisible(self.h, visible)

proc cQKeySequenceEdit_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QKeySequenceEditsizeHint*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQKeySequenceEdit_virtualbase_sizeHint(self.h), owned: true)

proc cQKeySequenceEdit_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditminimumSizeHint*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQKeySequenceEdit_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQKeySequenceEdit_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditheightForWidth*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint): cint =
  fcQKeySequenceEdit_virtualbase_heightForWidth(self.h, param1)

proc cQKeySequenceEdit_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QKeySequenceEdithasHeightForWidth*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): bool =
  fcQKeySequenceEdit_virtualbase_hasHeightForWidth(self.h)

proc cQKeySequenceEdit_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QKeySequenceEditpaintEngine*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQKeySequenceEdit_virtualbase_paintEngine(self.h), owned: false)

proc cQKeySequenceEdit_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditmousePressEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQKeySequenceEdit_virtualbase_mousePressEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QKeySequenceEditmouseReleaseEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQKeySequenceEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QKeySequenceEditmouseDoubleClickEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQKeySequenceEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QKeySequenceEditmouseMoveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQKeySequenceEdit_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QKeySequenceEditwheelEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QWheelEvent): void =
  fcQKeySequenceEdit_virtualbase_wheelEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QKeySequenceEditfocusInEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QFocusEvent): void =
  fcQKeySequenceEdit_virtualbase_focusInEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QKeySequenceEditfocusOutEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QFocusEvent): void =
  fcQKeySequenceEdit_virtualbase_focusOutEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QKeySequenceEditenterEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQKeySequenceEdit_virtualbase_enterEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QKeySequenceEditleaveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQKeySequenceEdit_virtualbase_leaveEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QKeySequenceEditpaintEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QPaintEvent): void =
  fcQKeySequenceEdit_virtualbase_paintEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QKeySequenceEditmoveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMoveEvent): void =
  fcQKeySequenceEdit_virtualbase_moveEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QKeySequenceEditresizeEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QResizeEvent): void =
  fcQKeySequenceEdit_virtualbase_resizeEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QKeySequenceEditcloseEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QCloseEvent): void =
  fcQKeySequenceEdit_virtualbase_closeEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QKeySequenceEditcontextMenuEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QContextMenuEvent): void =
  fcQKeySequenceEdit_virtualbase_contextMenuEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QKeySequenceEdittabletEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QTabletEvent): void =
  fcQKeySequenceEdit_virtualbase_tabletEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QKeySequenceEditactionEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QActionEvent): void =
  fcQKeySequenceEdit_virtualbase_actionEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QKeySequenceEditdragEnterEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QDragEnterEvent): void =
  fcQKeySequenceEdit_virtualbase_dragEnterEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QKeySequenceEditdragMoveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QDragMoveEvent): void =
  fcQKeySequenceEdit_virtualbase_dragMoveEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QKeySequenceEditdragLeaveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQKeySequenceEdit_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QKeySequenceEditdropEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QDropEvent): void =
  fcQKeySequenceEdit_virtualbase_dropEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QKeySequenceEditshowEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QShowEvent): void =
  fcQKeySequenceEdit_virtualbase_showEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QKeySequenceEdithideEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QHideEvent): void =
  fcQKeySequenceEdit_virtualbase_hideEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QKeySequenceEditnativeEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQKeySequenceEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQKeySequenceEdit_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QKeySequenceEditchangeEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): void =
  fcQKeySequenceEdit_virtualbase_changeEvent(self.h, param1.h)

proc cQKeySequenceEdit_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QKeySequenceEditmetric*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint): cint =
  fcQKeySequenceEdit_virtualbase_metric(self.h, cint(param1))

proc cQKeySequenceEdit_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QKeySequenceEditinitPainter*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, painter: gen_qpainter_types.QPainter): void =
  fcQKeySequenceEdit_virtualbase_initPainter(self.h, painter.h)

proc cQKeySequenceEdit_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QKeySequenceEditredirected*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQKeySequenceEdit_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQKeySequenceEdit_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditsharedPainter*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQKeySequenceEdit_virtualbase_sharedPainter(self.h), owned: false)

proc cQKeySequenceEdit_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditinputMethodEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQKeySequenceEdit_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQKeySequenceEdit_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QKeySequenceEditinputMethodQuery*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQKeySequenceEdit_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQKeySequenceEdit_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditfocusNextPrevChild*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, next: bool): bool =
  fcQKeySequenceEdit_virtualbase_focusNextPrevChild(self.h, next)

proc cQKeySequenceEdit_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QKeySequenceEditeventFilter*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQKeySequenceEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQKeySequenceEdit_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QKeySequenceEditchildEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fcQKeySequenceEdit_virtualbase_childEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QKeySequenceEditcustomEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQKeySequenceEdit_virtualbase_customEvent(self.h, event.h)

proc cQKeySequenceEdit_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QKeySequenceEditconnectNotify*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQKeySequenceEdit_virtualbase_connectNotify(self.h, signal.h)

proc cQKeySequenceEdit_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QKeySequenceEditdisconnectNotify*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQKeySequenceEdit_virtualbase_disconnectNotify(self.h, signal.h)

proc cQKeySequenceEdit_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQKeySequenceEdit* {.inheritable.} = ref object of QKeySequenceEdit
  vtbl*: cQKeySequenceEditVTable
method metaObject*(self: VirtualQKeySequenceEdit): gen_qobjectdefs_types.QMetaObject {.base.} =
  QKeySequenceEditmetaObject(self[])
proc cQKeySequenceEdit_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQKeySequenceEdit, param1: cstring): pointer {.base.} =
  QKeySequenceEditmetacast(self[], param1)
proc cQKeySequenceEdit_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQKeySequenceEdit, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QKeySequenceEditmetacall(self[], param1, param2, param3)
proc cQKeySequenceEdit_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QKeySequenceEditevent(self[], param1)
proc cQKeySequenceEdit_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method keyPressEvent*(self: VirtualQKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QKeySequenceEditkeyPressEvent(self[], param1)
proc cQKeySequenceEdit_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QKeySequenceEditkeyReleaseEvent(self[], param1)
proc cQKeySequenceEdit_method_callback_keyReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyReleaseEvent(slotval1)

method timerEvent*(self: VirtualQKeySequenceEdit, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QKeySequenceEdittimerEvent(self[], param1)
proc cQKeySequenceEdit_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

method devType*(self: VirtualQKeySequenceEdit): cint {.base.} =
  QKeySequenceEditdevType(self[])
proc cQKeySequenceEdit_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQKeySequenceEdit, visible: bool): void {.base.} =
  QKeySequenceEditsetVisible(self[], visible)
proc cQKeySequenceEdit_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQKeySequenceEdit): gen_qsize_types.QSize {.base.} =
  QKeySequenceEditsizeHint(self[])
proc cQKeySequenceEdit_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQKeySequenceEdit): gen_qsize_types.QSize {.base.} =
  QKeySequenceEditminimumSizeHint(self[])
proc cQKeySequenceEdit_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQKeySequenceEdit, param1: cint): cint {.base.} =
  QKeySequenceEditheightForWidth(self[], param1)
proc cQKeySequenceEdit_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQKeySequenceEdit): bool {.base.} =
  QKeySequenceEdithasHeightForWidth(self[])
proc cQKeySequenceEdit_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQKeySequenceEdit): gen_qpaintengine_types.QPaintEngine {.base.} =
  QKeySequenceEditpaintEngine(self[])
proc cQKeySequenceEdit_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QKeySequenceEditmousePressEvent(self[], event)
proc cQKeySequenceEdit_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QKeySequenceEditmouseReleaseEvent(self[], event)
proc cQKeySequenceEdit_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QKeySequenceEditmouseDoubleClickEvent(self[], event)
proc cQKeySequenceEdit_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QKeySequenceEditmouseMoveEvent(self[], event)
proc cQKeySequenceEdit_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QKeySequenceEditwheelEvent(self[], event)
proc cQKeySequenceEdit_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method focusInEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QKeySequenceEditfocusInEvent(self[], event)
proc cQKeySequenceEdit_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QKeySequenceEditfocusOutEvent(self[], event)
proc cQKeySequenceEdit_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QKeySequenceEditenterEvent(self[], event)
proc cQKeySequenceEdit_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QKeySequenceEditleaveEvent(self[], event)
proc cQKeySequenceEdit_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QKeySequenceEditpaintEvent(self[], event)
proc cQKeySequenceEdit_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QKeySequenceEditmoveEvent(self[], event)
proc cQKeySequenceEdit_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QKeySequenceEditresizeEvent(self[], event)
proc cQKeySequenceEdit_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QKeySequenceEditcloseEvent(self[], event)
proc cQKeySequenceEdit_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QKeySequenceEditcontextMenuEvent(self[], event)
proc cQKeySequenceEdit_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QKeySequenceEdittabletEvent(self[], event)
proc cQKeySequenceEdit_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QActionEvent): void {.base.} =
  QKeySequenceEditactionEvent(self[], event)
proc cQKeySequenceEdit_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QKeySequenceEditdragEnterEvent(self[], event)
proc cQKeySequenceEdit_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QKeySequenceEditdragMoveEvent(self[], event)
proc cQKeySequenceEdit_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QKeySequenceEditdragLeaveEvent(self[], event)
proc cQKeySequenceEdit_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QDropEvent): void {.base.} =
  QKeySequenceEditdropEvent(self[], event)
proc cQKeySequenceEdit_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QShowEvent): void {.base.} =
  QKeySequenceEditshowEvent(self[], event)
proc cQKeySequenceEdit_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QHideEvent): void {.base.} =
  QKeySequenceEdithideEvent(self[], event)
proc cQKeySequenceEdit_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQKeySequenceEdit, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QKeySequenceEditnativeEvent(self[], eventType, message, resultVal)
proc cQKeySequenceEdit_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QKeySequenceEditchangeEvent(self[], param1)
proc cQKeySequenceEdit_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQKeySequenceEdit, param1: cint): cint {.base.} =
  QKeySequenceEditmetric(self[], param1)
proc cQKeySequenceEdit_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQKeySequenceEdit, painter: gen_qpainter_types.QPainter): void {.base.} =
  QKeySequenceEditinitPainter(self[], painter)
proc cQKeySequenceEdit_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQKeySequenceEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QKeySequenceEditredirected(self[], offset)
proc cQKeySequenceEdit_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQKeySequenceEdit): gen_qpainter_types.QPainter {.base.} =
  QKeySequenceEditsharedPainter(self[])
proc cQKeySequenceEdit_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQKeySequenceEdit, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QKeySequenceEditinputMethodEvent(self[], param1)
proc cQKeySequenceEdit_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQKeySequenceEdit, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QKeySequenceEditinputMethodQuery(self[], param1)
proc cQKeySequenceEdit_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQKeySequenceEdit, next: bool): bool {.base.} =
  QKeySequenceEditfocusNextPrevChild(self[], next)
proc cQKeySequenceEdit_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQKeySequenceEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QKeySequenceEditeventFilter(self[], watched, event)
proc cQKeySequenceEdit_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQKeySequenceEdit, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QKeySequenceEditchildEvent(self[], event)
proc cQKeySequenceEdit_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QKeySequenceEditcustomEvent(self[], event)
proc cQKeySequenceEdit_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QKeySequenceEditconnectNotify(self[], signal)
proc cQKeySequenceEdit_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QKeySequenceEditdisconnectNotify(self[], signal)
proc cQKeySequenceEdit_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQKeySequenceEdit](fcQKeySequenceEdit_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): void =
  fcQKeySequenceEdit_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): void =
  fcQKeySequenceEdit_protectedbase_create(self.h)

proc destroy*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): void =
  fcQKeySequenceEdit_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): bool =
  fcQKeySequenceEdit_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): bool =
  fcQKeySequenceEdit_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQKeySequenceEdit_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qkeysequenceedit_types.QKeySequenceEdit): cint =
  fcQKeySequenceEdit_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, signal: cstring): cint =
  fcQKeySequenceEdit_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQKeySequenceEdit_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QKeySequenceEditVTable = nil): gen_qkeysequenceedit_types.QKeySequenceEdit =
  let vtbl = if vtbl == nil: new QKeySequenceEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQKeySequenceEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQKeySequenceEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQKeySequenceEdit_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQKeySequenceEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQKeySequenceEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQKeySequenceEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQKeySequenceEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQKeySequenceEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQKeySequenceEdit_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQKeySequenceEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQKeySequenceEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQKeySequenceEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQKeySequenceEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQKeySequenceEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQKeySequenceEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQKeySequenceEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQKeySequenceEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQKeySequenceEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQKeySequenceEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQKeySequenceEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQKeySequenceEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQKeySequenceEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQKeySequenceEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQKeySequenceEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQKeySequenceEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQKeySequenceEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQKeySequenceEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQKeySequenceEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQKeySequenceEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQKeySequenceEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQKeySequenceEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQKeySequenceEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQKeySequenceEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQKeySequenceEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQKeySequenceEdit_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQKeySequenceEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQKeySequenceEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQKeySequenceEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQKeySequenceEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQKeySequenceEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQKeySequenceEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQKeySequenceEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQKeySequenceEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQKeySequenceEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQKeySequenceEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQKeySequenceEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQKeySequenceEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQKeySequenceEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQKeySequenceEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQKeySequenceEdit_vtable_callback_disconnectNotify
  gen_qkeysequenceedit_types.QKeySequenceEdit(h: fcQKeySequenceEdit_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    vtbl: ref QKeySequenceEditVTable = nil): gen_qkeysequenceedit_types.QKeySequenceEdit =
  let vtbl = if vtbl == nil: new QKeySequenceEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQKeySequenceEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQKeySequenceEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQKeySequenceEdit_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQKeySequenceEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQKeySequenceEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQKeySequenceEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQKeySequenceEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQKeySequenceEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQKeySequenceEdit_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQKeySequenceEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQKeySequenceEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQKeySequenceEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQKeySequenceEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQKeySequenceEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQKeySequenceEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQKeySequenceEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQKeySequenceEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQKeySequenceEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQKeySequenceEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQKeySequenceEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQKeySequenceEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQKeySequenceEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQKeySequenceEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQKeySequenceEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQKeySequenceEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQKeySequenceEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQKeySequenceEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQKeySequenceEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQKeySequenceEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQKeySequenceEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQKeySequenceEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQKeySequenceEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQKeySequenceEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQKeySequenceEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQKeySequenceEdit_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQKeySequenceEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQKeySequenceEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQKeySequenceEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQKeySequenceEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQKeySequenceEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQKeySequenceEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQKeySequenceEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQKeySequenceEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQKeySequenceEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQKeySequenceEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQKeySequenceEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQKeySequenceEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQKeySequenceEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQKeySequenceEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQKeySequenceEdit_vtable_callback_disconnectNotify
  gen_qkeysequenceedit_types.QKeySequenceEdit(h: fcQKeySequenceEdit_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    keySequence: gen_qkeysequence_types.QKeySequence,
    vtbl: ref QKeySequenceEditVTable = nil): gen_qkeysequenceedit_types.QKeySequenceEdit =
  let vtbl = if vtbl == nil: new QKeySequenceEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQKeySequenceEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQKeySequenceEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQKeySequenceEdit_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQKeySequenceEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQKeySequenceEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQKeySequenceEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQKeySequenceEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQKeySequenceEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQKeySequenceEdit_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQKeySequenceEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQKeySequenceEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQKeySequenceEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQKeySequenceEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQKeySequenceEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQKeySequenceEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQKeySequenceEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQKeySequenceEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQKeySequenceEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQKeySequenceEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQKeySequenceEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQKeySequenceEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQKeySequenceEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQKeySequenceEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQKeySequenceEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQKeySequenceEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQKeySequenceEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQKeySequenceEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQKeySequenceEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQKeySequenceEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQKeySequenceEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQKeySequenceEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQKeySequenceEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQKeySequenceEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQKeySequenceEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQKeySequenceEdit_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQKeySequenceEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQKeySequenceEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQKeySequenceEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQKeySequenceEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQKeySequenceEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQKeySequenceEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQKeySequenceEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQKeySequenceEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQKeySequenceEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQKeySequenceEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQKeySequenceEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQKeySequenceEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQKeySequenceEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQKeySequenceEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQKeySequenceEdit_vtable_callback_disconnectNotify
  gen_qkeysequenceedit_types.QKeySequenceEdit(h: fcQKeySequenceEdit_new3(addr(vtbl[].vtbl), addr(vtbl[]), keySequence.h), owned: true)

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    keySequence: gen_qkeysequence_types.QKeySequence, parent: gen_qwidget_types.QWidget,
    vtbl: ref QKeySequenceEditVTable = nil): gen_qkeysequenceedit_types.QKeySequenceEdit =
  let vtbl = if vtbl == nil: new QKeySequenceEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QKeySequenceEditVTable](fcQKeySequenceEdit_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQKeySequenceEdit_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQKeySequenceEdit_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQKeySequenceEdit_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQKeySequenceEdit_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQKeySequenceEdit_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQKeySequenceEdit_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQKeySequenceEdit_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQKeySequenceEdit_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQKeySequenceEdit_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQKeySequenceEdit_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQKeySequenceEdit_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQKeySequenceEdit_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQKeySequenceEdit_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQKeySequenceEdit_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQKeySequenceEdit_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQKeySequenceEdit_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQKeySequenceEdit_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQKeySequenceEdit_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQKeySequenceEdit_vtable_callback_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQKeySequenceEdit_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQKeySequenceEdit_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQKeySequenceEdit_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQKeySequenceEdit_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQKeySequenceEdit_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQKeySequenceEdit_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQKeySequenceEdit_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQKeySequenceEdit_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQKeySequenceEdit_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQKeySequenceEdit_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQKeySequenceEdit_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQKeySequenceEdit_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQKeySequenceEdit_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQKeySequenceEdit_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQKeySequenceEdit_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQKeySequenceEdit_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQKeySequenceEdit_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQKeySequenceEdit_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQKeySequenceEdit_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQKeySequenceEdit_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQKeySequenceEdit_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQKeySequenceEdit_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQKeySequenceEdit_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQKeySequenceEdit_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQKeySequenceEdit_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQKeySequenceEdit_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQKeySequenceEdit_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQKeySequenceEdit_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQKeySequenceEdit_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQKeySequenceEdit_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQKeySequenceEdit_vtable_callback_disconnectNotify
  gen_qkeysequenceedit_types.QKeySequenceEdit(h: fcQKeySequenceEdit_new4(addr(vtbl[].vtbl), addr(vtbl[]), keySequence.h, parent.h), owned: true)

const cQKeySequenceEdit_mvtbl = cQKeySequenceEditVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQKeySequenceEdit()[])](self.fcQKeySequenceEdit_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQKeySequenceEdit_method_callback_metaObject,
  metacast: cQKeySequenceEdit_method_callback_metacast,
  metacall: cQKeySequenceEdit_method_callback_metacall,
  event: cQKeySequenceEdit_method_callback_event,
  keyPressEvent: cQKeySequenceEdit_method_callback_keyPressEvent,
  keyReleaseEvent: cQKeySequenceEdit_method_callback_keyReleaseEvent,
  timerEvent: cQKeySequenceEdit_method_callback_timerEvent,
  devType: cQKeySequenceEdit_method_callback_devType,
  setVisible: cQKeySequenceEdit_method_callback_setVisible,
  sizeHint: cQKeySequenceEdit_method_callback_sizeHint,
  minimumSizeHint: cQKeySequenceEdit_method_callback_minimumSizeHint,
  heightForWidth: cQKeySequenceEdit_method_callback_heightForWidth,
  hasHeightForWidth: cQKeySequenceEdit_method_callback_hasHeightForWidth,
  paintEngine: cQKeySequenceEdit_method_callback_paintEngine,
  mousePressEvent: cQKeySequenceEdit_method_callback_mousePressEvent,
  mouseReleaseEvent: cQKeySequenceEdit_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQKeySequenceEdit_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQKeySequenceEdit_method_callback_mouseMoveEvent,
  wheelEvent: cQKeySequenceEdit_method_callback_wheelEvent,
  focusInEvent: cQKeySequenceEdit_method_callback_focusInEvent,
  focusOutEvent: cQKeySequenceEdit_method_callback_focusOutEvent,
  enterEvent: cQKeySequenceEdit_method_callback_enterEvent,
  leaveEvent: cQKeySequenceEdit_method_callback_leaveEvent,
  paintEvent: cQKeySequenceEdit_method_callback_paintEvent,
  moveEvent: cQKeySequenceEdit_method_callback_moveEvent,
  resizeEvent: cQKeySequenceEdit_method_callback_resizeEvent,
  closeEvent: cQKeySequenceEdit_method_callback_closeEvent,
  contextMenuEvent: cQKeySequenceEdit_method_callback_contextMenuEvent,
  tabletEvent: cQKeySequenceEdit_method_callback_tabletEvent,
  actionEvent: cQKeySequenceEdit_method_callback_actionEvent,
  dragEnterEvent: cQKeySequenceEdit_method_callback_dragEnterEvent,
  dragMoveEvent: cQKeySequenceEdit_method_callback_dragMoveEvent,
  dragLeaveEvent: cQKeySequenceEdit_method_callback_dragLeaveEvent,
  dropEvent: cQKeySequenceEdit_method_callback_dropEvent,
  showEvent: cQKeySequenceEdit_method_callback_showEvent,
  hideEvent: cQKeySequenceEdit_method_callback_hideEvent,
  nativeEvent: cQKeySequenceEdit_method_callback_nativeEvent,
  changeEvent: cQKeySequenceEdit_method_callback_changeEvent,
  metric: cQKeySequenceEdit_method_callback_metric,
  initPainter: cQKeySequenceEdit_method_callback_initPainter,
  redirected: cQKeySequenceEdit_method_callback_redirected,
  sharedPainter: cQKeySequenceEdit_method_callback_sharedPainter,
  inputMethodEvent: cQKeySequenceEdit_method_callback_inputMethodEvent,
  inputMethodQuery: cQKeySequenceEdit_method_callback_inputMethodQuery,
  focusNextPrevChild: cQKeySequenceEdit_method_callback_focusNextPrevChild,
  eventFilter: cQKeySequenceEdit_method_callback_eventFilter,
  childEvent: cQKeySequenceEdit_method_callback_childEvent,
  customEvent: cQKeySequenceEdit_method_callback_customEvent,
  connectNotify: cQKeySequenceEdit_method_callback_connectNotify,
  disconnectNotify: cQKeySequenceEdit_method_callback_disconnectNotify,
)
proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQKeySequenceEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeySequenceEdit_new(addr(cQKeySequenceEdit_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    inst: VirtualQKeySequenceEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeySequenceEdit_new2(addr(cQKeySequenceEdit_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    keySequence: gen_qkeysequence_types.QKeySequence,
    inst: VirtualQKeySequenceEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeySequenceEdit_new3(addr(cQKeySequenceEdit_mvtbl), addr(inst[]), keySequence.h)
  inst[].owned = true

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    keySequence: gen_qkeysequence_types.QKeySequence, parent: gen_qwidget_types.QWidget,
    inst: VirtualQKeySequenceEdit) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQKeySequenceEdit_new4(addr(cQKeySequenceEdit_mvtbl), addr(inst[]), keySequence.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qkeysequenceedit_types.QKeySequenceEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeySequenceEdit_staticMetaObject())
