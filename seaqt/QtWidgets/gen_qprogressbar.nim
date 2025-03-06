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
{.compile("gen_qprogressbar.cpp", cflags).}


type QProgressBarDirectionEnum* = distinct cint
template TopToBottom*(_: type QProgressBarDirectionEnum): untyped = 0
template BottomToTop*(_: type QProgressBarDirectionEnum): untyped = 1


import ./gen_qprogressbar_types
export gen_qprogressbar_types

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
  ./gen_qstyleoption_types,
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
  gen_qstyleoption_types,
  gen_qwidget

type cQProgressBar*{.exportc: "QProgressBar", incompleteStruct.} = object

proc fcQProgressBar_new(parent: pointer): ptr cQProgressBar {.importc: "QProgressBar_new".}
proc fcQProgressBar_new2(): ptr cQProgressBar {.importc: "QProgressBar_new2".}
proc fcQProgressBar_metaObject(self: pointer, ): pointer {.importc: "QProgressBar_metaObject".}
proc fcQProgressBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QProgressBar_metacast".}
proc fcQProgressBar_tr(s: cstring): struct_miqt_string {.importc: "QProgressBar_tr".}
proc fcQProgressBar_minimum(self: pointer, ): cint {.importc: "QProgressBar_minimum".}
proc fcQProgressBar_maximum(self: pointer, ): cint {.importc: "QProgressBar_maximum".}
proc fcQProgressBar_value(self: pointer, ): cint {.importc: "QProgressBar_value".}
proc fcQProgressBar_text(self: pointer, ): struct_miqt_string {.importc: "QProgressBar_text".}
proc fcQProgressBar_setTextVisible(self: pointer, visible: bool): void {.importc: "QProgressBar_setTextVisible".}
proc fcQProgressBar_isTextVisible(self: pointer, ): bool {.importc: "QProgressBar_isTextVisible".}
proc fcQProgressBar_alignment(self: pointer, ): cint {.importc: "QProgressBar_alignment".}
proc fcQProgressBar_setAlignment(self: pointer, alignment: cint): void {.importc: "QProgressBar_setAlignment".}
proc fcQProgressBar_sizeHint(self: pointer, ): pointer {.importc: "QProgressBar_sizeHint".}
proc fcQProgressBar_minimumSizeHint(self: pointer, ): pointer {.importc: "QProgressBar_minimumSizeHint".}
proc fcQProgressBar_orientation(self: pointer, ): cint {.importc: "QProgressBar_orientation".}
proc fcQProgressBar_setInvertedAppearance(self: pointer, invert: bool): void {.importc: "QProgressBar_setInvertedAppearance".}
proc fcQProgressBar_invertedAppearance(self: pointer, ): bool {.importc: "QProgressBar_invertedAppearance".}
proc fcQProgressBar_setTextDirection(self: pointer, textDirection: cint): void {.importc: "QProgressBar_setTextDirection".}
proc fcQProgressBar_textDirection(self: pointer, ): cint {.importc: "QProgressBar_textDirection".}
proc fcQProgressBar_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QProgressBar_setFormat".}
proc fcQProgressBar_resetFormat(self: pointer, ): void {.importc: "QProgressBar_resetFormat".}
proc fcQProgressBar_format(self: pointer, ): struct_miqt_string {.importc: "QProgressBar_format".}
proc fcQProgressBar_reset(self: pointer, ): void {.importc: "QProgressBar_reset".}
proc fcQProgressBar_setRange(self: pointer, minimum: cint, maximum: cint): void {.importc: "QProgressBar_setRange".}
proc fcQProgressBar_setMinimum(self: pointer, minimum: cint): void {.importc: "QProgressBar_setMinimum".}
proc fcQProgressBar_setMaximum(self: pointer, maximum: cint): void {.importc: "QProgressBar_setMaximum".}
proc fcQProgressBar_setValue(self: pointer, value: cint): void {.importc: "QProgressBar_setValue".}
proc fcQProgressBar_setOrientation(self: pointer, orientation: cint): void {.importc: "QProgressBar_setOrientation".}
proc fcQProgressBar_valueChanged(self: pointer, value: cint): void {.importc: "QProgressBar_valueChanged".}
proc fcQProgressBar_connect_valueChanged(self: pointer, slot: int) {.importc: "QProgressBar_connect_valueChanged".}
proc fcQProgressBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QProgressBar_tr2".}
proc fcQProgressBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProgressBar_tr3".}
proc fQProgressBar_virtualbase_text(self: pointer, ): struct_miqt_string{.importc: "QProgressBar_virtualbase_text".}
proc fcQProgressBar_override_virtual_text(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_text".}
proc fQProgressBar_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QProgressBar_virtualbase_sizeHint".}
proc fcQProgressBar_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_sizeHint".}
proc fQProgressBar_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QProgressBar_virtualbase_minimumSizeHint".}
proc fcQProgressBar_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_minimumSizeHint".}
proc fQProgressBar_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QProgressBar_virtualbase_event".}
proc fcQProgressBar_override_virtual_event(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_event".}
proc fQProgressBar_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QProgressBar_virtualbase_paintEvent".}
proc fcQProgressBar_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_paintEvent".}
proc fQProgressBar_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QProgressBar_virtualbase_initStyleOption".}
proc fcQProgressBar_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_initStyleOption".}
proc fQProgressBar_virtualbase_devType(self: pointer, ): cint{.importc: "QProgressBar_virtualbase_devType".}
proc fcQProgressBar_override_virtual_devType(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_devType".}
proc fQProgressBar_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QProgressBar_virtualbase_setVisible".}
proc fcQProgressBar_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_setVisible".}
proc fQProgressBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QProgressBar_virtualbase_heightForWidth".}
proc fcQProgressBar_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_heightForWidth".}
proc fQProgressBar_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QProgressBar_virtualbase_hasHeightForWidth".}
proc fcQProgressBar_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_hasHeightForWidth".}
proc fQProgressBar_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QProgressBar_virtualbase_paintEngine".}
proc fcQProgressBar_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_paintEngine".}
proc fQProgressBar_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_mousePressEvent".}
proc fcQProgressBar_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_mousePressEvent".}
proc fQProgressBar_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_mouseReleaseEvent".}
proc fcQProgressBar_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_mouseReleaseEvent".}
proc fQProgressBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_mouseDoubleClickEvent".}
proc fcQProgressBar_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_mouseDoubleClickEvent".}
proc fQProgressBar_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_mouseMoveEvent".}
proc fcQProgressBar_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_mouseMoveEvent".}
proc fQProgressBar_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_wheelEvent".}
proc fcQProgressBar_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_wheelEvent".}
proc fQProgressBar_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_keyPressEvent".}
proc fcQProgressBar_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_keyPressEvent".}
proc fQProgressBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_keyReleaseEvent".}
proc fcQProgressBar_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_keyReleaseEvent".}
proc fQProgressBar_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_focusInEvent".}
proc fcQProgressBar_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_focusInEvent".}
proc fQProgressBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_focusOutEvent".}
proc fcQProgressBar_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_focusOutEvent".}
proc fQProgressBar_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_enterEvent".}
proc fcQProgressBar_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_enterEvent".}
proc fQProgressBar_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_leaveEvent".}
proc fcQProgressBar_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_leaveEvent".}
proc fQProgressBar_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_moveEvent".}
proc fcQProgressBar_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_moveEvent".}
proc fQProgressBar_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_resizeEvent".}
proc fcQProgressBar_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_resizeEvent".}
proc fQProgressBar_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_closeEvent".}
proc fcQProgressBar_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_closeEvent".}
proc fQProgressBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_contextMenuEvent".}
proc fcQProgressBar_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_contextMenuEvent".}
proc fQProgressBar_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_tabletEvent".}
proc fcQProgressBar_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_tabletEvent".}
proc fQProgressBar_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_actionEvent".}
proc fcQProgressBar_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_actionEvent".}
proc fQProgressBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_dragEnterEvent".}
proc fcQProgressBar_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_dragEnterEvent".}
proc fQProgressBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_dragMoveEvent".}
proc fcQProgressBar_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_dragMoveEvent".}
proc fQProgressBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_dragLeaveEvent".}
proc fcQProgressBar_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_dragLeaveEvent".}
proc fQProgressBar_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_dropEvent".}
proc fcQProgressBar_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_dropEvent".}
proc fQProgressBar_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_showEvent".}
proc fcQProgressBar_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_showEvent".}
proc fQProgressBar_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_hideEvent".}
proc fcQProgressBar_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_hideEvent".}
proc fQProgressBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QProgressBar_virtualbase_nativeEvent".}
proc fcQProgressBar_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_nativeEvent".}
proc fQProgressBar_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QProgressBar_virtualbase_changeEvent".}
proc fcQProgressBar_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_changeEvent".}
proc fQProgressBar_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QProgressBar_virtualbase_metric".}
proc fcQProgressBar_override_virtual_metric(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_metric".}
proc fQProgressBar_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QProgressBar_virtualbase_initPainter".}
proc fcQProgressBar_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_initPainter".}
proc fQProgressBar_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QProgressBar_virtualbase_redirected".}
proc fcQProgressBar_override_virtual_redirected(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_redirected".}
proc fQProgressBar_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QProgressBar_virtualbase_sharedPainter".}
proc fcQProgressBar_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_sharedPainter".}
proc fQProgressBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QProgressBar_virtualbase_inputMethodEvent".}
proc fcQProgressBar_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_inputMethodEvent".}
proc fQProgressBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QProgressBar_virtualbase_inputMethodQuery".}
proc fcQProgressBar_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_inputMethodQuery".}
proc fQProgressBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QProgressBar_virtualbase_focusNextPrevChild".}
proc fcQProgressBar_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_focusNextPrevChild".}
proc fQProgressBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QProgressBar_virtualbase_eventFilter".}
proc fcQProgressBar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_eventFilter".}
proc fQProgressBar_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_timerEvent".}
proc fcQProgressBar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_timerEvent".}
proc fQProgressBar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_childEvent".}
proc fcQProgressBar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_childEvent".}
proc fQProgressBar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QProgressBar_virtualbase_customEvent".}
proc fcQProgressBar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_customEvent".}
proc fQProgressBar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QProgressBar_virtualbase_connectNotify".}
proc fcQProgressBar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_connectNotify".}
proc fQProgressBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QProgressBar_virtualbase_disconnectNotify".}
proc fcQProgressBar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QProgressBar_override_virtual_disconnectNotify".}
proc fcQProgressBar_delete(self: pointer) {.importc: "QProgressBar_delete".}


func init*(T: type gen_qprogressbar_types.QProgressBar, h: ptr cQProgressBar): gen_qprogressbar_types.QProgressBar =
  T(h: h)
proc create*(T: type gen_qprogressbar_types.QProgressBar, parent: gen_qwidget_types.QWidget): gen_qprogressbar_types.QProgressBar =
  gen_qprogressbar_types.QProgressBar.init(fcQProgressBar_new(parent.h))

proc create*(T: type gen_qprogressbar_types.QProgressBar, ): gen_qprogressbar_types.QProgressBar =
  gen_qprogressbar_types.QProgressBar.init(fcQProgressBar_new2())

proc metaObject*(self: gen_qprogressbar_types.QProgressBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressBar_metaObject(self.h))

proc metacast*(self: gen_qprogressbar_types.QProgressBar, param1: cstring): pointer =
  fcQProgressBar_metacast(self.h, param1)

proc tr*(_: type gen_qprogressbar_types.QProgressBar, s: cstring): string =
  let v_ms = fcQProgressBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc minimum*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  fcQProgressBar_minimum(self.h)

proc maximum*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  fcQProgressBar_maximum(self.h)

proc value*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  fcQProgressBar_value(self.h)

proc text*(self: gen_qprogressbar_types.QProgressBar, ): string =
  let v_ms = fcQProgressBar_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTextVisible*(self: gen_qprogressbar_types.QProgressBar, visible: bool): void =
  fcQProgressBar_setTextVisible(self.h, visible)

proc isTextVisible*(self: gen_qprogressbar_types.QProgressBar, ): bool =
  fcQProgressBar_isTextVisible(self.h)

proc alignment*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  cint(fcQProgressBar_alignment(self.h))

proc setAlignment*(self: gen_qprogressbar_types.QProgressBar, alignment: cint): void =
  fcQProgressBar_setAlignment(self.h, cint(alignment))

proc sizeHint*(self: gen_qprogressbar_types.QProgressBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressBar_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qprogressbar_types.QProgressBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressBar_minimumSizeHint(self.h))

proc orientation*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  cint(fcQProgressBar_orientation(self.h))

proc setInvertedAppearance*(self: gen_qprogressbar_types.QProgressBar, invert: bool): void =
  fcQProgressBar_setInvertedAppearance(self.h, invert)

proc invertedAppearance*(self: gen_qprogressbar_types.QProgressBar, ): bool =
  fcQProgressBar_invertedAppearance(self.h)

proc setTextDirection*(self: gen_qprogressbar_types.QProgressBar, textDirection: cint): void =
  fcQProgressBar_setTextDirection(self.h, cint(textDirection))

proc textDirection*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  cint(fcQProgressBar_textDirection(self.h))

proc setFormat*(self: gen_qprogressbar_types.QProgressBar, format: string): void =
  fcQProgressBar_setFormat(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))

proc resetFormat*(self: gen_qprogressbar_types.QProgressBar, ): void =
  fcQProgressBar_resetFormat(self.h)

proc format*(self: gen_qprogressbar_types.QProgressBar, ): string =
  let v_ms = fcQProgressBar_format(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc reset*(self: gen_qprogressbar_types.QProgressBar, ): void =
  fcQProgressBar_reset(self.h)

proc setRange*(self: gen_qprogressbar_types.QProgressBar, minimum: cint, maximum: cint): void =
  fcQProgressBar_setRange(self.h, minimum, maximum)

proc setMinimum*(self: gen_qprogressbar_types.QProgressBar, minimum: cint): void =
  fcQProgressBar_setMinimum(self.h, minimum)

proc setMaximum*(self: gen_qprogressbar_types.QProgressBar, maximum: cint): void =
  fcQProgressBar_setMaximum(self.h, maximum)

proc setValue*(self: gen_qprogressbar_types.QProgressBar, value: cint): void =
  fcQProgressBar_setValue(self.h, value)

proc setOrientation*(self: gen_qprogressbar_types.QProgressBar, orientation: cint): void =
  fcQProgressBar_setOrientation(self.h, cint(orientation))

proc valueChanged*(self: gen_qprogressbar_types.QProgressBar, value: cint): void =
  fcQProgressBar_valueChanged(self.h, value)

type QProgressBarvalueChangedSlot* = proc(value: cint)
proc miqt_exec_callback_QProgressBar_valueChanged(slot: int, value: cint) {.exportc.} =
  let nimfunc = cast[ptr QProgressBarvalueChangedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc onvalueChanged*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarvalueChangedSlot) =
  var tmp = new QProgressBarvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_connect_valueChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qprogressbar_types.QProgressBar, s: cstring, c: cstring): string =
  let v_ms = fcQProgressBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qprogressbar_types.QProgressBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQProgressBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QProgressBartext*(self: gen_qprogressbar_types.QProgressBar, ): string =
  let v_ms = fQProgressBar_virtualbase_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QProgressBartextProc* = proc(): string
proc ontext*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBartextProc) =
  # TODO check subclass
  var tmp = new QProgressBartextProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_text(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_text(self: ptr cQProgressBar, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QProgressBar_text ".} =
  var nimfunc = cast[ptr QProgressBartextProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QProgressBarsizeHint*(self: gen_qprogressbar_types.QProgressBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQProgressBar_virtualbase_sizeHint(self.h))

type QProgressBarsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarsizeHintProc) =
  # TODO check subclass
  var tmp = new QProgressBarsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_sizeHint(self: ptr cQProgressBar, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressBar_sizeHint ".} =
  var nimfunc = cast[ptr QProgressBarsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QProgressBarminimumSizeHint*(self: gen_qprogressbar_types.QProgressBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQProgressBar_virtualbase_minimumSizeHint(self.h))

type QProgressBarminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QProgressBarminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_minimumSizeHint(self: ptr cQProgressBar, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressBar_minimumSizeHint ".} =
  var nimfunc = cast[ptr QProgressBarminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QProgressBarevent*(self: gen_qprogressbar_types.QProgressBar, e: gen_qcoreevent_types.QEvent): bool =
  fQProgressBar_virtualbase_event(self.h, e.h)

type QProgressBareventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBareventProc) =
  # TODO check subclass
  var tmp = new QProgressBareventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_event(self: ptr cQProgressBar, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QProgressBar_event ".} =
  var nimfunc = cast[ptr QProgressBareventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProgressBarpaintEvent*(self: gen_qprogressbar_types.QProgressBar, param1: gen_qevent_types.QPaintEvent): void =
  fQProgressBar_virtualbase_paintEvent(self.h, param1.h)

type QProgressBarpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarpaintEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_paintEvent(self: ptr cQProgressBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_paintEvent ".} =
  var nimfunc = cast[ptr QProgressBarpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QProgressBarinitStyleOption*(self: gen_qprogressbar_types.QProgressBar, option: gen_qstyleoption_types.QStyleOptionProgressBar): void =
  fQProgressBar_virtualbase_initStyleOption(self.h, option.h)

type QProgressBarinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionProgressBar): void
proc oninitStyleOption*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QProgressBarinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_initStyleOption(self: ptr cQProgressBar, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_initStyleOption ".} =
  var nimfunc = cast[ptr QProgressBarinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionProgressBar(h: option)


  nimfunc[](slotval1)
proc QProgressBardevType*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  fQProgressBar_virtualbase_devType(self.h)

type QProgressBardevTypeProc* = proc(): cint
proc ondevType*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBardevTypeProc) =
  # TODO check subclass
  var tmp = new QProgressBardevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_devType(self: ptr cQProgressBar, slot: int): cint {.exportc: "miqt_exec_callback_QProgressBar_devType ".} =
  var nimfunc = cast[ptr QProgressBardevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProgressBarsetVisible*(self: gen_qprogressbar_types.QProgressBar, visible: bool): void =
  fQProgressBar_virtualbase_setVisible(self.h, visible)

type QProgressBarsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarsetVisibleProc) =
  # TODO check subclass
  var tmp = new QProgressBarsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_setVisible(self: ptr cQProgressBar, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QProgressBar_setVisible ".} =
  var nimfunc = cast[ptr QProgressBarsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QProgressBarheightForWidth*(self: gen_qprogressbar_types.QProgressBar, param1: cint): cint =
  fQProgressBar_virtualbase_heightForWidth(self.h, param1)

type QProgressBarheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarheightForWidthProc) =
  # TODO check subclass
  var tmp = new QProgressBarheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_heightForWidth(self: ptr cQProgressBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QProgressBar_heightForWidth ".} =
  var nimfunc = cast[ptr QProgressBarheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProgressBarhasHeightForWidth*(self: gen_qprogressbar_types.QProgressBar, ): bool =
  fQProgressBar_virtualbase_hasHeightForWidth(self.h)

type QProgressBarhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QProgressBarhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_hasHeightForWidth(self: ptr cQProgressBar, slot: int): bool {.exportc: "miqt_exec_callback_QProgressBar_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QProgressBarhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProgressBarpaintEngine*(self: gen_qprogressbar_types.QProgressBar, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQProgressBar_virtualbase_paintEngine(self.h))

type QProgressBarpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarpaintEngineProc) =
  # TODO check subclass
  var tmp = new QProgressBarpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_paintEngine(self: ptr cQProgressBar, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressBar_paintEngine ".} =
  var nimfunc = cast[ptr QProgressBarpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QProgressBarmousePressEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMouseEvent): void =
  fQProgressBar_virtualbase_mousePressEvent(self.h, event.h)

type QProgressBarmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarmousePressEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_mousePressEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_mousePressEvent ".} =
  var nimfunc = cast[ptr QProgressBarmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarmouseReleaseEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMouseEvent): void =
  fQProgressBar_virtualbase_mouseReleaseEvent(self.h, event.h)

type QProgressBarmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_mouseReleaseEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QProgressBarmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarmouseDoubleClickEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMouseEvent): void =
  fQProgressBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QProgressBarmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_mouseDoubleClickEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QProgressBarmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarmouseMoveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMouseEvent): void =
  fQProgressBar_virtualbase_mouseMoveEvent(self.h, event.h)

type QProgressBarmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_mouseMoveEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QProgressBarmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarwheelEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QWheelEvent): void =
  fQProgressBar_virtualbase_wheelEvent(self.h, event.h)

type QProgressBarwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarwheelEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_wheelEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_wheelEvent ".} =
  var nimfunc = cast[ptr QProgressBarwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarkeyPressEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QKeyEvent): void =
  fQProgressBar_virtualbase_keyPressEvent(self.h, event.h)

type QProgressBarkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_keyPressEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_keyPressEvent ".} =
  var nimfunc = cast[ptr QProgressBarkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarkeyReleaseEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QKeyEvent): void =
  fQProgressBar_virtualbase_keyReleaseEvent(self.h, event.h)

type QProgressBarkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_keyReleaseEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QProgressBarkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarfocusInEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QFocusEvent): void =
  fQProgressBar_virtualbase_focusInEvent(self.h, event.h)

type QProgressBarfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarfocusInEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_focusInEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_focusInEvent ".} =
  var nimfunc = cast[ptr QProgressBarfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarfocusOutEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QFocusEvent): void =
  fQProgressBar_virtualbase_focusOutEvent(self.h, event.h)

type QProgressBarfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_focusOutEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_focusOutEvent ".} =
  var nimfunc = cast[ptr QProgressBarfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarenterEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QEnterEvent): void =
  fQProgressBar_virtualbase_enterEvent(self.h, event.h)

type QProgressBarenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarenterEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_enterEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_enterEvent ".} =
  var nimfunc = cast[ptr QProgressBarenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarleaveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QEvent): void =
  fQProgressBar_virtualbase_leaveEvent(self.h, event.h)

type QProgressBarleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarleaveEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_leaveEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_leaveEvent ".} =
  var nimfunc = cast[ptr QProgressBarleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarmoveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMoveEvent): void =
  fQProgressBar_virtualbase_moveEvent(self.h, event.h)

type QProgressBarmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarmoveEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_moveEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_moveEvent ".} =
  var nimfunc = cast[ptr QProgressBarmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarresizeEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QResizeEvent): void =
  fQProgressBar_virtualbase_resizeEvent(self.h, event.h)

type QProgressBarresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarresizeEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_resizeEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_resizeEvent ".} =
  var nimfunc = cast[ptr QProgressBarresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarcloseEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QCloseEvent): void =
  fQProgressBar_virtualbase_closeEvent(self.h, event.h)

type QProgressBarcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarcloseEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_closeEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_closeEvent ".} =
  var nimfunc = cast[ptr QProgressBarcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarcontextMenuEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QContextMenuEvent): void =
  fQProgressBar_virtualbase_contextMenuEvent(self.h, event.h)

type QProgressBarcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_contextMenuEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_contextMenuEvent ".} =
  var nimfunc = cast[ptr QProgressBarcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBartabletEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QTabletEvent): void =
  fQProgressBar_virtualbase_tabletEvent(self.h, event.h)

type QProgressBartabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBartabletEventProc) =
  # TODO check subclass
  var tmp = new QProgressBartabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_tabletEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_tabletEvent ".} =
  var nimfunc = cast[ptr QProgressBartabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBaractionEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QActionEvent): void =
  fQProgressBar_virtualbase_actionEvent(self.h, event.h)

type QProgressBaractionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBaractionEventProc) =
  # TODO check subclass
  var tmp = new QProgressBaractionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_actionEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_actionEvent ".} =
  var nimfunc = cast[ptr QProgressBaractionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBardragEnterEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QDragEnterEvent): void =
  fQProgressBar_virtualbase_dragEnterEvent(self.h, event.h)

type QProgressBardragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBardragEnterEventProc) =
  # TODO check subclass
  var tmp = new QProgressBardragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_dragEnterEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_dragEnterEvent ".} =
  var nimfunc = cast[ptr QProgressBardragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBardragMoveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QDragMoveEvent): void =
  fQProgressBar_virtualbase_dragMoveEvent(self.h, event.h)

type QProgressBardragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBardragMoveEventProc) =
  # TODO check subclass
  var tmp = new QProgressBardragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_dragMoveEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_dragMoveEvent ".} =
  var nimfunc = cast[ptr QProgressBardragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBardragLeaveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fQProgressBar_virtualbase_dragLeaveEvent(self.h, event.h)

type QProgressBardragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBardragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QProgressBardragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_dragLeaveEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QProgressBardragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBardropEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QDropEvent): void =
  fQProgressBar_virtualbase_dropEvent(self.h, event.h)

type QProgressBardropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBardropEventProc) =
  # TODO check subclass
  var tmp = new QProgressBardropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_dropEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_dropEvent ".} =
  var nimfunc = cast[ptr QProgressBardropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarshowEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QShowEvent): void =
  fQProgressBar_virtualbase_showEvent(self.h, event.h)

type QProgressBarshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarshowEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_showEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_showEvent ".} =
  var nimfunc = cast[ptr QProgressBarshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarhideEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QHideEvent): void =
  fQProgressBar_virtualbase_hideEvent(self.h, event.h)

type QProgressBarhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarhideEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_hideEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_hideEvent ".} =
  var nimfunc = cast[ptr QProgressBarhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarnativeEvent*(self: gen_qprogressbar_types.QProgressBar, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQProgressBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QProgressBarnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarnativeEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_nativeEvent(self: ptr cQProgressBar, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QProgressBar_nativeEvent ".} =
  var nimfunc = cast[ptr QProgressBarnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QProgressBarchangeEvent*(self: gen_qprogressbar_types.QProgressBar, param1: gen_qcoreevent_types.QEvent): void =
  fQProgressBar_virtualbase_changeEvent(self.h, param1.h)

type QProgressBarchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarchangeEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_changeEvent(self: ptr cQProgressBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_changeEvent ".} =
  var nimfunc = cast[ptr QProgressBarchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QProgressBarmetric*(self: gen_qprogressbar_types.QProgressBar, param1: cint): cint =
  fQProgressBar_virtualbase_metric(self.h, cint(param1))

type QProgressBarmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarmetricProc) =
  # TODO check subclass
  var tmp = new QProgressBarmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_metric(self: ptr cQProgressBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QProgressBar_metric ".} =
  var nimfunc = cast[ptr QProgressBarmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProgressBarinitPainter*(self: gen_qprogressbar_types.QProgressBar, painter: gen_qpainter_types.QPainter): void =
  fQProgressBar_virtualbase_initPainter(self.h, painter.h)

type QProgressBarinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarinitPainterProc) =
  # TODO check subclass
  var tmp = new QProgressBarinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_initPainter(self: ptr cQProgressBar, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_initPainter ".} =
  var nimfunc = cast[ptr QProgressBarinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QProgressBarredirected*(self: gen_qprogressbar_types.QProgressBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQProgressBar_virtualbase_redirected(self.h, offset.h))

type QProgressBarredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarredirectedProc) =
  # TODO check subclass
  var tmp = new QProgressBarredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_redirected(self: ptr cQProgressBar, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QProgressBar_redirected ".} =
  var nimfunc = cast[ptr QProgressBarredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QProgressBarsharedPainter*(self: gen_qprogressbar_types.QProgressBar, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQProgressBar_virtualbase_sharedPainter(self.h))

type QProgressBarsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarsharedPainterProc) =
  # TODO check subclass
  var tmp = new QProgressBarsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_sharedPainter(self: ptr cQProgressBar, slot: int): pointer {.exportc: "miqt_exec_callback_QProgressBar_sharedPainter ".} =
  var nimfunc = cast[ptr QProgressBarsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QProgressBarinputMethodEvent*(self: gen_qprogressbar_types.QProgressBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fQProgressBar_virtualbase_inputMethodEvent(self.h, param1.h)

type QProgressBarinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_inputMethodEvent(self: ptr cQProgressBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_inputMethodEvent ".} =
  var nimfunc = cast[ptr QProgressBarinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QProgressBarinputMethodQuery*(self: gen_qprogressbar_types.QProgressBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQProgressBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QProgressBarinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QProgressBarinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_inputMethodQuery(self: ptr cQProgressBar, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QProgressBar_inputMethodQuery ".} =
  var nimfunc = cast[ptr QProgressBarinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QProgressBarfocusNextPrevChild*(self: gen_qprogressbar_types.QProgressBar, next: bool): bool =
  fQProgressBar_virtualbase_focusNextPrevChild(self.h, next)

type QProgressBarfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QProgressBarfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_focusNextPrevChild(self: ptr cQProgressBar, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QProgressBar_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QProgressBarfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProgressBareventFilter*(self: gen_qprogressbar_types.QProgressBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQProgressBar_virtualbase_eventFilter(self.h, watched.h, event.h)

type QProgressBareventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBareventFilterProc) =
  # TODO check subclass
  var tmp = new QProgressBareventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_eventFilter(self: ptr cQProgressBar, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QProgressBar_eventFilter ".} =
  var nimfunc = cast[ptr QProgressBareventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QProgressBartimerEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QTimerEvent): void =
  fQProgressBar_virtualbase_timerEvent(self.h, event.h)

type QProgressBartimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBartimerEventProc) =
  # TODO check subclass
  var tmp = new QProgressBartimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_timerEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_timerEvent ".} =
  var nimfunc = cast[ptr QProgressBartimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarchildEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QChildEvent): void =
  fQProgressBar_virtualbase_childEvent(self.h, event.h)

type QProgressBarchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarchildEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_childEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_childEvent ".} =
  var nimfunc = cast[ptr QProgressBarchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarcustomEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QEvent): void =
  fQProgressBar_virtualbase_customEvent(self.h, event.h)

type QProgressBarcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarcustomEventProc) =
  # TODO check subclass
  var tmp = new QProgressBarcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_customEvent(self: ptr cQProgressBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_customEvent ".} =
  var nimfunc = cast[ptr QProgressBarcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QProgressBarconnectNotify*(self: gen_qprogressbar_types.QProgressBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQProgressBar_virtualbase_connectNotify(self.h, signal.h)

type QProgressBarconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QProgressBarconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_connectNotify(self: ptr cQProgressBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_connectNotify ".} =
  var nimfunc = cast[ptr QProgressBarconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QProgressBardisconnectNotify*(self: gen_qprogressbar_types.QProgressBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQProgressBar_virtualbase_disconnectNotify(self.h, signal.h)

type QProgressBardisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBardisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QProgressBardisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProgressBar_disconnectNotify(self: ptr cQProgressBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProgressBar_disconnectNotify ".} =
  var nimfunc = cast[ptr QProgressBardisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qprogressbar_types.QProgressBar) =
  fcQProgressBar_delete(self.h)
