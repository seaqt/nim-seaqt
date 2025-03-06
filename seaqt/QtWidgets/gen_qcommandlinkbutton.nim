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
{.compile("gen_qcommandlinkbutton.cpp", cflags).}


import ./gen_qcommandlinkbutton_types
export gen_qcommandlinkbutton_types

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
  ./gen_qpushbutton,
  ./gen_qstyleoption_types,
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
  gen_qpushbutton,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQCommandLinkButton*{.exportc: "QCommandLinkButton", incompleteStruct.} = object

proc fcQCommandLinkButton_new(parent: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new".}
proc fcQCommandLinkButton_new2(): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new2".}
proc fcQCommandLinkButton_new3(text: struct_miqt_string): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new3".}
proc fcQCommandLinkButton_new4(text: struct_miqt_string, description: struct_miqt_string): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new4".}
proc fcQCommandLinkButton_new5(text: struct_miqt_string, parent: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new5".}
proc fcQCommandLinkButton_new6(text: struct_miqt_string, description: struct_miqt_string, parent: pointer): ptr cQCommandLinkButton {.importc: "QCommandLinkButton_new6".}
proc fcQCommandLinkButton_metaObject(self: pointer, ): pointer {.importc: "QCommandLinkButton_metaObject".}
proc fcQCommandLinkButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QCommandLinkButton_metacast".}
proc fcQCommandLinkButton_tr(s: cstring): struct_miqt_string {.importc: "QCommandLinkButton_tr".}
proc fcQCommandLinkButton_description(self: pointer, ): struct_miqt_string {.importc: "QCommandLinkButton_description".}
proc fcQCommandLinkButton_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QCommandLinkButton_setDescription".}
proc fcQCommandLinkButton_sizeHint(self: pointer, ): pointer {.importc: "QCommandLinkButton_sizeHint".}
proc fcQCommandLinkButton_heightForWidth(self: pointer, param1: cint): cint {.importc: "QCommandLinkButton_heightForWidth".}
proc fcQCommandLinkButton_minimumSizeHint(self: pointer, ): pointer {.importc: "QCommandLinkButton_minimumSizeHint".}
proc fcQCommandLinkButton_initStyleOption(self: pointer, option: pointer): void {.importc: "QCommandLinkButton_initStyleOption".}
proc fcQCommandLinkButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCommandLinkButton_tr2".}
proc fcQCommandLinkButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCommandLinkButton_tr3".}
proc fQCommandLinkButton_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QCommandLinkButton_virtualbase_sizeHint".}
proc fcQCommandLinkButton_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_sizeHint".}
proc fQCommandLinkButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QCommandLinkButton_virtualbase_heightForWidth".}
proc fcQCommandLinkButton_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_heightForWidth".}
proc fQCommandLinkButton_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QCommandLinkButton_virtualbase_minimumSizeHint".}
proc fcQCommandLinkButton_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_minimumSizeHint".}
proc fQCommandLinkButton_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QCommandLinkButton_virtualbase_initStyleOption".}
proc fcQCommandLinkButton_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_initStyleOption".}
proc fQCommandLinkButton_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QCommandLinkButton_virtualbase_event".}
proc fcQCommandLinkButton_override_virtual_event(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_event".}
proc fQCommandLinkButton_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QCommandLinkButton_virtualbase_paintEvent".}
proc fcQCommandLinkButton_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_paintEvent".}
proc fQCommandLinkButton_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QCommandLinkButton_virtualbase_keyPressEvent".}
proc fcQCommandLinkButton_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_keyPressEvent".}
proc fQCommandLinkButton_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QCommandLinkButton_virtualbase_focusInEvent".}
proc fcQCommandLinkButton_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_focusInEvent".}
proc fQCommandLinkButton_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QCommandLinkButton_virtualbase_focusOutEvent".}
proc fcQCommandLinkButton_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_focusOutEvent".}
proc fQCommandLinkButton_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QCommandLinkButton_virtualbase_mouseMoveEvent".}
proc fcQCommandLinkButton_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_mouseMoveEvent".}
proc fQCommandLinkButton_virtualbase_hitButton(self: pointer, pos: pointer): bool{.importc: "QCommandLinkButton_virtualbase_hitButton".}
proc fcQCommandLinkButton_override_virtual_hitButton(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_hitButton".}
proc fQCommandLinkButton_virtualbase_checkStateSet(self: pointer, ): void{.importc: "QCommandLinkButton_virtualbase_checkStateSet".}
proc fcQCommandLinkButton_override_virtual_checkStateSet(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_checkStateSet".}
proc fQCommandLinkButton_virtualbase_nextCheckState(self: pointer, ): void{.importc: "QCommandLinkButton_virtualbase_nextCheckState".}
proc fcQCommandLinkButton_override_virtual_nextCheckState(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_nextCheckState".}
proc fQCommandLinkButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QCommandLinkButton_virtualbase_keyReleaseEvent".}
proc fcQCommandLinkButton_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_keyReleaseEvent".}
proc fQCommandLinkButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QCommandLinkButton_virtualbase_mousePressEvent".}
proc fcQCommandLinkButton_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_mousePressEvent".}
proc fQCommandLinkButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QCommandLinkButton_virtualbase_mouseReleaseEvent".}
proc fcQCommandLinkButton_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_mouseReleaseEvent".}
proc fQCommandLinkButton_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QCommandLinkButton_virtualbase_changeEvent".}
proc fcQCommandLinkButton_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_changeEvent".}
proc fQCommandLinkButton_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QCommandLinkButton_virtualbase_timerEvent".}
proc fcQCommandLinkButton_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_timerEvent".}
proc fQCommandLinkButton_virtualbase_devType(self: pointer, ): cint{.importc: "QCommandLinkButton_virtualbase_devType".}
proc fcQCommandLinkButton_override_virtual_devType(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_devType".}
proc fQCommandLinkButton_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QCommandLinkButton_virtualbase_setVisible".}
proc fcQCommandLinkButton_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_setVisible".}
proc fQCommandLinkButton_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QCommandLinkButton_virtualbase_hasHeightForWidth".}
proc fcQCommandLinkButton_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_hasHeightForWidth".}
proc fQCommandLinkButton_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QCommandLinkButton_virtualbase_paintEngine".}
proc fcQCommandLinkButton_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_paintEngine".}
proc fQCommandLinkButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_mouseDoubleClickEvent".}
proc fcQCommandLinkButton_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_mouseDoubleClickEvent".}
proc fQCommandLinkButton_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_wheelEvent".}
proc fcQCommandLinkButton_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_wheelEvent".}
proc fQCommandLinkButton_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_enterEvent".}
proc fcQCommandLinkButton_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_enterEvent".}
proc fQCommandLinkButton_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_leaveEvent".}
proc fcQCommandLinkButton_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_leaveEvent".}
proc fQCommandLinkButton_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_moveEvent".}
proc fcQCommandLinkButton_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_moveEvent".}
proc fQCommandLinkButton_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_resizeEvent".}
proc fcQCommandLinkButton_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_resizeEvent".}
proc fQCommandLinkButton_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_closeEvent".}
proc fcQCommandLinkButton_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_closeEvent".}
proc fQCommandLinkButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_contextMenuEvent".}
proc fcQCommandLinkButton_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_contextMenuEvent".}
proc fQCommandLinkButton_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_tabletEvent".}
proc fcQCommandLinkButton_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_tabletEvent".}
proc fQCommandLinkButton_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_actionEvent".}
proc fcQCommandLinkButton_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_actionEvent".}
proc fQCommandLinkButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_dragEnterEvent".}
proc fcQCommandLinkButton_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_dragEnterEvent".}
proc fQCommandLinkButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_dragMoveEvent".}
proc fcQCommandLinkButton_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_dragMoveEvent".}
proc fQCommandLinkButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_dragLeaveEvent".}
proc fcQCommandLinkButton_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_dragLeaveEvent".}
proc fQCommandLinkButton_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_dropEvent".}
proc fcQCommandLinkButton_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_dropEvent".}
proc fQCommandLinkButton_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_showEvent".}
proc fcQCommandLinkButton_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_showEvent".}
proc fQCommandLinkButton_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_hideEvent".}
proc fcQCommandLinkButton_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_hideEvent".}
proc fQCommandLinkButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QCommandLinkButton_virtualbase_nativeEvent".}
proc fcQCommandLinkButton_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_nativeEvent".}
proc fQCommandLinkButton_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QCommandLinkButton_virtualbase_metric".}
proc fcQCommandLinkButton_override_virtual_metric(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_metric".}
proc fQCommandLinkButton_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QCommandLinkButton_virtualbase_initPainter".}
proc fcQCommandLinkButton_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_initPainter".}
proc fQCommandLinkButton_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QCommandLinkButton_virtualbase_redirected".}
proc fcQCommandLinkButton_override_virtual_redirected(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_redirected".}
proc fQCommandLinkButton_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QCommandLinkButton_virtualbase_sharedPainter".}
proc fcQCommandLinkButton_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_sharedPainter".}
proc fQCommandLinkButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QCommandLinkButton_virtualbase_inputMethodEvent".}
proc fcQCommandLinkButton_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_inputMethodEvent".}
proc fQCommandLinkButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QCommandLinkButton_virtualbase_inputMethodQuery".}
proc fcQCommandLinkButton_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_inputMethodQuery".}
proc fQCommandLinkButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QCommandLinkButton_virtualbase_focusNextPrevChild".}
proc fcQCommandLinkButton_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_focusNextPrevChild".}
proc fQCommandLinkButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCommandLinkButton_virtualbase_eventFilter".}
proc fcQCommandLinkButton_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_eventFilter".}
proc fQCommandLinkButton_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_childEvent".}
proc fcQCommandLinkButton_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_childEvent".}
proc fQCommandLinkButton_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCommandLinkButton_virtualbase_customEvent".}
proc fcQCommandLinkButton_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_customEvent".}
proc fQCommandLinkButton_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCommandLinkButton_virtualbase_connectNotify".}
proc fcQCommandLinkButton_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_connectNotify".}
proc fQCommandLinkButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCommandLinkButton_virtualbase_disconnectNotify".}
proc fcQCommandLinkButton_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCommandLinkButton_override_virtual_disconnectNotify".}
proc fcQCommandLinkButton_delete(self: pointer) {.importc: "QCommandLinkButton_delete".}


func init*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton, h: ptr cQCommandLinkButton): gen_qcommandlinkbutton_types.QCommandLinkButton =
  T(h: h)
proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton, parent: gen_qwidget_types.QWidget): gen_qcommandlinkbutton_types.QCommandLinkButton =
  gen_qcommandlinkbutton_types.QCommandLinkButton.init(fcQCommandLinkButton_new(parent.h))

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qcommandlinkbutton_types.QCommandLinkButton =
  gen_qcommandlinkbutton_types.QCommandLinkButton.init(fcQCommandLinkButton_new2())

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton, text: string): gen_qcommandlinkbutton_types.QCommandLinkButton =
  gen_qcommandlinkbutton_types.QCommandLinkButton.init(fcQCommandLinkButton_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton, text: string, description: string): gen_qcommandlinkbutton_types.QCommandLinkButton =
  gen_qcommandlinkbutton_types.QCommandLinkButton.init(fcQCommandLinkButton_new4(struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: description, len: csize_t(len(description)))))

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton, text: string, parent: gen_qwidget_types.QWidget): gen_qcommandlinkbutton_types.QCommandLinkButton =
  gen_qcommandlinkbutton_types.QCommandLinkButton.init(fcQCommandLinkButton_new5(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc create*(T: type gen_qcommandlinkbutton_types.QCommandLinkButton, text: string, description: string, parent: gen_qwidget_types.QWidget): gen_qcommandlinkbutton_types.QCommandLinkButton =
  gen_qcommandlinkbutton_types.QCommandLinkButton.init(fcQCommandLinkButton_new6(struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: description, len: csize_t(len(description))), parent.h))

proc metaObject*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCommandLinkButton_metaObject(self.h))

proc metacast*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cstring): pointer =
  fcQCommandLinkButton_metacast(self.h, param1)

proc tr*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton, s: cstring): string =
  let v_ms = fcQCommandLinkButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc description*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): string =
  let v_ms = fcQCommandLinkButton_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDescription*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, description: string): void =
  fcQCommandLinkButton_setDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc sizeHint*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCommandLinkButton_sizeHint(self.h))

