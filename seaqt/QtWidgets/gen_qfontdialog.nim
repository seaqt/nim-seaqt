import ./qtwidgets_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qfontdialog.cpp", QtWidgetsCFlags).}


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

proc fcQFontDialog_metaObject(self: pointer): pointer {.importc: "QFontDialog_metaObject".}
proc fcQFontDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QFontDialog_metacast".}
proc fcQFontDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFontDialog_metacall".}
proc fcQFontDialog_tr(s: cstring): struct_miqt_string {.importc: "QFontDialog_tr".}
proc fcQFontDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QFontDialog_trUtf8".}
proc fcQFontDialog_setCurrentFont(self: pointer, font: pointer): void {.importc: "QFontDialog_setCurrentFont".}
proc fcQFontDialog_currentFont(self: pointer): pointer {.importc: "QFontDialog_currentFont".}
proc fcQFontDialog_selectedFont(self: pointer): pointer {.importc: "QFontDialog_selectedFont".}
proc fcQFontDialog_setOption(self: pointer, option: cint): void {.importc: "QFontDialog_setOption".}
proc fcQFontDialog_testOption(self: pointer, option: cint): bool {.importc: "QFontDialog_testOption".}
proc fcQFontDialog_setOptions(self: pointer, options: cint): void {.importc: "QFontDialog_setOptions".}
proc fcQFontDialog_options(self: pointer): cint {.importc: "QFontDialog_options".}
proc fcQFontDialog_setVisible(self: pointer, visible: bool): void {.importc: "QFontDialog_setVisible".}
proc fcQFontDialog_getFont(ok: ptr bool): pointer {.importc: "QFontDialog_getFont".}
proc fcQFontDialog_getFont2(ok: ptr bool, initial: pointer): pointer {.importc: "QFontDialog_getFont2".}
proc fcQFontDialog_currentFontChanged(self: pointer, font: pointer): void {.importc: "QFontDialog_currentFontChanged".}
proc fcQFontDialog_connect_currentFontChanged(self: pointer, slot: int, callback: proc (slot: int, font: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFontDialog_connect_currentFontChanged".}
proc fcQFontDialog_fontSelected(self: pointer, font: pointer): void {.importc: "QFontDialog_fontSelected".}
proc fcQFontDialog_connect_fontSelected(self: pointer, slot: int, callback: proc (slot: int, font: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFontDialog_connect_fontSelected".}
proc fcQFontDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFontDialog_tr2".}
proc fcQFontDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFontDialog_tr3".}
proc fcQFontDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFontDialog_trUtf82".}
proc fcQFontDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFontDialog_trUtf83".}
proc fcQFontDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QFontDialog_setOption2".}
proc fcQFontDialog_getFont22(ok: ptr bool, parent: pointer): pointer {.importc: "QFontDialog_getFont22".}
proc fcQFontDialog_getFont3(ok: ptr bool, initial: pointer, parent: pointer): pointer {.importc: "QFontDialog_getFont3".}
proc fcQFontDialog_getFont4(ok: ptr bool, initial: pointer, parent: pointer, title: struct_miqt_string): pointer {.importc: "QFontDialog_getFont4".}
proc fcQFontDialog_getFont5(ok: ptr bool, initial: pointer, parent: pointer, title: struct_miqt_string, options: cint): pointer {.importc: "QFontDialog_getFont5".}
proc fcQFontDialog_vtbl(self: pointer): pointer {.importc: "QFontDialog_vtbl".}
proc fcQFontDialog_vdata(self: pointer): pointer {.importc: "QFontDialog_vdata".}

type cQFontDialogVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  done*: proc(self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  accept*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQFontDialog_virtualbase_metaObject(self: pointer): pointer {.importc: "QFontDialog_virtualbase_metaObject".}
proc fcQFontDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFontDialog_virtualbase_metacast".}
proc fcQFontDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFontDialog_virtualbase_metacall".}
proc fcQFontDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QFontDialog_virtualbase_setVisible".}
proc fcQFontDialog_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_changeEvent".}
proc fcQFontDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QFontDialog_virtualbase_done".}
proc fcQFontDialog_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QFontDialog_virtualbase_eventFilter".}
proc fcQFontDialog_virtualbase_sizeHint(self: pointer): pointer {.importc: "QFontDialog_virtualbase_sizeHint".}
proc fcQFontDialog_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QFontDialog_virtualbase_minimumSizeHint".}
proc fcQFontDialog_virtualbase_open(self: pointer): void {.importc: "QFontDialog_virtualbase_open".}
proc fcQFontDialog_virtualbase_exec(self: pointer): cint {.importc: "QFontDialog_virtualbase_exec".}
proc fcQFontDialog_virtualbase_accept(self: pointer): void {.importc: "QFontDialog_virtualbase_accept".}
proc fcQFontDialog_virtualbase_reject(self: pointer): void {.importc: "QFontDialog_virtualbase_reject".}
proc fcQFontDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QFontDialog_virtualbase_keyPressEvent".}
proc fcQFontDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QFontDialog_virtualbase_closeEvent".}
proc fcQFontDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QFontDialog_virtualbase_showEvent".}
proc fcQFontDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QFontDialog_virtualbase_resizeEvent".}
proc fcQFontDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QFontDialog_virtualbase_contextMenuEvent".}
proc fcQFontDialog_virtualbase_devType(self: pointer): cint {.importc: "QFontDialog_virtualbase_devType".}
proc fcQFontDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QFontDialog_virtualbase_heightForWidth".}
proc fcQFontDialog_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QFontDialog_virtualbase_hasHeightForWidth".}
proc fcQFontDialog_virtualbase_paintEngine(self: pointer): pointer {.importc: "QFontDialog_virtualbase_paintEngine".}
proc fcQFontDialog_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QFontDialog_virtualbase_event".}
proc fcQFontDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_mousePressEvent".}
proc fcQFontDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_mouseReleaseEvent".}
proc fcQFontDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQFontDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_mouseMoveEvent".}
proc fcQFontDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_wheelEvent".}
proc fcQFontDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_keyReleaseEvent".}
proc fcQFontDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_focusInEvent".}
proc fcQFontDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_focusOutEvent".}
proc fcQFontDialog_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_enterEvent".}
proc fcQFontDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_leaveEvent".}
proc fcQFontDialog_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_paintEvent".}
proc fcQFontDialog_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_moveEvent".}
proc fcQFontDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_tabletEvent".}
proc fcQFontDialog_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_actionEvent".}
proc fcQFontDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_dragEnterEvent".}
proc fcQFontDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_dragMoveEvent".}
proc fcQFontDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_dragLeaveEvent".}
proc fcQFontDialog_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_dropEvent".}
proc fcQFontDialog_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_hideEvent".}
proc fcQFontDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QFontDialog_virtualbase_nativeEvent".}
proc fcQFontDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QFontDialog_virtualbase_metric".}
proc fcQFontDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QFontDialog_virtualbase_initPainter".}
proc fcQFontDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QFontDialog_virtualbase_redirected".}
proc fcQFontDialog_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QFontDialog_virtualbase_sharedPainter".}
proc fcQFontDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QFontDialog_virtualbase_inputMethodEvent".}
proc fcQFontDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QFontDialog_virtualbase_inputMethodQuery".}
proc fcQFontDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QFontDialog_virtualbase_focusNextPrevChild".}
proc fcQFontDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_timerEvent".}
proc fcQFontDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_childEvent".}
proc fcQFontDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_customEvent".}
proc fcQFontDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFontDialog_virtualbase_connectNotify".}
proc fcQFontDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFontDialog_virtualbase_disconnectNotify".}
proc fcQFontDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QFontDialog_protectedbase_adjustPosition".}
proc fcQFontDialog_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QFontDialog_protectedbase_updateMicroFocus".}
proc fcQFontDialog_protectedbase_create(self: pointer): void {.importc: "QFontDialog_protectedbase_create".}
proc fcQFontDialog_protectedbase_destroy(self: pointer): void {.importc: "QFontDialog_protectedbase_destroy".}
proc fcQFontDialog_protectedbase_focusNextChild(self: pointer): bool {.importc: "QFontDialog_protectedbase_focusNextChild".}
proc fcQFontDialog_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QFontDialog_protectedbase_focusPreviousChild".}
proc fcQFontDialog_protectedbase_sender(self: pointer): pointer {.importc: "QFontDialog_protectedbase_sender".}
proc fcQFontDialog_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFontDialog_protectedbase_senderSignalIndex".}
proc fcQFontDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFontDialog_protectedbase_receivers".}
proc fcQFontDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFontDialog_protectedbase_isSignalConnected".}
proc fcQFontDialog_new(vtbl, vdata: pointer, parent: pointer): ptr cQFontDialog {.importc: "QFontDialog_new".}
proc fcQFontDialog_new2(vtbl, vdata: pointer): ptr cQFontDialog {.importc: "QFontDialog_new2".}
proc fcQFontDialog_new3(vtbl, vdata: pointer, initial: pointer): ptr cQFontDialog {.importc: "QFontDialog_new3".}
proc fcQFontDialog_new4(vtbl, vdata: pointer, initial: pointer, parent: pointer): ptr cQFontDialog {.importc: "QFontDialog_new4".}
proc fcQFontDialog_staticMetaObject(): pointer {.importc: "QFontDialog_staticMetaObject".}

proc metaObject*(self: gen_qfontdialog_types.QFontDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontDialog_metaObject(self.h), owned: false)

proc metacast*(self: gen_qfontdialog_types.QFontDialog, param1: cstring): pointer =
  fcQFontDialog_metacast(self.h, param1)

proc metacall*(self: gen_qfontdialog_types.QFontDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQFontDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfontdialog_types.QFontDialog, s: cstring): string =
  let v_ms = fcQFontDialog_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfontdialog_types.QFontDialog, s: cstring): string =
  let v_ms = fcQFontDialog_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCurrentFont*(self: gen_qfontdialog_types.QFontDialog, font: gen_qfont_types.QFont): void =
  fcQFontDialog_setCurrentFont(self.h, font.h)

proc currentFont*(self: gen_qfontdialog_types.QFontDialog): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_currentFont(self.h), owned: true)

proc selectedFont*(self: gen_qfontdialog_types.QFontDialog): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_selectedFont(self.h), owned: true)

proc setOption*(self: gen_qfontdialog_types.QFontDialog, option: cint): void =
  fcQFontDialog_setOption(self.h, cint(option))

proc testOption*(self: gen_qfontdialog_types.QFontDialog, option: cint): bool =
  fcQFontDialog_testOption(self.h, cint(option))

proc setOptions*(self: gen_qfontdialog_types.QFontDialog, options: cint): void =
  fcQFontDialog_setOptions(self.h, cint(options))

proc options*(self: gen_qfontdialog_types.QFontDialog): cint =
  cint(fcQFontDialog_options(self.h))

proc setVisible*(self: gen_qfontdialog_types.QFontDialog, visible: bool): void =
  fcQFontDialog_setVisible(self.h, visible)

proc getFont*(_: type gen_qfontdialog_types.QFontDialog, ok: ptr bool): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_getFont(ok), owned: true)

proc getFont*(_: type gen_qfontdialog_types.QFontDialog, ok: ptr bool, initial: gen_qfont_types.QFont): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_getFont2(ok, initial.h), owned: true)

