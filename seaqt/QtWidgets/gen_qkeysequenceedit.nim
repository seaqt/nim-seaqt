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
{.compile("gen_qkeysequenceedit.cpp", cflags).}


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

proc fcQKeySequenceEdit_metaObject(self: pointer, ): pointer {.importc: "QKeySequenceEdit_metaObject".}
proc fcQKeySequenceEdit_metacast(self: pointer, param1: cstring): pointer {.importc: "QKeySequenceEdit_metacast".}
proc fcQKeySequenceEdit_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QKeySequenceEdit_metacall".}
proc fcQKeySequenceEdit_tr(s: cstring): struct_miqt_string {.importc: "QKeySequenceEdit_tr".}
proc fcQKeySequenceEdit_keySequence(self: pointer, ): pointer {.importc: "QKeySequenceEdit_keySequence".}
proc fcQKeySequenceEdit_setClearButtonEnabled(self: pointer, enable: bool): void {.importc: "QKeySequenceEdit_setClearButtonEnabled".}
proc fcQKeySequenceEdit_isClearButtonEnabled(self: pointer, ): bool {.importc: "QKeySequenceEdit_isClearButtonEnabled".}
proc fcQKeySequenceEdit_setKeySequence(self: pointer, keySequence: pointer): void {.importc: "QKeySequenceEdit_setKeySequence".}
proc fcQKeySequenceEdit_clear(self: pointer, ): void {.importc: "QKeySequenceEdit_clear".}
proc fcQKeySequenceEdit_editingFinished(self: pointer, ): void {.importc: "QKeySequenceEdit_editingFinished".}
proc fcQKeySequenceEdit_connect_editingFinished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QKeySequenceEdit_connect_editingFinished".}
proc fcQKeySequenceEdit_keySequenceChanged(self: pointer, keySequence: pointer): void {.importc: "QKeySequenceEdit_keySequenceChanged".}
proc fcQKeySequenceEdit_connect_keySequenceChanged(self: pointer, slot: int, callback: proc (slot: int, keySequence: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QKeySequenceEdit_connect_keySequenceChanged".}
proc fcQKeySequenceEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeySequenceEdit_tr2".}
proc fcQKeySequenceEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeySequenceEdit_tr3".}
type cQKeySequenceEditVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQKeySequenceEditVTable, self: ptr cQKeySequenceEdit) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQKeySequenceEdit_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QKeySequenceEdit_virtualbase_metaObject".}
proc fcQKeySequenceEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QKeySequenceEdit_virtualbase_metacast".}
proc fcQKeySequenceEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QKeySequenceEdit_virtualbase_metacall".}
proc fcQKeySequenceEdit_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QKeySequenceEdit_virtualbase_event".}
proc fcQKeySequenceEdit_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QKeySequenceEdit_virtualbase_keyPressEvent".}
proc fcQKeySequenceEdit_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void {.importc: "QKeySequenceEdit_virtualbase_keyReleaseEvent".}
proc fcQKeySequenceEdit_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QKeySequenceEdit_virtualbase_timerEvent".}
proc fcQKeySequenceEdit_virtualbase_focusOutEvent(self: pointer, param1: pointer): void {.importc: "QKeySequenceEdit_virtualbase_focusOutEvent".}
proc fcQKeySequenceEdit_virtualbase_devType(self: pointer, ): cint {.importc: "QKeySequenceEdit_virtualbase_devType".}
proc fcQKeySequenceEdit_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QKeySequenceEdit_virtualbase_setVisible".}
proc fcQKeySequenceEdit_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QKeySequenceEdit_virtualbase_sizeHint".}
proc fcQKeySequenceEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QKeySequenceEdit_virtualbase_minimumSizeHint".}
proc fcQKeySequenceEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QKeySequenceEdit_virtualbase_heightForWidth".}
proc fcQKeySequenceEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QKeySequenceEdit_virtualbase_hasHeightForWidth".}
proc fcQKeySequenceEdit_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QKeySequenceEdit_virtualbase_paintEngine".}
proc fcQKeySequenceEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_mousePressEvent".}
proc fcQKeySequenceEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_mouseReleaseEvent".}
proc fcQKeySequenceEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQKeySequenceEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_mouseMoveEvent".}
proc fcQKeySequenceEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_wheelEvent".}
proc fcQKeySequenceEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_focusInEvent".}
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
proc fcQKeySequenceEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QKeySequenceEdit_virtualbase_nativeEvent".}
proc fcQKeySequenceEdit_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QKeySequenceEdit_virtualbase_changeEvent".}
proc fcQKeySequenceEdit_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QKeySequenceEdit_virtualbase_metric".}
proc fcQKeySequenceEdit_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QKeySequenceEdit_virtualbase_initPainter".}
proc fcQKeySequenceEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QKeySequenceEdit_virtualbase_redirected".}
proc fcQKeySequenceEdit_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QKeySequenceEdit_virtualbase_sharedPainter".}
proc fcQKeySequenceEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QKeySequenceEdit_virtualbase_inputMethodEvent".}
proc fcQKeySequenceEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QKeySequenceEdit_virtualbase_inputMethodQuery".}
proc fcQKeySequenceEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QKeySequenceEdit_virtualbase_focusNextPrevChild".}
proc fcQKeySequenceEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QKeySequenceEdit_virtualbase_eventFilter".}
proc fcQKeySequenceEdit_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_childEvent".}
proc fcQKeySequenceEdit_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QKeySequenceEdit_virtualbase_customEvent".}
proc fcQKeySequenceEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QKeySequenceEdit_virtualbase_connectNotify".}
proc fcQKeySequenceEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QKeySequenceEdit_virtualbase_disconnectNotify".}
proc fcQKeySequenceEdit_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QKeySequenceEdit_protectedbase_updateMicroFocus".}
proc fcQKeySequenceEdit_protectedbase_create(self: pointer, ): void {.importc: "QKeySequenceEdit_protectedbase_create".}
proc fcQKeySequenceEdit_protectedbase_destroy(self: pointer, ): void {.importc: "QKeySequenceEdit_protectedbase_destroy".}
proc fcQKeySequenceEdit_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QKeySequenceEdit_protectedbase_focusNextChild".}
proc fcQKeySequenceEdit_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QKeySequenceEdit_protectedbase_focusPreviousChild".}
proc fcQKeySequenceEdit_protectedbase_sender(self: pointer, ): pointer {.importc: "QKeySequenceEdit_protectedbase_sender".}
proc fcQKeySequenceEdit_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QKeySequenceEdit_protectedbase_senderSignalIndex".}
proc fcQKeySequenceEdit_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QKeySequenceEdit_protectedbase_receivers".}
proc fcQKeySequenceEdit_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QKeySequenceEdit_protectedbase_isSignalConnected".}
proc fcQKeySequenceEdit_new(vtbl: pointer, parent: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new".}
proc fcQKeySequenceEdit_new2(vtbl: pointer, ): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new2".}
proc fcQKeySequenceEdit_new3(vtbl: pointer, keySequence: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new3".}
proc fcQKeySequenceEdit_new4(vtbl: pointer, keySequence: pointer, parent: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new4".}
proc fcQKeySequenceEdit_staticMetaObject(): pointer {.importc: "QKeySequenceEdit_staticMetaObject".}

proc metaObject*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeySequenceEdit_metaObject(self.h), owned: false)

proc metacast*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cstring): pointer =
  fcQKeySequenceEdit_metacast(self.h, param1)

proc metacall*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQKeySequenceEdit_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qkeysequenceedit_types.QKeySequenceEdit, s: cstring): string =
  let v_ms = fcQKeySequenceEdit_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc keySequence*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequenceEdit_keySequence(self.h), owned: true)

