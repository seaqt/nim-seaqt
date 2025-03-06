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
{.compile("gen_qfontdialog.cpp", cflags).}


type QFontDialogFontDialogOptionEnum* = distinct cint
template NoButtons*(_: type QFontDialogFontDialogOptionEnum): untyped = 1
template DontUseNativeDialog*(_: type QFontDialogFontDialogOptionEnum): untyped = 2
template ScalableFonts*(_: type QFontDialogFontDialogOptionEnum): untyped = 4
template NonScalableFonts*(_: type QFontDialogFontDialogOptionEnum): untyped = 8
template MonospacedFonts*(_: type QFontDialogFontDialogOptionEnum): untyped = 16
template ProportionalFonts*(_: type QFontDialogFontDialogOptionEnum): untyped = 32


import ./gen_qfontdialog_types
export gen_qfontdialog_types

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
  gen_qfont_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qdialog,
  gen_qwidget_types

type cQFontDialog*{.exportc: "QFontDialog", incompleteStruct.} = object

proc fcQFontDialog_new(parent: pointer): ptr cQFontDialog {.importc: "QFontDialog_new".}
proc fcQFontDialog_new2(): ptr cQFontDialog {.importc: "QFontDialog_new2".}
proc fcQFontDialog_new3(initial: pointer): ptr cQFontDialog {.importc: "QFontDialog_new3".}
proc fcQFontDialog_new4(initial: pointer, parent: pointer): ptr cQFontDialog {.importc: "QFontDialog_new4".}
proc fcQFontDialog_metaObject(self: pointer, ): pointer {.importc: "QFontDialog_metaObject".}
proc fcQFontDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QFontDialog_metacast".}
proc fcQFontDialog_tr(s: cstring): struct_miqt_string {.importc: "QFontDialog_tr".}
proc fcQFontDialog_setCurrentFont(self: pointer, font: pointer): void {.importc: "QFontDialog_setCurrentFont".}
proc fcQFontDialog_currentFont(self: pointer, ): pointer {.importc: "QFontDialog_currentFont".}
proc fcQFontDialog_selectedFont(self: pointer, ): pointer {.importc: "QFontDialog_selectedFont".}
proc fcQFontDialog_setOption(self: pointer, option: cint): void {.importc: "QFontDialog_setOption".}
proc fcQFontDialog_testOption(self: pointer, option: cint): bool {.importc: "QFontDialog_testOption".}
proc fcQFontDialog_setOptions(self: pointer, options: cint): void {.importc: "QFontDialog_setOptions".}
proc fcQFontDialog_options(self: pointer, ): cint {.importc: "QFontDialog_options".}
proc fcQFontDialog_setVisible(self: pointer, visible: bool): void {.importc: "QFontDialog_setVisible".}
proc fcQFontDialog_getFont(ok: ptr bool): pointer {.importc: "QFontDialog_getFont".}
proc fcQFontDialog_getFont2(ok: ptr bool, initial: pointer): pointer {.importc: "QFontDialog_getFont2".}
proc fcQFontDialog_currentFontChanged(self: pointer, font: pointer): void {.importc: "QFontDialog_currentFontChanged".}
proc fcQFontDialog_connect_currentFontChanged(self: pointer, slot: int) {.importc: "QFontDialog_connect_currentFontChanged".}
proc fcQFontDialog_fontSelected(self: pointer, font: pointer): void {.importc: "QFontDialog_fontSelected".}
proc fcQFontDialog_connect_fontSelected(self: pointer, slot: int) {.importc: "QFontDialog_connect_fontSelected".}
proc fcQFontDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFontDialog_tr2".}
proc fcQFontDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFontDialog_tr3".}
proc fcQFontDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QFontDialog_setOption2".}
proc fcQFontDialog_getFont22(ok: ptr bool, parent: pointer): pointer {.importc: "QFontDialog_getFont22".}
proc fcQFontDialog_getFont3(ok: ptr bool, initial: pointer, parent: pointer): pointer {.importc: "QFontDialog_getFont3".}
proc fcQFontDialog_getFont4(ok: ptr bool, initial: pointer, parent: pointer, title: struct_miqt_string): pointer {.importc: "QFontDialog_getFont4".}
proc fcQFontDialog_getFont5(ok: ptr bool, initial: pointer, parent: pointer, title: struct_miqt_string, options: cint): pointer {.importc: "QFontDialog_getFont5".}
proc fQFontDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QFontDialog_virtualbase_setVisible".}
proc fcQFontDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_setVisible".}
proc fQFontDialog_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_changeEvent".}
proc fcQFontDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_changeEvent".}
proc fQFontDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QFontDialog_virtualbase_done".}
proc fcQFontDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_done".}
proc fQFontDialog_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QFontDialog_virtualbase_eventFilter".}
proc fcQFontDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_eventFilter".}
proc fQFontDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QFontDialog_virtualbase_sizeHint".}
proc fcQFontDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_sizeHint".}
proc fQFontDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QFontDialog_virtualbase_minimumSizeHint".}
proc fcQFontDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_minimumSizeHint".}
proc fQFontDialog_virtualbase_open(self: pointer, ): void{.importc: "QFontDialog_virtualbase_open".}
proc fcQFontDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_open".}
proc fQFontDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QFontDialog_virtualbase_exec".}
proc fcQFontDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_exec".}
proc fQFontDialog_virtualbase_accept(self: pointer, ): void{.importc: "QFontDialog_virtualbase_accept".}
proc fcQFontDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_accept".}
proc fQFontDialog_virtualbase_reject(self: pointer, ): void{.importc: "QFontDialog_virtualbase_reject".}
proc fcQFontDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_reject".}
proc fQFontDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QFontDialog_virtualbase_keyPressEvent".}
proc fcQFontDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_keyPressEvent".}
proc fQFontDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QFontDialog_virtualbase_closeEvent".}
proc fcQFontDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_closeEvent".}
proc fQFontDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QFontDialog_virtualbase_showEvent".}
proc fcQFontDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_showEvent".}
proc fQFontDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QFontDialog_virtualbase_resizeEvent".}
proc fcQFontDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_resizeEvent".}
proc fQFontDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QFontDialog_virtualbase_contextMenuEvent".}
proc fcQFontDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_contextMenuEvent".}
proc fQFontDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QFontDialog_virtualbase_devType".}
proc fcQFontDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_devType".}
proc fQFontDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QFontDialog_virtualbase_heightForWidth".}
proc fcQFontDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_heightForWidth".}
proc fQFontDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QFontDialog_virtualbase_hasHeightForWidth".}
proc fcQFontDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_hasHeightForWidth".}
proc fQFontDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QFontDialog_virtualbase_paintEngine".}
proc fcQFontDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_paintEngine".}
proc fQFontDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFontDialog_virtualbase_event".}
proc fcQFontDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_event".}
proc fQFontDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_mousePressEvent".}
proc fcQFontDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_mousePressEvent".}
proc fQFontDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_mouseReleaseEvent".}
proc fcQFontDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_mouseReleaseEvent".}
proc fQFontDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQFontDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_mouseDoubleClickEvent".}
proc fQFontDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_mouseMoveEvent".}
proc fcQFontDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_mouseMoveEvent".}
proc fQFontDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_wheelEvent".}
proc fcQFontDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_wheelEvent".}
proc fQFontDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_keyReleaseEvent".}
proc fcQFontDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_keyReleaseEvent".}
proc fQFontDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_focusInEvent".}
proc fcQFontDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_focusInEvent".}
proc fQFontDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_focusOutEvent".}
proc fcQFontDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_focusOutEvent".}
proc fQFontDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_enterEvent".}
proc fcQFontDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_enterEvent".}
proc fQFontDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_leaveEvent".}
proc fcQFontDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_leaveEvent".}
proc fQFontDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_paintEvent".}
proc fcQFontDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_paintEvent".}
proc fQFontDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_moveEvent".}
proc fcQFontDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_moveEvent".}
proc fQFontDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_tabletEvent".}
proc fcQFontDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_tabletEvent".}
proc fQFontDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_actionEvent".}
proc fcQFontDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_actionEvent".}
proc fQFontDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_dragEnterEvent".}
proc fcQFontDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_dragEnterEvent".}
proc fQFontDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_dragMoveEvent".}
proc fcQFontDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_dragMoveEvent".}
proc fQFontDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_dragLeaveEvent".}
proc fcQFontDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_dragLeaveEvent".}
proc fQFontDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_dropEvent".}
proc fcQFontDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_dropEvent".}
proc fQFontDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_hideEvent".}
proc fcQFontDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_hideEvent".}
proc fQFontDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QFontDialog_virtualbase_nativeEvent".}
proc fcQFontDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_nativeEvent".}
proc fQFontDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QFontDialog_virtualbase_metric".}
proc fcQFontDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_metric".}
proc fQFontDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QFontDialog_virtualbase_initPainter".}
proc fcQFontDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_initPainter".}
proc fQFontDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QFontDialog_virtualbase_redirected".}
proc fcQFontDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_redirected".}
proc fQFontDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QFontDialog_virtualbase_sharedPainter".}
proc fcQFontDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_sharedPainter".}
proc fQFontDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QFontDialog_virtualbase_inputMethodEvent".}
proc fcQFontDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_inputMethodEvent".}
proc fQFontDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QFontDialog_virtualbase_inputMethodQuery".}
proc fcQFontDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_inputMethodQuery".}
proc fQFontDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QFontDialog_virtualbase_focusNextPrevChild".}
proc fcQFontDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_focusNextPrevChild".}
proc fQFontDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_timerEvent".}
proc fcQFontDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_timerEvent".}
proc fQFontDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_childEvent".}
proc fcQFontDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_childEvent".}
proc fQFontDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFontDialog_virtualbase_customEvent".}
proc fcQFontDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_customEvent".}
proc fQFontDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFontDialog_virtualbase_connectNotify".}
proc fcQFontDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_connectNotify".}
proc fQFontDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFontDialog_virtualbase_disconnectNotify".}
proc fcQFontDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFontDialog_override_virtual_disconnectNotify".}
proc fcQFontDialog_delete(self: pointer) {.importc: "QFontDialog_delete".}


