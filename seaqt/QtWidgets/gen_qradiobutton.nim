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
{.compile("gen_qradiobutton.cpp", cflags).}


import ./gen_qradiobutton_types
export gen_qradiobutton_types

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

type cQRadioButton*{.exportc: "QRadioButton", incompleteStruct.} = object

proc fcQRadioButton_new(parent: pointer): ptr cQRadioButton {.importc: "QRadioButton_new".}
proc fcQRadioButton_new2(): ptr cQRadioButton {.importc: "QRadioButton_new2".}
proc fcQRadioButton_new3(text: struct_miqt_string): ptr cQRadioButton {.importc: "QRadioButton_new3".}
proc fcQRadioButton_new4(text: struct_miqt_string, parent: pointer): ptr cQRadioButton {.importc: "QRadioButton_new4".}
proc fcQRadioButton_metaObject(self: pointer, ): pointer {.importc: "QRadioButton_metaObject".}
proc fcQRadioButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QRadioButton_metacast".}
proc fcQRadioButton_tr(s: cstring): struct_miqt_string {.importc: "QRadioButton_tr".}
proc fcQRadioButton_trUtf8(s: cstring): struct_miqt_string {.importc: "QRadioButton_trUtf8".}
proc fcQRadioButton_sizeHint(self: pointer, ): pointer {.importc: "QRadioButton_sizeHint".}
proc fcQRadioButton_minimumSizeHint(self: pointer, ): pointer {.importc: "QRadioButton_minimumSizeHint".}
proc fcQRadioButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioButton_tr2".}
proc fcQRadioButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioButton_tr3".}
proc fcQRadioButton_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QRadioButton_trUtf82".}
proc fcQRadioButton_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRadioButton_trUtf83".}
proc fQRadioButton_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QRadioButton_virtualbase_sizeHint".}
proc fcQRadioButton_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_sizeHint".}
proc fQRadioButton_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QRadioButton_virtualbase_minimumSizeHint".}
proc fcQRadioButton_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_minimumSizeHint".}
proc fQRadioButton_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QRadioButton_virtualbase_event".}
proc fcQRadioButton_override_virtual_event(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_event".}
proc fQRadioButton_virtualbase_hitButton(self: pointer, param1: pointer): bool{.importc: "QRadioButton_virtualbase_hitButton".}
proc fcQRadioButton_override_virtual_hitButton(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_hitButton".}
proc fQRadioButton_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QRadioButton_virtualbase_paintEvent".}
proc fcQRadioButton_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_paintEvent".}
proc fQRadioButton_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QRadioButton_virtualbase_mouseMoveEvent".}
proc fcQRadioButton_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_mouseMoveEvent".}
proc fQRadioButton_virtualbase_checkStateSet(self: pointer, ): void{.importc: "QRadioButton_virtualbase_checkStateSet".}
proc fcQRadioButton_override_virtual_checkStateSet(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_checkStateSet".}
proc fQRadioButton_virtualbase_nextCheckState(self: pointer, ): void{.importc: "QRadioButton_virtualbase_nextCheckState".}
proc fcQRadioButton_override_virtual_nextCheckState(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_nextCheckState".}
proc fQRadioButton_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_keyPressEvent".}
proc fcQRadioButton_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_keyPressEvent".}
proc fQRadioButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_keyReleaseEvent".}
proc fcQRadioButton_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_keyReleaseEvent".}
proc fQRadioButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_mousePressEvent".}
proc fcQRadioButton_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_mousePressEvent".}
proc fQRadioButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_mouseReleaseEvent".}
proc fcQRadioButton_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_mouseReleaseEvent".}
proc fQRadioButton_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_focusInEvent".}
proc fcQRadioButton_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_focusInEvent".}
proc fQRadioButton_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_focusOutEvent".}
proc fcQRadioButton_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_focusOutEvent".}
proc fQRadioButton_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_changeEvent".}
proc fcQRadioButton_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_changeEvent".}
proc fQRadioButton_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QRadioButton_virtualbase_timerEvent".}
proc fcQRadioButton_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_timerEvent".}
proc fQRadioButton_virtualbase_devType(self: pointer, ): cint{.importc: "QRadioButton_virtualbase_devType".}
proc fcQRadioButton_override_virtual_devType(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_devType".}
proc fQRadioButton_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QRadioButton_virtualbase_setVisible".}
proc fcQRadioButton_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_setVisible".}
proc fQRadioButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QRadioButton_virtualbase_heightForWidth".}
proc fcQRadioButton_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_heightForWidth".}
proc fQRadioButton_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QRadioButton_virtualbase_hasHeightForWidth".}
proc fcQRadioButton_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_hasHeightForWidth".}
proc fQRadioButton_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QRadioButton_virtualbase_paintEngine".}
proc fcQRadioButton_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_paintEngine".}
proc fQRadioButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_mouseDoubleClickEvent".}
proc fcQRadioButton_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_mouseDoubleClickEvent".}
proc fQRadioButton_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_wheelEvent".}
proc fcQRadioButton_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_wheelEvent".}
proc fQRadioButton_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_enterEvent".}
proc fcQRadioButton_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_enterEvent".}
proc fQRadioButton_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_leaveEvent".}
proc fcQRadioButton_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_leaveEvent".}
proc fQRadioButton_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_moveEvent".}
proc fcQRadioButton_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_moveEvent".}
proc fQRadioButton_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_resizeEvent".}
proc fcQRadioButton_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_resizeEvent".}
proc fQRadioButton_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_closeEvent".}
proc fcQRadioButton_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_closeEvent".}
proc fQRadioButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_contextMenuEvent".}
proc fcQRadioButton_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_contextMenuEvent".}
proc fQRadioButton_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_tabletEvent".}
proc fcQRadioButton_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_tabletEvent".}
proc fQRadioButton_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_actionEvent".}
proc fcQRadioButton_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_actionEvent".}
proc fQRadioButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_dragEnterEvent".}
proc fcQRadioButton_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_dragEnterEvent".}
proc fQRadioButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_dragMoveEvent".}
proc fcQRadioButton_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_dragMoveEvent".}
proc fQRadioButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_dragLeaveEvent".}
proc fcQRadioButton_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_dragLeaveEvent".}
proc fQRadioButton_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_dropEvent".}
proc fcQRadioButton_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_dropEvent".}
proc fQRadioButton_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_showEvent".}
proc fcQRadioButton_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_showEvent".}
proc fQRadioButton_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_hideEvent".}
proc fcQRadioButton_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_hideEvent".}
proc fQRadioButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QRadioButton_virtualbase_nativeEvent".}
proc fcQRadioButton_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_nativeEvent".}
proc fQRadioButton_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QRadioButton_virtualbase_metric".}
proc fcQRadioButton_override_virtual_metric(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_metric".}
proc fQRadioButton_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QRadioButton_virtualbase_initPainter".}
proc fcQRadioButton_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_initPainter".}
proc fQRadioButton_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QRadioButton_virtualbase_redirected".}
proc fcQRadioButton_override_virtual_redirected(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_redirected".}
proc fQRadioButton_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QRadioButton_virtualbase_sharedPainter".}
proc fcQRadioButton_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_sharedPainter".}
proc fQRadioButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QRadioButton_virtualbase_inputMethodEvent".}
proc fcQRadioButton_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_inputMethodEvent".}
proc fQRadioButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QRadioButton_virtualbase_inputMethodQuery".}
proc fcQRadioButton_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_inputMethodQuery".}
proc fQRadioButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QRadioButton_virtualbase_focusNextPrevChild".}
proc fcQRadioButton_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_focusNextPrevChild".}
proc fQRadioButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QRadioButton_virtualbase_eventFilter".}
proc fcQRadioButton_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_eventFilter".}
proc fQRadioButton_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_childEvent".}
proc fcQRadioButton_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_childEvent".}
proc fQRadioButton_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QRadioButton_virtualbase_customEvent".}
proc fcQRadioButton_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_customEvent".}
proc fQRadioButton_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QRadioButton_virtualbase_connectNotify".}
proc fcQRadioButton_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_connectNotify".}
proc fQRadioButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QRadioButton_virtualbase_disconnectNotify".}
proc fcQRadioButton_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QRadioButton_override_virtual_disconnectNotify".}
proc fcQRadioButton_delete(self: pointer) {.importc: "QRadioButton_delete".}


func init*(T: type gen_qradiobutton_types.QRadioButton, h: ptr cQRadioButton): gen_qradiobutton_types.QRadioButton =
  T(h: h)
proc create*(T: type gen_qradiobutton_types.QRadioButton, parent: gen_qwidget_types.QWidget): gen_qradiobutton_types.QRadioButton =
  gen_qradiobutton_types.QRadioButton.init(fcQRadioButton_new(parent.h))

proc create*(T: type gen_qradiobutton_types.QRadioButton, ): gen_qradiobutton_types.QRadioButton =
  gen_qradiobutton_types.QRadioButton.init(fcQRadioButton_new2())

proc create*(T: type gen_qradiobutton_types.QRadioButton, text: string): gen_qradiobutton_types.QRadioButton =
  gen_qradiobutton_types.QRadioButton.init(fcQRadioButton_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qradiobutton_types.QRadioButton, text: string, parent: gen_qwidget_types.QWidget): gen_qradiobutton_types.QRadioButton =
  gen_qradiobutton_types.QRadioButton.init(fcQRadioButton_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc metaObject*(self: gen_qradiobutton_types.QRadioButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRadioButton_metaObject(self.h))

proc metacast*(self: gen_qradiobutton_types.QRadioButton, param1: cstring): pointer =
  fcQRadioButton_metacast(self.h, param1)

proc tr*(_: type gen_qradiobutton_types.QRadioButton, s: cstring): string =
  let v_ms = fcQRadioButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiobutton_types.QRadioButton, s: cstring): string =
  let v_ms = fcQRadioButton_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qradiobutton_types.QRadioButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRadioButton_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qradiobutton_types.QRadioButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQRadioButton_minimumSizeHint(self.h))

proc tr*(_: type gen_qradiobutton_types.QRadioButton, s: cstring, c: cstring): string =
  let v_ms = fcQRadioButton_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qradiobutton_types.QRadioButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiobutton_types.QRadioButton, s: cstring, c: cstring): string =
  let v_ms = fcQRadioButton_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qradiobutton_types.QRadioButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRadioButton_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QRadioButtonsizeHint*(self: gen_qradiobutton_types.QRadioButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQRadioButton_virtualbase_sizeHint(self.h))

type QRadioButtonsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonsizeHintProc) =
  # TODO check subclass
  var tmp = new QRadioButtonsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_sizeHint(self: ptr cQRadioButton, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioButton_sizeHint ".} =
  var nimfunc = cast[ptr QRadioButtonsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRadioButtonminimumSizeHint*(self: gen_qradiobutton_types.QRadioButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQRadioButton_virtualbase_minimumSizeHint(self.h))

type QRadioButtonminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QRadioButtonminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_minimumSizeHint(self: ptr cQRadioButton, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioButton_minimumSizeHint ".} =
  var nimfunc = cast[ptr QRadioButtonminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRadioButtonevent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qcoreevent_types.QEvent): bool =
  fQRadioButton_virtualbase_event(self.h, e.h)

type QRadioButtoneventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtoneventProc) =
  # TODO check subclass
  var tmp = new QRadioButtoneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_event(self: ptr cQRadioButton, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QRadioButton_event ".} =
  var nimfunc = cast[ptr QRadioButtoneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRadioButtonhitButton*(self: gen_qradiobutton_types.QRadioButton, param1: gen_qpoint_types.QPoint): bool =
  fQRadioButton_virtualbase_hitButton(self.h, param1.h)

type QRadioButtonhitButtonProc* = proc(param1: gen_qpoint_types.QPoint): bool
proc onhitButton*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonhitButtonProc) =
  # TODO check subclass
  var tmp = new QRadioButtonhitButtonProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_hitButton(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_hitButton(self: ptr cQRadioButton, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QRadioButton_hitButton ".} =
  var nimfunc = cast[ptr QRadioButtonhitButtonProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRadioButtonpaintEvent*(self: gen_qradiobutton_types.QRadioButton, param1: gen_qevent_types.QPaintEvent): void =
  fQRadioButton_virtualbase_paintEvent(self.h, param1.h)

type QRadioButtonpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonpaintEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_paintEvent(self: ptr cQRadioButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_paintEvent ".} =
  var nimfunc = cast[ptr QRadioButtonpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QRadioButtonmouseMoveEvent*(self: gen_qradiobutton_types.QRadioButton, param1: gen_qevent_types.QMouseEvent): void =
  fQRadioButton_virtualbase_mouseMoveEvent(self.h, param1.h)

type QRadioButtonmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_mouseMoveEvent(self: ptr cQRadioButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QRadioButtonmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QRadioButtoncheckStateSet*(self: gen_qradiobutton_types.QRadioButton, ): void =
  fQRadioButton_virtualbase_checkStateSet(self.h)

type QRadioButtoncheckStateSetProc* = proc(): void
proc oncheckStateSet*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtoncheckStateSetProc) =
  # TODO check subclass
  var tmp = new QRadioButtoncheckStateSetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_checkStateSet(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_checkStateSet(self: ptr cQRadioButton, slot: int): void {.exportc: "miqt_exec_callback_QRadioButton_checkStateSet ".} =
  var nimfunc = cast[ptr QRadioButtoncheckStateSetProc](cast[pointer](slot))

  nimfunc[]()
proc QRadioButtonnextCheckState*(self: gen_qradiobutton_types.QRadioButton, ): void =
  fQRadioButton_virtualbase_nextCheckState(self.h)

type QRadioButtonnextCheckStateProc* = proc(): void
proc onnextCheckState*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonnextCheckStateProc) =
  # TODO check subclass
  var tmp = new QRadioButtonnextCheckStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_nextCheckState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_nextCheckState(self: ptr cQRadioButton, slot: int): void {.exportc: "miqt_exec_callback_QRadioButton_nextCheckState ".} =
  var nimfunc = cast[ptr QRadioButtonnextCheckStateProc](cast[pointer](slot))

  nimfunc[]()
proc QRadioButtonkeyPressEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QKeyEvent): void =
  fQRadioButton_virtualbase_keyPressEvent(self.h, e.h)

type QRadioButtonkeyPressEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_keyPressEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_keyPressEvent ".} =
  var nimfunc = cast[ptr QRadioButtonkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QRadioButtonkeyReleaseEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QKeyEvent): void =
  fQRadioButton_virtualbase_keyReleaseEvent(self.h, e.h)

type QRadioButtonkeyReleaseEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_keyReleaseEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QRadioButtonkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QRadioButtonmousePressEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QMouseEvent): void =
  fQRadioButton_virtualbase_mousePressEvent(self.h, e.h)

type QRadioButtonmousePressEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonmousePressEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_mousePressEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_mousePressEvent ".} =
  var nimfunc = cast[ptr QRadioButtonmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QRadioButtonmouseReleaseEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QMouseEvent): void =
  fQRadioButton_virtualbase_mouseReleaseEvent(self.h, e.h)

type QRadioButtonmouseReleaseEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_mouseReleaseEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QRadioButtonmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QRadioButtonfocusInEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QFocusEvent): void =
  fQRadioButton_virtualbase_focusInEvent(self.h, e.h)

type QRadioButtonfocusInEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonfocusInEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_focusInEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_focusInEvent ".} =
  var nimfunc = cast[ptr QRadioButtonfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QRadioButtonfocusOutEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qevent_types.QFocusEvent): void =
  fQRadioButton_virtualbase_focusOutEvent(self.h, e.h)

type QRadioButtonfocusOutEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_focusOutEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_focusOutEvent ".} =
  var nimfunc = cast[ptr QRadioButtonfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QRadioButtonchangeEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qcoreevent_types.QEvent): void =
  fQRadioButton_virtualbase_changeEvent(self.h, e.h)

type QRadioButtonchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonchangeEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_changeEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_changeEvent ".} =
  var nimfunc = cast[ptr QRadioButtonchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QRadioButtontimerEvent*(self: gen_qradiobutton_types.QRadioButton, e: gen_qcoreevent_types.QTimerEvent): void =
  fQRadioButton_virtualbase_timerEvent(self.h, e.h)

type QRadioButtontimerEventProc* = proc(e: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtontimerEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_timerEvent(self: ptr cQRadioButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_timerEvent ".} =
  var nimfunc = cast[ptr QRadioButtontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)


  nimfunc[](slotval1)
proc QRadioButtondevType*(self: gen_qradiobutton_types.QRadioButton, ): cint =
  fQRadioButton_virtualbase_devType(self.h)

type QRadioButtondevTypeProc* = proc(): cint
proc ondevType*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtondevTypeProc) =
  # TODO check subclass
  var tmp = new QRadioButtondevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_devType(self: ptr cQRadioButton, slot: int): cint {.exportc: "miqt_exec_callback_QRadioButton_devType ".} =
  var nimfunc = cast[ptr QRadioButtondevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QRadioButtonsetVisible*(self: gen_qradiobutton_types.QRadioButton, visible: bool): void =
  fQRadioButton_virtualbase_setVisible(self.h, visible)

type QRadioButtonsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonsetVisibleProc) =
  # TODO check subclass
  var tmp = new QRadioButtonsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_setVisible(self: ptr cQRadioButton, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QRadioButton_setVisible ".} =
  var nimfunc = cast[ptr QRadioButtonsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QRadioButtonheightForWidth*(self: gen_qradiobutton_types.QRadioButton, param1: cint): cint =
  fQRadioButton_virtualbase_heightForWidth(self.h, param1)

type QRadioButtonheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonheightForWidthProc) =
  # TODO check subclass
  var tmp = new QRadioButtonheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_heightForWidth(self: ptr cQRadioButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QRadioButton_heightForWidth ".} =
  var nimfunc = cast[ptr QRadioButtonheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRadioButtonhasHeightForWidth*(self: gen_qradiobutton_types.QRadioButton, ): bool =
  fQRadioButton_virtualbase_hasHeightForWidth(self.h)

type QRadioButtonhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QRadioButtonhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_hasHeightForWidth(self: ptr cQRadioButton, slot: int): bool {.exportc: "miqt_exec_callback_QRadioButton_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QRadioButtonhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QRadioButtonpaintEngine*(self: gen_qradiobutton_types.QRadioButton, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQRadioButton_virtualbase_paintEngine(self.h))

type QRadioButtonpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonpaintEngineProc) =
  # TODO check subclass
  var tmp = new QRadioButtonpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_paintEngine(self: ptr cQRadioButton, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioButton_paintEngine ".} =
  var nimfunc = cast[ptr QRadioButtonpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRadioButtonmouseDoubleClickEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QMouseEvent): void =
  fQRadioButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QRadioButtonmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_mouseDoubleClickEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QRadioButtonmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtonwheelEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QWheelEvent): void =
  fQRadioButton_virtualbase_wheelEvent(self.h, event.h)

type QRadioButtonwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonwheelEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_wheelEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_wheelEvent ".} =
  var nimfunc = cast[ptr QRadioButtonwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtonenterEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qcoreevent_types.QEvent): void =
  fQRadioButton_virtualbase_enterEvent(self.h, event.h)

type QRadioButtonenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonenterEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_enterEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_enterEvent ".} =
  var nimfunc = cast[ptr QRadioButtonenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtonleaveEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qcoreevent_types.QEvent): void =
  fQRadioButton_virtualbase_leaveEvent(self.h, event.h)

type QRadioButtonleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonleaveEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_leaveEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_leaveEvent ".} =
  var nimfunc = cast[ptr QRadioButtonleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtonmoveEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QMoveEvent): void =
  fQRadioButton_virtualbase_moveEvent(self.h, event.h)

type QRadioButtonmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonmoveEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_moveEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_moveEvent ".} =
  var nimfunc = cast[ptr QRadioButtonmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtonresizeEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QResizeEvent): void =
  fQRadioButton_virtualbase_resizeEvent(self.h, event.h)

type QRadioButtonresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonresizeEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_resizeEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_resizeEvent ".} =
  var nimfunc = cast[ptr QRadioButtonresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtoncloseEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QCloseEvent): void =
  fQRadioButton_virtualbase_closeEvent(self.h, event.h)

type QRadioButtoncloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtoncloseEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtoncloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_closeEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_closeEvent ".} =
  var nimfunc = cast[ptr QRadioButtoncloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtoncontextMenuEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QContextMenuEvent): void =
  fQRadioButton_virtualbase_contextMenuEvent(self.h, event.h)

type QRadioButtoncontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtoncontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtoncontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_contextMenuEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_contextMenuEvent ".} =
  var nimfunc = cast[ptr QRadioButtoncontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtontabletEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QTabletEvent): void =
  fQRadioButton_virtualbase_tabletEvent(self.h, event.h)

type QRadioButtontabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtontabletEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtontabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_tabletEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_tabletEvent ".} =
  var nimfunc = cast[ptr QRadioButtontabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtonactionEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QActionEvent): void =
  fQRadioButton_virtualbase_actionEvent(self.h, event.h)

type QRadioButtonactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonactionEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_actionEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_actionEvent ".} =
  var nimfunc = cast[ptr QRadioButtonactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtondragEnterEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QDragEnterEvent): void =
  fQRadioButton_virtualbase_dragEnterEvent(self.h, event.h)

type QRadioButtondragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtondragEnterEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtondragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_dragEnterEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_dragEnterEvent ".} =
  var nimfunc = cast[ptr QRadioButtondragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtondragMoveEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QDragMoveEvent): void =
  fQRadioButton_virtualbase_dragMoveEvent(self.h, event.h)

type QRadioButtondragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtondragMoveEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtondragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_dragMoveEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_dragMoveEvent ".} =
  var nimfunc = cast[ptr QRadioButtondragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtondragLeaveEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fQRadioButton_virtualbase_dragLeaveEvent(self.h, event.h)

type QRadioButtondragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtondragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtondragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_dragLeaveEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QRadioButtondragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtondropEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QDropEvent): void =
  fQRadioButton_virtualbase_dropEvent(self.h, event.h)

type QRadioButtondropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtondropEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtondropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_dropEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_dropEvent ".} =
  var nimfunc = cast[ptr QRadioButtondropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtonshowEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QShowEvent): void =
  fQRadioButton_virtualbase_showEvent(self.h, event.h)

type QRadioButtonshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonshowEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_showEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_showEvent ".} =
  var nimfunc = cast[ptr QRadioButtonshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtonhideEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qevent_types.QHideEvent): void =
  fQRadioButton_virtualbase_hideEvent(self.h, event.h)

type QRadioButtonhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonhideEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_hideEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_hideEvent ".} =
  var nimfunc = cast[ptr QRadioButtonhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtonnativeEvent*(self: gen_qradiobutton_types.QRadioButton, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQRadioButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QRadioButtonnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonnativeEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_nativeEvent(self: ptr cQRadioButton, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QRadioButton_nativeEvent ".} =
  var nimfunc = cast[ptr QRadioButtonnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QRadioButtonmetric*(self: gen_qradiobutton_types.QRadioButton, param1: cint): cint =
  fQRadioButton_virtualbase_metric(self.h, cint(param1))

type QRadioButtonmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonmetricProc) =
  # TODO check subclass
  var tmp = new QRadioButtonmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_metric(self: ptr cQRadioButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QRadioButton_metric ".} =
  var nimfunc = cast[ptr QRadioButtonmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRadioButtoninitPainter*(self: gen_qradiobutton_types.QRadioButton, painter: gen_qpainter_types.QPainter): void =
  fQRadioButton_virtualbase_initPainter(self.h, painter.h)

type QRadioButtoninitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtoninitPainterProc) =
  # TODO check subclass
  var tmp = new QRadioButtoninitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_initPainter(self: ptr cQRadioButton, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_initPainter ".} =
  var nimfunc = cast[ptr QRadioButtoninitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QRadioButtonredirected*(self: gen_qradiobutton_types.QRadioButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQRadioButton_virtualbase_redirected(self.h, offset.h))

type QRadioButtonredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonredirectedProc) =
  # TODO check subclass
  var tmp = new QRadioButtonredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_redirected(self: ptr cQRadioButton, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QRadioButton_redirected ".} =
  var nimfunc = cast[ptr QRadioButtonredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QRadioButtonsharedPainter*(self: gen_qradiobutton_types.QRadioButton, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQRadioButton_virtualbase_sharedPainter(self.h))

type QRadioButtonsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonsharedPainterProc) =
  # TODO check subclass
  var tmp = new QRadioButtonsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_sharedPainter(self: ptr cQRadioButton, slot: int): pointer {.exportc: "miqt_exec_callback_QRadioButton_sharedPainter ".} =
  var nimfunc = cast[ptr QRadioButtonsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRadioButtoninputMethodEvent*(self: gen_qradiobutton_types.QRadioButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fQRadioButton_virtualbase_inputMethodEvent(self.h, param1.h)

type QRadioButtoninputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtoninputMethodEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtoninputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_inputMethodEvent(self: ptr cQRadioButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_inputMethodEvent ".} =
  var nimfunc = cast[ptr QRadioButtoninputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QRadioButtoninputMethodQuery*(self: gen_qradiobutton_types.QRadioButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQRadioButton_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QRadioButtoninputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtoninputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QRadioButtoninputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_inputMethodQuery(self: ptr cQRadioButton, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QRadioButton_inputMethodQuery ".} =
  var nimfunc = cast[ptr QRadioButtoninputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QRadioButtonfocusNextPrevChild*(self: gen_qradiobutton_types.QRadioButton, next: bool): bool =
  fQRadioButton_virtualbase_focusNextPrevChild(self.h, next)

type QRadioButtonfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QRadioButtonfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_focusNextPrevChild(self: ptr cQRadioButton, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QRadioButton_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QRadioButtonfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRadioButtoneventFilter*(self: gen_qradiobutton_types.QRadioButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQRadioButton_virtualbase_eventFilter(self.h, watched.h, event.h)

type QRadioButtoneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtoneventFilterProc) =
  # TODO check subclass
  var tmp = new QRadioButtoneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_eventFilter(self: ptr cQRadioButton, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QRadioButton_eventFilter ".} =
  var nimfunc = cast[ptr QRadioButtoneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QRadioButtonchildEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qcoreevent_types.QChildEvent): void =
  fQRadioButton_virtualbase_childEvent(self.h, event.h)

type QRadioButtonchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonchildEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtonchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_childEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_childEvent ".} =
  var nimfunc = cast[ptr QRadioButtonchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtoncustomEvent*(self: gen_qradiobutton_types.QRadioButton, event: gen_qcoreevent_types.QEvent): void =
  fQRadioButton_virtualbase_customEvent(self.h, event.h)

type QRadioButtoncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtoncustomEventProc) =
  # TODO check subclass
  var tmp = new QRadioButtoncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_customEvent(self: ptr cQRadioButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_customEvent ".} =
  var nimfunc = cast[ptr QRadioButtoncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QRadioButtonconnectNotify*(self: gen_qradiobutton_types.QRadioButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQRadioButton_virtualbase_connectNotify(self.h, signal.h)

type QRadioButtonconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtonconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QRadioButtonconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_connectNotify(self: ptr cQRadioButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_connectNotify ".} =
  var nimfunc = cast[ptr QRadioButtonconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QRadioButtondisconnectNotify*(self: gen_qradiobutton_types.QRadioButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQRadioButton_virtualbase_disconnectNotify(self.h, signal.h)

type QRadioButtondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qradiobutton_types.QRadioButton, slot: QRadioButtondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QRadioButtondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRadioButton_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRadioButton_disconnectNotify(self: ptr cQRadioButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRadioButton_disconnectNotify ".} =
  var nimfunc = cast[ptr QRadioButtondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qradiobutton_types.QRadioButton) =
  fcQRadioButton_delete(self.h)