proc setClearButtonEnabled*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, enable: bool): void =
  fcQKeySequenceEdit_setClearButtonEnabled(self.h, enable)

proc isClearButtonEnabled*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): bool =
  fcQKeySequenceEdit_isClearButtonEnabled(self.h)

proc setKeySequence*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, keySequence: gen_qkeysequence_types.QKeySequence): void =
  fcQKeySequenceEdit_setKeySequence(self.h, keySequence.h)

proc clear*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): void =
  fcQKeySequenceEdit_clear(self.h)

proc editingFinished*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): void =
  fcQKeySequenceEdit_editingFinished(self.h)

type QKeySequenceEditeditingFinishedSlot* = proc()
proc miqt_exec_callback_cQKeySequenceEdit_editingFinished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QKeySequenceEditeditingFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQKeySequenceEdit_editingFinished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QKeySequenceEditeditingFinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oneditingFinished*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditeditingFinishedSlot) =
  var tmp = new QKeySequenceEditeditingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_connect_editingFinished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQKeySequenceEdit_editingFinished, miqt_exec_callback_cQKeySequenceEdit_editingFinished_release)

proc keySequenceChanged*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, keySequence: gen_qkeysequence_types.QKeySequence): void =
  fcQKeySequenceEdit_keySequenceChanged(self.h, keySequence.h)

type QKeySequenceEditkeySequenceChangedSlot* = proc(keySequence: gen_qkeysequence_types.QKeySequence)
proc miqt_exec_callback_cQKeySequenceEdit_keySequenceChanged(slot: int, keySequence: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QKeySequenceEditkeySequenceChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qkeysequence_types.QKeySequence(h: keySequence, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQKeySequenceEdit_keySequenceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QKeySequenceEditkeySequenceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onkeySequenceChanged*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditkeySequenceChangedSlot) =
  var tmp = new QKeySequenceEditkeySequenceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_connect_keySequenceChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQKeySequenceEdit_keySequenceChanged, miqt_exec_callback_cQKeySequenceEdit_keySequenceChanged_release)