proc currentFontChanged*(self: gen_qfontdialog_types.QFontDialog, font: gen_qfont_types.QFont): void =
  fcQFontDialog_currentFontChanged(self.h, font.h)

type QFontDialogcurrentFontChangedSlot* = proc(font: gen_qfont_types.QFont)
proc fcQFontDialog_slot_callback_currentFontChanged(slot: int, font: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QFontDialogcurrentFontChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qfont_types.QFont(h: font, owned: false)

  nimfunc[](slotval1)

proc fcQFontDialog_slot_callback_currentFontChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFontDialogcurrentFontChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentFontChanged*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogcurrentFontChangedSlot) =
  var tmp = new QFontDialogcurrentFontChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_connect_currentFontChanged(self.h, cast[int](addr tmp[]), fcQFontDialog_slot_callback_currentFontChanged, fcQFontDialog_slot_callback_currentFontChanged_release)

proc fontSelected*(self: gen_qfontdialog_types.QFontDialog, font: gen_qfont_types.QFont): void =
  fcQFontDialog_fontSelected(self.h, font.h)

type QFontDialogfontSelectedSlot* = proc(font: gen_qfont_types.QFont)
proc fcQFontDialog_slot_callback_fontSelected(slot: int, font: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QFontDialogfontSelectedSlot](cast[pointer](slot))
  let slotval1 = gen_qfont_types.QFont(h: font, owned: false)

  nimfunc[](slotval1)

