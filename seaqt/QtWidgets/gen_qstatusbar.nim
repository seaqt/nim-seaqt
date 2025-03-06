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
{.compile("gen_qstatusbar.cpp", cflags).}


import ./gen_qstatusbar_types
export gen_qstatusbar_types

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

type cQStatusBar*{.exportc: "QStatusBar", incompleteStruct.} = object

proc fcQStatusBar_new(parent: pointer): ptr cQStatusBar {.importc: "QStatusBar_new".}
proc fcQStatusBar_new2(): ptr cQStatusBar {.importc: "QStatusBar_new2".}
proc fcQStatusBar_metaObject(self: pointer, ): pointer {.importc: "QStatusBar_metaObject".}
proc fcQStatusBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QStatusBar_metacast".}
proc fcQStatusBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStatusBar_metacall".}
proc fcQStatusBar_tr(s: cstring): struct_miqt_string {.importc: "QStatusBar_tr".}
proc fcQStatusBar_addWidget(self: pointer, widget: pointer): void {.importc: "QStatusBar_addWidget".}
proc fcQStatusBar_insertWidget(self: pointer, index: cint, widget: pointer): cint {.importc: "QStatusBar_insertWidget".}
proc fcQStatusBar_addPermanentWidget(self: pointer, widget: pointer): void {.importc: "QStatusBar_addPermanentWidget".}
proc fcQStatusBar_insertPermanentWidget(self: pointer, index: cint, widget: pointer): cint {.importc: "QStatusBar_insertPermanentWidget".}
proc fcQStatusBar_removeWidget(self: pointer, widget: pointer): void {.importc: "QStatusBar_removeWidget".}
proc fcQStatusBar_setSizeGripEnabled(self: pointer, sizeGripEnabled: bool): void {.importc: "QStatusBar_setSizeGripEnabled".}
proc fcQStatusBar_isSizeGripEnabled(self: pointer, ): bool {.importc: "QStatusBar_isSizeGripEnabled".}
proc fcQStatusBar_currentMessage(self: pointer, ): struct_miqt_string {.importc: "QStatusBar_currentMessage".}
proc fcQStatusBar_showMessage(self: pointer, text: struct_miqt_string): void {.importc: "QStatusBar_showMessage".}
proc fcQStatusBar_clearMessage(self: pointer, ): void {.importc: "QStatusBar_clearMessage".}
proc fcQStatusBar_messageChanged(self: pointer, text: struct_miqt_string): void {.importc: "QStatusBar_messageChanged".}
proc fcQStatusBar_connect_messageChanged(self: pointer, slot: int) {.importc: "QStatusBar_connect_messageChanged".}
proc fcQStatusBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStatusBar_tr2".}
proc fcQStatusBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStatusBar_tr3".}
proc fcQStatusBar_addWidget2(self: pointer, widget: pointer, stretch: cint): void {.importc: "QStatusBar_addWidget2".}
proc fcQStatusBar_insertWidget3(self: pointer, index: cint, widget: pointer, stretch: cint): cint {.importc: "QStatusBar_insertWidget3".}
proc fcQStatusBar_addPermanentWidget2(self: pointer, widget: pointer, stretch: cint): void {.importc: "QStatusBar_addPermanentWidget2".}
proc fcQStatusBar_insertPermanentWidget3(self: pointer, index: cint, widget: pointer, stretch: cint): cint {.importc: "QStatusBar_insertPermanentWidget3".}
proc fcQStatusBar_showMessage2(self: pointer, text: struct_miqt_string, timeout: cint): void {.importc: "QStatusBar_showMessage2".}
proc fQStatusBar_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QStatusBar_virtualbase_metaObject".}
proc fcQStatusBar_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_metaObject".}
proc fQStatusBar_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QStatusBar_virtualbase_metacast".}
proc fcQStatusBar_override_virtual_metacast(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_metacast".}
proc fQStatusBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStatusBar_virtualbase_metacall".}
proc fcQStatusBar_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_metacall".}
proc fQStatusBar_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QStatusBar_virtualbase_showEvent".}
proc fcQStatusBar_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_showEvent".}
proc fQStatusBar_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QStatusBar_virtualbase_paintEvent".}
proc fcQStatusBar_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_paintEvent".}
proc fQStatusBar_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QStatusBar_virtualbase_resizeEvent".}
proc fcQStatusBar_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_resizeEvent".}
proc fQStatusBar_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QStatusBar_virtualbase_event".}
proc fcQStatusBar_override_virtual_event(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_event".}
proc fQStatusBar_virtualbase_devType(self: pointer, ): cint{.importc: "QStatusBar_virtualbase_devType".}
proc fcQStatusBar_override_virtual_devType(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_devType".}
proc fQStatusBar_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QStatusBar_virtualbase_setVisible".}
proc fcQStatusBar_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_setVisible".}
proc fQStatusBar_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QStatusBar_virtualbase_sizeHint".}
proc fcQStatusBar_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_sizeHint".}
proc fQStatusBar_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QStatusBar_virtualbase_minimumSizeHint".}
proc fcQStatusBar_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_minimumSizeHint".}
proc fQStatusBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QStatusBar_virtualbase_heightForWidth".}
proc fcQStatusBar_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_heightForWidth".}
proc fQStatusBar_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QStatusBar_virtualbase_hasHeightForWidth".}
proc fcQStatusBar_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_hasHeightForWidth".}
proc fQStatusBar_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QStatusBar_virtualbase_paintEngine".}
proc fcQStatusBar_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_paintEngine".}
proc fQStatusBar_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_mousePressEvent".}
proc fcQStatusBar_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_mousePressEvent".}
proc fQStatusBar_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_mouseReleaseEvent".}
proc fcQStatusBar_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_mouseReleaseEvent".}
proc fQStatusBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_mouseDoubleClickEvent".}
proc fcQStatusBar_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_mouseDoubleClickEvent".}
proc fQStatusBar_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_mouseMoveEvent".}
proc fcQStatusBar_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_mouseMoveEvent".}
proc fQStatusBar_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_wheelEvent".}
proc fcQStatusBar_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_wheelEvent".}
proc fQStatusBar_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_keyPressEvent".}
proc fcQStatusBar_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_keyPressEvent".}
proc fQStatusBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_keyReleaseEvent".}
proc fcQStatusBar_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_keyReleaseEvent".}
proc fQStatusBar_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_focusInEvent".}
proc fcQStatusBar_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_focusInEvent".}
proc fQStatusBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_focusOutEvent".}
proc fcQStatusBar_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_focusOutEvent".}
proc fQStatusBar_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_enterEvent".}
proc fcQStatusBar_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_enterEvent".}
proc fQStatusBar_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_leaveEvent".}
proc fcQStatusBar_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_leaveEvent".}
proc fQStatusBar_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_moveEvent".}
proc fcQStatusBar_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_moveEvent".}
proc fQStatusBar_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_closeEvent".}
proc fcQStatusBar_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_closeEvent".}
proc fQStatusBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_contextMenuEvent".}
proc fcQStatusBar_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_contextMenuEvent".}
proc fQStatusBar_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_tabletEvent".}
proc fcQStatusBar_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_tabletEvent".}
proc fQStatusBar_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_actionEvent".}
proc fcQStatusBar_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_actionEvent".}
proc fQStatusBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_dragEnterEvent".}
proc fcQStatusBar_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_dragEnterEvent".}
proc fQStatusBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_dragMoveEvent".}
proc fcQStatusBar_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_dragMoveEvent".}
proc fQStatusBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_dragLeaveEvent".}
proc fcQStatusBar_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_dragLeaveEvent".}
proc fQStatusBar_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_dropEvent".}
proc fcQStatusBar_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_dropEvent".}
proc fQStatusBar_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_hideEvent".}
proc fcQStatusBar_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_hideEvent".}
proc fQStatusBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QStatusBar_virtualbase_nativeEvent".}
proc fcQStatusBar_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_nativeEvent".}
proc fQStatusBar_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QStatusBar_virtualbase_changeEvent".}
proc fcQStatusBar_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_changeEvent".}
proc fQStatusBar_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QStatusBar_virtualbase_metric".}
proc fcQStatusBar_override_virtual_metric(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_metric".}
proc fQStatusBar_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QStatusBar_virtualbase_initPainter".}
proc fcQStatusBar_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_initPainter".}
proc fQStatusBar_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QStatusBar_virtualbase_redirected".}
proc fcQStatusBar_override_virtual_redirected(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_redirected".}
proc fQStatusBar_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QStatusBar_virtualbase_sharedPainter".}
proc fcQStatusBar_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_sharedPainter".}
proc fQStatusBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QStatusBar_virtualbase_inputMethodEvent".}
proc fcQStatusBar_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_inputMethodEvent".}
proc fQStatusBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QStatusBar_virtualbase_inputMethodQuery".}
proc fcQStatusBar_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_inputMethodQuery".}
proc fQStatusBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QStatusBar_virtualbase_focusNextPrevChild".}
proc fcQStatusBar_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_focusNextPrevChild".}
proc fQStatusBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStatusBar_virtualbase_eventFilter".}
proc fcQStatusBar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_eventFilter".}
proc fQStatusBar_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_timerEvent".}
proc fcQStatusBar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_timerEvent".}
proc fQStatusBar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_childEvent".}
proc fcQStatusBar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_childEvent".}
proc fQStatusBar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStatusBar_virtualbase_customEvent".}
proc fcQStatusBar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_customEvent".}
proc fQStatusBar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStatusBar_virtualbase_connectNotify".}
proc fcQStatusBar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_connectNotify".}
proc fQStatusBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStatusBar_virtualbase_disconnectNotify".}
proc fcQStatusBar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStatusBar_override_virtual_disconnectNotify".}
proc fcQStatusBar_staticMetaObject(): pointer {.importc: "QStatusBar_staticMetaObject".}
proc fcQStatusBar_delete(self: pointer) {.importc: "QStatusBar_delete".}


func init*(T: type gen_qstatusbar_types.QStatusBar, h: ptr cQStatusBar): gen_qstatusbar_types.QStatusBar =
  T(h: h)
proc create*(T: type gen_qstatusbar_types.QStatusBar, parent: gen_qwidget_types.QWidget): gen_qstatusbar_types.QStatusBar =
  gen_qstatusbar_types.QStatusBar.init(fcQStatusBar_new(parent.h))

proc create*(T: type gen_qstatusbar_types.QStatusBar, ): gen_qstatusbar_types.QStatusBar =
  gen_qstatusbar_types.QStatusBar.init(fcQStatusBar_new2())

proc metaObject*(self: gen_qstatusbar_types.QStatusBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStatusBar_metaObject(self.h))

proc metacast*(self: gen_qstatusbar_types.QStatusBar, param1: cstring): pointer =
  fcQStatusBar_metacast(self.h, param1)

proc metacall*(self: gen_qstatusbar_types.QStatusBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQStatusBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstatusbar_types.QStatusBar, s: cstring): string =
  let v_ms = fcQStatusBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qstatusbar_types.QStatusBar, widget: gen_qwidget_types.QWidget): void =
  fcQStatusBar_addWidget(self.h, widget.h)

proc insertWidget*(self: gen_qstatusbar_types.QStatusBar, index: cint, widget: gen_qwidget_types.QWidget): cint =
  fcQStatusBar_insertWidget(self.h, index, widget.h)

proc addPermanentWidget*(self: gen_qstatusbar_types.QStatusBar, widget: gen_qwidget_types.QWidget): void =
  fcQStatusBar_addPermanentWidget(self.h, widget.h)

proc insertPermanentWidget*(self: gen_qstatusbar_types.QStatusBar, index: cint, widget: gen_qwidget_types.QWidget): cint =
  fcQStatusBar_insertPermanentWidget(self.h, index, widget.h)

proc removeWidget*(self: gen_qstatusbar_types.QStatusBar, widget: gen_qwidget_types.QWidget): void =
  fcQStatusBar_removeWidget(self.h, widget.h)

proc setSizeGripEnabled*(self: gen_qstatusbar_types.QStatusBar, sizeGripEnabled: bool): void =
  fcQStatusBar_setSizeGripEnabled(self.h, sizeGripEnabled)

proc isSizeGripEnabled*(self: gen_qstatusbar_types.QStatusBar, ): bool =
  fcQStatusBar_isSizeGripEnabled(self.h)

proc currentMessage*(self: gen_qstatusbar_types.QStatusBar, ): string =
  let v_ms = fcQStatusBar_currentMessage(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showMessage*(self: gen_qstatusbar_types.QStatusBar, text: string): void =
  fcQStatusBar_showMessage(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc clearMessage*(self: gen_qstatusbar_types.QStatusBar, ): void =
  fcQStatusBar_clearMessage(self.h)

proc messageChanged*(self: gen_qstatusbar_types.QStatusBar, text: string): void =
  fcQStatusBar_messageChanged(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QStatusBarmessageChangedSlot* = proc(text: string)
proc miqt_exec_callback_QStatusBar_messageChanged(slot: int, text: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QStatusBarmessageChangedSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc onmessageChanged*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarmessageChangedSlot) =
  var tmp = new QStatusBarmessageChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_connect_messageChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qstatusbar_types.QStatusBar, s: cstring, c: cstring): string =
  let v_ms = fcQStatusBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstatusbar_types.QStatusBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStatusBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addWidget*(self: gen_qstatusbar_types.QStatusBar, widget: gen_qwidget_types.QWidget, stretch: cint): void =
  fcQStatusBar_addWidget2(self.h, widget.h, stretch)

proc insertWidget*(self: gen_qstatusbar_types.QStatusBar, index: cint, widget: gen_qwidget_types.QWidget, stretch: cint): cint =
  fcQStatusBar_insertWidget3(self.h, index, widget.h, stretch)

proc addPermanentWidget*(self: gen_qstatusbar_types.QStatusBar, widget: gen_qwidget_types.QWidget, stretch: cint): void =
  fcQStatusBar_addPermanentWidget2(self.h, widget.h, stretch)

proc insertPermanentWidget*(self: gen_qstatusbar_types.QStatusBar, index: cint, widget: gen_qwidget_types.QWidget, stretch: cint): cint =
  fcQStatusBar_insertPermanentWidget3(self.h, index, widget.h, stretch)

proc showMessage*(self: gen_qstatusbar_types.QStatusBar, text: string, timeout: cint): void =
  fcQStatusBar_showMessage2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), timeout)

proc QStatusBarmetaObject*(self: gen_qstatusbar_types.QStatusBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQStatusBar_virtualbase_metaObject(self.h))

type QStatusBarmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarmetaObjectProc) =
  # TODO check subclass
  var tmp = new QStatusBarmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_metaObject(self: ptr cQStatusBar, slot: int): pointer {.exportc: "miqt_exec_callback_QStatusBar_metaObject ".} =
  var nimfunc = cast[ptr QStatusBarmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStatusBarmetacast*(self: gen_qstatusbar_types.QStatusBar, param1: cstring): pointer =
  fQStatusBar_virtualbase_metacast(self.h, param1)

type QStatusBarmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarmetacastProc) =
  # TODO check subclass
  var tmp = new QStatusBarmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_metacast(self: ptr cQStatusBar, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QStatusBar_metacast ".} =
  var nimfunc = cast[ptr QStatusBarmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStatusBarmetacall*(self: gen_qstatusbar_types.QStatusBar, param1: cint, param2: cint, param3: pointer): cint =
  fQStatusBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStatusBarmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarmetacallProc) =
  # TODO check subclass
  var tmp = new QStatusBarmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_metacall(self: ptr cQStatusBar, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStatusBar_metacall ".} =
  var nimfunc = cast[ptr QStatusBarmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStatusBarshowEvent*(self: gen_qstatusbar_types.QStatusBar, param1: gen_qevent_types.QShowEvent): void =
  fQStatusBar_virtualbase_showEvent(self.h, param1.h)

type QStatusBarshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarshowEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_showEvent(self: ptr cQStatusBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_showEvent ".} =
  var nimfunc = cast[ptr QStatusBarshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QStatusBarpaintEvent*(self: gen_qstatusbar_types.QStatusBar, param1: gen_qevent_types.QPaintEvent): void =
  fQStatusBar_virtualbase_paintEvent(self.h, param1.h)

type QStatusBarpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarpaintEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_paintEvent(self: ptr cQStatusBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_paintEvent ".} =
  var nimfunc = cast[ptr QStatusBarpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QStatusBarresizeEvent*(self: gen_qstatusbar_types.QStatusBar, param1: gen_qevent_types.QResizeEvent): void =
  fQStatusBar_virtualbase_resizeEvent(self.h, param1.h)

type QStatusBarresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarresizeEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_resizeEvent(self: ptr cQStatusBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_resizeEvent ".} =
  var nimfunc = cast[ptr QStatusBarresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QStatusBarevent*(self: gen_qstatusbar_types.QStatusBar, param1: gen_qcoreevent_types.QEvent): bool =
  fQStatusBar_virtualbase_event(self.h, param1.h)

type QStatusBareventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBareventProc) =
  # TODO check subclass
  var tmp = new QStatusBareventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_event(self: ptr cQStatusBar, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QStatusBar_event ".} =
  var nimfunc = cast[ptr QStatusBareventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStatusBardevType*(self: gen_qstatusbar_types.QStatusBar, ): cint =
  fQStatusBar_virtualbase_devType(self.h)

type QStatusBardevTypeProc* = proc(): cint
proc ondevType*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBardevTypeProc) =
  # TODO check subclass
  var tmp = new QStatusBardevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_devType(self: ptr cQStatusBar, slot: int): cint {.exportc: "miqt_exec_callback_QStatusBar_devType ".} =
  var nimfunc = cast[ptr QStatusBardevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QStatusBarsetVisible*(self: gen_qstatusbar_types.QStatusBar, visible: bool): void =
  fQStatusBar_virtualbase_setVisible(self.h, visible)

type QStatusBarsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarsetVisibleProc) =
  # TODO check subclass
  var tmp = new QStatusBarsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_setVisible(self: ptr cQStatusBar, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QStatusBar_setVisible ".} =
  var nimfunc = cast[ptr QStatusBarsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QStatusBarsizeHint*(self: gen_qstatusbar_types.QStatusBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQStatusBar_virtualbase_sizeHint(self.h))

type QStatusBarsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarsizeHintProc) =
  # TODO check subclass
  var tmp = new QStatusBarsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_sizeHint(self: ptr cQStatusBar, slot: int): pointer {.exportc: "miqt_exec_callback_QStatusBar_sizeHint ".} =
  var nimfunc = cast[ptr QStatusBarsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStatusBarminimumSizeHint*(self: gen_qstatusbar_types.QStatusBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQStatusBar_virtualbase_minimumSizeHint(self.h))

type QStatusBarminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QStatusBarminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_minimumSizeHint(self: ptr cQStatusBar, slot: int): pointer {.exportc: "miqt_exec_callback_QStatusBar_minimumSizeHint ".} =
  var nimfunc = cast[ptr QStatusBarminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStatusBarheightForWidth*(self: gen_qstatusbar_types.QStatusBar, param1: cint): cint =
  fQStatusBar_virtualbase_heightForWidth(self.h, param1)

type QStatusBarheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarheightForWidthProc) =
  # TODO check subclass
  var tmp = new QStatusBarheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_heightForWidth(self: ptr cQStatusBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QStatusBar_heightForWidth ".} =
  var nimfunc = cast[ptr QStatusBarheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStatusBarhasHeightForWidth*(self: gen_qstatusbar_types.QStatusBar, ): bool =
  fQStatusBar_virtualbase_hasHeightForWidth(self.h)

type QStatusBarhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QStatusBarhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_hasHeightForWidth(self: ptr cQStatusBar, slot: int): bool {.exportc: "miqt_exec_callback_QStatusBar_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QStatusBarhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QStatusBarpaintEngine*(self: gen_qstatusbar_types.QStatusBar, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQStatusBar_virtualbase_paintEngine(self.h))

type QStatusBarpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarpaintEngineProc) =
  # TODO check subclass
  var tmp = new QStatusBarpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_paintEngine(self: ptr cQStatusBar, slot: int): pointer {.exportc: "miqt_exec_callback_QStatusBar_paintEngine ".} =
  var nimfunc = cast[ptr QStatusBarpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStatusBarmousePressEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QMouseEvent): void =
  fQStatusBar_virtualbase_mousePressEvent(self.h, event.h)

type QStatusBarmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarmousePressEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_mousePressEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_mousePressEvent ".} =
  var nimfunc = cast[ptr QStatusBarmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarmouseReleaseEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QMouseEvent): void =
  fQStatusBar_virtualbase_mouseReleaseEvent(self.h, event.h)

type QStatusBarmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_mouseReleaseEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QStatusBarmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarmouseDoubleClickEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QMouseEvent): void =
  fQStatusBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QStatusBarmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_mouseDoubleClickEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QStatusBarmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarmouseMoveEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QMouseEvent): void =
  fQStatusBar_virtualbase_mouseMoveEvent(self.h, event.h)

type QStatusBarmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_mouseMoveEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QStatusBarmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarwheelEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QWheelEvent): void =
  fQStatusBar_virtualbase_wheelEvent(self.h, event.h)

type QStatusBarwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarwheelEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_wheelEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_wheelEvent ".} =
  var nimfunc = cast[ptr QStatusBarwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarkeyPressEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QKeyEvent): void =
  fQStatusBar_virtualbase_keyPressEvent(self.h, event.h)

type QStatusBarkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_keyPressEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_keyPressEvent ".} =
  var nimfunc = cast[ptr QStatusBarkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarkeyReleaseEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QKeyEvent): void =
  fQStatusBar_virtualbase_keyReleaseEvent(self.h, event.h)

type QStatusBarkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_keyReleaseEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QStatusBarkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarfocusInEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QFocusEvent): void =
  fQStatusBar_virtualbase_focusInEvent(self.h, event.h)

type QStatusBarfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarfocusInEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_focusInEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_focusInEvent ".} =
  var nimfunc = cast[ptr QStatusBarfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarfocusOutEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QFocusEvent): void =
  fQStatusBar_virtualbase_focusOutEvent(self.h, event.h)

type QStatusBarfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_focusOutEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_focusOutEvent ".} =
  var nimfunc = cast[ptr QStatusBarfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarenterEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QEnterEvent): void =
  fQStatusBar_virtualbase_enterEvent(self.h, event.h)

type QStatusBarenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarenterEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_enterEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_enterEvent ".} =
  var nimfunc = cast[ptr QStatusBarenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarleaveEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qcoreevent_types.QEvent): void =
  fQStatusBar_virtualbase_leaveEvent(self.h, event.h)

type QStatusBarleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarleaveEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_leaveEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_leaveEvent ".} =
  var nimfunc = cast[ptr QStatusBarleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarmoveEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QMoveEvent): void =
  fQStatusBar_virtualbase_moveEvent(self.h, event.h)

type QStatusBarmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarmoveEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_moveEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_moveEvent ".} =
  var nimfunc = cast[ptr QStatusBarmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarcloseEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QCloseEvent): void =
  fQStatusBar_virtualbase_closeEvent(self.h, event.h)

type QStatusBarcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarcloseEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_closeEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_closeEvent ".} =
  var nimfunc = cast[ptr QStatusBarcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarcontextMenuEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QContextMenuEvent): void =
  fQStatusBar_virtualbase_contextMenuEvent(self.h, event.h)

type QStatusBarcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_contextMenuEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_contextMenuEvent ".} =
  var nimfunc = cast[ptr QStatusBarcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBartabletEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QTabletEvent): void =
  fQStatusBar_virtualbase_tabletEvent(self.h, event.h)

type QStatusBartabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBartabletEventProc) =
  # TODO check subclass
  var tmp = new QStatusBartabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_tabletEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_tabletEvent ".} =
  var nimfunc = cast[ptr QStatusBartabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBaractionEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QActionEvent): void =
  fQStatusBar_virtualbase_actionEvent(self.h, event.h)

type QStatusBaractionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBaractionEventProc) =
  # TODO check subclass
  var tmp = new QStatusBaractionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_actionEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_actionEvent ".} =
  var nimfunc = cast[ptr QStatusBaractionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBardragEnterEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QDragEnterEvent): void =
  fQStatusBar_virtualbase_dragEnterEvent(self.h, event.h)

type QStatusBardragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBardragEnterEventProc) =
  # TODO check subclass
  var tmp = new QStatusBardragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_dragEnterEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_dragEnterEvent ".} =
  var nimfunc = cast[ptr QStatusBardragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBardragMoveEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QDragMoveEvent): void =
  fQStatusBar_virtualbase_dragMoveEvent(self.h, event.h)

type QStatusBardragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBardragMoveEventProc) =
  # TODO check subclass
  var tmp = new QStatusBardragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_dragMoveEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_dragMoveEvent ".} =
  var nimfunc = cast[ptr QStatusBardragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBardragLeaveEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fQStatusBar_virtualbase_dragLeaveEvent(self.h, event.h)

type QStatusBardragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBardragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QStatusBardragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_dragLeaveEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QStatusBardragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBardropEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QDropEvent): void =
  fQStatusBar_virtualbase_dropEvent(self.h, event.h)

type QStatusBardropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBardropEventProc) =
  # TODO check subclass
  var tmp = new QStatusBardropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_dropEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_dropEvent ".} =
  var nimfunc = cast[ptr QStatusBardropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarhideEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qevent_types.QHideEvent): void =
  fQStatusBar_virtualbase_hideEvent(self.h, event.h)

type QStatusBarhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarhideEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_hideEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_hideEvent ".} =
  var nimfunc = cast[ptr QStatusBarhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarnativeEvent*(self: gen_qstatusbar_types.QStatusBar, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQStatusBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QStatusBarnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarnativeEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_nativeEvent(self: ptr cQStatusBar, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QStatusBar_nativeEvent ".} =
  var nimfunc = cast[ptr QStatusBarnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QStatusBarchangeEvent*(self: gen_qstatusbar_types.QStatusBar, param1: gen_qcoreevent_types.QEvent): void =
  fQStatusBar_virtualbase_changeEvent(self.h, param1.h)

type QStatusBarchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarchangeEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_changeEvent(self: ptr cQStatusBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_changeEvent ".} =
  var nimfunc = cast[ptr QStatusBarchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QStatusBarmetric*(self: gen_qstatusbar_types.QStatusBar, param1: cint): cint =
  fQStatusBar_virtualbase_metric(self.h, cint(param1))

type QStatusBarmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarmetricProc) =
  # TODO check subclass
  var tmp = new QStatusBarmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_metric(self: ptr cQStatusBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QStatusBar_metric ".} =
  var nimfunc = cast[ptr QStatusBarmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStatusBarinitPainter*(self: gen_qstatusbar_types.QStatusBar, painter: gen_qpainter_types.QPainter): void =
  fQStatusBar_virtualbase_initPainter(self.h, painter.h)

type QStatusBarinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarinitPainterProc) =
  # TODO check subclass
  var tmp = new QStatusBarinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_initPainter(self: ptr cQStatusBar, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_initPainter ".} =
  var nimfunc = cast[ptr QStatusBarinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QStatusBarredirected*(self: gen_qstatusbar_types.QStatusBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQStatusBar_virtualbase_redirected(self.h, offset.h))

type QStatusBarredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarredirectedProc) =
  # TODO check subclass
  var tmp = new QStatusBarredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_redirected(self: ptr cQStatusBar, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QStatusBar_redirected ".} =
  var nimfunc = cast[ptr QStatusBarredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStatusBarsharedPainter*(self: gen_qstatusbar_types.QStatusBar, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQStatusBar_virtualbase_sharedPainter(self.h))

type QStatusBarsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarsharedPainterProc) =
  # TODO check subclass
  var tmp = new QStatusBarsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_sharedPainter(self: ptr cQStatusBar, slot: int): pointer {.exportc: "miqt_exec_callback_QStatusBar_sharedPainter ".} =
  var nimfunc = cast[ptr QStatusBarsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QStatusBarinputMethodEvent*(self: gen_qstatusbar_types.QStatusBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fQStatusBar_virtualbase_inputMethodEvent(self.h, param1.h)

type QStatusBarinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_inputMethodEvent(self: ptr cQStatusBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_inputMethodEvent ".} =
  var nimfunc = cast[ptr QStatusBarinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QStatusBarinputMethodQuery*(self: gen_qstatusbar_types.QStatusBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQStatusBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QStatusBarinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QStatusBarinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_inputMethodQuery(self: ptr cQStatusBar, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QStatusBar_inputMethodQuery ".} =
  var nimfunc = cast[ptr QStatusBarinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QStatusBarfocusNextPrevChild*(self: gen_qstatusbar_types.QStatusBar, next: bool): bool =
  fQStatusBar_virtualbase_focusNextPrevChild(self.h, next)

type QStatusBarfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QStatusBarfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_focusNextPrevChild(self: ptr cQStatusBar, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QStatusBar_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QStatusBarfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QStatusBareventFilter*(self: gen_qstatusbar_types.QStatusBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQStatusBar_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStatusBareventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBareventFilterProc) =
  # TODO check subclass
  var tmp = new QStatusBareventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_eventFilter(self: ptr cQStatusBar, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStatusBar_eventFilter ".} =
  var nimfunc = cast[ptr QStatusBareventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QStatusBartimerEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qcoreevent_types.QTimerEvent): void =
  fQStatusBar_virtualbase_timerEvent(self.h, event.h)

type QStatusBartimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBartimerEventProc) =
  # TODO check subclass
  var tmp = new QStatusBartimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_timerEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_timerEvent ".} =
  var nimfunc = cast[ptr QStatusBartimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarchildEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qcoreevent_types.QChildEvent): void =
  fQStatusBar_virtualbase_childEvent(self.h, event.h)

type QStatusBarchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarchildEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_childEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_childEvent ".} =
  var nimfunc = cast[ptr QStatusBarchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarcustomEvent*(self: gen_qstatusbar_types.QStatusBar, event: gen_qcoreevent_types.QEvent): void =
  fQStatusBar_virtualbase_customEvent(self.h, event.h)

type QStatusBarcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarcustomEventProc) =
  # TODO check subclass
  var tmp = new QStatusBarcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_customEvent(self: ptr cQStatusBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_customEvent ".} =
  var nimfunc = cast[ptr QStatusBarcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QStatusBarconnectNotify*(self: gen_qstatusbar_types.QStatusBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStatusBar_virtualbase_connectNotify(self.h, signal.h)

type QStatusBarconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBarconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStatusBarconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_connectNotify(self: ptr cQStatusBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_connectNotify ".} =
  var nimfunc = cast[ptr QStatusBarconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QStatusBardisconnectNotify*(self: gen_qstatusbar_types.QStatusBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQStatusBar_virtualbase_disconnectNotify(self.h, signal.h)

type QStatusBardisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qstatusbar_types.QStatusBar, slot: QStatusBardisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QStatusBardisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQStatusBar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStatusBar_disconnectNotify(self: ptr cQStatusBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStatusBar_disconnectNotify ".} =
  var nimfunc = cast[ptr QStatusBardisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qstatusbar_types.QStatusBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStatusBar_staticMetaObject())
proc delete*(self: gen_qstatusbar_types.QStatusBar) =
  fcQStatusBar_delete(self.h)