proc tr*(_: type gen_qkeysequenceedit_types.QKeySequenceEdit, s: cstring, c: cstring): string =
  let v_ms = fcQKeySequenceEdit_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qkeysequenceedit_types.QKeySequenceEdit, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQKeySequenceEdit_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QKeySequenceEditmetaObjectProc* = proc(self: QKeySequenceEdit): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QKeySequenceEditmetacastProc* = proc(self: QKeySequenceEdit, param1: cstring): pointer {.raises: [], gcsafe.}
type QKeySequenceEditmetacallProc* = proc(self: QKeySequenceEdit, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QKeySequenceEditeventProc* = proc(self: QKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QKeySequenceEditkeyPressEventProc* = proc(self: QKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditkeyReleaseEventProc* = proc(self: QKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QKeySequenceEdittimerEventProc* = proc(self: QKeySequenceEdit, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QKeySequenceEditfocusOutEventProc* = proc(self: QKeySequenceEdit, param1: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
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
type QKeySequenceEditenterEventProc* = proc(self: QKeySequenceEdit, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
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
type QKeySequenceEditnativeEventProc* = proc(self: QKeySequenceEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
  focusOutEvent*: QKeySequenceEditfocusOutEventProc
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
proc QKeySequenceEditmetaObject*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeySequenceEdit_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQKeySequenceEdit_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditmetacast*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cstring): pointer =
  fcQKeySequenceEdit_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQKeySequenceEdit_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QKeySequenceEditmetacall*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint, param2: cint, param3: pointer): cint =
  fcQKeySequenceEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQKeySequenceEdit_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QKeySequenceEditevent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): bool =
  fcQKeySequenceEdit_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQKeySequenceEdit_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QKeySequenceEditkeyPressEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void =
  fcQKeySequenceEdit_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQKeySequenceEdit_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QKeySequenceEditkeyReleaseEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void =
  fcQKeySequenceEdit_virtualbase_keyReleaseEvent(self.h, param1.h)

proc miqt_exec_callback_cQKeySequenceEdit_keyReleaseEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QKeySequenceEdittimerEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQKeySequenceEdit_virtualbase_timerEvent(self.h, param1.h)

proc miqt_exec_callback_cQKeySequenceEdit_timerEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QKeySequenceEditfocusOutEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qevent_types.QFocusEvent): void =
  fcQKeySequenceEdit_virtualbase_focusOutEvent(self.h, param1.h)

proc miqt_exec_callback_cQKeySequenceEdit_focusOutEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QKeySequenceEditdevType*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): cint =
  fcQKeySequenceEdit_virtualbase_devType(self.h)

proc miqt_exec_callback_cQKeySequenceEdit_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QKeySequenceEditsetVisible*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, visible: bool): void =
  fcQKeySequenceEdit_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQKeySequenceEdit_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QKeySequenceEditsizeHint*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQKeySequenceEdit_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQKeySequenceEdit_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditminimumSizeHint*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQKeySequenceEdit_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQKeySequenceEdit_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditheightForWidth*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint): cint =
  fcQKeySequenceEdit_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQKeySequenceEdit_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QKeySequenceEdithasHeightForWidth*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): bool =
  fcQKeySequenceEdit_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQKeySequenceEdit_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QKeySequenceEditpaintEngine*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQKeySequenceEdit_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQKeySequenceEdit_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditmousePressEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQKeySequenceEdit_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QKeySequenceEditmouseReleaseEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQKeySequenceEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QKeySequenceEditmouseDoubleClickEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQKeySequenceEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QKeySequenceEditmouseMoveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void =
  fcQKeySequenceEdit_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QKeySequenceEditwheelEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QWheelEvent): void =
  fcQKeySequenceEdit_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QKeySequenceEditfocusInEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QFocusEvent): void =
  fcQKeySequenceEdit_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QKeySequenceEditenterEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QEnterEvent): void =
  fcQKeySequenceEdit_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QKeySequenceEditleaveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQKeySequenceEdit_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QKeySequenceEditpaintEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QPaintEvent): void =
  fcQKeySequenceEdit_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QKeySequenceEditmoveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMoveEvent): void =
  fcQKeySequenceEdit_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QKeySequenceEditresizeEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QResizeEvent): void =
  fcQKeySequenceEdit_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QKeySequenceEditcloseEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QCloseEvent): void =
  fcQKeySequenceEdit_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QKeySequenceEditcontextMenuEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QContextMenuEvent): void =
  fcQKeySequenceEdit_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QKeySequenceEdittabletEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QTabletEvent): void =
  fcQKeySequenceEdit_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QKeySequenceEditactionEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QActionEvent): void =
  fcQKeySequenceEdit_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QKeySequenceEditdragEnterEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QDragEnterEvent): void =
  fcQKeySequenceEdit_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QKeySequenceEditdragMoveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QDragMoveEvent): void =
  fcQKeySequenceEdit_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QKeySequenceEditdragLeaveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQKeySequenceEdit_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QKeySequenceEditdropEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QDropEvent): void =
  fcQKeySequenceEdit_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QKeySequenceEditshowEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QShowEvent): void =
  fcQKeySequenceEdit_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QKeySequenceEdithideEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QHideEvent): void =
  fcQKeySequenceEdit_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QKeySequenceEditnativeEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQKeySequenceEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQKeySequenceEdit_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QKeySequenceEditchangeEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): void =
  fcQKeySequenceEdit_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQKeySequenceEdit_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QKeySequenceEditmetric*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint): cint =
  fcQKeySequenceEdit_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQKeySequenceEdit_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QKeySequenceEditinitPainter*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, painter: gen_qpainter_types.QPainter): void =
  fcQKeySequenceEdit_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQKeySequenceEdit_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QKeySequenceEditredirected*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQKeySequenceEdit_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQKeySequenceEdit_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditsharedPainter*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQKeySequenceEdit_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQKeySequenceEdit_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditinputMethodEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQKeySequenceEdit_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQKeySequenceEdit_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QKeySequenceEditinputMethodQuery*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQKeySequenceEdit_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQKeySequenceEdit_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QKeySequenceEditfocusNextPrevChild*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, next: bool): bool =
  fcQKeySequenceEdit_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQKeySequenceEdit_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QKeySequenceEditeventFilter*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQKeySequenceEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QKeySequenceEditchildEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fcQKeySequenceEdit_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QKeySequenceEditcustomEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void =
  fcQKeySequenceEdit_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQKeySequenceEdit_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QKeySequenceEditconnectNotify*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQKeySequenceEdit_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQKeySequenceEdit_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QKeySequenceEditdisconnectNotify*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQKeySequenceEdit_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQKeySequenceEdit_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QKeySequenceEditVTable](vtbl)
  let self = QKeySequenceEdit(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQKeySequenceEdit* {.inheritable.} = ref object of QKeySequenceEdit
  vtbl*: cQKeySequenceEditVTable
method metaObject*(self: VirtualQKeySequenceEdit, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QKeySequenceEditmetaObject(self[])
proc miqt_exec_method_cQKeySequenceEdit_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQKeySequenceEdit, param1: cstring): pointer {.base.} =
  QKeySequenceEditmetacast(self[], param1)
proc miqt_exec_method_cQKeySequenceEdit_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQKeySequenceEdit, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QKeySequenceEditmetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQKeySequenceEdit_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QKeySequenceEditevent(self[], param1)
proc miqt_exec_method_cQKeySequenceEdit_event(vtbl: pointer, inst: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method keyPressEvent*(self: VirtualQKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QKeySequenceEditkeyPressEvent(self[], param1)
proc miqt_exec_method_cQKeySequenceEdit_keyPressEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QKeySequenceEditkeyReleaseEvent(self[], param1)
proc miqt_exec_method_cQKeySequenceEdit_keyReleaseEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method timerEvent*(self: VirtualQKeySequenceEdit, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QKeySequenceEdittimerEvent(self[], param1)
proc miqt_exec_method_cQKeySequenceEdit_timerEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl.timerEvent(slotval1)

method focusOutEvent*(self: VirtualQKeySequenceEdit, param1: gen_qevent_types.QFocusEvent): void {.base.} =
  QKeySequenceEditfocusOutEvent(self[], param1)
proc miqt_exec_method_cQKeySequenceEdit_focusOutEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1, owned: false)
  vtbl.focusOutEvent(slotval1)

method devType*(self: VirtualQKeySequenceEdit, ): cint {.base.} =
  QKeySequenceEditdevType(self[])
proc miqt_exec_method_cQKeySequenceEdit_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQKeySequenceEdit, visible: bool): void {.base.} =
  QKeySequenceEditsetVisible(self[], visible)
proc miqt_exec_method_cQKeySequenceEdit_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method sizeHint*(self: VirtualQKeySequenceEdit, ): gen_qsize_types.QSize {.base.} =
  QKeySequenceEditsizeHint(self[])
proc miqt_exec_method_cQKeySequenceEdit_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQKeySequenceEdit, ): gen_qsize_types.QSize {.base.} =
  QKeySequenceEditminimumSizeHint(self[])
proc miqt_exec_method_cQKeySequenceEdit_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQKeySequenceEdit, param1: cint): cint {.base.} =
  QKeySequenceEditheightForWidth(self[], param1)
