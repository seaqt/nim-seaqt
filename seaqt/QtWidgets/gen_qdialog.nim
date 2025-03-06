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

proc fcQDialog_new(parent: pointer): ptr cQDialog {.importc: "QDialog_new".}
proc fcQDialog_new2(): ptr cQDialog {.importc: "QDialog_new2".}
proc fcQDialog_new3(parent: pointer, f: cint): ptr cQDialog {.importc: "QDialog_new3".}
proc fcQDialog_metaObject(self: pointer, ): pointer {.importc: "QDialog_metaObject".}
proc fcQDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QDialog_metacast".}
proc fcQDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDialog_metacall".}
proc fcQDialog_tr(s: cstring): struct_miqt_string {.importc: "QDialog_tr".}
proc fcQDialog_resultX(self: pointer, ): cint {.importc: "QDialog_result".}
proc fcQDialog_setVisible(self: pointer, visible: bool): void {.importc: "QDialog_setVisible".}
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
proc fcQDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDialog_tr2".}
proc fcQDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDialog_tr3".}
proc fQDialog_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDialog_virtualbase_metaObject".}
proc fcQDialog_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDialog_override_virtual_metaObject".}
proc fQDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDialog_virtualbase_metacast".}
proc fcQDialog_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDialog_override_virtual_metacast".}
proc fQDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDialog_virtualbase_metacall".}
proc fcQDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDialog_override_virtual_metacall".}
proc fQDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDialog_virtualbase_setVisible".}
proc fcQDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDialog_override_virtual_setVisible".}
proc fQDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDialog_virtualbase_sizeHint".}
proc fcQDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDialog_override_virtual_sizeHint".}
proc fQDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDialog_virtualbase_minimumSizeHint".}
proc fcQDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDialog_override_virtual_minimumSizeHint".}
proc fQDialog_virtualbase_open(self: pointer, ): void{.importc: "QDialog_virtualbase_open".}
proc fcQDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QDialog_override_virtual_open".}
proc fQDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QDialog_virtualbase_exec".}
proc fcQDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QDialog_override_virtual_exec".}
proc fQDialog_virtualbase_done(self: pointer, param1: cint): void{.importc: "QDialog_virtualbase_done".}
proc fcQDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QDialog_override_virtual_done".}
proc fQDialog_virtualbase_accept(self: pointer, ): void{.importc: "QDialog_virtualbase_accept".}
proc fcQDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QDialog_override_virtual_accept".}
proc fQDialog_virtualbase_reject(self: pointer, ): void{.importc: "QDialog_virtualbase_reject".}
proc fcQDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QDialog_override_virtual_reject".}
proc fQDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_keyPressEvent".}
proc fcQDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_keyPressEvent".}
proc fQDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_closeEvent".}
proc fcQDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_closeEvent".}
proc fQDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_showEvent".}
proc fcQDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_showEvent".}
proc fQDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_resizeEvent".}
proc fcQDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_resizeEvent".}
proc fQDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_contextMenuEvent".}
proc fcQDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_contextMenuEvent".}
proc fQDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QDialog_virtualbase_eventFilter".}
proc fcQDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDialog_override_virtual_eventFilter".}
proc fQDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QDialog_virtualbase_devType".}
proc fcQDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QDialog_override_virtual_devType".}
proc fQDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDialog_virtualbase_heightForWidth".}
proc fcQDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDialog_override_virtual_heightForWidth".}
proc fQDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDialog_virtualbase_hasHeightForWidth".}
proc fcQDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDialog_override_virtual_hasHeightForWidth".}
proc fQDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDialog_virtualbase_paintEngine".}
proc fcQDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDialog_override_virtual_paintEngine".}
proc fQDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDialog_virtualbase_event".}
proc fcQDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QDialog_override_virtual_event".}
proc fQDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_mousePressEvent".}
proc fcQDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_mousePressEvent".}
proc fQDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_mouseReleaseEvent".}
proc fcQDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_mouseReleaseEvent".}
proc fQDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_mouseDoubleClickEvent".}
proc fQDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_mouseMoveEvent".}
proc fcQDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_mouseMoveEvent".}
proc fQDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_wheelEvent".}
proc fcQDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_wheelEvent".}
proc fQDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_keyReleaseEvent".}
proc fcQDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_keyReleaseEvent".}
proc fQDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_focusInEvent".}
proc fcQDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_focusInEvent".}
proc fQDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_focusOutEvent".}
proc fcQDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_focusOutEvent".}
proc fQDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_enterEvent".}
proc fcQDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_enterEvent".}
proc fQDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_leaveEvent".}
proc fcQDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_leaveEvent".}
proc fQDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_paintEvent".}
proc fcQDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_paintEvent".}
proc fQDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_moveEvent".}
proc fcQDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_moveEvent".}
proc fQDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_tabletEvent".}
proc fcQDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_tabletEvent".}
proc fQDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_actionEvent".}
proc fcQDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_actionEvent".}
proc fQDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_dragEnterEvent".}
proc fcQDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_dragEnterEvent".}
proc fQDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_dragMoveEvent".}
proc fcQDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_dragMoveEvent".}
proc fQDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_dragLeaveEvent".}
proc fcQDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_dragLeaveEvent".}
proc fQDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_dropEvent".}
proc fcQDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_dropEvent".}
proc fQDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_hideEvent".}
proc fcQDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_hideEvent".}
proc fQDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QDialog_virtualbase_nativeEvent".}
proc fcQDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_nativeEvent".}
proc fQDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_changeEvent".}
proc fcQDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_changeEvent".}
proc fQDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDialog_virtualbase_metric".}
proc fcQDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QDialog_override_virtual_metric".}
proc fQDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDialog_virtualbase_initPainter".}
proc fcQDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDialog_override_virtual_initPainter".}
proc fQDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDialog_virtualbase_redirected".}
proc fcQDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDialog_override_virtual_redirected".}
proc fQDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDialog_virtualbase_sharedPainter".}
proc fcQDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDialog_override_virtual_sharedPainter".}
proc fQDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDialog_virtualbase_inputMethodEvent".}
proc fcQDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_inputMethodEvent".}
proc fQDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDialog_virtualbase_inputMethodQuery".}
proc fcQDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDialog_override_virtual_inputMethodQuery".}
proc fQDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDialog_virtualbase_focusNextPrevChild".}
proc fcQDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDialog_override_virtual_focusNextPrevChild".}
proc fQDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_timerEvent".}
proc fcQDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_timerEvent".}
proc fQDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_childEvent".}
proc fcQDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_childEvent".}
proc fQDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDialog_virtualbase_customEvent".}
proc fcQDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDialog_override_virtual_customEvent".}
proc fQDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDialog_virtualbase_connectNotify".}
proc fcQDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDialog_override_virtual_connectNotify".}
proc fQDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDialog_virtualbase_disconnectNotify".}
proc fcQDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDialog_override_virtual_disconnectNotify".}
proc fcQDialog_staticMetaObject(): pointer {.importc: "QDialog_staticMetaObject".}
proc fcQDialog_delete(self: pointer) {.importc: "QDialog_delete".}


