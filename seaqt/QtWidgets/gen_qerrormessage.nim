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
{.compile("gen_qerrormessage.cpp", cflags).}


import ./gen_qerrormessage_types
export gen_qerrormessage_types

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
  gen_qwidget_types

type cQErrorMessage*{.exportc: "QErrorMessage", incompleteStruct.} = object

proc fcQErrorMessage_new(parent: pointer): ptr cQErrorMessage {.importc: "QErrorMessage_new".}
proc fcQErrorMessage_new2(): ptr cQErrorMessage {.importc: "QErrorMessage_new2".}
proc fcQErrorMessage_metaObject(self: pointer, ): pointer {.importc: "QErrorMessage_metaObject".}
proc fcQErrorMessage_metacast(self: pointer, param1: cstring): pointer {.importc: "QErrorMessage_metacast".}
proc fcQErrorMessage_tr(s: cstring): struct_miqt_string {.importc: "QErrorMessage_tr".}
proc fcQErrorMessage_trUtf8(s: cstring): struct_miqt_string {.importc: "QErrorMessage_trUtf8".}
proc fcQErrorMessage_qtHandler(): pointer {.importc: "QErrorMessage_qtHandler".}
proc fcQErrorMessage_showMessage(self: pointer, message: struct_miqt_string): void {.importc: "QErrorMessage_showMessage".}
proc fcQErrorMessage_showMessage2(self: pointer, message: struct_miqt_string, typeVal: struct_miqt_string): void {.importc: "QErrorMessage_showMessage2".}
proc fcQErrorMessage_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QErrorMessage_tr2".}
proc fcQErrorMessage_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QErrorMessage_tr3".}
proc fcQErrorMessage_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QErrorMessage_trUtf82".}
proc fcQErrorMessage_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QErrorMessage_trUtf83".}
proc fQErrorMessage_virtualbase_done(self: pointer, param1: cint): void{.importc: "QErrorMessage_virtualbase_done".}
proc fcQErrorMessage_override_virtual_done(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_done".}
proc fQErrorMessage_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QErrorMessage_virtualbase_changeEvent".}
proc fcQErrorMessage_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_changeEvent".}
proc fQErrorMessage_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QErrorMessage_virtualbase_setVisible".}
proc fcQErrorMessage_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_setVisible".}
proc fQErrorMessage_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QErrorMessage_virtualbase_sizeHint".}
proc fcQErrorMessage_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_sizeHint".}
proc fQErrorMessage_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QErrorMessage_virtualbase_minimumSizeHint".}
proc fcQErrorMessage_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_minimumSizeHint".}
proc fQErrorMessage_virtualbase_open(self: pointer, ): void{.importc: "QErrorMessage_virtualbase_open".}
proc fcQErrorMessage_override_virtual_open(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_open".}
proc fQErrorMessage_virtualbase_exec(self: pointer, ): cint{.importc: "QErrorMessage_virtualbase_exec".}
proc fcQErrorMessage_override_virtual_exec(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_exec".}
proc fQErrorMessage_virtualbase_accept(self: pointer, ): void{.importc: "QErrorMessage_virtualbase_accept".}
proc fcQErrorMessage_override_virtual_accept(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_accept".}
proc fQErrorMessage_virtualbase_reject(self: pointer, ): void{.importc: "QErrorMessage_virtualbase_reject".}
proc fcQErrorMessage_override_virtual_reject(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_reject".}
proc fQErrorMessage_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QErrorMessage_virtualbase_keyPressEvent".}
proc fcQErrorMessage_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_keyPressEvent".}
proc fQErrorMessage_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QErrorMessage_virtualbase_closeEvent".}
proc fcQErrorMessage_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_closeEvent".}
proc fQErrorMessage_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QErrorMessage_virtualbase_showEvent".}
proc fcQErrorMessage_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_showEvent".}
proc fQErrorMessage_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QErrorMessage_virtualbase_resizeEvent".}
proc fcQErrorMessage_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_resizeEvent".}
proc fQErrorMessage_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QErrorMessage_virtualbase_contextMenuEvent".}
proc fcQErrorMessage_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_contextMenuEvent".}
proc fQErrorMessage_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QErrorMessage_virtualbase_eventFilter".}
proc fcQErrorMessage_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_eventFilter".}
proc fQErrorMessage_virtualbase_devType(self: pointer, ): cint{.importc: "QErrorMessage_virtualbase_devType".}
proc fcQErrorMessage_override_virtual_devType(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_devType".}
proc fQErrorMessage_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QErrorMessage_virtualbase_heightForWidth".}
proc fcQErrorMessage_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_heightForWidth".}
proc fQErrorMessage_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QErrorMessage_virtualbase_hasHeightForWidth".}
proc fcQErrorMessage_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_hasHeightForWidth".}
proc fQErrorMessage_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QErrorMessage_virtualbase_paintEngine".}
proc fcQErrorMessage_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_paintEngine".}
proc fQErrorMessage_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QErrorMessage_virtualbase_event".}
proc fcQErrorMessage_override_virtual_event(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_event".}
proc fQErrorMessage_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_mousePressEvent".}
proc fcQErrorMessage_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_mousePressEvent".}
proc fQErrorMessage_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_mouseReleaseEvent".}
proc fcQErrorMessage_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_mouseReleaseEvent".}
proc fQErrorMessage_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_mouseDoubleClickEvent".}
proc fcQErrorMessage_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_mouseDoubleClickEvent".}
proc fQErrorMessage_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_mouseMoveEvent".}
proc fcQErrorMessage_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_mouseMoveEvent".}
proc fQErrorMessage_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_wheelEvent".}
proc fcQErrorMessage_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_wheelEvent".}
proc fQErrorMessage_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_keyReleaseEvent".}
proc fcQErrorMessage_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_keyReleaseEvent".}
proc fQErrorMessage_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_focusInEvent".}
proc fcQErrorMessage_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_focusInEvent".}
proc fQErrorMessage_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_focusOutEvent".}
proc fcQErrorMessage_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_focusOutEvent".}
proc fQErrorMessage_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_enterEvent".}
proc fcQErrorMessage_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_enterEvent".}
proc fQErrorMessage_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_leaveEvent".}
proc fcQErrorMessage_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_leaveEvent".}
proc fQErrorMessage_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_paintEvent".}
proc fcQErrorMessage_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_paintEvent".}
proc fQErrorMessage_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_moveEvent".}
proc fcQErrorMessage_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_moveEvent".}
proc fQErrorMessage_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_tabletEvent".}
proc fcQErrorMessage_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_tabletEvent".}
proc fQErrorMessage_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_actionEvent".}
proc fcQErrorMessage_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_actionEvent".}
proc fQErrorMessage_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_dragEnterEvent".}
proc fcQErrorMessage_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_dragEnterEvent".}
proc fQErrorMessage_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_dragMoveEvent".}
proc fcQErrorMessage_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_dragMoveEvent".}
proc fQErrorMessage_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_dragLeaveEvent".}
proc fcQErrorMessage_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_dragLeaveEvent".}
proc fQErrorMessage_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_dropEvent".}
proc fcQErrorMessage_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_dropEvent".}
proc fQErrorMessage_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_hideEvent".}
proc fcQErrorMessage_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_hideEvent".}
proc fQErrorMessage_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QErrorMessage_virtualbase_nativeEvent".}
proc fcQErrorMessage_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_nativeEvent".}
proc fQErrorMessage_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QErrorMessage_virtualbase_metric".}
proc fcQErrorMessage_override_virtual_metric(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_metric".}
proc fQErrorMessage_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QErrorMessage_virtualbase_initPainter".}
proc fcQErrorMessage_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_initPainter".}
proc fQErrorMessage_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QErrorMessage_virtualbase_redirected".}
proc fcQErrorMessage_override_virtual_redirected(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_redirected".}
proc fQErrorMessage_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QErrorMessage_virtualbase_sharedPainter".}
proc fcQErrorMessage_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_sharedPainter".}
proc fQErrorMessage_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QErrorMessage_virtualbase_inputMethodEvent".}
proc fcQErrorMessage_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_inputMethodEvent".}
proc fQErrorMessage_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QErrorMessage_virtualbase_inputMethodQuery".}
proc fcQErrorMessage_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_inputMethodQuery".}
proc fQErrorMessage_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QErrorMessage_virtualbase_focusNextPrevChild".}
proc fcQErrorMessage_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_focusNextPrevChild".}
proc fQErrorMessage_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_timerEvent".}
proc fcQErrorMessage_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_timerEvent".}
proc fQErrorMessage_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_childEvent".}
proc fcQErrorMessage_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_childEvent".}
proc fQErrorMessage_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QErrorMessage_virtualbase_customEvent".}
proc fcQErrorMessage_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_customEvent".}
proc fQErrorMessage_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QErrorMessage_virtualbase_connectNotify".}
proc fcQErrorMessage_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_connectNotify".}
proc fQErrorMessage_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QErrorMessage_virtualbase_disconnectNotify".}
proc fcQErrorMessage_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QErrorMessage_override_virtual_disconnectNotify".}
proc fcQErrorMessage_delete(self: pointer) {.importc: "QErrorMessage_delete".}


func init*(T: type gen_qerrormessage_types.QErrorMessage, h: ptr cQErrorMessage): gen_qerrormessage_types.QErrorMessage =
  T(h: h)
proc create*(T: type gen_qerrormessage_types.QErrorMessage, parent: gen_qwidget_types.QWidget): gen_qerrormessage_types.QErrorMessage =
  gen_qerrormessage_types.QErrorMessage.init(fcQErrorMessage_new(parent.h))

proc create*(T: type gen_qerrormessage_types.QErrorMessage, ): gen_qerrormessage_types.QErrorMessage =
  gen_qerrormessage_types.QErrorMessage.init(fcQErrorMessage_new2())

proc metaObject*(self: gen_qerrormessage_types.QErrorMessage, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQErrorMessage_metaObject(self.h))

proc metacast*(self: gen_qerrormessage_types.QErrorMessage, param1: cstring): pointer =
  fcQErrorMessage_metacast(self.h, param1)

proc tr*(_: type gen_qerrormessage_types.QErrorMessage, s: cstring): string =
  let v_ms = fcQErrorMessage_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qerrormessage_types.QErrorMessage, s: cstring): string =
  let v_ms = fcQErrorMessage_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc qtHandler*(_: type gen_qerrormessage_types.QErrorMessage, ): gen_qerrormessage_types.QErrorMessage =
  gen_qerrormessage_types.QErrorMessage(h: fcQErrorMessage_qtHandler())

proc showMessage*(self: gen_qerrormessage_types.QErrorMessage, message: string): void =
  fcQErrorMessage_showMessage(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

proc showMessage*(self: gen_qerrormessage_types.QErrorMessage, message: string, typeVal: string): void =
  fcQErrorMessage_showMessage2(self.h, struct_miqt_string(data: message, len: csize_t(len(message))), struct_miqt_string(data: typeVal, len: csize_t(len(typeVal))))

proc tr*(_: type gen_qerrormessage_types.QErrorMessage, s: cstring, c: cstring): string =
  let v_ms = fcQErrorMessage_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qerrormessage_types.QErrorMessage, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQErrorMessage_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qerrormessage_types.QErrorMessage, s: cstring, c: cstring): string =
  let v_ms = fcQErrorMessage_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qerrormessage_types.QErrorMessage, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQErrorMessage_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QErrorMessagedone*(self: gen_qerrormessage_types.QErrorMessage, param1: cint): void =
  fQErrorMessage_virtualbase_done(self.h, param1)

type QErrorMessagedoneProc* = proc(param1: cint): void
proc ondone*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagedoneProc) =
  # TODO check subclass
  var tmp = new QErrorMessagedoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_done(self: ptr cQErrorMessage, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QErrorMessage_done ".} =
  var nimfunc = cast[ptr QErrorMessagedoneProc](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)
proc QErrorMessagechangeEvent*(self: gen_qerrormessage_types.QErrorMessage, e: gen_qcoreevent_types.QEvent): void =
  fQErrorMessage_virtualbase_changeEvent(self.h, e.h)

type QErrorMessagechangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagechangeEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagechangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_changeEvent(self: ptr cQErrorMessage, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_changeEvent ".} =
  var nimfunc = cast[ptr QErrorMessagechangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QErrorMessagesetVisible*(self: gen_qerrormessage_types.QErrorMessage, visible: bool): void =
  fQErrorMessage_virtualbase_setVisible(self.h, visible)

type QErrorMessagesetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagesetVisibleProc) =
  # TODO check subclass
  var tmp = new QErrorMessagesetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_setVisible(self: ptr cQErrorMessage, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QErrorMessage_setVisible ".} =
  var nimfunc = cast[ptr QErrorMessagesetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QErrorMessagesizeHint*(self: gen_qerrormessage_types.QErrorMessage, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQErrorMessage_virtualbase_sizeHint(self.h))

type QErrorMessagesizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagesizeHintProc) =
  # TODO check subclass
  var tmp = new QErrorMessagesizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_sizeHint(self: ptr cQErrorMessage, slot: int): pointer {.exportc: "miqt_exec_callback_QErrorMessage_sizeHint ".} =
  var nimfunc = cast[ptr QErrorMessagesizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QErrorMessageminimumSizeHint*(self: gen_qerrormessage_types.QErrorMessage, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQErrorMessage_virtualbase_minimumSizeHint(self.h))

type QErrorMessageminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QErrorMessageminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_minimumSizeHint(self: ptr cQErrorMessage, slot: int): pointer {.exportc: "miqt_exec_callback_QErrorMessage_minimumSizeHint ".} =
  var nimfunc = cast[ptr QErrorMessageminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QErrorMessageopen*(self: gen_qerrormessage_types.QErrorMessage, ): void =
  fQErrorMessage_virtualbase_open(self.h)

type QErrorMessageopenProc* = proc(): void
proc onopen*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageopenProc) =
  # TODO check subclass
  var tmp = new QErrorMessageopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_open(self: ptr cQErrorMessage, slot: int): void {.exportc: "miqt_exec_callback_QErrorMessage_open ".} =
  var nimfunc = cast[ptr QErrorMessageopenProc](cast[pointer](slot))

  nimfunc[]()
proc QErrorMessageexec*(self: gen_qerrormessage_types.QErrorMessage, ): cint =
  fQErrorMessage_virtualbase_exec(self.h)

type QErrorMessageexecProc* = proc(): cint
proc onexec*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageexecProc) =
  # TODO check subclass
  var tmp = new QErrorMessageexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_exec(self: ptr cQErrorMessage, slot: int): cint {.exportc: "miqt_exec_callback_QErrorMessage_exec ".} =
  var nimfunc = cast[ptr QErrorMessageexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QErrorMessageaccept*(self: gen_qerrormessage_types.QErrorMessage, ): void =
  fQErrorMessage_virtualbase_accept(self.h)

type QErrorMessageacceptProc* = proc(): void
proc onaccept*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageacceptProc) =
  # TODO check subclass
  var tmp = new QErrorMessageacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_accept(self: ptr cQErrorMessage, slot: int): void {.exportc: "miqt_exec_callback_QErrorMessage_accept ".} =
  var nimfunc = cast[ptr QErrorMessageacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QErrorMessagereject*(self: gen_qerrormessage_types.QErrorMessage, ): void =
  fQErrorMessage_virtualbase_reject(self.h)

type QErrorMessagerejectProc* = proc(): void
proc onreject*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagerejectProc) =
  # TODO check subclass
  var tmp = new QErrorMessagerejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_reject(self: ptr cQErrorMessage, slot: int): void {.exportc: "miqt_exec_callback_QErrorMessage_reject ".} =
  var nimfunc = cast[ptr QErrorMessagerejectProc](cast[pointer](slot))

  nimfunc[]()
proc QErrorMessagekeyPressEvent*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qevent_types.QKeyEvent): void =
  fQErrorMessage_virtualbase_keyPressEvent(self.h, param1.h)

type QErrorMessagekeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagekeyPressEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagekeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_keyPressEvent(self: ptr cQErrorMessage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_keyPressEvent ".} =
  var nimfunc = cast[ptr QErrorMessagekeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QErrorMessagecloseEvent*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qevent_types.QCloseEvent): void =
  fQErrorMessage_virtualbase_closeEvent(self.h, param1.h)

type QErrorMessagecloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagecloseEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagecloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_closeEvent(self: ptr cQErrorMessage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_closeEvent ".} =
  var nimfunc = cast[ptr QErrorMessagecloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QErrorMessageshowEvent*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qevent_types.QShowEvent): void =
  fQErrorMessage_virtualbase_showEvent(self.h, param1.h)

type QErrorMessageshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageshowEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessageshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_showEvent(self: ptr cQErrorMessage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_showEvent ".} =
  var nimfunc = cast[ptr QErrorMessageshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QErrorMessageresizeEvent*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qevent_types.QResizeEvent): void =
  fQErrorMessage_virtualbase_resizeEvent(self.h, param1.h)

type QErrorMessageresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageresizeEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessageresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_resizeEvent(self: ptr cQErrorMessage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_resizeEvent ".} =
  var nimfunc = cast[ptr QErrorMessageresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QErrorMessagecontextMenuEvent*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qevent_types.QContextMenuEvent): void =
  fQErrorMessage_virtualbase_contextMenuEvent(self.h, param1.h)

type QErrorMessagecontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagecontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagecontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_contextMenuEvent(self: ptr cQErrorMessage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_contextMenuEvent ".} =
  var nimfunc = cast[ptr QErrorMessagecontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QErrorMessageeventFilter*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQErrorMessage_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QErrorMessageeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageeventFilterProc) =
  # TODO check subclass
  var tmp = new QErrorMessageeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_eventFilter(self: ptr cQErrorMessage, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QErrorMessage_eventFilter ".} =
  var nimfunc = cast[ptr QErrorMessageeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QErrorMessagedevType*(self: gen_qerrormessage_types.QErrorMessage, ): cint =
  fQErrorMessage_virtualbase_devType(self.h)

type QErrorMessagedevTypeProc* = proc(): cint
proc ondevType*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagedevTypeProc) =
  # TODO check subclass
  var tmp = new QErrorMessagedevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_devType(self: ptr cQErrorMessage, slot: int): cint {.exportc: "miqt_exec_callback_QErrorMessage_devType ".} =
  var nimfunc = cast[ptr QErrorMessagedevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QErrorMessageheightForWidth*(self: gen_qerrormessage_types.QErrorMessage, param1: cint): cint =
  fQErrorMessage_virtualbase_heightForWidth(self.h, param1)

type QErrorMessageheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageheightForWidthProc) =
  # TODO check subclass
  var tmp = new QErrorMessageheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_heightForWidth(self: ptr cQErrorMessage, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QErrorMessage_heightForWidth ".} =
  var nimfunc = cast[ptr QErrorMessageheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QErrorMessagehasHeightForWidth*(self: gen_qerrormessage_types.QErrorMessage, ): bool =
  fQErrorMessage_virtualbase_hasHeightForWidth(self.h)

type QErrorMessagehasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagehasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QErrorMessagehasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_hasHeightForWidth(self: ptr cQErrorMessage, slot: int): bool {.exportc: "miqt_exec_callback_QErrorMessage_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QErrorMessagehasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QErrorMessagepaintEngine*(self: gen_qerrormessage_types.QErrorMessage, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQErrorMessage_virtualbase_paintEngine(self.h))

type QErrorMessagepaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagepaintEngineProc) =
  # TODO check subclass
  var tmp = new QErrorMessagepaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_paintEngine(self: ptr cQErrorMessage, slot: int): pointer {.exportc: "miqt_exec_callback_QErrorMessage_paintEngine ".} =
  var nimfunc = cast[ptr QErrorMessagepaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QErrorMessageevent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qcoreevent_types.QEvent): bool =
  fQErrorMessage_virtualbase_event(self.h, event.h)

type QErrorMessageeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageeventProc) =
  # TODO check subclass
  var tmp = new QErrorMessageeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_event(self: ptr cQErrorMessage, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QErrorMessage_event ".} =
  var nimfunc = cast[ptr QErrorMessageeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QErrorMessagemousePressEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QMouseEvent): void =
  fQErrorMessage_virtualbase_mousePressEvent(self.h, event.h)

type QErrorMessagemousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagemousePressEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagemousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_mousePressEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_mousePressEvent ".} =
  var nimfunc = cast[ptr QErrorMessagemousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagemouseReleaseEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QMouseEvent): void =
  fQErrorMessage_virtualbase_mouseReleaseEvent(self.h, event.h)

type QErrorMessagemouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagemouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagemouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_mouseReleaseEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QErrorMessagemouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagemouseDoubleClickEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QMouseEvent): void =
  fQErrorMessage_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QErrorMessagemouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagemouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagemouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_mouseDoubleClickEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QErrorMessagemouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagemouseMoveEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QMouseEvent): void =
  fQErrorMessage_virtualbase_mouseMoveEvent(self.h, event.h)

type QErrorMessagemouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagemouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagemouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_mouseMoveEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QErrorMessagemouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagewheelEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QWheelEvent): void =
  fQErrorMessage_virtualbase_wheelEvent(self.h, event.h)

type QErrorMessagewheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagewheelEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagewheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_wheelEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_wheelEvent ".} =
  var nimfunc = cast[ptr QErrorMessagewheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagekeyReleaseEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QKeyEvent): void =
  fQErrorMessage_virtualbase_keyReleaseEvent(self.h, event.h)

type QErrorMessagekeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagekeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagekeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_keyReleaseEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QErrorMessagekeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagefocusInEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QFocusEvent): void =
  fQErrorMessage_virtualbase_focusInEvent(self.h, event.h)

type QErrorMessagefocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagefocusInEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagefocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_focusInEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_focusInEvent ".} =
  var nimfunc = cast[ptr QErrorMessagefocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagefocusOutEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QFocusEvent): void =
  fQErrorMessage_virtualbase_focusOutEvent(self.h, event.h)

type QErrorMessagefocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagefocusOutEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagefocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_focusOutEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_focusOutEvent ".} =
  var nimfunc = cast[ptr QErrorMessagefocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessageenterEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qcoreevent_types.QEvent): void =
  fQErrorMessage_virtualbase_enterEvent(self.h, event.h)

type QErrorMessageenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageenterEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessageenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_enterEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_enterEvent ".} =
  var nimfunc = cast[ptr QErrorMessageenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessageleaveEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qcoreevent_types.QEvent): void =
  fQErrorMessage_virtualbase_leaveEvent(self.h, event.h)

type QErrorMessageleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageleaveEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessageleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_leaveEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_leaveEvent ".} =
  var nimfunc = cast[ptr QErrorMessageleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagepaintEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QPaintEvent): void =
  fQErrorMessage_virtualbase_paintEvent(self.h, event.h)

type QErrorMessagepaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagepaintEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagepaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_paintEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_paintEvent ".} =
  var nimfunc = cast[ptr QErrorMessagepaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagemoveEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QMoveEvent): void =
  fQErrorMessage_virtualbase_moveEvent(self.h, event.h)

type QErrorMessagemoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagemoveEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagemoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_moveEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_moveEvent ".} =
  var nimfunc = cast[ptr QErrorMessagemoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagetabletEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QTabletEvent): void =
  fQErrorMessage_virtualbase_tabletEvent(self.h, event.h)

type QErrorMessagetabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagetabletEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagetabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_tabletEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_tabletEvent ".} =
  var nimfunc = cast[ptr QErrorMessagetabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessageactionEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QActionEvent): void =
  fQErrorMessage_virtualbase_actionEvent(self.h, event.h)

type QErrorMessageactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageactionEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessageactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_actionEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_actionEvent ".} =
  var nimfunc = cast[ptr QErrorMessageactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagedragEnterEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QDragEnterEvent): void =
  fQErrorMessage_virtualbase_dragEnterEvent(self.h, event.h)

type QErrorMessagedragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagedragEnterEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagedragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_dragEnterEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_dragEnterEvent ".} =
  var nimfunc = cast[ptr QErrorMessagedragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagedragMoveEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QDragMoveEvent): void =
  fQErrorMessage_virtualbase_dragMoveEvent(self.h, event.h)

type QErrorMessagedragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagedragMoveEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagedragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_dragMoveEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_dragMoveEvent ".} =
  var nimfunc = cast[ptr QErrorMessagedragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagedragLeaveEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QDragLeaveEvent): void =
  fQErrorMessage_virtualbase_dragLeaveEvent(self.h, event.h)

type QErrorMessagedragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagedragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagedragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_dragLeaveEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QErrorMessagedragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagedropEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QDropEvent): void =
  fQErrorMessage_virtualbase_dropEvent(self.h, event.h)

type QErrorMessagedropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagedropEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagedropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_dropEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_dropEvent ".} =
  var nimfunc = cast[ptr QErrorMessagedropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagehideEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qevent_types.QHideEvent): void =
  fQErrorMessage_virtualbase_hideEvent(self.h, event.h)

type QErrorMessagehideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagehideEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagehideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_hideEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_hideEvent ".} =
  var nimfunc = cast[ptr QErrorMessagehideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagenativeEvent*(self: gen_qerrormessage_types.QErrorMessage, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQErrorMessage_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QErrorMessagenativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagenativeEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagenativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_nativeEvent(self: ptr cQErrorMessage, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QErrorMessage_nativeEvent ".} =
  var nimfunc = cast[ptr QErrorMessagenativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QErrorMessagemetric*(self: gen_qerrormessage_types.QErrorMessage, param1: cint): cint =
  fQErrorMessage_virtualbase_metric(self.h, cint(param1))

type QErrorMessagemetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagemetricProc) =
  # TODO check subclass
  var tmp = new QErrorMessagemetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_metric(self: ptr cQErrorMessage, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QErrorMessage_metric ".} =
  var nimfunc = cast[ptr QErrorMessagemetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QErrorMessageinitPainter*(self: gen_qerrormessage_types.QErrorMessage, painter: gen_qpainter_types.QPainter): void =
  fQErrorMessage_virtualbase_initPainter(self.h, painter.h)

type QErrorMessageinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageinitPainterProc) =
  # TODO check subclass
  var tmp = new QErrorMessageinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_initPainter(self: ptr cQErrorMessage, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_initPainter ".} =
  var nimfunc = cast[ptr QErrorMessageinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QErrorMessageredirected*(self: gen_qerrormessage_types.QErrorMessage, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQErrorMessage_virtualbase_redirected(self.h, offset.h))

type QErrorMessageredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageredirectedProc) =
  # TODO check subclass
  var tmp = new QErrorMessageredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_redirected(self: ptr cQErrorMessage, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QErrorMessage_redirected ".} =
  var nimfunc = cast[ptr QErrorMessageredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QErrorMessagesharedPainter*(self: gen_qerrormessage_types.QErrorMessage, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQErrorMessage_virtualbase_sharedPainter(self.h))

type QErrorMessagesharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagesharedPainterProc) =
  # TODO check subclass
  var tmp = new QErrorMessagesharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_sharedPainter(self: ptr cQErrorMessage, slot: int): pointer {.exportc: "miqt_exec_callback_QErrorMessage_sharedPainter ".} =
  var nimfunc = cast[ptr QErrorMessagesharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QErrorMessageinputMethodEvent*(self: gen_qerrormessage_types.QErrorMessage, param1: gen_qevent_types.QInputMethodEvent): void =
  fQErrorMessage_virtualbase_inputMethodEvent(self.h, param1.h)

type QErrorMessageinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessageinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_inputMethodEvent(self: ptr cQErrorMessage, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_inputMethodEvent ".} =
  var nimfunc = cast[ptr QErrorMessageinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QErrorMessageinputMethodQuery*(self: gen_qerrormessage_types.QErrorMessage, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQErrorMessage_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QErrorMessageinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QErrorMessageinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_inputMethodQuery(self: ptr cQErrorMessage, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QErrorMessage_inputMethodQuery ".} =
  var nimfunc = cast[ptr QErrorMessageinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QErrorMessagefocusNextPrevChild*(self: gen_qerrormessage_types.QErrorMessage, next: bool): bool =
  fQErrorMessage_virtualbase_focusNextPrevChild(self.h, next)

type QErrorMessagefocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagefocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QErrorMessagefocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_focusNextPrevChild(self: ptr cQErrorMessage, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QErrorMessage_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QErrorMessagefocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QErrorMessagetimerEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qcoreevent_types.QTimerEvent): void =
  fQErrorMessage_virtualbase_timerEvent(self.h, event.h)

type QErrorMessagetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagetimerEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_timerEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_timerEvent ".} =
  var nimfunc = cast[ptr QErrorMessagetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagechildEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qcoreevent_types.QChildEvent): void =
  fQErrorMessage_virtualbase_childEvent(self.h, event.h)

type QErrorMessagechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagechildEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_childEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_childEvent ".} =
  var nimfunc = cast[ptr QErrorMessagechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessagecustomEvent*(self: gen_qerrormessage_types.QErrorMessage, event: gen_qcoreevent_types.QEvent): void =
  fQErrorMessage_virtualbase_customEvent(self.h, event.h)

type QErrorMessagecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagecustomEventProc) =
  # TODO check subclass
  var tmp = new QErrorMessagecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_customEvent(self: ptr cQErrorMessage, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_customEvent ".} =
  var nimfunc = cast[ptr QErrorMessagecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QErrorMessageconnectNotify*(self: gen_qerrormessage_types.QErrorMessage, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQErrorMessage_virtualbase_connectNotify(self.h, signal.h)

type QErrorMessageconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessageconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QErrorMessageconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_connectNotify(self: ptr cQErrorMessage, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_connectNotify ".} =
  var nimfunc = cast[ptr QErrorMessageconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QErrorMessagedisconnectNotify*(self: gen_qerrormessage_types.QErrorMessage, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQErrorMessage_virtualbase_disconnectNotify(self.h, signal.h)

type QErrorMessagedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qerrormessage_types.QErrorMessage, slot: QErrorMessagedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QErrorMessagedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQErrorMessage_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QErrorMessage_disconnectNotify(self: ptr cQErrorMessage, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QErrorMessage_disconnectNotify ".} =
  var nimfunc = cast[ptr QErrorMessagedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qerrormessage_types.QErrorMessage) =
  fcQErrorMessage_delete(self.h)