func init*(T: type gen_qfontdialog_types.QFontDialog, h: ptr cQFontDialog): gen_qfontdialog_types.QFontDialog =
  T(h: h)
proc create*(T: type gen_qfontdialog_types.QFontDialog, parent: gen_qwidget_types.QWidget): gen_qfontdialog_types.QFontDialog =
  gen_qfontdialog_types.QFontDialog.init(fcQFontDialog_new(parent.h))

proc create*(T: type gen_qfontdialog_types.QFontDialog, ): gen_qfontdialog_types.QFontDialog =
  gen_qfontdialog_types.QFontDialog.init(fcQFontDialog_new2())

proc create*(T: type gen_qfontdialog_types.QFontDialog, initial: gen_qfont_types.QFont): gen_qfontdialog_types.QFontDialog =
  gen_qfontdialog_types.QFontDialog.init(fcQFontDialog_new3(initial.h))

proc create*(T: type gen_qfontdialog_types.QFontDialog, initial: gen_qfont_types.QFont, parent: gen_qwidget_types.QWidget): gen_qfontdialog_types.QFontDialog =
  gen_qfontdialog_types.QFontDialog.init(fcQFontDialog_new4(initial.h, parent.h))

proc metaObject*(self: gen_qfontdialog_types.QFontDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontDialog_metaObject(self.h))