func init*(T: type gen_qdialog_types.QDialog, h: ptr cQDialog): gen_qdialog_types.QDialog =
  T(h: h)
proc create*(T: type gen_qdialog_types.QDialog, parent: gen_qwidget_types.QWidget): gen_qdialog_types.QDialog =
  gen_qdialog_types.QDialog.init(fcQDialog_new(parent.h))

proc create*(T: type gen_qdialog_types.QDialog, ): gen_qdialog_types.QDialog =
  gen_qdialog_types.QDialog.init(fcQDialog_new2())

proc create*(T: type gen_qdialog_types.QDialog, parent: gen_qwidget_types.QWidget, f: cint): gen_qdialog_types.QDialog =
  gen_qdialog_types.QDialog.init(fcQDialog_new3(parent.h, cint(f)))

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

proc resultX*(self: gen_qdialog_types.QDialog, ): cint =
  fcQDialog_resultX(self.h)

proc setVisible*(self: gen_qdialog_types.QDialog, visible: bool): void =
  fcQDialog_setVisible(self.h, visible)

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
proc miqt_exec_callback_QDialog_finished(slot: int, resultVal: cint) {.exportc.} =
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
proc miqt_exec_callback_QDialog_accepted(slot: int) {.exportc.} =
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
proc miqt_exec_callback_QDialog_rejected(slot: int) {.exportc.} =
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

