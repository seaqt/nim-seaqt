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
{.compile("gen_qfontcombobox.cpp", cflags).}


type QFontComboBoxFontFilterEnum* = distinct cint
template AllFonts*(_: type QFontComboBoxFontFilterEnum): untyped = 0
template ScalableFonts*(_: type QFontComboBoxFontFilterEnum): untyped = 1
template NonScalableFonts*(_: type QFontComboBoxFontFilterEnum): untyped = 2
template MonospacedFonts*(_: type QFontComboBoxFontFilterEnum): untyped = 4
template ProportionalFonts*(_: type QFontComboBoxFontFilterEnum): untyped = 8


import ./gen_qfontcombobox_types
export gen_qfontcombobox_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qcombobox,
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
  gen_qfont_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qcombobox,
  gen_qwidget_types

type cQFontComboBox*{.exportc: "QFontComboBox", incompleteStruct.} = object

proc fcQFontComboBox_new(parent: pointer): ptr cQFontComboBox {.importc: "QFontComboBox_new".}
proc fcQFontComboBox_new2(): ptr cQFontComboBox {.importc: "QFontComboBox_new2".}
proc fcQFontComboBox_metaObject(self: pointer, ): pointer {.importc: "QFontComboBox_metaObject".}
proc fcQFontComboBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QFontComboBox_metacast".}
proc fcQFontComboBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFontComboBox_metacall".}
proc fcQFontComboBox_tr(s: cstring): struct_miqt_string {.importc: "QFontComboBox_tr".}
proc fcQFontComboBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QFontComboBox_trUtf8".}
proc fcQFontComboBox_setWritingSystem(self: pointer, writingSystem: cint): void {.importc: "QFontComboBox_setWritingSystem".}
proc fcQFontComboBox_writingSystem(self: pointer, ): cint {.importc: "QFontComboBox_writingSystem".}
proc fcQFontComboBox_setFontFilters(self: pointer, filters: cint): void {.importc: "QFontComboBox_setFontFilters".}
proc fcQFontComboBox_fontFilters(self: pointer, ): cint {.importc: "QFontComboBox_fontFilters".}
proc fcQFontComboBox_currentFont(self: pointer, ): pointer {.importc: "QFontComboBox_currentFont".}
proc fcQFontComboBox_sizeHint(self: pointer, ): pointer {.importc: "QFontComboBox_sizeHint".}
proc fcQFontComboBox_setCurrentFont(self: pointer, f: pointer): void {.importc: "QFontComboBox_setCurrentFont".}
proc fcQFontComboBox_currentFontChanged(self: pointer, f: pointer): void {.importc: "QFontComboBox_currentFontChanged".}
proc fcQFontComboBox_connect_currentFontChanged(self: pointer, slot: int) {.importc: "QFontComboBox_connect_currentFontChanged".}
proc fcQFontComboBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFontComboBox_tr2".}
proc fcQFontComboBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFontComboBox_tr3".}
proc fcQFontComboBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFontComboBox_trUtf82".}
proc fcQFontComboBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFontComboBox_trUtf83".}
proc fQFontComboBox_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QFontComboBox_virtualbase_metaObject".}
proc fcQFontComboBox_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_metaObject".}
proc fQFontComboBox_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QFontComboBox_virtualbase_metacast".}
proc fcQFontComboBox_override_virtual_metacast(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_metacast".}
proc fQFontComboBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFontComboBox_virtualbase_metacall".}
proc fcQFontComboBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_metacall".}
proc fQFontComboBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QFontComboBox_virtualbase_sizeHint".}
proc fcQFontComboBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_sizeHint".}
proc fQFontComboBox_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QFontComboBox_virtualbase_event".}
proc fcQFontComboBox_override_virtual_event(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_event".}
proc fQFontComboBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QFontComboBox_virtualbase_minimumSizeHint".}
proc fcQFontComboBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_minimumSizeHint".}
proc fQFontComboBox_virtualbase_showPopup(self: pointer, ): void{.importc: "QFontComboBox_virtualbase_showPopup".}
proc fcQFontComboBox_override_virtual_showPopup(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_showPopup".}
proc fQFontComboBox_virtualbase_hidePopup(self: pointer, ): void{.importc: "QFontComboBox_virtualbase_hidePopup".}
proc fcQFontComboBox_override_virtual_hidePopup(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_hidePopup".}
proc fQFontComboBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QFontComboBox_virtualbase_inputMethodQuery".}
proc fcQFontComboBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_inputMethodQuery".}
proc fQFontComboBox_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_focusInEvent".}
proc fcQFontComboBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_focusInEvent".}
proc fQFontComboBox_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_focusOutEvent".}
proc fcQFontComboBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_focusOutEvent".}
proc fQFontComboBox_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_changeEvent".}
proc fcQFontComboBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_changeEvent".}
proc fQFontComboBox_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_resizeEvent".}
proc fcQFontComboBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_resizeEvent".}
proc fQFontComboBox_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_paintEvent".}
proc fcQFontComboBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_paintEvent".}
proc fQFontComboBox_virtualbase_showEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_showEvent".}
proc fcQFontComboBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_showEvent".}
proc fQFontComboBox_virtualbase_hideEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_hideEvent".}
proc fcQFontComboBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_hideEvent".}
proc fQFontComboBox_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_mousePressEvent".}
proc fcQFontComboBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_mousePressEvent".}
proc fQFontComboBox_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_mouseReleaseEvent".}
proc fcQFontComboBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_mouseReleaseEvent".}
proc fQFontComboBox_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_keyPressEvent".}
proc fcQFontComboBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_keyPressEvent".}
proc fQFontComboBox_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_keyReleaseEvent".}
proc fcQFontComboBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_keyReleaseEvent".}
proc fQFontComboBox_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_wheelEvent".}
proc fcQFontComboBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_wheelEvent".}
proc fQFontComboBox_virtualbase_contextMenuEvent(self: pointer, e: pointer): void{.importc: "QFontComboBox_virtualbase_contextMenuEvent".}
proc fcQFontComboBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_contextMenuEvent".}
proc fQFontComboBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QFontComboBox_virtualbase_inputMethodEvent".}
proc fcQFontComboBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_inputMethodEvent".}
proc fQFontComboBox_virtualbase_devType(self: pointer, ): cint{.importc: "QFontComboBox_virtualbase_devType".}
proc fcQFontComboBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_devType".}
proc fQFontComboBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QFontComboBox_virtualbase_setVisible".}
proc fcQFontComboBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_setVisible".}
proc fQFontComboBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QFontComboBox_virtualbase_heightForWidth".}
proc fcQFontComboBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_heightForWidth".}
proc fQFontComboBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QFontComboBox_virtualbase_hasHeightForWidth".}
proc fcQFontComboBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_hasHeightForWidth".}
proc fQFontComboBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QFontComboBox_virtualbase_paintEngine".}
proc fcQFontComboBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_paintEngine".}
proc fQFontComboBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_mouseDoubleClickEvent".}
proc fcQFontComboBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_mouseDoubleClickEvent".}
proc fQFontComboBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_mouseMoveEvent".}
proc fcQFontComboBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_mouseMoveEvent".}
proc fQFontComboBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_enterEvent".}
proc fcQFontComboBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_enterEvent".}
proc fQFontComboBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_leaveEvent".}
proc fcQFontComboBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_leaveEvent".}
proc fQFontComboBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_moveEvent".}
proc fcQFontComboBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_moveEvent".}
proc fQFontComboBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_closeEvent".}
proc fcQFontComboBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_closeEvent".}
proc fQFontComboBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_tabletEvent".}
proc fcQFontComboBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_tabletEvent".}
proc fQFontComboBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_actionEvent".}
proc fcQFontComboBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_actionEvent".}
proc fQFontComboBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_dragEnterEvent".}
proc fcQFontComboBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_dragEnterEvent".}
proc fQFontComboBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_dragMoveEvent".}
proc fcQFontComboBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_dragMoveEvent".}
proc fQFontComboBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_dragLeaveEvent".}
proc fcQFontComboBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_dragLeaveEvent".}
proc fQFontComboBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_dropEvent".}
proc fcQFontComboBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_dropEvent".}
proc fQFontComboBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QFontComboBox_virtualbase_nativeEvent".}
proc fcQFontComboBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_nativeEvent".}
proc fQFontComboBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QFontComboBox_virtualbase_metric".}
proc fcQFontComboBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_metric".}
proc fQFontComboBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QFontComboBox_virtualbase_initPainter".}
proc fcQFontComboBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_initPainter".}
proc fQFontComboBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QFontComboBox_virtualbase_redirected".}
proc fcQFontComboBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_redirected".}
proc fQFontComboBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QFontComboBox_virtualbase_sharedPainter".}
proc fcQFontComboBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_sharedPainter".}
proc fQFontComboBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QFontComboBox_virtualbase_focusNextPrevChild".}
proc fcQFontComboBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_focusNextPrevChild".}
proc fQFontComboBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFontComboBox_virtualbase_eventFilter".}
proc fcQFontComboBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_eventFilter".}
proc fQFontComboBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_timerEvent".}
proc fcQFontComboBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_timerEvent".}
proc fQFontComboBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_childEvent".}
proc fcQFontComboBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_childEvent".}
proc fQFontComboBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFontComboBox_virtualbase_customEvent".}
proc fcQFontComboBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_customEvent".}
proc fQFontComboBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFontComboBox_virtualbase_connectNotify".}
proc fcQFontComboBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_connectNotify".}
proc fQFontComboBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFontComboBox_virtualbase_disconnectNotify".}
proc fcQFontComboBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFontComboBox_override_virtual_disconnectNotify".}
proc fcQFontComboBox_staticMetaObject(): pointer {.importc: "QFontComboBox_staticMetaObject".}
proc fcQFontComboBox_delete(self: pointer) {.importc: "QFontComboBox_delete".}


func init*(T: type gen_qfontcombobox_types.QFontComboBox, h: ptr cQFontComboBox): gen_qfontcombobox_types.QFontComboBox =
  T(h: h)
proc create*(T: type gen_qfontcombobox_types.QFontComboBox, parent: gen_qwidget_types.QWidget): gen_qfontcombobox_types.QFontComboBox =
  gen_qfontcombobox_types.QFontComboBox.init(fcQFontComboBox_new(parent.h))

proc create*(T: type gen_qfontcombobox_types.QFontComboBox, ): gen_qfontcombobox_types.QFontComboBox =
  gen_qfontcombobox_types.QFontComboBox.init(fcQFontComboBox_new2())

proc metaObject*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontComboBox_metaObject(self.h))

proc metacast*(self: gen_qfontcombobox_types.QFontComboBox, param1: cstring): pointer =
  fcQFontComboBox_metacast(self.h, param1)

proc metacall*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQFontComboBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfontcombobox_types.QFontComboBox, s: cstring): string =
  let v_ms = fcQFontComboBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfontcombobox_types.QFontComboBox, s: cstring): string =
  let v_ms = fcQFontComboBox_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWritingSystem*(self: gen_qfontcombobox_types.QFontComboBox, writingSystem: cint): void =
  fcQFontComboBox_setWritingSystem(self.h, cint(writingSystem))

proc writingSystem*(self: gen_qfontcombobox_types.QFontComboBox, ): cint =
  cint(fcQFontComboBox_writingSystem(self.h))

proc setFontFilters*(self: gen_qfontcombobox_types.QFontComboBox, filters: cint): void =
  fcQFontComboBox_setFontFilters(self.h, cint(filters))

proc fontFilters*(self: gen_qfontcombobox_types.QFontComboBox, ): cint =
  cint(fcQFontComboBox_fontFilters(self.h))

proc currentFont*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontComboBox_currentFont(self.h))