proc metacast*(self: gen_qfontdialog_types.QFontDialog, param1: cstring): pointer =
  fcQFontDialog_metacast(self.h, param1)

proc tr*(_: type gen_qfontdialog_types.QFontDialog, s: cstring): string =
  let v_ms = fcQFontDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCurrentFont*(self: gen_qfontdialog_types.QFontDialog, font: gen_qfont_types.QFont): void =
  fcQFontDialog_setCurrentFont(self.h, font.h)

proc currentFont*(self: gen_qfontdialog_types.QFontDialog, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_currentFont(self.h))

proc selectedFont*(self: gen_qfontdialog_types.QFontDialog, ): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_selectedFont(self.h))

proc setOption*(self: gen_qfontdialog_types.QFontDialog, option: cint): void =
  fcQFontDialog_setOption(self.h, cint(option))

proc testOption*(self: gen_qfontdialog_types.QFontDialog, option: cint): bool =
  fcQFontDialog_testOption(self.h, cint(option))

proc setOptions*(self: gen_qfontdialog_types.QFontDialog, options: cint): void =
  fcQFontDialog_setOptions(self.h, cint(options))

proc options*(self: gen_qfontdialog_types.QFontDialog, ): cint =
  cint(fcQFontDialog_options(self.h))

proc setVisible*(self: gen_qfontdialog_types.QFontDialog, visible: bool): void =
  fcQFontDialog_setVisible(self.h, visible)