proc fcQFontDialog_slot_callback_fontSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFontDialogfontSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFontSelected*(self: gen_qfontdialog_types.QFontDialog, slot: QFontDialogfontSelectedSlot) =
  var tmp = new QFontDialogfontSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFontDialog_connect_fontSelected(self.h, cast[int](addr tmp[]), fcQFontDialog_slot_callback_fontSelected, fcQFontDialog_slot_callback_fontSelected_release)

proc tr*(_: type gen_qfontdialog_types.QFontDialog, s: cstring, c: cstring): string =
  let v_ms = fcQFontDialog_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfontdialog_types.QFontDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFontDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfontdialog_types.QFontDialog, s: cstring, c: cstring): string =
  let v_ms = fcQFontDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfontdialog_types.QFontDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFontDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qfontdialog_types.QFontDialog, option: cint, on: bool): void =
  fcQFontDialog_setOption2(self.h, cint(option), on)

proc getFont*(_: type gen_qfontdialog_types.QFontDialog, ok: ptr bool, parent: gen_qwidget_types.QWidget): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_getFont22(ok, parent.h), owned: true)

proc getFont*(_: type gen_qfontdialog_types.QFontDialog, ok: ptr bool, initial: gen_qfont_types.QFont, parent: gen_qwidget_types.QWidget): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_getFont3(ok, initial.h, parent.h), owned: true)

proc getFont*(_: type gen_qfontdialog_types.QFontDialog, ok: ptr bool, initial: gen_qfont_types.QFont, parent: gen_qwidget_types.QWidget, title: openArray[char]): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_getFont4(ok, initial.h, parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title)))), owned: true)

proc getFont*(_: type gen_qfontdialog_types.QFontDialog, ok: ptr bool, initial: gen_qfont_types.QFont, parent: gen_qwidget_types.QWidget, title: openArray[char], options: cint): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontDialog_getFont5(ok, initial.h, parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), cint(options)), owned: true)