proc miqt_exec_method_cQKeySequenceEdit_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQKeySequenceEdit, ): bool {.base.} =
  QKeySequenceEdithasHeightForWidth(self[])
proc miqt_exec_method_cQKeySequenceEdit_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQKeySequenceEdit, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QKeySequenceEditpaintEngine(self[])
proc miqt_exec_method_cQKeySequenceEdit_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QKeySequenceEditmousePressEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QKeySequenceEditmouseReleaseEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QKeySequenceEditmouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QKeySequenceEditmouseMoveEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QKeySequenceEditwheelEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method focusInEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QKeySequenceEditfocusInEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method enterEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QKeySequenceEditenterEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QKeySequenceEditleaveEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method paintEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QKeySequenceEditpaintEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_paintEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl.paintEvent(slotval1)

method moveEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QKeySequenceEditmoveEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method resizeEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QKeySequenceEditresizeEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method closeEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QKeySequenceEditcloseEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QKeySequenceEditcontextMenuEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QKeySequenceEdittabletEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QActionEvent): void {.base.} =
  QKeySequenceEditactionEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QKeySequenceEditdragEnterEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QKeySequenceEditdragMoveEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QKeySequenceEditdragLeaveEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QDropEvent): void {.base.} =
  QKeySequenceEditdropEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method showEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QShowEvent): void {.base.} =
  QKeySequenceEditshowEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQKeySequenceEdit, event: gen_qevent_types.QHideEvent): void {.base.} =
  QKeySequenceEdithideEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method nativeEvent*(self: VirtualQKeySequenceEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QKeySequenceEditnativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQKeySequenceEdit_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QKeySequenceEditchangeEvent(self[], param1)
proc miqt_exec_method_cQKeySequenceEdit_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method metric*(self: VirtualQKeySequenceEdit, param1: cint): cint {.base.} =
  QKeySequenceEditmetric(self[], param1)
proc miqt_exec_method_cQKeySequenceEdit_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQKeySequenceEdit, painter: gen_qpainter_types.QPainter): void {.base.} =
  QKeySequenceEditinitPainter(self[], painter)