proc QDialogmetaObject*(self: gen_qdialog_types.QDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQDialog_virtualbase_metaObject(self.h))

type QDialogmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qdialog_types.QDialog, slot: QDialogmetaObjectProc) =
  # TODO check subclass
  var tmp = new QDialogmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_metaObject(self: ptr cQDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QDialog_metaObject ".} =
  var nimfunc = cast[ptr QDialogmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialogmetacast*(self: gen_qdialog_types.QDialog, param1: cstring): pointer =
  fQDialog_virtualbase_metacast(self.h, param1)

type QDialogmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qdialog_types.QDialog, slot: QDialogmetacastProc) =
  # TODO check subclass
  var tmp = new QDialogmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_metacast(self: ptr cQDialog, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDialog_metacast ".} =
  var nimfunc = cast[ptr QDialogmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialogmetacall*(self: gen_qdialog_types.QDialog, param1: cint, param2: cint, param3: pointer): cint =
  fQDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDialogmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qdialog_types.QDialog, slot: QDialogmetacallProc) =
  # TODO check subclass
  var tmp = new QDialogmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_metacall(self: ptr cQDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDialog_metacall ".} =
  var nimfunc = cast[ptr QDialogmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDialogsetVisible*(self: gen_qdialog_types.QDialog, visible: bool): void =
  fQDialog_virtualbase_setVisible(self.h, visible)

type QDialogsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qdialog_types.QDialog, slot: QDialogsetVisibleProc) =
  # TODO check subclass
  var tmp = new QDialogsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_setVisible(self: ptr cQDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDialog_setVisible ".} =
  var nimfunc = cast[ptr QDialogsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QDialogsizeHint*(self: gen_qdialog_types.QDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDialog_virtualbase_sizeHint(self.h))

type QDialogsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qdialog_types.QDialog, slot: QDialogsizeHintProc) =
  # TODO check subclass
  var tmp = new QDialogsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_sizeHint(self: ptr cQDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QDialog_sizeHint ".} =
  var nimfunc = cast[ptr QDialogsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialogminimumSizeHint*(self: gen_qdialog_types.QDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDialog_virtualbase_minimumSizeHint(self.h))

type QDialogminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qdialog_types.QDialog, slot: QDialogminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QDialogminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_minimumSizeHint(self: ptr cQDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QDialog_minimumSizeHint ".} =
  var nimfunc = cast[ptr QDialogminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialogopen*(self: gen_qdialog_types.QDialog, ): void =
  fQDialog_virtualbase_open(self.h)

type QDialogopenProc* = proc(): void
proc onopen*(self: gen_qdialog_types.QDialog, slot: QDialogopenProc) =
  # TODO check subclass
  var tmp = new QDialogopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_open(self: ptr cQDialog, slot: int): void {.exportc: "miqt_exec_callback_QDialog_open ".} =
  var nimfunc = cast[ptr QDialogopenProc](cast[pointer](slot))

  nimfunc[]()
proc QDialogexec*(self: gen_qdialog_types.QDialog, ): cint =
  fQDialog_virtualbase_exec(self.h)

type QDialogexecProc* = proc(): cint
proc onexec*(self: gen_qdialog_types.QDialog, slot: QDialogexecProc) =
  # TODO check subclass
  var tmp = new QDialogexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_exec(self: ptr cQDialog, slot: int): cint {.exportc: "miqt_exec_callback_QDialog_exec ".} =
  var nimfunc = cast[ptr QDialogexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDialogdone*(self: gen_qdialog_types.QDialog, param1: cint): void =
  fQDialog_virtualbase_done(self.h, param1)

type QDialogdoneProc* = proc(param1: cint): void
proc ondone*(self: gen_qdialog_types.QDialog, slot: QDialogdoneProc) =
  # TODO check subclass
  var tmp = new QDialogdoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_done(self: ptr cQDialog, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QDialog_done ".} =
  var nimfunc = cast[ptr QDialogdoneProc](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)
proc QDialogaccept*(self: gen_qdialog_types.QDialog, ): void =
  fQDialog_virtualbase_accept(self.h)

type QDialogacceptProc* = proc(): void
proc onaccept*(self: gen_qdialog_types.QDialog, slot: QDialogacceptProc) =
  # TODO check subclass
  var tmp = new QDialogacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_accept(self: ptr cQDialog, slot: int): void {.exportc: "miqt_exec_callback_QDialog_accept ".} =
  var nimfunc = cast[ptr QDialogacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QDialogreject*(self: gen_qdialog_types.QDialog, ): void =
  fQDialog_virtualbase_reject(self.h)

type QDialogrejectProc* = proc(): void
proc onreject*(self: gen_qdialog_types.QDialog, slot: QDialogrejectProc) =
  # TODO check subclass
  var tmp = new QDialogrejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_reject(self: ptr cQDialog, slot: int): void {.exportc: "miqt_exec_callback_QDialog_reject ".} =
  var nimfunc = cast[ptr QDialogrejectProc](cast[pointer](slot))

  nimfunc[]()
proc QDialogkeyPressEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QKeyEvent): void =
  fQDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QDialogkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qdialog_types.QDialog, slot: QDialogkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QDialogkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_keyPressEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_keyPressEvent ".} =
  var nimfunc = cast[ptr QDialogkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QDialogcloseEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QCloseEvent): void =
  fQDialog_virtualbase_closeEvent(self.h, param1.h)

type QDialogcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qdialog_types.QDialog, slot: QDialogcloseEventProc) =
  # TODO check subclass
  var tmp = new QDialogcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_closeEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_closeEvent ".} =
  var nimfunc = cast[ptr QDialogcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QDialogshowEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QShowEvent): void =
  fQDialog_virtualbase_showEvent(self.h, param1.h)

type QDialogshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qdialog_types.QDialog, slot: QDialogshowEventProc) =
  # TODO check subclass
  var tmp = new QDialogshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_showEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_showEvent ".} =
  var nimfunc = cast[ptr QDialogshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QDialogresizeEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QResizeEvent): void =
  fQDialog_virtualbase_resizeEvent(self.h, param1.h)

type QDialogresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qdialog_types.QDialog, slot: QDialogresizeEventProc) =
  # TODO check subclass
  var tmp = new QDialogresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_resizeEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_resizeEvent ".} =
  var nimfunc = cast[ptr QDialogresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QDialogcontextMenuEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fQDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QDialogcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qdialog_types.QDialog, slot: QDialogcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QDialogcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_contextMenuEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_contextMenuEvent ".} =
  var nimfunc = cast[ptr QDialogcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QDialogeventFilter*(self: gen_qdialog_types.QDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QDialogeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qdialog_types.QDialog, slot: QDialogeventFilterProc) =
  # TODO check subclass
  var tmp = new QDialogeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_eventFilter(self: ptr cQDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QDialog_eventFilter ".} =
  var nimfunc = cast[ptr QDialogeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDialogdevType*(self: gen_qdialog_types.QDialog, ): cint =
  fQDialog_virtualbase_devType(self.h)

type QDialogdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qdialog_types.QDialog, slot: QDialogdevTypeProc) =
  # TODO check subclass
  var tmp = new QDialogdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_devType(self: ptr cQDialog, slot: int): cint {.exportc: "miqt_exec_callback_QDialog_devType ".} =
  var nimfunc = cast[ptr QDialogdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDialogheightForWidth*(self: gen_qdialog_types.QDialog, param1: cint): cint =
  fQDialog_virtualbase_heightForWidth(self.h, param1)

type QDialogheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qdialog_types.QDialog, slot: QDialogheightForWidthProc) =
  # TODO check subclass
  var tmp = new QDialogheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_heightForWidth(self: ptr cQDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDialog_heightForWidth ".} =
  var nimfunc = cast[ptr QDialogheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialoghasHeightForWidth*(self: gen_qdialog_types.QDialog, ): bool =
  fQDialog_virtualbase_hasHeightForWidth(self.h)

type QDialoghasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qdialog_types.QDialog, slot: QDialoghasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QDialoghasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_hasHeightForWidth(self: ptr cQDialog, slot: int): bool {.exportc: "miqt_exec_callback_QDialog_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QDialoghasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDialogpaintEngine*(self: gen_qdialog_types.QDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQDialog_virtualbase_paintEngine(self.h))

type QDialogpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qdialog_types.QDialog, slot: QDialogpaintEngineProc) =
  # TODO check subclass
  var tmp = new QDialogpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_paintEngine(self: ptr cQDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QDialog_paintEngine ".} =
  var nimfunc = cast[ptr QDialogpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialogevent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QEvent): bool =
  fQDialog_virtualbase_event(self.h, event.h)

type QDialogeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qdialog_types.QDialog, slot: QDialogeventProc) =
  # TODO check subclass
  var tmp = new QDialogeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_event(self: ptr cQDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDialog_event ".} =
  var nimfunc = cast[ptr QDialogeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialogmousePressEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMouseEvent): void =
  fQDialog_virtualbase_mousePressEvent(self.h, event.h)

type QDialogmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qdialog_types.QDialog, slot: QDialogmousePressEventProc) =
  # TODO check subclass
  var tmp = new QDialogmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_mousePressEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_mousePressEvent ".} =
  var nimfunc = cast[ptr QDialogmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDialogmouseReleaseEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMouseEvent): void =
  fQDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDialogmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qdialog_types.QDialog, slot: QDialogmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDialogmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_mouseReleaseEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QDialogmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDialogmouseDoubleClickEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMouseEvent): void =
  fQDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDialogmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qdialog_types.QDialog, slot: QDialogmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QDialogmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_mouseDoubleClickEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QDialogmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDialogmouseMoveEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMouseEvent): void =
  fQDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QDialogmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qdialog_types.QDialog, slot: QDialogmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QDialogmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_mouseMoveEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QDialogmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDialogwheelEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QWheelEvent): void =
  fQDialog_virtualbase_wheelEvent(self.h, event.h)

type QDialogwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qdialog_types.QDialog, slot: QDialogwheelEventProc) =
  # TODO check subclass
  var tmp = new QDialogwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_wheelEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_wheelEvent ".} =
  var nimfunc = cast[ptr QDialogwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QDialogkeyReleaseEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QKeyEvent): void =
  fQDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QDialogkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qdialog_types.QDialog, slot: QDialogkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDialogkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_keyReleaseEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QDialogkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDialogfocusInEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QFocusEvent): void =
  fQDialog_virtualbase_focusInEvent(self.h, event.h)

type QDialogfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qdialog_types.QDialog, slot: QDialogfocusInEventProc) =
  # TODO check subclass
  var tmp = new QDialogfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_focusInEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_focusInEvent ".} =
  var nimfunc = cast[ptr QDialogfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDialogfocusOutEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QFocusEvent): void =
  fQDialog_virtualbase_focusOutEvent(self.h, event.h)

type QDialogfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qdialog_types.QDialog, slot: QDialogfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QDialogfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_focusOutEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_focusOutEvent ".} =
  var nimfunc = cast[ptr QDialogfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDialogenterEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QEnterEvent): void =
  fQDialog_virtualbase_enterEvent(self.h, event.h)

type QDialogenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qdialog_types.QDialog, slot: QDialogenterEventProc) =
  # TODO check subclass
  var tmp = new QDialogenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_enterEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_enterEvent ".} =
  var nimfunc = cast[ptr QDialogenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDialogleaveEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QEvent): void =
  fQDialog_virtualbase_leaveEvent(self.h, event.h)

type QDialogleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qdialog_types.QDialog, slot: QDialogleaveEventProc) =
  # TODO check subclass
  var tmp = new QDialogleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_leaveEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_leaveEvent ".} =
  var nimfunc = cast[ptr QDialogleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDialogpaintEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QPaintEvent): void =
  fQDialog_virtualbase_paintEvent(self.h, event.h)

type QDialogpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qdialog_types.QDialog, slot: QDialogpaintEventProc) =
  # TODO check subclass
  var tmp = new QDialogpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_paintEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_paintEvent ".} =
  var nimfunc = cast[ptr QDialogpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QDialogmoveEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QMoveEvent): void =
  fQDialog_virtualbase_moveEvent(self.h, event.h)

type QDialogmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qdialog_types.QDialog, slot: QDialogmoveEventProc) =
  # TODO check subclass
  var tmp = new QDialogmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_moveEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_moveEvent ".} =
  var nimfunc = cast[ptr QDialogmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDialogtabletEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QTabletEvent): void =
  fQDialog_virtualbase_tabletEvent(self.h, event.h)

type QDialogtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qdialog_types.QDialog, slot: QDialogtabletEventProc) =
  # TODO check subclass
  var tmp = new QDialogtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_tabletEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_tabletEvent ".} =
  var nimfunc = cast[ptr QDialogtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QDialogactionEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QActionEvent): void =
  fQDialog_virtualbase_actionEvent(self.h, event.h)

type QDialogactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qdialog_types.QDialog, slot: QDialogactionEventProc) =
  # TODO check subclass
  var tmp = new QDialogactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_actionEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_actionEvent ".} =
  var nimfunc = cast[ptr QDialogactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QDialogdragEnterEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fQDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QDialogdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qdialog_types.QDialog, slot: QDialogdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QDialogdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_dragEnterEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_dragEnterEvent ".} =
  var nimfunc = cast[ptr QDialogdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDialogdragMoveEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fQDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QDialogdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qdialog_types.QDialog, slot: QDialogdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QDialogdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_dragMoveEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_dragMoveEvent ".} =
  var nimfunc = cast[ptr QDialogdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDialogdragLeaveEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fQDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QDialogdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qdialog_types.QDialog, slot: QDialogdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QDialogdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_dragLeaveEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QDialogdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QDialogdropEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QDropEvent): void =
  fQDialog_virtualbase_dropEvent(self.h, event.h)

type QDialogdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qdialog_types.QDialog, slot: QDialogdropEventProc) =
  # TODO check subclass
  var tmp = new QDialogdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_dropEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_dropEvent ".} =
  var nimfunc = cast[ptr QDialogdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QDialoghideEvent*(self: gen_qdialog_types.QDialog, event: gen_qevent_types.QHideEvent): void =
  fQDialog_virtualbase_hideEvent(self.h, event.h)

type QDialoghideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qdialog_types.QDialog, slot: QDialoghideEventProc) =
  # TODO check subclass
  var tmp = new QDialoghideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_hideEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_hideEvent ".} =
  var nimfunc = cast[ptr QDialoghideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QDialognativeEvent*(self: gen_qdialog_types.QDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDialognativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qdialog_types.QDialog, slot: QDialognativeEventProc) =
  # TODO check subclass
  var tmp = new QDialognativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_nativeEvent(self: ptr cQDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QDialog_nativeEvent ".} =
  var nimfunc = cast[ptr QDialognativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDialogchangeEvent*(self: gen_qdialog_types.QDialog, param1: gen_qcoreevent_types.QEvent): void =
  fQDialog_virtualbase_changeEvent(self.h, param1.h)

type QDialogchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qdialog_types.QDialog, slot: QDialogchangeEventProc) =
  # TODO check subclass
  var tmp = new QDialogchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_changeEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_changeEvent ".} =
  var nimfunc = cast[ptr QDialogchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QDialogmetric*(self: gen_qdialog_types.QDialog, param1: cint): cint =
  fQDialog_virtualbase_metric(self.h, cint(param1))

type QDialogmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qdialog_types.QDialog, slot: QDialogmetricProc) =
  # TODO check subclass
  var tmp = new QDialogmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_metric(self: ptr cQDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDialog_metric ".} =
  var nimfunc = cast[ptr QDialogmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialoginitPainter*(self: gen_qdialog_types.QDialog, painter: gen_qpainter_types.QPainter): void =
  fQDialog_virtualbase_initPainter(self.h, painter.h)

type QDialoginitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qdialog_types.QDialog, slot: QDialoginitPainterProc) =
  # TODO check subclass
  var tmp = new QDialoginitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_initPainter(self: ptr cQDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDialog_initPainter ".} =
  var nimfunc = cast[ptr QDialoginitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QDialogredirected*(self: gen_qdialog_types.QDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQDialog_virtualbase_redirected(self.h, offset.h))

type QDialogredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qdialog_types.QDialog, slot: QDialogredirectedProc) =
  # TODO check subclass
  var tmp = new QDialogredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_redirected(self: ptr cQDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDialog_redirected ".} =
  var nimfunc = cast[ptr QDialogredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDialogsharedPainter*(self: gen_qdialog_types.QDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQDialog_virtualbase_sharedPainter(self.h))

type QDialogsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qdialog_types.QDialog, slot: QDialogsharedPainterProc) =
  # TODO check subclass
  var tmp = new QDialogsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_sharedPainter(self: ptr cQDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QDialog_sharedPainter ".} =
  var nimfunc = cast[ptr QDialogsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialoginputMethodEvent*(self: gen_qdialog_types.QDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fQDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QDialoginputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qdialog_types.QDialog, slot: QDialoginputMethodEventProc) =
  # TODO check subclass
  var tmp = new QDialoginputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_inputMethodEvent(self: ptr cQDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialog_inputMethodEvent ".} =
  var nimfunc = cast[ptr QDialoginputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QDialoginputMethodQuery*(self: gen_qdialog_types.QDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDialoginputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qdialog_types.QDialog, slot: QDialoginputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QDialoginputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_inputMethodQuery(self: ptr cQDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDialog_inputMethodQuery ".} =
  var nimfunc = cast[ptr QDialoginputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDialogfocusNextPrevChild*(self: gen_qdialog_types.QDialog, next: bool): bool =
  fQDialog_virtualbase_focusNextPrevChild(self.h, next)

type QDialogfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qdialog_types.QDialog, slot: QDialogfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QDialogfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_focusNextPrevChild(self: ptr cQDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDialog_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QDialogfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialogtimerEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fQDialog_virtualbase_timerEvent(self.h, event.h)

type QDialogtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qdialog_types.QDialog, slot: QDialogtimerEventProc) =
  # TODO check subclass
  var tmp = new QDialogtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_timerEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_timerEvent ".} =
  var nimfunc = cast[ptr QDialogtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDialogchildEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fQDialog_virtualbase_childEvent(self.h, event.h)

type QDialogchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qdialog_types.QDialog, slot: QDialogchildEventProc) =
  # TODO check subclass
  var tmp = new QDialogchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_childEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_childEvent ".} =
  var nimfunc = cast[ptr QDialogchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDialogcustomEvent*(self: gen_qdialog_types.QDialog, event: gen_qcoreevent_types.QEvent): void =
  fQDialog_virtualbase_customEvent(self.h, event.h)

type QDialogcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qdialog_types.QDialog, slot: QDialogcustomEventProc) =
  # TODO check subclass
  var tmp = new QDialogcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_customEvent(self: ptr cQDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialog_customEvent ".} =
  var nimfunc = cast[ptr QDialogcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDialogconnectNotify*(self: gen_qdialog_types.QDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDialog_virtualbase_connectNotify(self.h, signal.h)

type QDialogconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qdialog_types.QDialog, slot: QDialogconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDialogconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_connectNotify(self: ptr cQDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDialog_connectNotify ".} =
  var nimfunc = cast[ptr QDialogconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDialogdisconnectNotify*(self: gen_qdialog_types.QDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QDialogdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdialog_types.QDialog, slot: QDialogdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDialogdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialog_disconnectNotify(self: ptr cQDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDialog_disconnectNotify ".} =
  var nimfunc = cast[ptr QDialogdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qdialog_types.QDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialog_staticMetaObject())
proc delete*(self: gen_qdialog_types.QDialog) =
  fcQDialog_delete(self.h)