type QFontDialogmetaObjectProc* = proc(self: QFontDialog): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFontDialogmetacastProc* = proc(self: QFontDialog, param1: cstring): pointer {.raises: [], gcsafe.}
type QFontDialogmetacallProc* = proc(self: QFontDialog, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFontDialogsetVisibleProc* = proc(self: QFontDialog, visible: bool): void {.raises: [], gcsafe.}
type QFontDialogchangeEventProc* = proc(self: QFontDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFontDialogdoneProc* = proc(self: QFontDialog, resultVal: cint): void {.raises: [], gcsafe.}
type QFontDialogeventFilterProc* = proc(self: QFontDialog, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFontDialogsizeHintProc* = proc(self: QFontDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFontDialogminimumSizeHintProc* = proc(self: QFontDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFontDialogopenProc* = proc(self: QFontDialog): void {.raises: [], gcsafe.}
type QFontDialogexecProc* = proc(self: QFontDialog): cint {.raises: [], gcsafe.}
type QFontDialogacceptProc* = proc(self: QFontDialog): void {.raises: [], gcsafe.}
type QFontDialogrejectProc* = proc(self: QFontDialog): void {.raises: [], gcsafe.}
type QFontDialogkeyPressEventProc* = proc(self: QFontDialog, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QFontDialogcloseEventProc* = proc(self: QFontDialog, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QFontDialogshowEventProc* = proc(self: QFontDialog, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QFontDialogresizeEventProc* = proc(self: QFontDialog, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QFontDialogcontextMenuEventProc* = proc(self: QFontDialog, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QFontDialogdevTypeProc* = proc(self: QFontDialog): cint {.raises: [], gcsafe.}
type QFontDialogheightForWidthProc* = proc(self: QFontDialog, param1: cint): cint {.raises: [], gcsafe.}
type QFontDialoghasHeightForWidthProc* = proc(self: QFontDialog): bool {.raises: [], gcsafe.}
type QFontDialogpaintEngineProc* = proc(self: QFontDialog): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QFontDialogeventProc* = proc(self: QFontDialog, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFontDialogmousePressEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFontDialogmouseReleaseEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFontDialogmouseDoubleClickEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFontDialogmouseMoveEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFontDialogwheelEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QFontDialogkeyReleaseEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QFontDialogfocusInEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QFontDialogfocusOutEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QFontDialogenterEventProc* = proc(self: QFontDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFontDialogleaveEventProc* = proc(self: QFontDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFontDialogpaintEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QFontDialogmoveEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QFontDialogtabletEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QFontDialogactionEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QFontDialogdragEnterEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QFontDialogdragMoveEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QFontDialogdragLeaveEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QFontDialogdropEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QFontDialoghideEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QFontDialognativeEventProc* = proc(self: QFontDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QFontDialogmetricProc* = proc(self: QFontDialog, param1: cint): cint {.raises: [], gcsafe.}
type QFontDialoginitPainterProc* = proc(self: QFontDialog, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QFontDialogredirectedProc* = proc(self: QFontDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QFontDialogsharedPainterProc* = proc(self: QFontDialog): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QFontDialoginputMethodEventProc* = proc(self: QFontDialog, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QFontDialoginputMethodQueryProc* = proc(self: QFontDialog, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QFontDialogfocusNextPrevChildProc* = proc(self: QFontDialog, next: bool): bool {.raises: [], gcsafe.}
type QFontDialogtimerEventProc* = proc(self: QFontDialog, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFontDialogchildEventProc* = proc(self: QFontDialog, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFontDialogcustomEventProc* = proc(self: QFontDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFontDialogconnectNotifyProc* = proc(self: QFontDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFontDialogdisconnectNotifyProc* = proc(self: QFontDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QFontDialogVTable* {.inheritable, pure.} = object
  vtbl: cQFontDialogVTable
  metaObject*: QFontDialogmetaObjectProc
  metacast*: QFontDialogmetacastProc
  metacall*: QFontDialogmetacallProc
  setVisible*: QFontDialogsetVisibleProc
  changeEvent*: QFontDialogchangeEventProc
  done*: QFontDialogdoneProc
  eventFilter*: QFontDialogeventFilterProc
  sizeHint*: QFontDialogsizeHintProc
  minimumSizeHint*: QFontDialogminimumSizeHintProc
  open*: QFontDialogopenProc
  exec*: QFontDialogexecProc
  accept*: QFontDialogacceptProc
  reject*: QFontDialogrejectProc
  keyPressEvent*: QFontDialogkeyPressEventProc
  closeEvent*: QFontDialogcloseEventProc
  showEvent*: QFontDialogshowEventProc
  resizeEvent*: QFontDialogresizeEventProc
  contextMenuEvent*: QFontDialogcontextMenuEventProc
  devType*: QFontDialogdevTypeProc
  heightForWidth*: QFontDialogheightForWidthProc
  hasHeightForWidth*: QFontDialoghasHeightForWidthProc
  paintEngine*: QFontDialogpaintEngineProc
  event*: QFontDialogeventProc
  mousePressEvent*: QFontDialogmousePressEventProc
  mouseReleaseEvent*: QFontDialogmouseReleaseEventProc
  mouseDoubleClickEvent*: QFontDialogmouseDoubleClickEventProc
  mouseMoveEvent*: QFontDialogmouseMoveEventProc
  wheelEvent*: QFontDialogwheelEventProc
  keyReleaseEvent*: QFontDialogkeyReleaseEventProc
  focusInEvent*: QFontDialogfocusInEventProc
  focusOutEvent*: QFontDialogfocusOutEventProc
  enterEvent*: QFontDialogenterEventProc
  leaveEvent*: QFontDialogleaveEventProc
  paintEvent*: QFontDialogpaintEventProc
  moveEvent*: QFontDialogmoveEventProc
  tabletEvent*: QFontDialogtabletEventProc
  actionEvent*: QFontDialogactionEventProc
  dragEnterEvent*: QFontDialogdragEnterEventProc
  dragMoveEvent*: QFontDialogdragMoveEventProc
  dragLeaveEvent*: QFontDialogdragLeaveEventProc
  dropEvent*: QFontDialogdropEventProc
  hideEvent*: QFontDialoghideEventProc
  nativeEvent*: QFontDialognativeEventProc
  metric*: QFontDialogmetricProc
  initPainter*: QFontDialoginitPainterProc
  redirected*: QFontDialogredirectedProc
  sharedPainter*: QFontDialogsharedPainterProc
  inputMethodEvent*: QFontDialoginputMethodEventProc
  inputMethodQuery*: QFontDialoginputMethodQueryProc
  focusNextPrevChild*: QFontDialogfocusNextPrevChildProc
  timerEvent*: QFontDialogtimerEventProc
  childEvent*: QFontDialogchildEventProc
  customEvent*: QFontDialogcustomEventProc
  connectNotify*: QFontDialogconnectNotifyProc
  disconnectNotify*: QFontDialogdisconnectNotifyProc

proc QFontDialogmetaObject*(self: gen_qfontdialog_types.QFontDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontDialog_virtualbase_metaObject(self.h), owned: false)

proc QFontDialogmetacast*(self: gen_qfontdialog_types.QFontDialog, param1: cstring): pointer =
  fcQFontDialog_virtualbase_metacast(self.h, param1)

proc QFontDialogmetacall*(self: gen_qfontdialog_types.QFontDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQFontDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QFontDialogsetVisible*(self: gen_qfontdialog_types.QFontDialog, visible: bool): void =
  fcQFontDialog_virtualbase_setVisible(self.h, visible)

proc QFontDialogchangeEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQFontDialog_virtualbase_changeEvent(self.h, event.h)

proc QFontDialogdone*(self: gen_qfontdialog_types.QFontDialog, resultVal: cint): void =
  fcQFontDialog_virtualbase_done(self.h, resultVal)

proc QFontDialogeventFilter*(self: gen_qfontdialog_types.QFontDialog, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFontDialog_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc QFontDialogsizeHint*(self: gen_qfontdialog_types.QFontDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontDialog_virtualbase_sizeHint(self.h), owned: true)

proc QFontDialogminimumSizeHint*(self: gen_qfontdialog_types.QFontDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontDialog_virtualbase_minimumSizeHint(self.h), owned: true)

proc QFontDialogopen*(self: gen_qfontdialog_types.QFontDialog): void =
  fcQFontDialog_virtualbase_open(self.h)

proc QFontDialogexec*(self: gen_qfontdialog_types.QFontDialog): cint =
  fcQFontDialog_virtualbase_exec(self.h)

proc QFontDialogaccept*(self: gen_qfontdialog_types.QFontDialog): void =
  fcQFontDialog_virtualbase_accept(self.h)

proc QFontDialogreject*(self: gen_qfontdialog_types.QFontDialog): void =
  fcQFontDialog_virtualbase_reject(self.h)

proc QFontDialogkeyPressEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQFontDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc QFontDialogcloseEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQFontDialog_virtualbase_closeEvent(self.h, param1.h)

proc QFontDialogshowEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQFontDialog_virtualbase_showEvent(self.h, param1.h)

proc QFontDialogresizeEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQFontDialog_virtualbase_resizeEvent(self.h, param1.h)

proc QFontDialogcontextMenuEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQFontDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc QFontDialogdevType*(self: gen_qfontdialog_types.QFontDialog): cint =
  fcQFontDialog_virtualbase_devType(self.h)

proc QFontDialogheightForWidth*(self: gen_qfontdialog_types.QFontDialog, param1: cint): cint =
  fcQFontDialog_virtualbase_heightForWidth(self.h, param1)

proc QFontDialoghasHeightForWidth*(self: gen_qfontdialog_types.QFontDialog): bool =
  fcQFontDialog_virtualbase_hasHeightForWidth(self.h)

proc QFontDialogpaintEngine*(self: gen_qfontdialog_types.QFontDialog): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQFontDialog_virtualbase_paintEngine(self.h), owned: false)

proc QFontDialogevent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQFontDialog_virtualbase_event(self.h, event.h)

proc QFontDialogmousePressEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFontDialog_virtualbase_mousePressEvent(self.h, event.h)

proc QFontDialogmouseReleaseEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFontDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QFontDialogmouseDoubleClickEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFontDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QFontDialogmouseMoveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFontDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc QFontDialogwheelEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQFontDialog_virtualbase_wheelEvent(self.h, event.h)

proc QFontDialogkeyReleaseEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQFontDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc QFontDialogfocusInEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQFontDialog_virtualbase_focusInEvent(self.h, event.h)

proc QFontDialogfocusOutEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQFontDialog_virtualbase_focusOutEvent(self.h, event.h)

proc QFontDialogenterEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQFontDialog_virtualbase_enterEvent(self.h, event.h)

proc QFontDialogleaveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQFontDialog_virtualbase_leaveEvent(self.h, event.h)

proc QFontDialogpaintEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQFontDialog_virtualbase_paintEvent(self.h, event.h)

proc QFontDialogmoveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQFontDialog_virtualbase_moveEvent(self.h, event.h)

proc QFontDialogtabletEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQFontDialog_virtualbase_tabletEvent(self.h, event.h)

proc QFontDialogactionEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QActionEvent): void =
  fcQFontDialog_virtualbase_actionEvent(self.h, event.h)

proc QFontDialogdragEnterEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQFontDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc QFontDialogdragMoveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQFontDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc QFontDialogdragLeaveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQFontDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc QFontDialogdropEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QDropEvent): void =
  fcQFontDialog_virtualbase_dropEvent(self.h, event.h)

proc QFontDialoghideEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QHideEvent): void =
  fcQFontDialog_virtualbase_hideEvent(self.h, event.h)

proc QFontDialognativeEvent*(self: gen_qfontdialog_types.QFontDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQFontDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QFontDialogmetric*(self: gen_qfontdialog_types.QFontDialog, param1: cint): cint =
  fcQFontDialog_virtualbase_metric(self.h, cint(param1))

proc QFontDialoginitPainter*(self: gen_qfontdialog_types.QFontDialog, painter: gen_qpainter_types.QPainter): void =
  fcQFontDialog_virtualbase_initPainter(self.h, painter.h)

proc QFontDialogredirected*(self: gen_qfontdialog_types.QFontDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQFontDialog_virtualbase_redirected(self.h, offset.h), owned: false)

proc QFontDialogsharedPainter*(self: gen_qfontdialog_types.QFontDialog): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQFontDialog_virtualbase_sharedPainter(self.h), owned: false)

proc QFontDialoginputMethodEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQFontDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc QFontDialoginputMethodQuery*(self: gen_qfontdialog_types.QFontDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFontDialog_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QFontDialogfocusNextPrevChild*(self: gen_qfontdialog_types.QFontDialog, next: bool): bool =
  fcQFontDialog_virtualbase_focusNextPrevChild(self.h, next)

proc QFontDialogtimerEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFontDialog_virtualbase_timerEvent(self.h, event.h)

proc QFontDialogchildEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFontDialog_virtualbase_childEvent(self.h, event.h)

proc QFontDialogcustomEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQFontDialog_virtualbase_customEvent(self.h, event.h)

proc QFontDialogconnectNotify*(self: gen_qfontdialog_types.QFontDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFontDialog_virtualbase_connectNotify(self.h, signal.h)

proc QFontDialogdisconnectNotify*(self: gen_qfontdialog_types.QFontDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFontDialog_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQFontDialog_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQFontDialog_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQFontDialog_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQFontDialog_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc fcQFontDialog_vtable_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQFontDialog_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_vtable_callback_open(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  vtbl[].open(self)

proc fcQFontDialog_vtable_callback_exec(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc fcQFontDialog_vtable_callback_accept(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  vtbl[].accept(self)

proc fcQFontDialog_vtable_callback_reject(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  vtbl[].reject(self)

proc fcQFontDialog_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQFontDialog_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQFontDialog_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQFontDialog_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQFontDialog_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQFontDialog_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQFontDialog_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQFontDialog_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQFontDialog_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQFontDialog_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQFontDialog_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](fcQFontDialog_vdata(self))
  let self = QFontDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQFontDialog* {.inheritable.} = ref object of QFontDialog
  vtbl*: cQFontDialogVTable

method metaObject*(self: VirtualQFontDialog): gen_qobjectdefs_types.QMetaObject {.base.} =
  QFontDialogmetaObject(self[])
method metacast*(self: VirtualQFontDialog, param1: cstring): pointer {.base.} =
  QFontDialogmetacast(self[], param1)
method metacall*(self: VirtualQFontDialog, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QFontDialogmetacall(self[], param1, param2, param3)
method setVisible*(self: VirtualQFontDialog, visible: bool): void {.base.} =
  QFontDialogsetVisible(self[], visible)
method changeEvent*(self: VirtualQFontDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFontDialogchangeEvent(self[], event)
method done*(self: VirtualQFontDialog, resultVal: cint): void {.base.} =
  QFontDialogdone(self[], resultVal)
method eventFilter*(self: VirtualQFontDialog, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFontDialogeventFilter(self[], objectVal, event)
method sizeHint*(self: VirtualQFontDialog): gen_qsize_types.QSize {.base.} =
  QFontDialogsizeHint(self[])
method minimumSizeHint*(self: VirtualQFontDialog): gen_qsize_types.QSize {.base.} =
  QFontDialogminimumSizeHint(self[])
method open*(self: VirtualQFontDialog): void {.base.} =
  QFontDialogopen(self[])
method exec*(self: VirtualQFontDialog): cint {.base.} =
  QFontDialogexec(self[])
method accept*(self: VirtualQFontDialog): void {.base.} =
  QFontDialogaccept(self[])
method reject*(self: VirtualQFontDialog): void {.base.} =
  QFontDialogreject(self[])
method keyPressEvent*(self: VirtualQFontDialog, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QFontDialogkeyPressEvent(self[], param1)
method closeEvent*(self: VirtualQFontDialog, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QFontDialogcloseEvent(self[], param1)
method showEvent*(self: VirtualQFontDialog, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QFontDialogshowEvent(self[], param1)
method resizeEvent*(self: VirtualQFontDialog, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QFontDialogresizeEvent(self[], param1)
method contextMenuEvent*(self: VirtualQFontDialog, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QFontDialogcontextMenuEvent(self[], param1)
method devType*(self: VirtualQFontDialog): cint {.base.} =
  QFontDialogdevType(self[])
method heightForWidth*(self: VirtualQFontDialog, param1: cint): cint {.base.} =
  QFontDialogheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQFontDialog): bool {.base.} =
  QFontDialoghasHeightForWidth(self[])
method paintEngine*(self: VirtualQFontDialog): gen_qpaintengine_types.QPaintEngine {.base.} =
  QFontDialogpaintEngine(self[])
method event*(self: VirtualQFontDialog, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFontDialogevent(self[], event)
method mousePressEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFontDialogmousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFontDialogmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFontDialogmouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFontDialogmouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QFontDialogwheelEvent(self[], event)
method keyReleaseEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QFontDialogkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QFontDialogfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QFontDialogfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQFontDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFontDialogenterEvent(self[], event)
method leaveEvent*(self: VirtualQFontDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFontDialogleaveEvent(self[], event)
method paintEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QFontDialogpaintEvent(self[], event)
method moveEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QFontDialogmoveEvent(self[], event)
method tabletEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QFontDialogtabletEvent(self[], event)
method actionEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QActionEvent): void {.base.} =
  QFontDialogactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QFontDialogdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QFontDialogdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QFontDialogdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QDropEvent): void {.base.} =
  QFontDialogdropEvent(self[], event)
method hideEvent*(self: VirtualQFontDialog, event: gen_qevent_types.QHideEvent): void {.base.} =
  QFontDialoghideEvent(self[], event)
method nativeEvent*(self: VirtualQFontDialog, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QFontDialognativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQFontDialog, param1: cint): cint {.base.} =
  QFontDialogmetric(self[], param1)
method initPainter*(self: VirtualQFontDialog, painter: gen_qpainter_types.QPainter): void {.base.} =
  QFontDialoginitPainter(self[], painter)
method redirected*(self: VirtualQFontDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QFontDialogredirected(self[], offset)
method sharedPainter*(self: VirtualQFontDialog): gen_qpainter_types.QPainter {.base.} =
  QFontDialogsharedPainter(self[])
method inputMethodEvent*(self: VirtualQFontDialog, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QFontDialoginputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQFontDialog, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QFontDialoginputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQFontDialog, next: bool): bool {.base.} =
  QFontDialogfocusNextPrevChild(self[], next)
method timerEvent*(self: VirtualQFontDialog, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QFontDialogtimerEvent(self[], event)
method childEvent*(self: VirtualQFontDialog, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QFontDialogchildEvent(self[], event)
method customEvent*(self: VirtualQFontDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFontDialogcustomEvent(self[], event)
method connectNotify*(self: VirtualQFontDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFontDialogconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQFontDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFontDialogdisconnectNotify(self[], signal)

proc fcQFontDialog_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQFontDialog_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQFontDialog_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQFontDialog_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

proc fcQFontDialog_method_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = resultVal
  inst.done(slotval1)

proc fcQFontDialog_method_callback_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: objectVal, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQFontDialog_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_method_callback_open(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  inst.open()

proc fcQFontDialog_method_callback_exec(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  var virtualReturn = inst.exec()
  virtualReturn

proc fcQFontDialog_method_callback_accept(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  inst.accept()

proc fcQFontDialog_method_callback_reject(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  inst.reject()

proc fcQFontDialog_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQFontDialog_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

proc fcQFontDialog_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

proc fcQFontDialog_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

proc fcQFontDialog_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQFontDialog_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQFontDialog_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQFontDialog_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQFontDialog_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQFontDialog_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQFontDialog_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQFontDialog_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQFontDialog_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQFontDialog_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQFontDialog_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQFontDialog_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQFontDialog_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQFontDialog_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQFontDialog_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQFontDialog_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQFontDialog_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQFontDialog_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQFontDialog_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQFontDialog_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQFontDialog_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQFontDialog_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQFontDialog_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQFontDialog_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQFontDialog_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQFontDialog_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQFontDialog_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQFontDialog_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQFontDialog_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFontDialog_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQFontDialog_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQFontDialog_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQFontDialog_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQFontDialog_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQFontDialog_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontDialog](fcQFontDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc adjustPosition*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qwidget_types.QWidget): void =
  fcQFontDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qfontdialog_types.QFontDialog): void =
  fcQFontDialog_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qfontdialog_types.QFontDialog): void =
  fcQFontDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qfontdialog_types.QFontDialog): void =
  fcQFontDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qfontdialog_types.QFontDialog): bool =
  fcQFontDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qfontdialog_types.QFontDialog): bool =
  fcQFontDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qfontdialog_types.QFontDialog): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFontDialog_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qfontdialog_types.QFontDialog): cint =
  fcQFontDialog_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfontdialog_types.QFontDialog, signal: cstring): cint =
  fcQFontDialog_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfontdialog_types.QFontDialog, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFontDialog_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qfontdialog_types.QFontDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QFontDialogVTable = nil): gen_qfontdialog_types.QFontDialog =
  let vtbl = if vtbl == nil: new QFontDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFontDialogVTable](fcQFontDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQFontDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQFontDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQFontDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQFontDialog_vtable_callback_setVisible
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQFontDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = fcQFontDialog_vtable_callback_done
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQFontDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQFontDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQFontDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQFontDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = fcQFontDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = fcQFontDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = fcQFontDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQFontDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQFontDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQFontDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQFontDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQFontDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQFontDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQFontDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQFontDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQFontDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQFontDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQFontDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQFontDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQFontDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQFontDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQFontDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQFontDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQFontDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQFontDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQFontDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQFontDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQFontDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQFontDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQFontDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQFontDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQFontDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQFontDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQFontDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQFontDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQFontDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQFontDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQFontDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQFontDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQFontDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQFontDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQFontDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQFontDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQFontDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQFontDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQFontDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQFontDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQFontDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQFontDialog_vtable_callback_disconnectNotify
  gen_qfontdialog_types.QFontDialog(h: fcQFontDialog_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qfontdialog_types.QFontDialog,
    vtbl: ref QFontDialogVTable = nil): gen_qfontdialog_types.QFontDialog =
  let vtbl = if vtbl == nil: new QFontDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFontDialogVTable](fcQFontDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQFontDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQFontDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQFontDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQFontDialog_vtable_callback_setVisible
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQFontDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = fcQFontDialog_vtable_callback_done
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQFontDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQFontDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQFontDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQFontDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = fcQFontDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = fcQFontDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = fcQFontDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQFontDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQFontDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQFontDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQFontDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQFontDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQFontDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQFontDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQFontDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQFontDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQFontDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQFontDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQFontDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQFontDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQFontDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQFontDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQFontDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQFontDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQFontDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQFontDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQFontDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQFontDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQFontDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQFontDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQFontDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQFontDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQFontDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQFontDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQFontDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQFontDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQFontDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQFontDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQFontDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQFontDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQFontDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQFontDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQFontDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQFontDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQFontDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQFontDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQFontDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQFontDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQFontDialog_vtable_callback_disconnectNotify
  gen_qfontdialog_types.QFontDialog(h: fcQFontDialog_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qfontdialog_types.QFontDialog,
    initial: gen_qfont_types.QFont,
    vtbl: ref QFontDialogVTable = nil): gen_qfontdialog_types.QFontDialog =
  let vtbl = if vtbl == nil: new QFontDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFontDialogVTable](fcQFontDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQFontDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQFontDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQFontDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQFontDialog_vtable_callback_setVisible
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQFontDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = fcQFontDialog_vtable_callback_done
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQFontDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQFontDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQFontDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQFontDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = fcQFontDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = fcQFontDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = fcQFontDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQFontDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQFontDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQFontDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQFontDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQFontDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQFontDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQFontDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQFontDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQFontDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQFontDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQFontDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQFontDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQFontDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQFontDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQFontDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQFontDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQFontDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQFontDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQFontDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQFontDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQFontDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQFontDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQFontDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQFontDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQFontDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQFontDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQFontDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQFontDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQFontDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQFontDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQFontDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQFontDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQFontDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQFontDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQFontDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQFontDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQFontDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQFontDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQFontDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQFontDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQFontDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQFontDialog_vtable_callback_disconnectNotify
  gen_qfontdialog_types.QFontDialog(h: fcQFontDialog_new3(addr(vtbl[].vtbl), addr(vtbl[]), initial.h), owned: true)

proc create*(T: type gen_qfontdialog_types.QFontDialog,
    initial: gen_qfont_types.QFont, parent: gen_qwidget_types.QWidget,
    vtbl: ref QFontDialogVTable = nil): gen_qfontdialog_types.QFontDialog =
  let vtbl = if vtbl == nil: new QFontDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFontDialogVTable](fcQFontDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQFontDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQFontDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQFontDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQFontDialog_vtable_callback_setVisible
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQFontDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = fcQFontDialog_vtable_callback_done
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQFontDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQFontDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQFontDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = fcQFontDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = fcQFontDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = fcQFontDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = fcQFontDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQFontDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQFontDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQFontDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQFontDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQFontDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQFontDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQFontDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQFontDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQFontDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQFontDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQFontDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQFontDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQFontDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQFontDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQFontDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQFontDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQFontDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQFontDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQFontDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQFontDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQFontDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQFontDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQFontDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQFontDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQFontDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQFontDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQFontDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQFontDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQFontDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQFontDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQFontDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQFontDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQFontDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQFontDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQFontDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQFontDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQFontDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQFontDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQFontDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQFontDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQFontDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQFontDialog_vtable_callback_disconnectNotify
  gen_qfontdialog_types.QFontDialog(h: fcQFontDialog_new4(addr(vtbl[].vtbl), addr(vtbl[]), initial.h, parent.h), owned: true)

const cQFontDialog_mvtbl = cQFontDialogVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFontDialog()[])](self.fcQFontDialog_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQFontDialog_method_callback_metaObject,
  metacast: fcQFontDialog_method_callback_metacast,
  metacall: fcQFontDialog_method_callback_metacall,
  setVisible: fcQFontDialog_method_callback_setVisible,
  changeEvent: fcQFontDialog_method_callback_changeEvent,
  done: fcQFontDialog_method_callback_done,
  eventFilter: fcQFontDialog_method_callback_eventFilter,
  sizeHint: fcQFontDialog_method_callback_sizeHint,
  minimumSizeHint: fcQFontDialog_method_callback_minimumSizeHint,
  open: fcQFontDialog_method_callback_open,
  exec: fcQFontDialog_method_callback_exec,
  accept: fcQFontDialog_method_callback_accept,
  reject: fcQFontDialog_method_callback_reject,
  keyPressEvent: fcQFontDialog_method_callback_keyPressEvent,
  closeEvent: fcQFontDialog_method_callback_closeEvent,
  showEvent: fcQFontDialog_method_callback_showEvent,
  resizeEvent: fcQFontDialog_method_callback_resizeEvent,
  contextMenuEvent: fcQFontDialog_method_callback_contextMenuEvent,
  devType: fcQFontDialog_method_callback_devType,
  heightForWidth: fcQFontDialog_method_callback_heightForWidth,
  hasHeightForWidth: fcQFontDialog_method_callback_hasHeightForWidth,
  paintEngine: fcQFontDialog_method_callback_paintEngine,
  event: fcQFontDialog_method_callback_event,
  mousePressEvent: fcQFontDialog_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQFontDialog_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQFontDialog_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQFontDialog_method_callback_mouseMoveEvent,
  wheelEvent: fcQFontDialog_method_callback_wheelEvent,
  keyReleaseEvent: fcQFontDialog_method_callback_keyReleaseEvent,
  focusInEvent: fcQFontDialog_method_callback_focusInEvent,
  focusOutEvent: fcQFontDialog_method_callback_focusOutEvent,
  enterEvent: fcQFontDialog_method_callback_enterEvent,
  leaveEvent: fcQFontDialog_method_callback_leaveEvent,
  paintEvent: fcQFontDialog_method_callback_paintEvent,
  moveEvent: fcQFontDialog_method_callback_moveEvent,
  tabletEvent: fcQFontDialog_method_callback_tabletEvent,
  actionEvent: fcQFontDialog_method_callback_actionEvent,
  dragEnterEvent: fcQFontDialog_method_callback_dragEnterEvent,
  dragMoveEvent: fcQFontDialog_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQFontDialog_method_callback_dragLeaveEvent,
  dropEvent: fcQFontDialog_method_callback_dropEvent,
  hideEvent: fcQFontDialog_method_callback_hideEvent,
  nativeEvent: fcQFontDialog_method_callback_nativeEvent,
  metric: fcQFontDialog_method_callback_metric,
  initPainter: fcQFontDialog_method_callback_initPainter,
  redirected: fcQFontDialog_method_callback_redirected,
  sharedPainter: fcQFontDialog_method_callback_sharedPainter,
  inputMethodEvent: fcQFontDialog_method_callback_inputMethodEvent,
  inputMethodQuery: fcQFontDialog_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQFontDialog_method_callback_focusNextPrevChild,
  timerEvent: fcQFontDialog_method_callback_timerEvent,
  childEvent: fcQFontDialog_method_callback_childEvent,
  customEvent: fcQFontDialog_method_callback_customEvent,
  connectNotify: fcQFontDialog_method_callback_connectNotify,
  disconnectNotify: fcQFontDialog_method_callback_disconnectNotify,
)
proc create*(T: type gen_qfontdialog_types.QFontDialog,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQFontDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFontDialog_new(addr(cQFontDialog_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qfontdialog_types.QFontDialog,
    inst: VirtualQFontDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFontDialog_new2(addr(cQFontDialog_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qfontdialog_types.QFontDialog,
    initial: gen_qfont_types.QFont,
    inst: VirtualQFontDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFontDialog_new3(addr(cQFontDialog_mvtbl), addr(inst[]), initial.h)
  inst[].owned = true

proc create*(T: type gen_qfontdialog_types.QFontDialog,
    initial: gen_qfont_types.QFont, parent: gen_qwidget_types.QWidget,
    inst: VirtualQFontDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFontDialog_new4(addr(cQFontDialog_mvtbl), addr(inst[]), initial.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qfontdialog_types.QFontDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontDialog_staticMetaObject())