proc miqt_exec_method_cQKeySequenceEdit_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQKeySequenceEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QKeySequenceEditredirected(self[], offset)
proc miqt_exec_method_cQKeySequenceEdit_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQKeySequenceEdit, ): gen_qpainter_types.QPainter {.base.} =
  QKeySequenceEditsharedPainter(self[])
proc miqt_exec_method_cQKeySequenceEdit_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQKeySequenceEdit, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QKeySequenceEditinputMethodEvent(self[], param1)
proc miqt_exec_method_cQKeySequenceEdit_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQKeySequenceEdit, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QKeySequenceEditinputMethodQuery(self[], param1)
proc miqt_exec_method_cQKeySequenceEdit_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQKeySequenceEdit, next: bool): bool {.base.} =
  QKeySequenceEditfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQKeySequenceEdit_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQKeySequenceEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QKeySequenceEditeventFilter(self[], watched, event)
proc miqt_exec_method_cQKeySequenceEdit_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method childEvent*(self: VirtualQKeySequenceEdit, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QKeySequenceEditchildEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QKeySequenceEditcustomEvent(self[], event)
proc miqt_exec_method_cQKeySequenceEdit_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QKeySequenceEditconnectNotify(self[], signal)
proc miqt_exec_method_cQKeySequenceEdit_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QKeySequenceEditdisconnectNotify(self[], signal)
proc miqt_exec_method_cQKeySequenceEdit_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQKeySequenceEdit](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): void =
  fcQKeySequenceEdit_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): void =
  fcQKeySequenceEdit_protectedbase_create(self.h)