proc sizeHint*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontComboBox_sizeHint(self.h))

proc setCurrentFont*(self: gen_qfontcombobox_types.QFontComboBox, f: gen_qfont_types.QFont): void =
  fcQFontComboBox_setCurrentFont(self.h, f.h)

proc currentFontChanged*(self: gen_qfontcombobox_types.QFontComboBox, f: gen_qfont_types.QFont): void =
  fcQFontComboBox_currentFontChanged(self.h, f.h)

type QFontComboBoxcurrentFontChangedSlot* = proc(f: gen_qfont_types.QFont)
proc miqt_exec_callback_QFontComboBox_currentFontChanged(slot: int, f: pointer) {.exportc.} =
  let nimfunc = cast[ptr QFontComboBoxcurrentFontChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qfont_types.QFont(h: f)

  nimfunc[](slotval1)

proc oncurrentFontChanged*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxcurrentFontChangedSlot) =
  var tmp = new QFontComboBoxcurrentFontChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_connect_currentFontChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qfontcombobox_types.QFontComboBox, s: cstring, c: cstring): string =
  let v_ms = fcQFontComboBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfontcombobox_types.QFontComboBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFontComboBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfontcombobox_types.QFontComboBox, s: cstring, c: cstring): string =
  let v_ms = fcQFontComboBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfontcombobox_types.QFontComboBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFontComboBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QFontComboBoxmetaObject*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQFontComboBox_virtualbase_metaObject(self.h))

type QFontComboBoxmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxmetaObjectProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_metaObject(self: ptr cQFontComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QFontComboBox_metaObject ".} =
  var nimfunc = cast[ptr QFontComboBoxmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFontComboBoxmetacast*(self: gen_qfontcombobox_types.QFontComboBox, param1: cstring): pointer =
  fQFontComboBox_virtualbase_metacast(self.h, param1)

type QFontComboBoxmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxmetacastProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_metacast(self: ptr cQFontComboBox, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QFontComboBox_metacast ".} =
  var nimfunc = cast[ptr QFontComboBoxmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFontComboBoxmetacall*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint, param2: cint, param3: pointer): cint =
  fQFontComboBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFontComboBoxmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxmetacallProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_metacall(self: ptr cQFontComboBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFontComboBox_metacall ".} =
  var nimfunc = cast[ptr QFontComboBoxmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFontComboBoxsizeHint*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFontComboBox_virtualbase_sizeHint(self.h))

type QFontComboBoxsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxsizeHintProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_sizeHint(self: ptr cQFontComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QFontComboBox_sizeHint ".} =
  var nimfunc = cast[ptr QFontComboBoxsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFontComboBoxevent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qcoreevent_types.QEvent): bool =
  fQFontComboBox_virtualbase_event(self.h, e.h)

type QFontComboBoxeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxeventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_event(self: ptr cQFontComboBox, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QFontComboBox_event ".} =
  var nimfunc = cast[ptr QFontComboBoxeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFontComboBoxminimumSizeHint*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFontComboBox_virtualbase_minimumSizeHint(self.h))

type QFontComboBoxminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_minimumSizeHint(self: ptr cQFontComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QFontComboBox_minimumSizeHint ".} =
  var nimfunc = cast[ptr QFontComboBoxminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFontComboBoxshowPopup*(self: gen_qfontcombobox_types.QFontComboBox, ): void =
  fQFontComboBox_virtualbase_showPopup(self.h)

type QFontComboBoxshowPopupProc* = proc(): void
proc onshowPopup*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxshowPopupProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxshowPopupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_showPopup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_showPopup(self: ptr cQFontComboBox, slot: int): void {.exportc: "miqt_exec_callback_QFontComboBox_showPopup ".} =
  var nimfunc = cast[ptr QFontComboBoxshowPopupProc](cast[pointer](slot))

  nimfunc[]()
proc QFontComboBoxhidePopup*(self: gen_qfontcombobox_types.QFontComboBox, ): void =
  fQFontComboBox_virtualbase_hidePopup(self.h)

type QFontComboBoxhidePopupProc* = proc(): void
proc onhidePopup*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxhidePopupProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxhidePopupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_hidePopup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_hidePopup(self: ptr cQFontComboBox, slot: int): void {.exportc: "miqt_exec_callback_QFontComboBox_hidePopup ".} =
  var nimfunc = cast[ptr QFontComboBoxhidePopupProc](cast[pointer](slot))

  nimfunc[]()
proc QFontComboBoxinputMethodQuery*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQFontComboBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QFontComboBoxinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_inputMethodQuery(self: ptr cQFontComboBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QFontComboBox_inputMethodQuery ".} =
  var nimfunc = cast[ptr QFontComboBoxinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFontComboBoxfocusInEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QFocusEvent): void =
  fQFontComboBox_virtualbase_focusInEvent(self.h, e.h)

type QFontComboBoxfocusInEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxfocusInEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_focusInEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_focusInEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxfocusOutEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QFocusEvent): void =
  fQFontComboBox_virtualbase_focusOutEvent(self.h, e.h)

type QFontComboBoxfocusOutEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_focusOutEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_focusOutEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxchangeEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qcoreevent_types.QEvent): void =
  fQFontComboBox_virtualbase_changeEvent(self.h, e.h)

type QFontComboBoxchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxchangeEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_changeEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_changeEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxresizeEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QResizeEvent): void =
  fQFontComboBox_virtualbase_resizeEvent(self.h, e.h)

type QFontComboBoxresizeEventProc* = proc(e: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxresizeEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_resizeEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_resizeEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxpaintEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QPaintEvent): void =
  fQFontComboBox_virtualbase_paintEvent(self.h, e.h)

type QFontComboBoxpaintEventProc* = proc(e: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxpaintEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_paintEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_paintEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxshowEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QShowEvent): void =
  fQFontComboBox_virtualbase_showEvent(self.h, e.h)

type QFontComboBoxshowEventProc* = proc(e: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxshowEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_showEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_showEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxhideEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QHideEvent): void =
  fQFontComboBox_virtualbase_hideEvent(self.h, e.h)

type QFontComboBoxhideEventProc* = proc(e: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxhideEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_hideEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_hideEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxmousePressEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QMouseEvent): void =
  fQFontComboBox_virtualbase_mousePressEvent(self.h, e.h)

type QFontComboBoxmousePressEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxmousePressEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_mousePressEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_mousePressEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxmouseReleaseEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QMouseEvent): void =
  fQFontComboBox_virtualbase_mouseReleaseEvent(self.h, e.h)

type QFontComboBoxmouseReleaseEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_mouseReleaseEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxkeyPressEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QKeyEvent): void =
  fQFontComboBox_virtualbase_keyPressEvent(self.h, e.h)

type QFontComboBoxkeyPressEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_keyPressEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_keyPressEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxkeyReleaseEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QKeyEvent): void =
  fQFontComboBox_virtualbase_keyReleaseEvent(self.h, e.h)

type QFontComboBoxkeyReleaseEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_keyReleaseEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxwheelEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QWheelEvent): void =
  fQFontComboBox_virtualbase_wheelEvent(self.h, e.h)

type QFontComboBoxwheelEventProc* = proc(e: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxwheelEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_wheelEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_wheelEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxcontextMenuEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QContextMenuEvent): void =
  fQFontComboBox_virtualbase_contextMenuEvent(self.h, e.h)

type QFontComboBoxcontextMenuEventProc* = proc(e: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_contextMenuEvent(self: ptr cQFontComboBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_contextMenuEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e)


  nimfunc[](slotval1)
proc QFontComboBoxinputMethodEvent*(self: gen_qfontcombobox_types.QFontComboBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fQFontComboBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QFontComboBoxinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_inputMethodEvent(self: ptr cQFontComboBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_inputMethodEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QFontComboBoxdevType*(self: gen_qfontcombobox_types.QFontComboBox, ): cint =
  fQFontComboBox_virtualbase_devType(self.h)

type QFontComboBoxdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxdevTypeProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_devType(self: ptr cQFontComboBox, slot: int): cint {.exportc: "miqt_exec_callback_QFontComboBox_devType ".} =
  var nimfunc = cast[ptr QFontComboBoxdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFontComboBoxsetVisible*(self: gen_qfontcombobox_types.QFontComboBox, visible: bool): void =
  fQFontComboBox_virtualbase_setVisible(self.h, visible)

type QFontComboBoxsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxsetVisibleProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_setVisible(self: ptr cQFontComboBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QFontComboBox_setVisible ".} =
  var nimfunc = cast[ptr QFontComboBoxsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QFontComboBoxheightForWidth*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint): cint =
  fQFontComboBox_virtualbase_heightForWidth(self.h, param1)

type QFontComboBoxheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxheightForWidthProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_heightForWidth(self: ptr cQFontComboBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFontComboBox_heightForWidth ".} =
  var nimfunc = cast[ptr QFontComboBoxheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFontComboBoxhasHeightForWidth*(self: gen_qfontcombobox_types.QFontComboBox, ): bool =
  fQFontComboBox_virtualbase_hasHeightForWidth(self.h)

type QFontComboBoxhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_hasHeightForWidth(self: ptr cQFontComboBox, slot: int): bool {.exportc: "miqt_exec_callback_QFontComboBox_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QFontComboBoxhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFontComboBoxpaintEngine*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQFontComboBox_virtualbase_paintEngine(self.h))

type QFontComboBoxpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxpaintEngineProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_paintEngine(self: ptr cQFontComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QFontComboBox_paintEngine ".} =
  var nimfunc = cast[ptr QFontComboBoxpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFontComboBoxmouseDoubleClickEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QMouseEvent): void =
  fQFontComboBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QFontComboBoxmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_mouseDoubleClickEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxmouseMoveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QMouseEvent): void =
  fQFontComboBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QFontComboBoxmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_mouseMoveEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxenterEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QEvent): void =
  fQFontComboBox_virtualbase_enterEvent(self.h, event.h)

type QFontComboBoxenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxenterEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_enterEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_enterEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxleaveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QEvent): void =
  fQFontComboBox_virtualbase_leaveEvent(self.h, event.h)

type QFontComboBoxleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxleaveEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_leaveEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_leaveEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxmoveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QMoveEvent): void =
  fQFontComboBox_virtualbase_moveEvent(self.h, event.h)

type QFontComboBoxmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxmoveEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_moveEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_moveEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxcloseEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QCloseEvent): void =
  fQFontComboBox_virtualbase_closeEvent(self.h, event.h)

type QFontComboBoxcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxcloseEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_closeEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_closeEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxtabletEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QTabletEvent): void =
  fQFontComboBox_virtualbase_tabletEvent(self.h, event.h)

type QFontComboBoxtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxtabletEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_tabletEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_tabletEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxactionEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QActionEvent): void =
  fQFontComboBox_virtualbase_actionEvent(self.h, event.h)

type QFontComboBoxactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxactionEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_actionEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_actionEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxdragEnterEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QDragEnterEvent): void =
  fQFontComboBox_virtualbase_dragEnterEvent(self.h, event.h)

type QFontComboBoxdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_dragEnterEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_dragEnterEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxdragMoveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QDragMoveEvent): void =
  fQFontComboBox_virtualbase_dragMoveEvent(self.h, event.h)

type QFontComboBoxdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_dragMoveEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_dragMoveEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxdragLeaveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fQFontComboBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QFontComboBoxdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_dragLeaveEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxdropEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QDropEvent): void =
  fQFontComboBox_virtualbase_dropEvent(self.h, event.h)

type QFontComboBoxdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxdropEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_dropEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_dropEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxnativeEvent*(self: gen_qfontcombobox_types.QFontComboBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQFontComboBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QFontComboBoxnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxnativeEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_nativeEvent(self: ptr cQFontComboBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QFontComboBox_nativeEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFontComboBoxmetric*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint): cint =
  fQFontComboBox_virtualbase_metric(self.h, cint(param1))

type QFontComboBoxmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxmetricProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_metric(self: ptr cQFontComboBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFontComboBox_metric ".} =
  var nimfunc = cast[ptr QFontComboBoxmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFontComboBoxinitPainter*(self: gen_qfontcombobox_types.QFontComboBox, painter: gen_qpainter_types.QPainter): void =
  fQFontComboBox_virtualbase_initPainter(self.h, painter.h)

type QFontComboBoxinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxinitPainterProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_initPainter(self: ptr cQFontComboBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_initPainter ".} =
  var nimfunc = cast[ptr QFontComboBoxinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QFontComboBoxredirected*(self: gen_qfontcombobox_types.QFontComboBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQFontComboBox_virtualbase_redirected(self.h, offset.h))

type QFontComboBoxredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxredirectedProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_redirected(self: ptr cQFontComboBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QFontComboBox_redirected ".} =
  var nimfunc = cast[ptr QFontComboBoxredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFontComboBoxsharedPainter*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQFontComboBox_virtualbase_sharedPainter(self.h))

type QFontComboBoxsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxsharedPainterProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_sharedPainter(self: ptr cQFontComboBox, slot: int): pointer {.exportc: "miqt_exec_callback_QFontComboBox_sharedPainter ".} =
  var nimfunc = cast[ptr QFontComboBoxsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFontComboBoxfocusNextPrevChild*(self: gen_qfontcombobox_types.QFontComboBox, next: bool): bool =
  fQFontComboBox_virtualbase_focusNextPrevChild(self.h, next)

type QFontComboBoxfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_focusNextPrevChild(self: ptr cQFontComboBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QFontComboBox_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QFontComboBoxfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFontComboBoxeventFilter*(self: gen_qfontcombobox_types.QFontComboBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQFontComboBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFontComboBoxeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxeventFilterProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_eventFilter(self: ptr cQFontComboBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFontComboBox_eventFilter ".} =
  var nimfunc = cast[ptr QFontComboBoxeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFontComboBoxtimerEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fQFontComboBox_virtualbase_timerEvent(self.h, event.h)

type QFontComboBoxtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxtimerEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_timerEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_timerEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxchildEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QChildEvent): void =
  fQFontComboBox_virtualbase_childEvent(self.h, event.h)

type QFontComboBoxchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxchildEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_childEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_childEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxcustomEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QEvent): void =
  fQFontComboBox_virtualbase_customEvent(self.h, event.h)

type QFontComboBoxcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxcustomEventProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_customEvent(self: ptr cQFontComboBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_customEvent ".} =
  var nimfunc = cast[ptr QFontComboBoxcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFontComboBoxconnectNotify*(self: gen_qfontcombobox_types.QFontComboBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFontComboBox_virtualbase_connectNotify(self.h, signal.h)

type QFontComboBoxconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_connectNotify(self: ptr cQFontComboBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_connectNotify ".} =
  var nimfunc = cast[ptr QFontComboBoxconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QFontComboBoxdisconnectNotify*(self: gen_qfontcombobox_types.QFontComboBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFontComboBox_virtualbase_disconnectNotify(self.h, signal.h)

type QFontComboBoxdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFontComboBoxdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontComboBox_disconnectNotify(self: ptr cQFontComboBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFontComboBox_disconnectNotify ".} =
  var nimfunc = cast[ptr QFontComboBoxdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qfontcombobox_types.QFontComboBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontComboBox_staticMetaObject())
proc delete*(self: gen_qfontcombobox_types.QFontComboBox) =
  fcQFontComboBox_delete(self.h)
