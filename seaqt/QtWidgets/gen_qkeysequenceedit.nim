import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
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

proc fcQKeySequenceEdit_new(parent: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new".}
proc fcQKeySequenceEdit_new2(): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new2".}
proc fcQKeySequenceEdit_new3(keySequence: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new3".}
proc fcQKeySequenceEdit_new4(keySequence: pointer, parent: pointer): ptr cQKeySequenceEdit {.importc: "QKeySequenceEdit_new4".}
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
proc fcQKeySequenceEdit_connect_editingFinished(self: pointer, slot: int) {.importc: "QKeySequenceEdit_connect_editingFinished".}
proc fcQKeySequenceEdit_keySequenceChanged(self: pointer, keySequence: pointer): void {.importc: "QKeySequenceEdit_keySequenceChanged".}
proc fcQKeySequenceEdit_connect_keySequenceChanged(self: pointer, slot: int) {.importc: "QKeySequenceEdit_connect_keySequenceChanged".}
proc fcQKeySequenceEdit_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeySequenceEdit_tr2".}
proc fcQKeySequenceEdit_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeySequenceEdit_tr3".}
proc fQKeySequenceEdit_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QKeySequenceEdit_virtualbase_metaObject".}
proc fcQKeySequenceEdit_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_metaObject".}
proc fQKeySequenceEdit_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QKeySequenceEdit_virtualbase_metacast".}
proc fcQKeySequenceEdit_override_virtual_metacast(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_metacast".}
proc fQKeySequenceEdit_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QKeySequenceEdit_virtualbase_metacall".}
proc fcQKeySequenceEdit_override_virtual_metacall(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_metacall".}
proc fQKeySequenceEdit_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QKeySequenceEdit_virtualbase_event".}
proc fcQKeySequenceEdit_override_virtual_event(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_event".}
proc fQKeySequenceEdit_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QKeySequenceEdit_virtualbase_keyPressEvent".}
proc fcQKeySequenceEdit_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_keyPressEvent".}
proc fQKeySequenceEdit_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QKeySequenceEdit_virtualbase_keyReleaseEvent".}
proc fcQKeySequenceEdit_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_keyReleaseEvent".}
proc fQKeySequenceEdit_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QKeySequenceEdit_virtualbase_timerEvent".}
proc fcQKeySequenceEdit_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_timerEvent".}
proc fQKeySequenceEdit_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QKeySequenceEdit_virtualbase_focusOutEvent".}
proc fcQKeySequenceEdit_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_focusOutEvent".}
proc fQKeySequenceEdit_virtualbase_devType(self: pointer, ): cint{.importc: "QKeySequenceEdit_virtualbase_devType".}
proc fcQKeySequenceEdit_override_virtual_devType(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_devType".}
proc fQKeySequenceEdit_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QKeySequenceEdit_virtualbase_setVisible".}
proc fcQKeySequenceEdit_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_setVisible".}
proc fQKeySequenceEdit_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QKeySequenceEdit_virtualbase_sizeHint".}
proc fcQKeySequenceEdit_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_sizeHint".}
proc fQKeySequenceEdit_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QKeySequenceEdit_virtualbase_minimumSizeHint".}
proc fcQKeySequenceEdit_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_minimumSizeHint".}
proc fQKeySequenceEdit_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QKeySequenceEdit_virtualbase_heightForWidth".}
proc fcQKeySequenceEdit_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_heightForWidth".}
proc fQKeySequenceEdit_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QKeySequenceEdit_virtualbase_hasHeightForWidth".}
proc fcQKeySequenceEdit_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_hasHeightForWidth".}
proc fQKeySequenceEdit_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QKeySequenceEdit_virtualbase_paintEngine".}
proc fcQKeySequenceEdit_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_paintEngine".}
proc fQKeySequenceEdit_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_mousePressEvent".}
proc fcQKeySequenceEdit_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_mousePressEvent".}
proc fQKeySequenceEdit_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_mouseReleaseEvent".}
proc fcQKeySequenceEdit_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_mouseReleaseEvent".}
proc fQKeySequenceEdit_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_mouseDoubleClickEvent".}
proc fcQKeySequenceEdit_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_mouseDoubleClickEvent".}
proc fQKeySequenceEdit_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_mouseMoveEvent".}
proc fcQKeySequenceEdit_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_mouseMoveEvent".}
proc fQKeySequenceEdit_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_wheelEvent".}
proc fcQKeySequenceEdit_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_wheelEvent".}
proc fQKeySequenceEdit_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_focusInEvent".}
proc fcQKeySequenceEdit_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_focusInEvent".}
proc fQKeySequenceEdit_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_enterEvent".}
proc fcQKeySequenceEdit_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_enterEvent".}
proc fQKeySequenceEdit_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_leaveEvent".}
proc fcQKeySequenceEdit_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_leaveEvent".}
proc fQKeySequenceEdit_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_paintEvent".}
proc fcQKeySequenceEdit_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_paintEvent".}
proc fQKeySequenceEdit_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_moveEvent".}
proc fcQKeySequenceEdit_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_moveEvent".}
proc fQKeySequenceEdit_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_resizeEvent".}
proc fcQKeySequenceEdit_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_resizeEvent".}
proc fQKeySequenceEdit_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_closeEvent".}
proc fcQKeySequenceEdit_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_closeEvent".}
proc fQKeySequenceEdit_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_contextMenuEvent".}
proc fcQKeySequenceEdit_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_contextMenuEvent".}
proc fQKeySequenceEdit_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_tabletEvent".}
proc fcQKeySequenceEdit_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_tabletEvent".}
proc fQKeySequenceEdit_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_actionEvent".}
proc fcQKeySequenceEdit_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_actionEvent".}
proc fQKeySequenceEdit_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_dragEnterEvent".}
proc fcQKeySequenceEdit_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_dragEnterEvent".}
proc fQKeySequenceEdit_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_dragMoveEvent".}
proc fcQKeySequenceEdit_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_dragMoveEvent".}
proc fQKeySequenceEdit_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_dragLeaveEvent".}
proc fcQKeySequenceEdit_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_dragLeaveEvent".}
proc fQKeySequenceEdit_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_dropEvent".}
proc fcQKeySequenceEdit_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_dropEvent".}
proc fQKeySequenceEdit_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_showEvent".}
proc fcQKeySequenceEdit_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_showEvent".}
proc fQKeySequenceEdit_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_hideEvent".}
proc fcQKeySequenceEdit_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_hideEvent".}
proc fQKeySequenceEdit_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QKeySequenceEdit_virtualbase_nativeEvent".}
proc fcQKeySequenceEdit_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_nativeEvent".}
proc fQKeySequenceEdit_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QKeySequenceEdit_virtualbase_changeEvent".}
proc fcQKeySequenceEdit_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_changeEvent".}
proc fQKeySequenceEdit_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QKeySequenceEdit_virtualbase_metric".}
proc fcQKeySequenceEdit_override_virtual_metric(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_metric".}
proc fQKeySequenceEdit_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QKeySequenceEdit_virtualbase_initPainter".}
proc fcQKeySequenceEdit_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_initPainter".}
proc fQKeySequenceEdit_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QKeySequenceEdit_virtualbase_redirected".}
proc fcQKeySequenceEdit_override_virtual_redirected(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_redirected".}
proc fQKeySequenceEdit_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QKeySequenceEdit_virtualbase_sharedPainter".}
proc fcQKeySequenceEdit_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_sharedPainter".}
proc fQKeySequenceEdit_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QKeySequenceEdit_virtualbase_inputMethodEvent".}
proc fcQKeySequenceEdit_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_inputMethodEvent".}
proc fQKeySequenceEdit_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QKeySequenceEdit_virtualbase_inputMethodQuery".}
proc fcQKeySequenceEdit_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_inputMethodQuery".}
proc fQKeySequenceEdit_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QKeySequenceEdit_virtualbase_focusNextPrevChild".}
proc fcQKeySequenceEdit_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_focusNextPrevChild".}
proc fQKeySequenceEdit_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QKeySequenceEdit_virtualbase_eventFilter".}
proc fcQKeySequenceEdit_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_eventFilter".}
proc fQKeySequenceEdit_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_childEvent".}
proc fcQKeySequenceEdit_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_childEvent".}
proc fQKeySequenceEdit_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QKeySequenceEdit_virtualbase_customEvent".}
proc fcQKeySequenceEdit_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_customEvent".}
proc fQKeySequenceEdit_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QKeySequenceEdit_virtualbase_connectNotify".}
proc fcQKeySequenceEdit_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_connectNotify".}
proc fQKeySequenceEdit_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QKeySequenceEdit_virtualbase_disconnectNotify".}
proc fcQKeySequenceEdit_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QKeySequenceEdit_override_virtual_disconnectNotify".}
proc fcQKeySequenceEdit_staticMetaObject(): pointer {.importc: "QKeySequenceEdit_staticMetaObject".}
proc fcQKeySequenceEdit_delete(self: pointer) {.importc: "QKeySequenceEdit_delete".}


func init*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit, h: ptr cQKeySequenceEdit): gen_qkeysequenceedit_types.QKeySequenceEdit =
  T(h: h)
proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit, parent: gen_qwidget_types.QWidget): gen_qkeysequenceedit_types.QKeySequenceEdit =
  gen_qkeysequenceedit_types.QKeySequenceEdit.init(fcQKeySequenceEdit_new(parent.h))

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qkeysequenceedit_types.QKeySequenceEdit =
  gen_qkeysequenceedit_types.QKeySequenceEdit.init(fcQKeySequenceEdit_new2())

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit, keySequence: gen_qkeysequence_types.QKeySequence): gen_qkeysequenceedit_types.QKeySequenceEdit =
  gen_qkeysequenceedit_types.QKeySequenceEdit.init(fcQKeySequenceEdit_new3(keySequence.h))

proc create*(T: type gen_qkeysequenceedit_types.QKeySequenceEdit, keySequence: gen_qkeysequence_types.QKeySequence, parent: gen_qwidget_types.QWidget): gen_qkeysequenceedit_types.QKeySequenceEdit =
  gen_qkeysequenceedit_types.QKeySequenceEdit.init(fcQKeySequenceEdit_new4(keySequence.h, parent.h))

proc metaObject*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeySequenceEdit_metaObject(self.h))

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
  gen_qkeysequence_types.QKeySequence(h: fcQKeySequenceEdit_keySequence(self.h))

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
proc miqt_exec_callback_QKeySequenceEdit_editingFinished(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QKeySequenceEditeditingFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc oneditingFinished*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditeditingFinishedSlot) =
  var tmp = new QKeySequenceEditeditingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_connect_editingFinished(self.h, cast[int](addr tmp[]))

proc keySequenceChanged*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, keySequence: gen_qkeysequence_types.QKeySequence): void =
  fcQKeySequenceEdit_keySequenceChanged(self.h, keySequence.h)

type QKeySequenceEditkeySequenceChangedSlot* = proc(keySequence: gen_qkeysequence_types.QKeySequence)
proc miqt_exec_callback_QKeySequenceEdit_keySequenceChanged(slot: int, keySequence: pointer) {.exportc.} =
  let nimfunc = cast[ptr QKeySequenceEditkeySequenceChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qkeysequence_types.QKeySequence(h: keySequence)

  nimfunc[](slotval1)

proc onkeySequenceChanged*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditkeySequenceChangedSlot) =
  var tmp = new QKeySequenceEditkeySequenceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_connect_keySequenceChanged(self.h, cast[int](addr tmp[]))

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

proc QKeySequenceEditmetaObject*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQKeySequenceEdit_virtualbase_metaObject(self.h))

type QKeySequenceEditmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditmetaObjectProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_metaObject(self: ptr cQKeySequenceEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_metaObject ".} =
  var nimfunc = cast[ptr QKeySequenceEditmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QKeySequenceEditmetacast*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cstring): pointer =
  fQKeySequenceEdit_virtualbase_metacast(self.h, param1)

type QKeySequenceEditmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditmetacastProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_metacast(self: ptr cQKeySequenceEdit, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_metacast ".} =
  var nimfunc = cast[ptr QKeySequenceEditmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QKeySequenceEditmetacall*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint, param2: cint, param3: pointer): cint =
  fQKeySequenceEdit_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QKeySequenceEditmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditmetacallProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_metacall(self: ptr cQKeySequenceEdit, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QKeySequenceEdit_metacall ".} =
  var nimfunc = cast[ptr QKeySequenceEditmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QKeySequenceEditevent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): bool =
  fQKeySequenceEdit_virtualbase_event(self.h, param1.h)

type QKeySequenceEditeventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditeventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_event(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QKeySequenceEdit_event ".} =
  var nimfunc = cast[ptr QKeySequenceEditeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QKeySequenceEditkeyPressEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void =
  fQKeySequenceEdit_virtualbase_keyPressEvent(self.h, param1.h)

type QKeySequenceEditkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_keyPressEvent(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_keyPressEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QKeySequenceEditkeyReleaseEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qevent_types.QKeyEvent): void =
  fQKeySequenceEdit_virtualbase_keyReleaseEvent(self.h, param1.h)

type QKeySequenceEditkeyReleaseEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_keyReleaseEvent(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QKeySequenceEdittimerEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qcoreevent_types.QTimerEvent): void =
  fQKeySequenceEdit_virtualbase_timerEvent(self.h, param1.h)

type QKeySequenceEdittimerEventProc* = proc(param1: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEdittimerEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEdittimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_timerEvent(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_timerEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEdittimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)


  nimfunc[](slotval1)
proc QKeySequenceEditfocusOutEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qevent_types.QFocusEvent): void =
  fQKeySequenceEdit_virtualbase_focusOutEvent(self.h, param1.h)

type QKeySequenceEditfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_focusOutEvent(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_focusOutEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QKeySequenceEditdevType*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): cint =
  fQKeySequenceEdit_virtualbase_devType(self.h)

type QKeySequenceEditdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditdevTypeProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_devType(self: ptr cQKeySequenceEdit, slot: int): cint {.exportc: "miqt_exec_callback_QKeySequenceEdit_devType ".} =
  var nimfunc = cast[ptr QKeySequenceEditdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QKeySequenceEditsetVisible*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, visible: bool): void =
  fQKeySequenceEdit_virtualbase_setVisible(self.h, visible)

type QKeySequenceEditsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditsetVisibleProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_setVisible(self: ptr cQKeySequenceEdit, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_setVisible ".} =
  var nimfunc = cast[ptr QKeySequenceEditsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QKeySequenceEditsizeHint*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQKeySequenceEdit_virtualbase_sizeHint(self.h))

type QKeySequenceEditsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditsizeHintProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_sizeHint(self: ptr cQKeySequenceEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_sizeHint ".} =
  var nimfunc = cast[ptr QKeySequenceEditsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QKeySequenceEditminimumSizeHint*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQKeySequenceEdit_virtualbase_minimumSizeHint(self.h))

type QKeySequenceEditminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_minimumSizeHint(self: ptr cQKeySequenceEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_minimumSizeHint ".} =
  var nimfunc = cast[ptr QKeySequenceEditminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QKeySequenceEditheightForWidth*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint): cint =
  fQKeySequenceEdit_virtualbase_heightForWidth(self.h, param1)

type QKeySequenceEditheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditheightForWidthProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_heightForWidth(self: ptr cQKeySequenceEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QKeySequenceEdit_heightForWidth ".} =
  var nimfunc = cast[ptr QKeySequenceEditheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QKeySequenceEdithasHeightForWidth*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): bool =
  fQKeySequenceEdit_virtualbase_hasHeightForWidth(self.h)

type QKeySequenceEdithasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEdithasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEdithasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_hasHeightForWidth(self: ptr cQKeySequenceEdit, slot: int): bool {.exportc: "miqt_exec_callback_QKeySequenceEdit_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QKeySequenceEdithasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QKeySequenceEditpaintEngine*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQKeySequenceEdit_virtualbase_paintEngine(self.h))

type QKeySequenceEditpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditpaintEngineProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_paintEngine(self: ptr cQKeySequenceEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_paintEngine ".} =
  var nimfunc = cast[ptr QKeySequenceEditpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QKeySequenceEditmousePressEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void =
  fQKeySequenceEdit_virtualbase_mousePressEvent(self.h, event.h)

type QKeySequenceEditmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditmousePressEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_mousePressEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_mousePressEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditmouseReleaseEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void =
  fQKeySequenceEdit_virtualbase_mouseReleaseEvent(self.h, event.h)

type QKeySequenceEditmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_mouseReleaseEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditmouseDoubleClickEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void =
  fQKeySequenceEdit_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QKeySequenceEditmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_mouseDoubleClickEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditmouseMoveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMouseEvent): void =
  fQKeySequenceEdit_virtualbase_mouseMoveEvent(self.h, event.h)

type QKeySequenceEditmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_mouseMoveEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditwheelEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QWheelEvent): void =
  fQKeySequenceEdit_virtualbase_wheelEvent(self.h, event.h)

type QKeySequenceEditwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditwheelEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_wheelEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_wheelEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditfocusInEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QFocusEvent): void =
  fQKeySequenceEdit_virtualbase_focusInEvent(self.h, event.h)

type QKeySequenceEditfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditfocusInEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_focusInEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_focusInEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditenterEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QEnterEvent): void =
  fQKeySequenceEdit_virtualbase_enterEvent(self.h, event.h)

type QKeySequenceEditenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditenterEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_enterEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_enterEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditleaveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void =
  fQKeySequenceEdit_virtualbase_leaveEvent(self.h, event.h)

type QKeySequenceEditleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditleaveEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_leaveEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_leaveEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditpaintEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QPaintEvent): void =
  fQKeySequenceEdit_virtualbase_paintEvent(self.h, event.h)

type QKeySequenceEditpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditpaintEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_paintEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_paintEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditmoveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QMoveEvent): void =
  fQKeySequenceEdit_virtualbase_moveEvent(self.h, event.h)

type QKeySequenceEditmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditmoveEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_moveEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_moveEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditresizeEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QResizeEvent): void =
  fQKeySequenceEdit_virtualbase_resizeEvent(self.h, event.h)

type QKeySequenceEditresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditresizeEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_resizeEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_resizeEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditcloseEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QCloseEvent): void =
  fQKeySequenceEdit_virtualbase_closeEvent(self.h, event.h)

type QKeySequenceEditcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditcloseEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_closeEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_closeEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditcontextMenuEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QContextMenuEvent): void =
  fQKeySequenceEdit_virtualbase_contextMenuEvent(self.h, event.h)

type QKeySequenceEditcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_contextMenuEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_contextMenuEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEdittabletEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QTabletEvent): void =
  fQKeySequenceEdit_virtualbase_tabletEvent(self.h, event.h)

type QKeySequenceEdittabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEdittabletEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEdittabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_tabletEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_tabletEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEdittabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditactionEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QActionEvent): void =
  fQKeySequenceEdit_virtualbase_actionEvent(self.h, event.h)

type QKeySequenceEditactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditactionEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_actionEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_actionEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditdragEnterEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QDragEnterEvent): void =
  fQKeySequenceEdit_virtualbase_dragEnterEvent(self.h, event.h)

type QKeySequenceEditdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_dragEnterEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_dragEnterEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditdragMoveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QDragMoveEvent): void =
  fQKeySequenceEdit_virtualbase_dragMoveEvent(self.h, event.h)

type QKeySequenceEditdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_dragMoveEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_dragMoveEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditdragLeaveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QDragLeaveEvent): void =
  fQKeySequenceEdit_virtualbase_dragLeaveEvent(self.h, event.h)

type QKeySequenceEditdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_dragLeaveEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditdropEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QDropEvent): void =
  fQKeySequenceEdit_virtualbase_dropEvent(self.h, event.h)

type QKeySequenceEditdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditdropEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_dropEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_dropEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditshowEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QShowEvent): void =
  fQKeySequenceEdit_virtualbase_showEvent(self.h, event.h)

type QKeySequenceEditshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditshowEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_showEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_showEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEdithideEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qevent_types.QHideEvent): void =
  fQKeySequenceEdit_virtualbase_hideEvent(self.h, event.h)

type QKeySequenceEdithideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEdithideEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEdithideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_hideEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_hideEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEdithideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditnativeEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQKeySequenceEdit_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QKeySequenceEditnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditnativeEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_nativeEvent(self: ptr cQKeySequenceEdit, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QKeySequenceEdit_nativeEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QKeySequenceEditchangeEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qcoreevent_types.QEvent): void =
  fQKeySequenceEdit_virtualbase_changeEvent(self.h, param1.h)

type QKeySequenceEditchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditchangeEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_changeEvent(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_changeEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QKeySequenceEditmetric*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint): cint =
  fQKeySequenceEdit_virtualbase_metric(self.h, cint(param1))

type QKeySequenceEditmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditmetricProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_metric(self: ptr cQKeySequenceEdit, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QKeySequenceEdit_metric ".} =
  var nimfunc = cast[ptr QKeySequenceEditmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QKeySequenceEditinitPainter*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, painter: gen_qpainter_types.QPainter): void =
  fQKeySequenceEdit_virtualbase_initPainter(self.h, painter.h)

type QKeySequenceEditinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditinitPainterProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_initPainter(self: ptr cQKeySequenceEdit, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_initPainter ".} =
  var nimfunc = cast[ptr QKeySequenceEditinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QKeySequenceEditredirected*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQKeySequenceEdit_virtualbase_redirected(self.h, offset.h))

type QKeySequenceEditredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditredirectedProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_redirected(self: ptr cQKeySequenceEdit, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_redirected ".} =
  var nimfunc = cast[ptr QKeySequenceEditredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QKeySequenceEditsharedPainter*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQKeySequenceEdit_virtualbase_sharedPainter(self.h))

type QKeySequenceEditsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditsharedPainterProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_sharedPainter(self: ptr cQKeySequenceEdit, slot: int): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_sharedPainter ".} =
  var nimfunc = cast[ptr QKeySequenceEditsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QKeySequenceEditinputMethodEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: gen_qevent_types.QInputMethodEvent): void =
  fQKeySequenceEdit_virtualbase_inputMethodEvent(self.h, param1.h)

type QKeySequenceEditinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_inputMethodEvent(self: ptr cQKeySequenceEdit, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_inputMethodEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QKeySequenceEditinputMethodQuery*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQKeySequenceEdit_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QKeySequenceEditinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_inputMethodQuery(self: ptr cQKeySequenceEdit, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QKeySequenceEdit_inputMethodQuery ".} =
  var nimfunc = cast[ptr QKeySequenceEditinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QKeySequenceEditfocusNextPrevChild*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, next: bool): bool =
  fQKeySequenceEdit_virtualbase_focusNextPrevChild(self.h, next)

type QKeySequenceEditfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_focusNextPrevChild(self: ptr cQKeySequenceEdit, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QKeySequenceEdit_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QKeySequenceEditfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QKeySequenceEditeventFilter*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQKeySequenceEdit_virtualbase_eventFilter(self.h, watched.h, event.h)

type QKeySequenceEditeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditeventFilterProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_eventFilter(self: ptr cQKeySequenceEdit, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QKeySequenceEdit_eventFilter ".} =
  var nimfunc = cast[ptr QKeySequenceEditeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QKeySequenceEditchildEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qcoreevent_types.QChildEvent): void =
  fQKeySequenceEdit_virtualbase_childEvent(self.h, event.h)

type QKeySequenceEditchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditchildEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_childEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_childEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditcustomEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, event: gen_qcoreevent_types.QEvent): void =
  fQKeySequenceEdit_virtualbase_customEvent(self.h, event.h)

type QKeySequenceEditcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditcustomEventProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_customEvent(self: ptr cQKeySequenceEdit, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_customEvent ".} =
  var nimfunc = cast[ptr QKeySequenceEditcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QKeySequenceEditconnectNotify*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQKeySequenceEdit_virtualbase_connectNotify(self.h, signal.h)

type QKeySequenceEditconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_connectNotify(self: ptr cQKeySequenceEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_connectNotify ".} =
  var nimfunc = cast[ptr QKeySequenceEditconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QKeySequenceEditdisconnectNotify*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQKeySequenceEdit_virtualbase_disconnectNotify(self.h, signal.h)

type QKeySequenceEditdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qkeysequenceedit_types.QKeySequenceEdit, slot: QKeySequenceEditdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QKeySequenceEditdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQKeySequenceEdit_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeySequenceEdit_disconnectNotify(self: ptr cQKeySequenceEdit, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QKeySequenceEdit_disconnectNotify ".} =
  var nimfunc = cast[ptr QKeySequenceEditdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qkeysequenceedit_types.QKeySequenceEdit): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQKeySequenceEdit_staticMetaObject())
proc delete*(self: gen_qkeysequenceedit_types.QKeySequenceEdit) =
  fcQKeySequenceEdit_delete(self.h)