proc destroy*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): void =
  fcQKeySequenceEdit_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): bool =
  fcQKeySequenceEdit_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): bool =
  fcQKeySequenceEdit_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQKeySequenceEdit_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): cint =
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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQKeySequenceEditVTable, _: ptr cQKeySequenceEdit) {.cdecl.} =
    let vtbl = cast[ref QKeySequenceEditVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQKeySequenceEdit_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQKeySequenceEdit_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQKeySequenceEdit_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQKeySequenceEdit_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQKeySequenceEdit_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQKeySequenceEdit_keyReleaseEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQKeySequenceEdit_timerEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQKeySequenceEdit_focusOutEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQKeySequenceEdit_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQKeySequenceEdit_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQKeySequenceEdit_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQKeySequenceEdit_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQKeySequenceEdit_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQKeySequenceEdit_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQKeySequenceEdit_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQKeySequenceEdit_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQKeySequenceEdit_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQKeySequenceEdit_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQKeySequenceEdit_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQKeySequenceEdit_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQKeySequenceEdit_focusInEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQKeySequenceEdit_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQKeySequenceEdit_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQKeySequenceEdit_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQKeySequenceEdit_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQKeySequenceEdit_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQKeySequenceEdit_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQKeySequenceEdit_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQKeySequenceEdit_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQKeySequenceEdit_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQKeySequenceEdit_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQKeySequenceEdit_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQKeySequenceEdit_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQKeySequenceEdit_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQKeySequenceEdit_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQKeySequenceEdit_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQKeySequenceEdit_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQKeySequenceEdit_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQKeySequenceEdit_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQKeySequenceEdit_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQKeySequenceEdit_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQKeySequenceEdit_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQKeySequenceEdit_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQKeySequenceEdit_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQKeySequenceEdit_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQKeySequenceEdit_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQKeySequenceEdit_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQKeySequenceEdit_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQKeySequenceEdit_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQKeySequenceEdit_disconnectNotify
  gen_qkeysequenceedit_types.QKeySequenceEdit(h: fcQKeySequenceEdit_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    vtbl: ref QKeySequenceEditVTable = nil): gen_qkeysequenceedit_types.QKeySequenceEdit =
  let vtbl = if vtbl == nil: new QKeySequenceEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQKeySequenceEditVTable, _: ptr cQKeySequenceEdit) {.cdecl.} =
    let vtbl = cast[ref QKeySequenceEditVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQKeySequenceEdit_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQKeySequenceEdit_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQKeySequenceEdit_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQKeySequenceEdit_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQKeySequenceEdit_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQKeySequenceEdit_keyReleaseEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQKeySequenceEdit_timerEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQKeySequenceEdit_focusOutEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQKeySequenceEdit_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQKeySequenceEdit_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQKeySequenceEdit_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQKeySequenceEdit_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQKeySequenceEdit_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQKeySequenceEdit_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQKeySequenceEdit_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQKeySequenceEdit_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQKeySequenceEdit_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQKeySequenceEdit_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQKeySequenceEdit_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQKeySequenceEdit_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQKeySequenceEdit_focusInEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQKeySequenceEdit_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQKeySequenceEdit_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQKeySequenceEdit_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQKeySequenceEdit_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQKeySequenceEdit_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQKeySequenceEdit_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQKeySequenceEdit_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQKeySequenceEdit_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQKeySequenceEdit_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQKeySequenceEdit_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQKeySequenceEdit_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQKeySequenceEdit_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQKeySequenceEdit_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQKeySequenceEdit_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQKeySequenceEdit_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQKeySequenceEdit_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQKeySequenceEdit_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQKeySequenceEdit_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQKeySequenceEdit_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQKeySequenceEdit_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQKeySequenceEdit_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQKeySequenceEdit_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQKeySequenceEdit_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQKeySequenceEdit_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQKeySequenceEdit_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQKeySequenceEdit_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQKeySequenceEdit_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQKeySequenceEdit_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQKeySequenceEdit_disconnectNotify
  gen_qkeysequenceedit_types.QKeySequenceEdit(h: fcQKeySequenceEdit_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    keySequence: gen_qkeysequence_types.QKeySequence,
    vtbl: ref QKeySequenceEditVTable = nil): gen_qkeysequenceedit_types.QKeySequenceEdit =
  let vtbl = if vtbl == nil: new QKeySequenceEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQKeySequenceEditVTable, _: ptr cQKeySequenceEdit) {.cdecl.} =
    let vtbl = cast[ref QKeySequenceEditVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQKeySequenceEdit_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQKeySequenceEdit_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQKeySequenceEdit_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQKeySequenceEdit_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQKeySequenceEdit_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQKeySequenceEdit_keyReleaseEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQKeySequenceEdit_timerEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQKeySequenceEdit_focusOutEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQKeySequenceEdit_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQKeySequenceEdit_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQKeySequenceEdit_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQKeySequenceEdit_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQKeySequenceEdit_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQKeySequenceEdit_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQKeySequenceEdit_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQKeySequenceEdit_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQKeySequenceEdit_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQKeySequenceEdit_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQKeySequenceEdit_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQKeySequenceEdit_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQKeySequenceEdit_focusInEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQKeySequenceEdit_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQKeySequenceEdit_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQKeySequenceEdit_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQKeySequenceEdit_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQKeySequenceEdit_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQKeySequenceEdit_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQKeySequenceEdit_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQKeySequenceEdit_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQKeySequenceEdit_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQKeySequenceEdit_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQKeySequenceEdit_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQKeySequenceEdit_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQKeySequenceEdit_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQKeySequenceEdit_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQKeySequenceEdit_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQKeySequenceEdit_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQKeySequenceEdit_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQKeySequenceEdit_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQKeySequenceEdit_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQKeySequenceEdit_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQKeySequenceEdit_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQKeySequenceEdit_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQKeySequenceEdit_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQKeySequenceEdit_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQKeySequenceEdit_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQKeySequenceEdit_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQKeySequenceEdit_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQKeySequenceEdit_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQKeySequenceEdit_disconnectNotify
  gen_qkeysequenceedit_types.QKeySequenceEdit(h: fcQKeySequenceEdit_new3(addr(vtbl[].vtbl), keySequence.h), owned: true)

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    keySequence: gen_qkeysequence_types.QKeySequence, parent: gen_qwidget_types.QWidget,
    vtbl: ref QKeySequenceEditVTable = nil): gen_qkeysequenceedit_types.QKeySequenceEdit =
  let vtbl = if vtbl == nil: new QKeySequenceEditVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQKeySequenceEditVTable, _: ptr cQKeySequenceEdit) {.cdecl.} =
    let vtbl = cast[ref QKeySequenceEditVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQKeySequenceEdit_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQKeySequenceEdit_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQKeySequenceEdit_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQKeySequenceEdit_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQKeySequenceEdit_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQKeySequenceEdit_keyReleaseEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQKeySequenceEdit_timerEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQKeySequenceEdit_focusOutEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQKeySequenceEdit_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQKeySequenceEdit_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQKeySequenceEdit_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQKeySequenceEdit_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQKeySequenceEdit_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQKeySequenceEdit_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQKeySequenceEdit_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQKeySequenceEdit_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQKeySequenceEdit_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQKeySequenceEdit_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQKeySequenceEdit_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQKeySequenceEdit_wheelEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQKeySequenceEdit_focusInEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQKeySequenceEdit_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQKeySequenceEdit_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQKeySequenceEdit_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQKeySequenceEdit_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQKeySequenceEdit_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQKeySequenceEdit_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQKeySequenceEdit_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQKeySequenceEdit_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQKeySequenceEdit_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQKeySequenceEdit_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQKeySequenceEdit_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQKeySequenceEdit_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQKeySequenceEdit_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQKeySequenceEdit_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQKeySequenceEdit_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQKeySequenceEdit_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQKeySequenceEdit_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQKeySequenceEdit_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQKeySequenceEdit_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQKeySequenceEdit_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQKeySequenceEdit_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQKeySequenceEdit_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQKeySequenceEdit_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQKeySequenceEdit_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQKeySequenceEdit_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQKeySequenceEdit_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQKeySequenceEdit_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQKeySequenceEdit_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQKeySequenceEdit_disconnectNotify
  gen_qkeysequenceedit_types.QKeySequenceEdit(h: fcQKeySequenceEdit_new4(addr(vtbl[].vtbl), keySequence.h, parent.h), owned: true)

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQKeySequenceEdit) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQKeySequenceEditVTable, _: ptr cQKeySequenceEdit) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQKeySequenceEdit()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQKeySequenceEdit_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQKeySequenceEdit_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQKeySequenceEdit_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQKeySequenceEdit_event
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQKeySequenceEdit_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQKeySequenceEdit_keyReleaseEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQKeySequenceEdit_timerEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQKeySequenceEdit_focusOutEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQKeySequenceEdit_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQKeySequenceEdit_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQKeySequenceEdit_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQKeySequenceEdit_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQKeySequenceEdit_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQKeySequenceEdit_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQKeySequenceEdit_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQKeySequenceEdit_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQKeySequenceEdit_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQKeySequenceEdit_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQKeySequenceEdit_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQKeySequenceEdit_wheelEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQKeySequenceEdit_focusInEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQKeySequenceEdit_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQKeySequenceEdit_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQKeySequenceEdit_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQKeySequenceEdit_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQKeySequenceEdit_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQKeySequenceEdit_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQKeySequenceEdit_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQKeySequenceEdit_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQKeySequenceEdit_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQKeySequenceEdit_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQKeySequenceEdit_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQKeySequenceEdit_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQKeySequenceEdit_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQKeySequenceEdit_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQKeySequenceEdit_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQKeySequenceEdit_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQKeySequenceEdit_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQKeySequenceEdit_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQKeySequenceEdit_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQKeySequenceEdit_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQKeySequenceEdit_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQKeySequenceEdit_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQKeySequenceEdit_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQKeySequenceEdit_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQKeySequenceEdit_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQKeySequenceEdit_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQKeySequenceEdit_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQKeySequenceEdit_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQKeySequenceEdit_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQKeySequenceEdit_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    vtbl: VirtualQKeySequenceEdit) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQKeySequenceEditVTable, _: ptr cQKeySequenceEdit) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQKeySequenceEdit()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQKeySequenceEdit_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQKeySequenceEdit_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQKeySequenceEdit_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQKeySequenceEdit_event
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQKeySequenceEdit_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQKeySequenceEdit_keyReleaseEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQKeySequenceEdit_timerEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQKeySequenceEdit_focusOutEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQKeySequenceEdit_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQKeySequenceEdit_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQKeySequenceEdit_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQKeySequenceEdit_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQKeySequenceEdit_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQKeySequenceEdit_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQKeySequenceEdit_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQKeySequenceEdit_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQKeySequenceEdit_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQKeySequenceEdit_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQKeySequenceEdit_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQKeySequenceEdit_wheelEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQKeySequenceEdit_focusInEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQKeySequenceEdit_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQKeySequenceEdit_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQKeySequenceEdit_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQKeySequenceEdit_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQKeySequenceEdit_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQKeySequenceEdit_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQKeySequenceEdit_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQKeySequenceEdit_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQKeySequenceEdit_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQKeySequenceEdit_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQKeySequenceEdit_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQKeySequenceEdit_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQKeySequenceEdit_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQKeySequenceEdit_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQKeySequenceEdit_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQKeySequenceEdit_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQKeySequenceEdit_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQKeySequenceEdit_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQKeySequenceEdit_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQKeySequenceEdit_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQKeySequenceEdit_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQKeySequenceEdit_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQKeySequenceEdit_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQKeySequenceEdit_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQKeySequenceEdit_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQKeySequenceEdit_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQKeySequenceEdit_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQKeySequenceEdit_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQKeySequenceEdit_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQKeySequenceEdit_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    keySequence: gen_qkeysequence_types.QKeySequence,
    vtbl: VirtualQKeySequenceEdit) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQKeySequenceEditVTable, _: ptr cQKeySequenceEdit) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQKeySequenceEdit()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQKeySequenceEdit_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQKeySequenceEdit_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQKeySequenceEdit_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQKeySequenceEdit_event
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQKeySequenceEdit_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQKeySequenceEdit_keyReleaseEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQKeySequenceEdit_timerEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQKeySequenceEdit_focusOutEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQKeySequenceEdit_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQKeySequenceEdit_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQKeySequenceEdit_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQKeySequenceEdit_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQKeySequenceEdit_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQKeySequenceEdit_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQKeySequenceEdit_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQKeySequenceEdit_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQKeySequenceEdit_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQKeySequenceEdit_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQKeySequenceEdit_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQKeySequenceEdit_wheelEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQKeySequenceEdit_focusInEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQKeySequenceEdit_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQKeySequenceEdit_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQKeySequenceEdit_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQKeySequenceEdit_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQKeySequenceEdit_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQKeySequenceEdit_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQKeySequenceEdit_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQKeySequenceEdit_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQKeySequenceEdit_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQKeySequenceEdit_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQKeySequenceEdit_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQKeySequenceEdit_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQKeySequenceEdit_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQKeySequenceEdit_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQKeySequenceEdit_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQKeySequenceEdit_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQKeySequenceEdit_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQKeySequenceEdit_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQKeySequenceEdit_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQKeySequenceEdit_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQKeySequenceEdit_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQKeySequenceEdit_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQKeySequenceEdit_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQKeySequenceEdit_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQKeySequenceEdit_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQKeySequenceEdit_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQKeySequenceEdit_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQKeySequenceEdit_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQKeySequenceEdit_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQKeySequenceEdit_new3(addr(vtbl[].vtbl), keySequence.h)
  vtbl[].owned = true

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit,
    keySequence: gen_qkeysequence_types.QKeySequence, parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQKeySequenceEdit) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQKeySequenceEditVTable, _: ptr cQKeySequenceEdit) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQKeySequenceEdit()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQKeySequenceEdit, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQKeySequenceEdit_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQKeySequenceEdit_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQKeySequenceEdit_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQKeySequenceEdit_event
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQKeySequenceEdit_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQKeySequenceEdit_keyReleaseEvent
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQKeySequenceEdit_timerEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQKeySequenceEdit_focusOutEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQKeySequenceEdit_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQKeySequenceEdit_setVisible
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQKeySequenceEdit_sizeHint
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQKeySequenceEdit_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQKeySequenceEdit_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQKeySequenceEdit_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQKeySequenceEdit_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQKeySequenceEdit_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQKeySequenceEdit_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQKeySequenceEdit_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQKeySequenceEdit_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQKeySequenceEdit_wheelEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQKeySequenceEdit_focusInEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQKeySequenceEdit_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQKeySequenceEdit_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQKeySequenceEdit_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQKeySequenceEdit_moveEvent
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQKeySequenceEdit_resizeEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQKeySequenceEdit_closeEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQKeySequenceEdit_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQKeySequenceEdit_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQKeySequenceEdit_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQKeySequenceEdit_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQKeySequenceEdit_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQKeySequenceEdit_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQKeySequenceEdit_dropEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQKeySequenceEdit_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQKeySequenceEdit_hideEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQKeySequenceEdit_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQKeySequenceEdit_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQKeySequenceEdit_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQKeySequenceEdit_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQKeySequenceEdit_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQKeySequenceEdit_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQKeySequenceEdit_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQKeySequenceEdit_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQKeySequenceEdit_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQKeySequenceEdit_eventFilter
  vtbl[].vtbl.childEvent = miqt_exec_method_cQKeySequenceEdit_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQKeySequenceEdit_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQKeySequenceEdit_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQKeySequenceEdit_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQKeySequenceEdit_new4(addr(vtbl[].vtbl), keySequence.h, parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qkeysequenceedit_types.QKeySequenceEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeySequenceEdit_staticMetaObject())