proc heightForWidth*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint): cint =
  fcQCommandLinkButton_heightForWidth(self.h, param1)

proc minimumSizeHint*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCommandLinkButton_minimumSizeHint(self.h))

proc initStyleOption*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, option: gen_qstyleoption_types.QStyleOptionButton): void =
  fcQCommandLinkButton_initStyleOption(self.h, option.h)

proc tr*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton, s: cstring, c: cstring): string =
  let v_ms = fcQCommandLinkButton_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcommandlinkbutton_types.QCommandLinkButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCommandLinkButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QCommandLinkButtonsizeHint*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQCommandLinkButton_virtualbase_sizeHint(self.h))

type QCommandLinkButtonsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonsizeHintProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_sizeHint(self: ptr cQCommandLinkButton, slot: int): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_sizeHint ".} =
  var nimfunc = cast[ptr QCommandLinkButtonsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCommandLinkButtonheightForWidth*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint): cint =
  fQCommandLinkButton_virtualbase_heightForWidth(self.h, param1)

type QCommandLinkButtonheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonheightForWidthProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_heightForWidth(self: ptr cQCommandLinkButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCommandLinkButton_heightForWidth ".} =
  var nimfunc = cast[ptr QCommandLinkButtonheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCommandLinkButtonminimumSizeHint*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQCommandLinkButton_virtualbase_minimumSizeHint(self.h))

type QCommandLinkButtonminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_minimumSizeHint(self: ptr cQCommandLinkButton, slot: int): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_minimumSizeHint ".} =
  var nimfunc = cast[ptr QCommandLinkButtonminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCommandLinkButtoninitStyleOption*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, option: gen_qstyleoption_types.QStyleOptionButton): void =
  fQCommandLinkButton_virtualbase_initStyleOption(self.h, option.h)

type QCommandLinkButtoninitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionButton): void
proc oninitStyleOption*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtoninitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtoninitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_initStyleOption(self: ptr cQCommandLinkButton, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_initStyleOption ".} =
  var nimfunc = cast[ptr QCommandLinkButtoninitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionButton(h: option)


  nimfunc[](slotval1)
proc QCommandLinkButtonevent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qcoreevent_types.QEvent): bool =
  fQCommandLinkButton_virtualbase_event(self.h, e.h)

type QCommandLinkButtoneventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtoneventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtoneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_event(self: ptr cQCommandLinkButton, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QCommandLinkButton_event ".} =
  var nimfunc = cast[ptr QCommandLinkButtoneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCommandLinkButtonpaintEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QPaintEvent): void =
  fQCommandLinkButton_virtualbase_paintEvent(self.h, param1.h)

type QCommandLinkButtonpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonpaintEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_paintEvent(self: ptr cQCommandLinkButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_paintEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QCommandLinkButtonkeyPressEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QKeyEvent): void =
  fQCommandLinkButton_virtualbase_keyPressEvent(self.h, param1.h)

type QCommandLinkButtonkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_keyPressEvent(self: ptr cQCommandLinkButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_keyPressEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QCommandLinkButtonfocusInEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void =
  fQCommandLinkButton_virtualbase_focusInEvent(self.h, param1.h)

type QCommandLinkButtonfocusInEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonfocusInEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_focusInEvent(self: ptr cQCommandLinkButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_focusInEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QCommandLinkButtonfocusOutEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QFocusEvent): void =
  fQCommandLinkButton_virtualbase_focusOutEvent(self.h, param1.h)

type QCommandLinkButtonfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_focusOutEvent(self: ptr cQCommandLinkButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_focusOutEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QCommandLinkButtonmouseMoveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QMouseEvent): void =
  fQCommandLinkButton_virtualbase_mouseMoveEvent(self.h, param1.h)

type QCommandLinkButtonmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_mouseMoveEvent(self: ptr cQCommandLinkButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QCommandLinkButtonhitButton*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, pos: gen_qpoint_types.QPoint): bool =
  fQCommandLinkButton_virtualbase_hitButton(self.h, pos.h)

type QCommandLinkButtonhitButtonProc* = proc(pos: gen_qpoint_types.QPoint): bool
proc onhitButton*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonhitButtonProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonhitButtonProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_hitButton(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_hitButton(self: ptr cQCommandLinkButton, slot: int, pos: pointer): bool {.exportc: "miqt_exec_callback_QCommandLinkButton_hitButton ".} =
  var nimfunc = cast[ptr QCommandLinkButtonhitButtonProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: pos)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCommandLinkButtoncheckStateSet*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): void =
  fQCommandLinkButton_virtualbase_checkStateSet(self.h)

type QCommandLinkButtoncheckStateSetProc* = proc(): void
proc oncheckStateSet*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtoncheckStateSetProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtoncheckStateSetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_checkStateSet(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_checkStateSet(self: ptr cQCommandLinkButton, slot: int): void {.exportc: "miqt_exec_callback_QCommandLinkButton_checkStateSet ".} =
  var nimfunc = cast[ptr QCommandLinkButtoncheckStateSetProc](cast[pointer](slot))

  nimfunc[]()
proc QCommandLinkButtonnextCheckState*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): void =
  fQCommandLinkButton_virtualbase_nextCheckState(self.h)

type QCommandLinkButtonnextCheckStateProc* = proc(): void
proc onnextCheckState*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonnextCheckStateProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonnextCheckStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_nextCheckState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_nextCheckState(self: ptr cQCommandLinkButton, slot: int): void {.exportc: "miqt_exec_callback_QCommandLinkButton_nextCheckState ".} =
  var nimfunc = cast[ptr QCommandLinkButtonnextCheckStateProc](cast[pointer](slot))

  nimfunc[]()
proc QCommandLinkButtonkeyReleaseEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qevent_types.QKeyEvent): void =
  fQCommandLinkButton_virtualbase_keyReleaseEvent(self.h, e.h)

type QCommandLinkButtonkeyReleaseEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_keyReleaseEvent(self: ptr cQCommandLinkButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QCommandLinkButtonmousePressEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qevent_types.QMouseEvent): void =
  fQCommandLinkButton_virtualbase_mousePressEvent(self.h, e.h)

type QCommandLinkButtonmousePressEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonmousePressEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_mousePressEvent(self: ptr cQCommandLinkButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_mousePressEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QCommandLinkButtonmouseReleaseEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qevent_types.QMouseEvent): void =
  fQCommandLinkButton_virtualbase_mouseReleaseEvent(self.h, e.h)

type QCommandLinkButtonmouseReleaseEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_mouseReleaseEvent(self: ptr cQCommandLinkButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QCommandLinkButtonchangeEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qcoreevent_types.QEvent): void =
  fQCommandLinkButton_virtualbase_changeEvent(self.h, e.h)

type QCommandLinkButtonchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonchangeEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_changeEvent(self: ptr cQCommandLinkButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_changeEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QCommandLinkButtontimerEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, e: gen_qcoreevent_types.QTimerEvent): void =
  fQCommandLinkButton_virtualbase_timerEvent(self.h, e.h)

type QCommandLinkButtontimerEventProc* = proc(e: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtontimerEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_timerEvent(self: ptr cQCommandLinkButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_timerEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)


  nimfunc[](slotval1)
proc QCommandLinkButtondevType*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): cint =
  fQCommandLinkButton_virtualbase_devType(self.h)

type QCommandLinkButtondevTypeProc* = proc(): cint
proc ondevType*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtondevTypeProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtondevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_devType(self: ptr cQCommandLinkButton, slot: int): cint {.exportc: "miqt_exec_callback_QCommandLinkButton_devType ".} =
  var nimfunc = cast[ptr QCommandLinkButtondevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QCommandLinkButtonsetVisible*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, visible: bool): void =
  fQCommandLinkButton_virtualbase_setVisible(self.h, visible)

type QCommandLinkButtonsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonsetVisibleProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_setVisible(self: ptr cQCommandLinkButton, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QCommandLinkButton_setVisible ".} =
  var nimfunc = cast[ptr QCommandLinkButtonsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QCommandLinkButtonhasHeightForWidth*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): bool =
  fQCommandLinkButton_virtualbase_hasHeightForWidth(self.h)

type QCommandLinkButtonhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_hasHeightForWidth(self: ptr cQCommandLinkButton, slot: int): bool {.exportc: "miqt_exec_callback_QCommandLinkButton_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QCommandLinkButtonhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QCommandLinkButtonpaintEngine*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQCommandLinkButton_virtualbase_paintEngine(self.h))

type QCommandLinkButtonpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonpaintEngineProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_paintEngine(self: ptr cQCommandLinkButton, slot: int): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_paintEngine ".} =
  var nimfunc = cast[ptr QCommandLinkButtonpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCommandLinkButtonmouseDoubleClickEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QMouseEvent): void =
  fQCommandLinkButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QCommandLinkButtonmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_mouseDoubleClickEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtonwheelEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QWheelEvent): void =
  fQCommandLinkButton_virtualbase_wheelEvent(self.h, event.h)

type QCommandLinkButtonwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonwheelEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_wheelEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_wheelEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtonenterEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QEnterEvent): void =
  fQCommandLinkButton_virtualbase_enterEvent(self.h, event.h)

type QCommandLinkButtonenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonenterEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_enterEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_enterEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtonleaveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qcoreevent_types.QEvent): void =
  fQCommandLinkButton_virtualbase_leaveEvent(self.h, event.h)

type QCommandLinkButtonleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonleaveEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_leaveEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_leaveEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtonmoveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QMoveEvent): void =
  fQCommandLinkButton_virtualbase_moveEvent(self.h, event.h)

type QCommandLinkButtonmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonmoveEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_moveEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_moveEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtonresizeEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QResizeEvent): void =
  fQCommandLinkButton_virtualbase_resizeEvent(self.h, event.h)

type QCommandLinkButtonresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonresizeEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_resizeEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_resizeEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtoncloseEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QCloseEvent): void =
  fQCommandLinkButton_virtualbase_closeEvent(self.h, event.h)

type QCommandLinkButtoncloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtoncloseEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtoncloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_closeEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_closeEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtoncloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtoncontextMenuEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QContextMenuEvent): void =
  fQCommandLinkButton_virtualbase_contextMenuEvent(self.h, event.h)

type QCommandLinkButtoncontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtoncontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtoncontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_contextMenuEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_contextMenuEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtoncontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtontabletEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QTabletEvent): void =
  fQCommandLinkButton_virtualbase_tabletEvent(self.h, event.h)

type QCommandLinkButtontabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtontabletEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtontabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_tabletEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_tabletEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtontabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtonactionEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QActionEvent): void =
  fQCommandLinkButton_virtualbase_actionEvent(self.h, event.h)

type QCommandLinkButtonactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonactionEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_actionEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_actionEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtondragEnterEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QDragEnterEvent): void =
  fQCommandLinkButton_virtualbase_dragEnterEvent(self.h, event.h)

type QCommandLinkButtondragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtondragEnterEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtondragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_dragEnterEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_dragEnterEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtondragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtondragMoveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QDragMoveEvent): void =
  fQCommandLinkButton_virtualbase_dragMoveEvent(self.h, event.h)

type QCommandLinkButtondragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtondragMoveEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtondragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_dragMoveEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_dragMoveEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtondragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtondragLeaveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fQCommandLinkButton_virtualbase_dragLeaveEvent(self.h, event.h)

type QCommandLinkButtondragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtondragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtondragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_dragLeaveEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtondragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtondropEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QDropEvent): void =
  fQCommandLinkButton_virtualbase_dropEvent(self.h, event.h)

type QCommandLinkButtondropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtondropEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtondropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_dropEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_dropEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtondropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtonshowEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QShowEvent): void =
  fQCommandLinkButton_virtualbase_showEvent(self.h, event.h)

type QCommandLinkButtonshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonshowEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_showEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_showEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtonhideEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qevent_types.QHideEvent): void =
  fQCommandLinkButton_virtualbase_hideEvent(self.h, event.h)

type QCommandLinkButtonhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonhideEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_hideEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_hideEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtonnativeEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQCommandLinkButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QCommandLinkButtonnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonnativeEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_nativeEvent(self: ptr cQCommandLinkButton, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QCommandLinkButton_nativeEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QCommandLinkButtonmetric*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint): cint =
  fQCommandLinkButton_virtualbase_metric(self.h, cint(param1))

type QCommandLinkButtonmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonmetricProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_metric(self: ptr cQCommandLinkButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCommandLinkButton_metric ".} =
  var nimfunc = cast[ptr QCommandLinkButtonmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCommandLinkButtoninitPainter*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, painter: gen_qpainter_types.QPainter): void =
  fQCommandLinkButton_virtualbase_initPainter(self.h, painter.h)

type QCommandLinkButtoninitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtoninitPainterProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtoninitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_initPainter(self: ptr cQCommandLinkButton, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_initPainter ".} =
  var nimfunc = cast[ptr QCommandLinkButtoninitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QCommandLinkButtonredirected*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQCommandLinkButton_virtualbase_redirected(self.h, offset.h))

type QCommandLinkButtonredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonredirectedProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_redirected(self: ptr cQCommandLinkButton, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_redirected ".} =
  var nimfunc = cast[ptr QCommandLinkButtonredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QCommandLinkButtonsharedPainter*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQCommandLinkButton_virtualbase_sharedPainter(self.h))

type QCommandLinkButtonsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonsharedPainterProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_sharedPainter(self: ptr cQCommandLinkButton, slot: int): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_sharedPainter ".} =
  var nimfunc = cast[ptr QCommandLinkButtonsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCommandLinkButtoninputMethodEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fQCommandLinkButton_virtualbase_inputMethodEvent(self.h, param1.h)

type QCommandLinkButtoninputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtoninputMethodEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtoninputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_inputMethodEvent(self: ptr cQCommandLinkButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_inputMethodEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtoninputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QCommandLinkButtoninputMethodQuery*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQCommandLinkButton_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QCommandLinkButtoninputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtoninputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtoninputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_inputMethodQuery(self: ptr cQCommandLinkButton, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QCommandLinkButton_inputMethodQuery ".} =
  var nimfunc = cast[ptr QCommandLinkButtoninputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QCommandLinkButtonfocusNextPrevChild*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, next: bool): bool =
  fQCommandLinkButton_virtualbase_focusNextPrevChild(self.h, next)

type QCommandLinkButtonfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_focusNextPrevChild(self: ptr cQCommandLinkButton, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QCommandLinkButton_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QCommandLinkButtonfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCommandLinkButtoneventFilter*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQCommandLinkButton_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCommandLinkButtoneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtoneventFilterProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtoneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_eventFilter(self: ptr cQCommandLinkButton, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCommandLinkButton_eventFilter ".} =
  var nimfunc = cast[ptr QCommandLinkButtoneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QCommandLinkButtonchildEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qcoreevent_types.QChildEvent): void =
  fQCommandLinkButton_virtualbase_childEvent(self.h, event.h)

type QCommandLinkButtonchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonchildEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_childEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_childEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtonchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtoncustomEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, event: gen_qcoreevent_types.QEvent): void =
  fQCommandLinkButton_virtualbase_customEvent(self.h, event.h)

type QCommandLinkButtoncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtoncustomEventProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtoncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_customEvent(self: ptr cQCommandLinkButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_customEvent ".} =
  var nimfunc = cast[ptr QCommandLinkButtoncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCommandLinkButtonconnectNotify*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCommandLinkButton_virtualbase_connectNotify(self.h, signal.h)

type QCommandLinkButtonconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtonconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtonconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_connectNotify(self: ptr cQCommandLinkButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_connectNotify ".} =
  var nimfunc = cast[ptr QCommandLinkButtonconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QCommandLinkButtondisconnectNotify*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCommandLinkButton_virtualbase_disconnectNotify(self.h, signal.h)

type QCommandLinkButtondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qcommandlinkbutton_types.QCommandLinkButton, slot: QCommandLinkButtondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCommandLinkButtondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCommandLinkButton_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCommandLinkButton_disconnectNotify(self: ptr cQCommandLinkButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCommandLinkButton_disconnectNotify ".} =
  var nimfunc = cast[ptr QCommandLinkButtondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qcommandlinkbutton_types.QCommandLinkButton) =
  fcQCommandLinkButton_delete(self.h)
