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
{.compile("gen_qcheckbox.cpp", cflags).}


import ./gen_qcheckbox_types
export gen_qcheckbox_types

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
  ./gen_qabstractbutton,
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
  gen_qabstractbutton,
  gen_qwidget_types

type cQCheckBox*{.exportc: "QCheckBox", incompleteStruct.} = object

proc fcQCheckBox_new(parent: pointer): ptr cQCheckBox {.importc: "QCheckBox_new".}
proc fcQCheckBox_new2(): ptr cQCheckBox {.importc: "QCheckBox_new2".}
proc fcQCheckBox_new3(text: struct_miqt_string): ptr cQCheckBox {.importc: "QCheckBox_new3".}
proc fcQCheckBox_new4(text: struct_miqt_string, parent: pointer): ptr cQCheckBox {.importc: "QCheckBox_new4".}
proc fcQCheckBox_metaObject(self: pointer, ): pointer {.importc: "QCheckBox_metaObject".}
proc fcQCheckBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QCheckBox_metacast".}
proc fcQCheckBox_tr(s: cstring): struct_miqt_string {.importc: "QCheckBox_tr".}
proc fcQCheckBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QCheckBox_trUtf8".}
proc fcQCheckBox_sizeHint(self: pointer, ): pointer {.importc: "QCheckBox_sizeHint".}
proc fcQCheckBox_minimumSizeHint(self: pointer, ): pointer {.importc: "QCheckBox_minimumSizeHint".}
proc fcQCheckBox_setTristate(self: pointer, ): void {.importc: "QCheckBox_setTristate".}
proc fcQCheckBox_isTristate(self: pointer, ): bool {.importc: "QCheckBox_isTristate".}
proc fcQCheckBox_checkState(self: pointer, ): cint {.importc: "QCheckBox_checkState".}
proc fcQCheckBox_setCheckState(self: pointer, state: cint): void {.importc: "QCheckBox_setCheckState".}
proc fcQCheckBox_stateChanged(self: pointer, param1: cint): void {.importc: "QCheckBox_stateChanged".}
proc fcQCheckBox_connect_stateChanged(self: pointer, slot: int) {.importc: "QCheckBox_connect_stateChanged".}
proc fcQCheckBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCheckBox_tr2".}
proc fcQCheckBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCheckBox_tr3".}
proc fcQCheckBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCheckBox_trUtf82".}
proc fcQCheckBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCheckBox_trUtf83".}
proc fcQCheckBox_setTristate1(self: pointer, y: bool): void {.importc: "QCheckBox_setTristate1".}
proc fQCheckBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QCheckBox_virtualbase_sizeHint".}
proc fcQCheckBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_sizeHint".}
proc fQCheckBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QCheckBox_virtualbase_minimumSizeHint".}
proc fcQCheckBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_minimumSizeHint".}
proc fQCheckBox_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QCheckBox_virtualbase_event".}
proc fcQCheckBox_override_virtual_event(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_event".}
proc fQCheckBox_virtualbase_hitButton(self: pointer, pos: pointer): bool{.importc: "QCheckBox_virtualbase_hitButton".}
proc fcQCheckBox_override_virtual_hitButton(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_hitButton".}
proc fQCheckBox_virtualbase_checkStateSet(self: pointer, ): void{.importc: "QCheckBox_virtualbase_checkStateSet".}
proc fcQCheckBox_override_virtual_checkStateSet(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_checkStateSet".}
proc fQCheckBox_virtualbase_nextCheckState(self: pointer, ): void{.importc: "QCheckBox_virtualbase_nextCheckState".}
proc fcQCheckBox_override_virtual_nextCheckState(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_nextCheckState".}
proc fQCheckBox_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QCheckBox_virtualbase_paintEvent".}
proc fcQCheckBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_paintEvent".}
proc fQCheckBox_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QCheckBox_virtualbase_mouseMoveEvent".}
proc fcQCheckBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_mouseMoveEvent".}
proc fQCheckBox_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_keyPressEvent".}
proc fcQCheckBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_keyPressEvent".}
proc fQCheckBox_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_keyReleaseEvent".}
proc fcQCheckBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_keyReleaseEvent".}
proc fQCheckBox_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_mousePressEvent".}
proc fcQCheckBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_mousePressEvent".}
proc fQCheckBox_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_mouseReleaseEvent".}
proc fcQCheckBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_mouseReleaseEvent".}
proc fQCheckBox_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_focusInEvent".}
proc fcQCheckBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_focusInEvent".}
proc fQCheckBox_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_focusOutEvent".}
proc fcQCheckBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_focusOutEvent".}
proc fQCheckBox_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_changeEvent".}
proc fcQCheckBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_changeEvent".}
proc fQCheckBox_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QCheckBox_virtualbase_timerEvent".}
proc fcQCheckBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_timerEvent".}
proc fQCheckBox_virtualbase_devType(self: pointer, ): cint{.importc: "QCheckBox_virtualbase_devType".}
proc fcQCheckBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_devType".}
proc fQCheckBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QCheckBox_virtualbase_setVisible".}
proc fcQCheckBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_setVisible".}
proc fQCheckBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QCheckBox_virtualbase_heightForWidth".}
proc fcQCheckBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_heightForWidth".}
proc fQCheckBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QCheckBox_virtualbase_hasHeightForWidth".}
proc fcQCheckBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_hasHeightForWidth".}
proc fQCheckBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QCheckBox_virtualbase_paintEngine".}
proc fcQCheckBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_paintEngine".}
proc fQCheckBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_mouseDoubleClickEvent".}
proc fcQCheckBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_mouseDoubleClickEvent".}
proc fQCheckBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_wheelEvent".}
proc fcQCheckBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_wheelEvent".}
proc fQCheckBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_enterEvent".}
proc fcQCheckBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_enterEvent".}
proc fQCheckBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_leaveEvent".}
proc fcQCheckBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_leaveEvent".}
proc fQCheckBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_moveEvent".}
proc fcQCheckBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_moveEvent".}
proc fQCheckBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_resizeEvent".}
proc fcQCheckBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_resizeEvent".}
proc fQCheckBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_closeEvent".}
proc fcQCheckBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_closeEvent".}
proc fQCheckBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_contextMenuEvent".}
proc fcQCheckBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_contextMenuEvent".}
proc fQCheckBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_tabletEvent".}
proc fcQCheckBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_tabletEvent".}
proc fQCheckBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_actionEvent".}
proc fcQCheckBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_actionEvent".}
proc fQCheckBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_dragEnterEvent".}
proc fcQCheckBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_dragEnterEvent".}
proc fQCheckBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_dragMoveEvent".}
proc fcQCheckBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_dragMoveEvent".}
proc fQCheckBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_dragLeaveEvent".}
proc fcQCheckBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_dragLeaveEvent".}
proc fQCheckBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_dropEvent".}
proc fcQCheckBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_dropEvent".}
proc fQCheckBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_showEvent".}
proc fcQCheckBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_showEvent".}
proc fQCheckBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_hideEvent".}
proc fcQCheckBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_hideEvent".}
proc fQCheckBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QCheckBox_virtualbase_nativeEvent".}
proc fcQCheckBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_nativeEvent".}
proc fQCheckBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QCheckBox_virtualbase_metric".}
proc fcQCheckBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_metric".}
proc fQCheckBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QCheckBox_virtualbase_initPainter".}
proc fcQCheckBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_initPainter".}
proc fQCheckBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QCheckBox_virtualbase_redirected".}
proc fcQCheckBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_redirected".}
proc fQCheckBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QCheckBox_virtualbase_sharedPainter".}
proc fcQCheckBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_sharedPainter".}
proc fQCheckBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QCheckBox_virtualbase_inputMethodEvent".}
proc fcQCheckBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_inputMethodEvent".}
proc fQCheckBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QCheckBox_virtualbase_inputMethodQuery".}
proc fcQCheckBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_inputMethodQuery".}
proc fQCheckBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QCheckBox_virtualbase_focusNextPrevChild".}
proc fcQCheckBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_focusNextPrevChild".}
proc fQCheckBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCheckBox_virtualbase_eventFilter".}
proc fcQCheckBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_eventFilter".}
proc fQCheckBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_childEvent".}
proc fcQCheckBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_childEvent".}
proc fQCheckBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCheckBox_virtualbase_customEvent".}
proc fcQCheckBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_customEvent".}
proc fQCheckBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCheckBox_virtualbase_connectNotify".}
proc fcQCheckBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_connectNotify".}
proc fQCheckBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCheckBox_virtualbase_disconnectNotify".}
proc fcQCheckBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCheckBox_override_virtual_disconnectNotify".}
proc fcQCheckBox_delete(self: pointer) {.importc: "QCheckBox_delete".}


func init*(T: type gen_qcheckbox_types.QCheckBox, h: ptr cQCheckBox): gen_qcheckbox_types.QCheckBox =
  T(h: h)
proc create*(T: type gen_qcheckbox_types.QCheckBox, parent: gen_qwidget_types.QWidget): gen_qcheckbox_types.QCheckBox =
  gen_qcheckbox_types.QCheckBox.init(fcQCheckBox_new(parent.h))

proc create*(T: type gen_qcheckbox_types.QCheckBox, ): gen_qcheckbox_types.QCheckBox =
  gen_qcheckbox_types.QCheckBox.init(fcQCheckBox_new2())

proc create*(T: type gen_qcheckbox_types.QCheckBox, text: string): gen_qcheckbox_types.QCheckBox =
  gen_qcheckbox_types.QCheckBox.init(fcQCheckBox_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qcheckbox_types.QCheckBox, text: string, parent: gen_qwidget_types.QWidget): gen_qcheckbox_types.QCheckBox =
  gen_qcheckbox_types.QCheckBox.init(fcQCheckBox_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc metaObject*(self: gen_qcheckbox_types.QCheckBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCheckBox_metaObject(self.h))

proc metacast*(self: gen_qcheckbox_types.QCheckBox, param1: cstring): pointer =
  fcQCheckBox_metacast(self.h, param1)

proc tr*(_: type gen_qcheckbox_types.QCheckBox, s: cstring): string =
  let v_ms = fcQCheckBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcheckbox_types.QCheckBox, s: cstring): string =
  let v_ms = fcQCheckBox_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qcheckbox_types.QCheckBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCheckBox_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qcheckbox_types.QCheckBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCheckBox_minimumSizeHint(self.h))

proc setTristate*(self: gen_qcheckbox_types.QCheckBox, ): void =
  fcQCheckBox_setTristate(self.h)

proc isTristate*(self: gen_qcheckbox_types.QCheckBox, ): bool =
  fcQCheckBox_isTristate(self.h)

proc checkState*(self: gen_qcheckbox_types.QCheckBox, ): cint =
  cint(fcQCheckBox_checkState(self.h))

proc setCheckState*(self: gen_qcheckbox_types.QCheckBox, state: cint): void =
  fcQCheckBox_setCheckState(self.h, cint(state))

proc stateChanged*(self: gen_qcheckbox_types.QCheckBox, param1: cint): void =
  fcQCheckBox_stateChanged(self.h, param1)

type QCheckBoxstateChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_QCheckBox_stateChanged(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QCheckBoxstateChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onstateChanged*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxstateChangedSlot) =
  var tmp = new QCheckBoxstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_connect_stateChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qcheckbox_types.QCheckBox, s: cstring, c: cstring): string =
  let v_ms = fcQCheckBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcheckbox_types.QCheckBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCheckBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcheckbox_types.QCheckBox, s: cstring, c: cstring): string =
  let v_ms = fcQCheckBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcheckbox_types.QCheckBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCheckBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTristate*(self: gen_qcheckbox_types.QCheckBox, y: bool): void =
  fcQCheckBox_setTristate1(self.h, y)

proc QCheckBoxsizeHint*(self: gen_qcheckbox_types.QCheckBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQCheckBox_virtualbase_sizeHint(self.h))

type QCheckBoxsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxsizeHintProc) =
  # TODO check subclass
  var tmp = new QCheckBoxsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_sizeHint(self: ptr cQCheckBox, slot: int): pointer {.exportc: "miqt_exec_callback_QCheckBox_sizeHint ".} =
  var nimfunc = cast[ptr QCheckBoxsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCheckBoxminimumSizeHint*(self: gen_qcheckbox_types.QCheckBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQCheckBox_virtualbase_minimumSizeHint(self.h))

type QCheckBoxminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QCheckBoxminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_minimumSizeHint(self: ptr cQCheckBox, slot: int): pointer {.exportc: "miqt_exec_callback_QCheckBox_minimumSizeHint ".} =
  var nimfunc = cast[ptr QCheckBoxminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCheckBoxevent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qcoreevent_types.QEvent): bool =
  fQCheckBox_virtualbase_event(self.h, e.h)

type QCheckBoxeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxeventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_event(self: ptr cQCheckBox, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QCheckBox_event ".} =
  var nimfunc = cast[ptr QCheckBoxeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCheckBoxhitButton*(self: gen_qcheckbox_types.QCheckBox, pos: gen_qpoint_types.QPoint): bool =
  fQCheckBox_virtualbase_hitButton(self.h, pos.h)

type QCheckBoxhitButtonProc* = proc(pos: gen_qpoint_types.QPoint): bool
proc onhitButton*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxhitButtonProc) =
  # TODO check subclass
  var tmp = new QCheckBoxhitButtonProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_hitButton(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_hitButton(self: ptr cQCheckBox, slot: int, pos: pointer): bool {.exportc: "miqt_exec_callback_QCheckBox_hitButton ".} =
  var nimfunc = cast[ptr QCheckBoxhitButtonProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: pos)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCheckBoxcheckStateSet*(self: gen_qcheckbox_types.QCheckBox, ): void =
  fQCheckBox_virtualbase_checkStateSet(self.h)

type QCheckBoxcheckStateSetProc* = proc(): void
proc oncheckStateSet*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxcheckStateSetProc) =
  # TODO check subclass
  var tmp = new QCheckBoxcheckStateSetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_checkStateSet(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_checkStateSet(self: ptr cQCheckBox, slot: int): void {.exportc: "miqt_exec_callback_QCheckBox_checkStateSet ".} =
  var nimfunc = cast[ptr QCheckBoxcheckStateSetProc](cast[pointer](slot))

  nimfunc[]()
proc QCheckBoxnextCheckState*(self: gen_qcheckbox_types.QCheckBox, ): void =
  fQCheckBox_virtualbase_nextCheckState(self.h)

type QCheckBoxnextCheckStateProc* = proc(): void
proc onnextCheckState*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxnextCheckStateProc) =
  # TODO check subclass
  var tmp = new QCheckBoxnextCheckStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_nextCheckState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_nextCheckState(self: ptr cQCheckBox, slot: int): void {.exportc: "miqt_exec_callback_QCheckBox_nextCheckState ".} =
  var nimfunc = cast[ptr QCheckBoxnextCheckStateProc](cast[pointer](slot))

  nimfunc[]()
proc QCheckBoxpaintEvent*(self: gen_qcheckbox_types.QCheckBox, param1: gen_qevent_types.QPaintEvent): void =
  fQCheckBox_virtualbase_paintEvent(self.h, param1.h)

type QCheckBoxpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxpaintEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_paintEvent(self: ptr cQCheckBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_paintEvent ".} =
  var nimfunc = cast[ptr QCheckBoxpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QCheckBoxmouseMoveEvent*(self: gen_qcheckbox_types.QCheckBox, param1: gen_qevent_types.QMouseEvent): void =
  fQCheckBox_virtualbase_mouseMoveEvent(self.h, param1.h)

type QCheckBoxmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_mouseMoveEvent(self: ptr cQCheckBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QCheckBoxmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QCheckBoxkeyPressEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QKeyEvent): void =
  fQCheckBox_virtualbase_keyPressEvent(self.h, e.h)

type QCheckBoxkeyPressEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_keyPressEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_keyPressEvent ".} =
  var nimfunc = cast[ptr QCheckBoxkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QCheckBoxkeyReleaseEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QKeyEvent): void =
  fQCheckBox_virtualbase_keyReleaseEvent(self.h, e.h)

type QCheckBoxkeyReleaseEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_keyReleaseEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QCheckBoxkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QCheckBoxmousePressEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QMouseEvent): void =
  fQCheckBox_virtualbase_mousePressEvent(self.h, e.h)

type QCheckBoxmousePressEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxmousePressEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_mousePressEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_mousePressEvent ".} =
  var nimfunc = cast[ptr QCheckBoxmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QCheckBoxmouseReleaseEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QMouseEvent): void =
  fQCheckBox_virtualbase_mouseReleaseEvent(self.h, e.h)

type QCheckBoxmouseReleaseEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_mouseReleaseEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QCheckBoxmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QCheckBoxfocusInEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QFocusEvent): void =
  fQCheckBox_virtualbase_focusInEvent(self.h, e.h)

type QCheckBoxfocusInEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxfocusInEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_focusInEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_focusInEvent ".} =
  var nimfunc = cast[ptr QCheckBoxfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QCheckBoxfocusOutEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qevent_types.QFocusEvent): void =
  fQCheckBox_virtualbase_focusOutEvent(self.h, e.h)

type QCheckBoxfocusOutEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_focusOutEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_focusOutEvent ".} =
  var nimfunc = cast[ptr QCheckBoxfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QCheckBoxchangeEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qcoreevent_types.QEvent): void =
  fQCheckBox_virtualbase_changeEvent(self.h, e.h)

type QCheckBoxchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxchangeEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_changeEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_changeEvent ".} =
  var nimfunc = cast[ptr QCheckBoxchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QCheckBoxtimerEvent*(self: gen_qcheckbox_types.QCheckBox, e: gen_qcoreevent_types.QTimerEvent): void =
  fQCheckBox_virtualbase_timerEvent(self.h, e.h)

type QCheckBoxtimerEventProc* = proc(e: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxtimerEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_timerEvent(self: ptr cQCheckBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_timerEvent ".} =
  var nimfunc = cast[ptr QCheckBoxtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)


  nimfunc[](slotval1)
proc QCheckBoxdevType*(self: gen_qcheckbox_types.QCheckBox, ): cint =
  fQCheckBox_virtualbase_devType(self.h)

type QCheckBoxdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxdevTypeProc) =
  # TODO check subclass
  var tmp = new QCheckBoxdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_devType(self: ptr cQCheckBox, slot: int): cint {.exportc: "miqt_exec_callback_QCheckBox_devType ".} =
  var nimfunc = cast[ptr QCheckBoxdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QCheckBoxsetVisible*(self: gen_qcheckbox_types.QCheckBox, visible: bool): void =
  fQCheckBox_virtualbase_setVisible(self.h, visible)

type QCheckBoxsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxsetVisibleProc) =
  # TODO check subclass
  var tmp = new QCheckBoxsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_setVisible(self: ptr cQCheckBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QCheckBox_setVisible ".} =
  var nimfunc = cast[ptr QCheckBoxsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QCheckBoxheightForWidth*(self: gen_qcheckbox_types.QCheckBox, param1: cint): cint =
  fQCheckBox_virtualbase_heightForWidth(self.h, param1)

type QCheckBoxheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxheightForWidthProc) =
  # TODO check subclass
  var tmp = new QCheckBoxheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_heightForWidth(self: ptr cQCheckBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCheckBox_heightForWidth ".} =
  var nimfunc = cast[ptr QCheckBoxheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCheckBoxhasHeightForWidth*(self: gen_qcheckbox_types.QCheckBox, ): bool =
  fQCheckBox_virtualbase_hasHeightForWidth(self.h)

type QCheckBoxhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QCheckBoxhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_hasHeightForWidth(self: ptr cQCheckBox, slot: int): bool {.exportc: "miqt_exec_callback_QCheckBox_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QCheckBoxhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QCheckBoxpaintEngine*(self: gen_qcheckbox_types.QCheckBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQCheckBox_virtualbase_paintEngine(self.h))

type QCheckBoxpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxpaintEngineProc) =
  # TODO check subclass
  var tmp = new QCheckBoxpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_paintEngine(self: ptr cQCheckBox, slot: int): pointer {.exportc: "miqt_exec_callback_QCheckBox_paintEngine ".} =
  var nimfunc = cast[ptr QCheckBoxpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCheckBoxmouseDoubleClickEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QMouseEvent): void =
  fQCheckBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QCheckBoxmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_mouseDoubleClickEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QCheckBoxmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxwheelEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QWheelEvent): void =
  fQCheckBox_virtualbase_wheelEvent(self.h, event.h)

type QCheckBoxwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxwheelEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_wheelEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_wheelEvent ".} =
  var nimfunc = cast[ptr QCheckBoxwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxenterEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qcoreevent_types.QEvent): void =
  fQCheckBox_virtualbase_enterEvent(self.h, event.h)

type QCheckBoxenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxenterEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_enterEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_enterEvent ".} =
  var nimfunc = cast[ptr QCheckBoxenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxleaveEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qcoreevent_types.QEvent): void =
  fQCheckBox_virtualbase_leaveEvent(self.h, event.h)

type QCheckBoxleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxleaveEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_leaveEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_leaveEvent ".} =
  var nimfunc = cast[ptr QCheckBoxleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxmoveEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QMoveEvent): void =
  fQCheckBox_virtualbase_moveEvent(self.h, event.h)

type QCheckBoxmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxmoveEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_moveEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_moveEvent ".} =
  var nimfunc = cast[ptr QCheckBoxmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxresizeEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QResizeEvent): void =
  fQCheckBox_virtualbase_resizeEvent(self.h, event.h)

type QCheckBoxresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxresizeEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_resizeEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_resizeEvent ".} =
  var nimfunc = cast[ptr QCheckBoxresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxcloseEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QCloseEvent): void =
  fQCheckBox_virtualbase_closeEvent(self.h, event.h)

type QCheckBoxcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxcloseEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_closeEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_closeEvent ".} =
  var nimfunc = cast[ptr QCheckBoxcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxcontextMenuEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QContextMenuEvent): void =
  fQCheckBox_virtualbase_contextMenuEvent(self.h, event.h)

type QCheckBoxcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_contextMenuEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_contextMenuEvent ".} =
  var nimfunc = cast[ptr QCheckBoxcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxtabletEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QTabletEvent): void =
  fQCheckBox_virtualbase_tabletEvent(self.h, event.h)

type QCheckBoxtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxtabletEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_tabletEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_tabletEvent ".} =
  var nimfunc = cast[ptr QCheckBoxtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxactionEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QActionEvent): void =
  fQCheckBox_virtualbase_actionEvent(self.h, event.h)

type QCheckBoxactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxactionEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_actionEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_actionEvent ".} =
  var nimfunc = cast[ptr QCheckBoxactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxdragEnterEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QDragEnterEvent): void =
  fQCheckBox_virtualbase_dragEnterEvent(self.h, event.h)

type QCheckBoxdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_dragEnterEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_dragEnterEvent ".} =
  var nimfunc = cast[ptr QCheckBoxdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxdragMoveEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QDragMoveEvent): void =
  fQCheckBox_virtualbase_dragMoveEvent(self.h, event.h)

type QCheckBoxdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_dragMoveEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_dragMoveEvent ".} =
  var nimfunc = cast[ptr QCheckBoxdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxdragLeaveEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fQCheckBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QCheckBoxdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_dragLeaveEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QCheckBoxdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxdropEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QDropEvent): void =
  fQCheckBox_virtualbase_dropEvent(self.h, event.h)

type QCheckBoxdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxdropEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_dropEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_dropEvent ".} =
  var nimfunc = cast[ptr QCheckBoxdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxshowEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QShowEvent): void =
  fQCheckBox_virtualbase_showEvent(self.h, event.h)

type QCheckBoxshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxshowEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_showEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_showEvent ".} =
  var nimfunc = cast[ptr QCheckBoxshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxhideEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qevent_types.QHideEvent): void =
  fQCheckBox_virtualbase_hideEvent(self.h, event.h)

type QCheckBoxhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxhideEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_hideEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_hideEvent ".} =
  var nimfunc = cast[ptr QCheckBoxhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxnativeEvent*(self: gen_qcheckbox_types.QCheckBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQCheckBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QCheckBoxnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxnativeEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_nativeEvent(self: ptr cQCheckBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QCheckBox_nativeEvent ".} =
  var nimfunc = cast[ptr QCheckBoxnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QCheckBoxmetric*(self: gen_qcheckbox_types.QCheckBox, param1: cint): cint =
  fQCheckBox_virtualbase_metric(self.h, cint(param1))

type QCheckBoxmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxmetricProc) =
  # TODO check subclass
  var tmp = new QCheckBoxmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_metric(self: ptr cQCheckBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCheckBox_metric ".} =
  var nimfunc = cast[ptr QCheckBoxmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCheckBoxinitPainter*(self: gen_qcheckbox_types.QCheckBox, painter: gen_qpainter_types.QPainter): void =
  fQCheckBox_virtualbase_initPainter(self.h, painter.h)

type QCheckBoxinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxinitPainterProc) =
  # TODO check subclass
  var tmp = new QCheckBoxinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_initPainter(self: ptr cQCheckBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_initPainter ".} =
  var nimfunc = cast[ptr QCheckBoxinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QCheckBoxredirected*(self: gen_qcheckbox_types.QCheckBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQCheckBox_virtualbase_redirected(self.h, offset.h))

type QCheckBoxredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxredirectedProc) =
  # TODO check subclass
  var tmp = new QCheckBoxredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_redirected(self: ptr cQCheckBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QCheckBox_redirected ".} =
  var nimfunc = cast[ptr QCheckBoxredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QCheckBoxsharedPainter*(self: gen_qcheckbox_types.QCheckBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQCheckBox_virtualbase_sharedPainter(self.h))

type QCheckBoxsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxsharedPainterProc) =
  # TODO check subclass
  var tmp = new QCheckBoxsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_sharedPainter(self: ptr cQCheckBox, slot: int): pointer {.exportc: "miqt_exec_callback_QCheckBox_sharedPainter ".} =
  var nimfunc = cast[ptr QCheckBoxsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCheckBoxinputMethodEvent*(self: gen_qcheckbox_types.QCheckBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fQCheckBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QCheckBoxinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_inputMethodEvent(self: ptr cQCheckBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_inputMethodEvent ".} =
  var nimfunc = cast[ptr QCheckBoxinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QCheckBoxinputMethodQuery*(self: gen_qcheckbox_types.QCheckBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQCheckBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QCheckBoxinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QCheckBoxinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_inputMethodQuery(self: ptr cQCheckBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QCheckBox_inputMethodQuery ".} =
  var nimfunc = cast[ptr QCheckBoxinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QCheckBoxfocusNextPrevChild*(self: gen_qcheckbox_types.QCheckBox, next: bool): bool =
  fQCheckBox_virtualbase_focusNextPrevChild(self.h, next)

type QCheckBoxfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QCheckBoxfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_focusNextPrevChild(self: ptr cQCheckBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QCheckBox_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QCheckBoxfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCheckBoxeventFilter*(self: gen_qcheckbox_types.QCheckBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQCheckBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCheckBoxeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxeventFilterProc) =
  # TODO check subclass
  var tmp = new QCheckBoxeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_eventFilter(self: ptr cQCheckBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCheckBox_eventFilter ".} =
  var nimfunc = cast[ptr QCheckBoxeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QCheckBoxchildEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qcoreevent_types.QChildEvent): void =
  fQCheckBox_virtualbase_childEvent(self.h, event.h)

type QCheckBoxchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxchildEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_childEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_childEvent ".} =
  var nimfunc = cast[ptr QCheckBoxchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxcustomEvent*(self: gen_qcheckbox_types.QCheckBox, event: gen_qcoreevent_types.QEvent): void =
  fQCheckBox_virtualbase_customEvent(self.h, event.h)

type QCheckBoxcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxcustomEventProc) =
  # TODO check subclass
  var tmp = new QCheckBoxcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_customEvent(self: ptr cQCheckBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_customEvent ".} =
  var nimfunc = cast[ptr QCheckBoxcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCheckBoxconnectNotify*(self: gen_qcheckbox_types.QCheckBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCheckBox_virtualbase_connectNotify(self.h, signal.h)

type QCheckBoxconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCheckBoxconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_connectNotify(self: ptr cQCheckBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_connectNotify ".} =
  var nimfunc = cast[ptr QCheckBoxconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QCheckBoxdisconnectNotify*(self: gen_qcheckbox_types.QCheckBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCheckBox_virtualbase_disconnectNotify(self.h, signal.h)

type QCheckBoxdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qcheckbox_types.QCheckBox, slot: QCheckBoxdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCheckBoxdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCheckBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCheckBox_disconnectNotify(self: ptr cQCheckBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCheckBox_disconnectNotify ".} =
  var nimfunc = cast[ptr QCheckBoxdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qcheckbox_types.QCheckBox) =
  fcQCheckBox_delete(self.h)