proc getFont*(_: type gen_qfontdialog_types.QFontDialog, ok: ptr bool): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_getFont(ok))

proc getFont*(_: type gen_qfontdialog_types.QFontDialog, ok: ptr bool, initial: gen_qfont_types.QFont): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_getFont2(ok, initial.h))

proc currentFontChanged*(self: gen_qfontdialog_types.QFontDialog, font: gen_qfont_types.QFont): void =
  fcQFontDialog_currentFontChanged(self.h, font.h)

type QFontDialogcurrentFontChangedSlot* = proc(font: gen_qfont_types.QFont)
proc miqt_exec_callback_QFontDialog_currentFontChanged(slot: int, font: pointer) {.exportc.} =
  let nimfunc = cast[ptr QFontDialogcurrentFontChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qfont_types.QFont(h: font)

  nimfunc[](slotval1)

proc oncurrentFontChanged*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogcurrentFontChangedSlot) =
  var tmp = new QFontDialogcurrentFontChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_connect_currentFontChanged(self.h, cast[int](addr tmp[]))

proc fontSelected*(self: gen_qfontdialog_types.QFontDialog, font: gen_qfont_types.QFont): void =
  fcQFontDialog_fontSelected(self.h, font.h)

type QFontDialogfontSelectedSlot* = proc(font: gen_qfont_types.QFont)
proc miqt_exec_callback_QFontDialog_fontSelected(slot: int, font: pointer) {.exportc.} =
  let nimfunc = cast[ptr QFontDialogfontSelectedSlot](cast[pointer](slot))
  let slotval1 = gen_qfont_types.QFont(h: font)

  nimfunc[](slotval1)

proc onfontSelected*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogfontSelectedSlot) =
  var tmp = new QFontDialogfontSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_connect_fontSelected(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qfontdialog_types.QFontDialog, s: cstring, c: cstring): string =
  let v_ms = fcQFontDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfontdialog_types.QFontDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFontDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qfontdialog_types.QFontDialog, option: cint, on: bool): void =
  fcQFontDialog_setOption2(self.h, cint(option), on)

proc getFont*(_: type gen_qfontdialog_types.QFontDialog, ok: ptr bool, parent: gen_qwidget_types.QWidget): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_getFont22(ok, parent.h))

proc getFont*(_: type gen_qfontdialog_types.QFontDialog, ok: ptr bool, initial: gen_qfont_types.QFont, parent: gen_qwidget_types.QWidget): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_getFont3(ok, initial.h, parent.h))

proc getFont*(_: type gen_qfontdialog_types.QFontDialog, ok: ptr bool, initial: gen_qfont_types.QFont, parent: gen_qwidget_types.QWidget, title: string): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_getFont4(ok, initial.h, parent.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc getFont*(_: type gen_qfontdialog_types.QFontDialog, ok: ptr bool, initial: gen_qfont_types.QFont, parent: gen_qwidget_types.QWidget, title: string, options: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_getFont5(ok, initial.h, parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), cint(options)))

proc QFontDialogsetVisible*(self: gen_qfontdialog_types.QFontDialog, visible: bool): void =
  fQFontDialog_virtualbase_setVisible(self.h, visible)

type QFontDialogsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogsetVisibleProc) =
  # TODO check subclass
  var tmp = new QFontDialogsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_setVisible(self: ptr cQFontDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QFontDialog_setVisible ".} =
  var nimfunc = cast[ptr QFontDialogsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QFontDialogchangeEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): void =
  fQFontDialog_virtualbase_changeEvent(self.h, event.h)

type QFontDialogchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogchangeEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_changeEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_changeEvent ".} =
  var nimfunc = cast[ptr QFontDialogchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogdone*(self: gen_qfontdialog_types.QFontDialog, resultVal: cint): void =
  fQFontDialog_virtualbase_done(self.h, resultVal)

type QFontDialogdoneProc* = proc(resultVal: cint): void
proc ondone*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogdoneProc) =
  # TODO check subclass
  var tmp = new QFontDialogdoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_done(self: ptr cQFontDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QFontDialog_done ".} =
  var nimfunc = cast[ptr QFontDialogdoneProc](cast[pointer](slot))
  let slotval1 = resultVal


  nimfunc[](slotval1)
proc QFontDialogeventFilter*(self: gen_qfontdialog_types.QFontDialog, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQFontDialog_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QFontDialogeventFilterProc* = proc(objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogeventFilterProc) =
  # TODO check subclass
  var tmp = new QFontDialogeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_eventFilter(self: ptr cQFontDialog, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFontDialog_eventFilter ".} =
  var nimfunc = cast[ptr QFontDialogeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFontDialogsizeHint*(self: gen_qfontdialog_types.QFontDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFontDialog_virtualbase_sizeHint(self.h))

type QFontDialogsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogsizeHintProc) =
  # TODO check subclass
  var tmp = new QFontDialogsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_sizeHint(self: ptr cQFontDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFontDialog_sizeHint ".} =
  var nimfunc = cast[ptr QFontDialogsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFontDialogminimumSizeHint*(self: gen_qfontdialog_types.QFontDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFontDialog_virtualbase_minimumSizeHint(self.h))

type QFontDialogminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QFontDialogminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_minimumSizeHint(self: ptr cQFontDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFontDialog_minimumSizeHint ".} =
  var nimfunc = cast[ptr QFontDialogminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFontDialogopen*(self: gen_qfontdialog_types.QFontDialog, ): void =
  fQFontDialog_virtualbase_open(self.h)

type QFontDialogopenProc* = proc(): void
proc onopen*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogopenProc) =
  # TODO check subclass
  var tmp = new QFontDialogopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_open(self: ptr cQFontDialog, slot: int): void {.exportc: "miqt_exec_callback_QFontDialog_open ".} =
  var nimfunc = cast[ptr QFontDialogopenProc](cast[pointer](slot))

  nimfunc[]()
proc QFontDialogexec*(self: gen_qfontdialog_types.QFontDialog, ): cint =
  fQFontDialog_virtualbase_exec(self.h)

type QFontDialogexecProc* = proc(): cint
proc onexec*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogexecProc) =
  # TODO check subclass
  var tmp = new QFontDialogexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_exec(self: ptr cQFontDialog, slot: int): cint {.exportc: "miqt_exec_callback_QFontDialog_exec ".} =
  var nimfunc = cast[ptr QFontDialogexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFontDialogaccept*(self: gen_qfontdialog_types.QFontDialog, ): void =
  fQFontDialog_virtualbase_accept(self.h)

type QFontDialogacceptProc* = proc(): void
proc onaccept*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogacceptProc) =
  # TODO check subclass
  var tmp = new QFontDialogacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_accept(self: ptr cQFontDialog, slot: int): void {.exportc: "miqt_exec_callback_QFontDialog_accept ".} =
  var nimfunc = cast[ptr QFontDialogacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QFontDialogreject*(self: gen_qfontdialog_types.QFontDialog, ): void =
  fQFontDialog_virtualbase_reject(self.h)

type QFontDialogrejectProc* = proc(): void
proc onreject*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogrejectProc) =
  # TODO check subclass
  var tmp = new QFontDialogrejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_reject(self: ptr cQFontDialog, slot: int): void {.exportc: "miqt_exec_callback_QFontDialog_reject ".} =
  var nimfunc = cast[ptr QFontDialogrejectProc](cast[pointer](slot))

  nimfunc[]()
proc QFontDialogkeyPressEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QKeyEvent): void =
  fQFontDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QFontDialogkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_keyPressEvent(self: ptr cQFontDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_keyPressEvent ".} =
  var nimfunc = cast[ptr QFontDialogkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QFontDialogcloseEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QCloseEvent): void =
  fQFontDialog_virtualbase_closeEvent(self.h, param1.h)

type QFontDialogcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogcloseEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_closeEvent(self: ptr cQFontDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_closeEvent ".} =
  var nimfunc = cast[ptr QFontDialogcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QFontDialogshowEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QShowEvent): void =
  fQFontDialog_virtualbase_showEvent(self.h, param1.h)

type QFontDialogshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogshowEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_showEvent(self: ptr cQFontDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_showEvent ".} =
  var nimfunc = cast[ptr QFontDialogshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QFontDialogresizeEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QResizeEvent): void =
  fQFontDialog_virtualbase_resizeEvent(self.h, param1.h)

type QFontDialogresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogresizeEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_resizeEvent(self: ptr cQFontDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_resizeEvent ".} =
  var nimfunc = cast[ptr QFontDialogresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QFontDialogcontextMenuEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fQFontDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QFontDialogcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_contextMenuEvent(self: ptr cQFontDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_contextMenuEvent ".} =
  var nimfunc = cast[ptr QFontDialogcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QFontDialogdevType*(self: gen_qfontdialog_types.QFontDialog, ): cint =
  fQFontDialog_virtualbase_devType(self.h)

type QFontDialogdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogdevTypeProc) =
  # TODO check subclass
  var tmp = new QFontDialogdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_devType(self: ptr cQFontDialog, slot: int): cint {.exportc: "miqt_exec_callback_QFontDialog_devType ".} =
  var nimfunc = cast[ptr QFontDialogdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFontDialogheightForWidth*(self: gen_qfontdialog_types.QFontDialog, param1: cint): cint =
  fQFontDialog_virtualbase_heightForWidth(self.h, param1)

type QFontDialogheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogheightForWidthProc) =
  # TODO check subclass
  var tmp = new QFontDialogheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_heightForWidth(self: ptr cQFontDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFontDialog_heightForWidth ".} =
  var nimfunc = cast[ptr QFontDialogheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFontDialoghasHeightForWidth*(self: gen_qfontdialog_types.QFontDialog, ): bool =
  fQFontDialog_virtualbase_hasHeightForWidth(self.h)

type QFontDialoghasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialoghasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QFontDialoghasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_hasHeightForWidth(self: ptr cQFontDialog, slot: int): bool {.exportc: "miqt_exec_callback_QFontDialog_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QFontDialoghasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFontDialogpaintEngine*(self: gen_qfontdialog_types.QFontDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQFontDialog_virtualbase_paintEngine(self.h))

type QFontDialogpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogpaintEngineProc) =
  # TODO check subclass
  var tmp = new QFontDialogpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_paintEngine(self: ptr cQFontDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFontDialog_paintEngine ".} =
  var nimfunc = cast[ptr QFontDialogpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFontDialogevent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): bool =
  fQFontDialog_virtualbase_event(self.h, event.h)

type QFontDialogeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogeventProc) =
  # TODO check subclass
  var tmp = new QFontDialogeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_event(self: ptr cQFontDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFontDialog_event ".} =
  var nimfunc = cast[ptr QFontDialogeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFontDialogmousePressEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMouseEvent): void =
  fQFontDialog_virtualbase_mousePressEvent(self.h, event.h)

type QFontDialogmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogmousePressEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_mousePressEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_mousePressEvent ".} =
  var nimfunc = cast[ptr QFontDialogmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogmouseReleaseEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMouseEvent): void =
  fQFontDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QFontDialogmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_mouseReleaseEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QFontDialogmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogmouseDoubleClickEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMouseEvent): void =
  fQFontDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QFontDialogmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_mouseDoubleClickEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QFontDialogmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogmouseMoveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMouseEvent): void =
  fQFontDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QFontDialogmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_mouseMoveEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QFontDialogmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogwheelEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QWheelEvent): void =
  fQFontDialog_virtualbase_wheelEvent(self.h, event.h)

type QFontDialogwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogwheelEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_wheelEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_wheelEvent ".} =
  var nimfunc = cast[ptr QFontDialogwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogkeyReleaseEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QKeyEvent): void =
  fQFontDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QFontDialogkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_keyReleaseEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QFontDialogkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogfocusInEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QFocusEvent): void =
  fQFontDialog_virtualbase_focusInEvent(self.h, event.h)

type QFontDialogfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogfocusInEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_focusInEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_focusInEvent ".} =
  var nimfunc = cast[ptr QFontDialogfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogfocusOutEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QFocusEvent): void =
  fQFontDialog_virtualbase_focusOutEvent(self.h, event.h)

type QFontDialogfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_focusOutEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_focusOutEvent ".} =
  var nimfunc = cast[ptr QFontDialogfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogenterEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QEnterEvent): void =
  fQFontDialog_virtualbase_enterEvent(self.h, event.h)

type QFontDialogenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogenterEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_enterEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_enterEvent ".} =
  var nimfunc = cast[ptr QFontDialogenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogleaveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): void =
  fQFontDialog_virtualbase_leaveEvent(self.h, event.h)

type QFontDialogleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogleaveEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_leaveEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_leaveEvent ".} =
  var nimfunc = cast[ptr QFontDialogleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogpaintEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QPaintEvent): void =
  fQFontDialog_virtualbase_paintEvent(self.h, event.h)

type QFontDialogpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogpaintEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_paintEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_paintEvent ".} =
  var nimfunc = cast[ptr QFontDialogpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogmoveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMoveEvent): void =
  fQFontDialog_virtualbase_moveEvent(self.h, event.h)

type QFontDialogmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogmoveEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_moveEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_moveEvent ".} =
  var nimfunc = cast[ptr QFontDialogmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogtabletEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QTabletEvent): void =
  fQFontDialog_virtualbase_tabletEvent(self.h, event.h)

type QFontDialogtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogtabletEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_tabletEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_tabletEvent ".} =
  var nimfunc = cast[ptr QFontDialogtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogactionEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QActionEvent): void =
  fQFontDialog_virtualbase_actionEvent(self.h, event.h)

type QFontDialogactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogactionEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_actionEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_actionEvent ".} =
  var nimfunc = cast[ptr QFontDialogactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogdragEnterEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fQFontDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QFontDialogdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_dragEnterEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_dragEnterEvent ".} =
  var nimfunc = cast[ptr QFontDialogdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogdragMoveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fQFontDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QFontDialogdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_dragMoveEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_dragMoveEvent ".} =
  var nimfunc = cast[ptr QFontDialogdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogdragLeaveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fQFontDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QFontDialogdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_dragLeaveEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QFontDialogdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogdropEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QDropEvent): void =
  fQFontDialog_virtualbase_dropEvent(self.h, event.h)

type QFontDialogdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogdropEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_dropEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_dropEvent ".} =
  var nimfunc = cast[ptr QFontDialogdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialoghideEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QHideEvent): void =
  fQFontDialog_virtualbase_hideEvent(self.h, event.h)

type QFontDialoghideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialoghideEventProc) =
  # TODO check subclass
  var tmp = new QFontDialoghideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_hideEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_hideEvent ".} =
  var nimfunc = cast[ptr QFontDialoghideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialognativeEvent*(self: gen_qfontdialog_types.QFontDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQFontDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QFontDialognativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialognativeEventProc) =
  # TODO check subclass
  var tmp = new QFontDialognativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_nativeEvent(self: ptr cQFontDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QFontDialog_nativeEvent ".} =
  var nimfunc = cast[ptr QFontDialognativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QFontDialogmetric*(self: gen_qfontdialog_types.QFontDialog, param1: cint): cint =
  fQFontDialog_virtualbase_metric(self.h, cint(param1))

type QFontDialogmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogmetricProc) =
  # TODO check subclass
  var tmp = new QFontDialogmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_metric(self: ptr cQFontDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFontDialog_metric ".} =
  var nimfunc = cast[ptr QFontDialogmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFontDialoginitPainter*(self: gen_qfontdialog_types.QFontDialog, painter: gen_qpainter_types.QPainter): void =
  fQFontDialog_virtualbase_initPainter(self.h, painter.h)

type QFontDialoginitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialoginitPainterProc) =
  # TODO check subclass
  var tmp = new QFontDialoginitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_initPainter(self: ptr cQFontDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_initPainter ".} =
  var nimfunc = cast[ptr QFontDialoginitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QFontDialogredirected*(self: gen_qfontdialog_types.QFontDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQFontDialog_virtualbase_redirected(self.h, offset.h))

type QFontDialogredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogredirectedProc) =
  # TODO check subclass
  var tmp = new QFontDialogredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_redirected(self: ptr cQFontDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QFontDialog_redirected ".} =
  var nimfunc = cast[ptr QFontDialogredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFontDialogsharedPainter*(self: gen_qfontdialog_types.QFontDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQFontDialog_virtualbase_sharedPainter(self.h))

type QFontDialogsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogsharedPainterProc) =
  # TODO check subclass
  var tmp = new QFontDialogsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_sharedPainter(self: ptr cQFontDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QFontDialog_sharedPainter ".} =
  var nimfunc = cast[ptr QFontDialogsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFontDialoginputMethodEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fQFontDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QFontDialoginputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialoginputMethodEventProc) =
  # TODO check subclass
  var tmp = new QFontDialoginputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_inputMethodEvent(self: ptr cQFontDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_inputMethodEvent ".} =
  var nimfunc = cast[ptr QFontDialoginputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QFontDialoginputMethodQuery*(self: gen_qfontdialog_types.QFontDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQFontDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QFontDialoginputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialoginputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QFontDialoginputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_inputMethodQuery(self: ptr cQFontDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QFontDialog_inputMethodQuery ".} =
  var nimfunc = cast[ptr QFontDialoginputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFontDialogfocusNextPrevChild*(self: gen_qfontdialog_types.QFontDialog, next: bool): bool =
  fQFontDialog_virtualbase_focusNextPrevChild(self.h, next)

type QFontDialogfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QFontDialogfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_focusNextPrevChild(self: ptr cQFontDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QFontDialog_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QFontDialogfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFontDialogtimerEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fQFontDialog_virtualbase_timerEvent(self.h, event.h)

type QFontDialogtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogtimerEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_timerEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_timerEvent ".} =
  var nimfunc = cast[ptr QFontDialogtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogchildEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fQFontDialog_virtualbase_childEvent(self.h, event.h)

type QFontDialogchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogchildEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_childEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_childEvent ".} =
  var nimfunc = cast[ptr QFontDialogchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogcustomEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): void =
  fQFontDialog_virtualbase_customEvent(self.h, event.h)

type QFontDialogcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogcustomEventProc) =
  # TODO check subclass
  var tmp = new QFontDialogcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_customEvent(self: ptr cQFontDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_customEvent ".} =
  var nimfunc = cast[ptr QFontDialogcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFontDialogconnectNotify*(self: gen_qfontdialog_types.QFontDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFontDialog_virtualbase_connectNotify(self.h, signal.h)

type QFontDialogconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFontDialogconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_connectNotify(self: ptr cQFontDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_connectNotify ".} =
  var nimfunc = cast[ptr QFontDialogconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QFontDialogdisconnectNotify*(self: gen_qfontdialog_types.QFontDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFontDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QFontDialogdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFontDialogdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFontDialog_disconnectNotify(self: ptr cQFontDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFontDialog_disconnectNotify ".} =
  var nimfunc = cast[ptr QFontDialogdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qfontdialog_types.QFontDialog) =
  fcQFontDialog_delete(self.h)
