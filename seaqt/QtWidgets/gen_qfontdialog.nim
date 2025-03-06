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

proc fcQFontDialog_metaObject(self: pointer, ): pointer {.importc: "QFontDialog_metaObject".}
proc fcQFontDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QFontDialog_metacast".}
proc fcQFontDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFontDialog_metacall".}
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
type cQFontDialogVTable = object
  destructor*: proc(vtbl: ptr cQFontDialogVTable, self: ptr cQFontDialog) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  done*: proc(vtbl, self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  accept*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQFontDialog_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QFontDialog_virtualbase_metaObject".}
proc fcQFontDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFontDialog_virtualbase_metacast".}
proc fcQFontDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFontDialog_virtualbase_metacall".}
proc fcQFontDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QFontDialog_virtualbase_setVisible".}
proc fcQFontDialog_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_changeEvent".}
proc fcQFontDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QFontDialog_virtualbase_done".}
proc fcQFontDialog_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QFontDialog_virtualbase_eventFilter".}
proc fcQFontDialog_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QFontDialog_virtualbase_sizeHint".}
proc fcQFontDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QFontDialog_virtualbase_minimumSizeHint".}
proc fcQFontDialog_virtualbase_open(self: pointer, ): void {.importc: "QFontDialog_virtualbase_open".}
proc fcQFontDialog_virtualbase_exec(self: pointer, ): cint {.importc: "QFontDialog_virtualbase_exec".}
proc fcQFontDialog_virtualbase_accept(self: pointer, ): void {.importc: "QFontDialog_virtualbase_accept".}
proc fcQFontDialog_virtualbase_reject(self: pointer, ): void {.importc: "QFontDialog_virtualbase_reject".}
proc fcQFontDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QFontDialog_virtualbase_keyPressEvent".}
proc fcQFontDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QFontDialog_virtualbase_closeEvent".}
proc fcQFontDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QFontDialog_virtualbase_showEvent".}
proc fcQFontDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QFontDialog_virtualbase_resizeEvent".}
proc fcQFontDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QFontDialog_virtualbase_contextMenuEvent".}
proc fcQFontDialog_virtualbase_devType(self: pointer, ): cint {.importc: "QFontDialog_virtualbase_devType".}
proc fcQFontDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QFontDialog_virtualbase_heightForWidth".}
proc fcQFontDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QFontDialog_virtualbase_hasHeightForWidth".}
proc fcQFontDialog_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QFontDialog_virtualbase_paintEngine".}
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
proc fcQFontDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QFontDialog_virtualbase_nativeEvent".}
proc fcQFontDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QFontDialog_virtualbase_metric".}
proc fcQFontDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QFontDialog_virtualbase_initPainter".}
proc fcQFontDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QFontDialog_virtualbase_redirected".}
proc fcQFontDialog_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QFontDialog_virtualbase_sharedPainter".}
proc fcQFontDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QFontDialog_virtualbase_inputMethodEvent".}
proc fcQFontDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QFontDialog_virtualbase_inputMethodQuery".}
proc fcQFontDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QFontDialog_virtualbase_focusNextPrevChild".}
proc fcQFontDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_timerEvent".}
proc fcQFontDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_childEvent".}
proc fcQFontDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFontDialog_virtualbase_customEvent".}
proc fcQFontDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFontDialog_virtualbase_connectNotify".}
proc fcQFontDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFontDialog_virtualbase_disconnectNotify".}
proc fcQFontDialog_new(vtbl: pointer, parent: pointer): ptr cQFontDialog {.importc: "QFontDialog_new".}
proc fcQFontDialog_new2(vtbl: pointer, ): ptr cQFontDialog {.importc: "QFontDialog_new2".}
proc fcQFontDialog_new3(vtbl: pointer, initial: pointer): ptr cQFontDialog {.importc: "QFontDialog_new3".}
proc fcQFontDialog_new4(vtbl: pointer, initial: pointer, parent: pointer): ptr cQFontDialog {.importc: "QFontDialog_new4".}
proc fcQFontDialog_staticMetaObject(): pointer {.importc: "QFontDialog_staticMetaObject".}
proc fcQFontDialog_delete(self: pointer) {.importc: "QFontDialog_delete".}

proc metaObject*(self: gen_qfontdialog_types.QFontDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontDialog_metaObject(self.h))

proc metacast*(self: gen_qfontdialog_types.QFontDialog, param1: cstring): pointer =
  fcQFontDialog_metacast(self.h, param1)

proc metacall*(self: gen_qfontdialog_types.QFontDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQFontDialog_metacall(self.h, cint(param1), param2, param3)

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
proc miqt_exec_callback_cQFontDialog_currentFontChanged(slot: int, font: pointer) {.exportc: "miqt_exec_callback_QFontDialog_currentFontChanged".} =
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
proc miqt_exec_callback_cQFontDialog_fontSelected(slot: int, font: pointer) {.exportc: "miqt_exec_callback_QFontDialog_fontSelected".} =
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
type QFontDialogenterEventProc* = proc(self: QFontDialog, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
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
type QFontDialognativeEventProc* = proc(self: QFontDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QFontDialogVTable* = object
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
proc QFontDialogmetaObject*(self: gen_qfontdialog_types.QFontDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontDialog_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQFontDialog_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QFontDialogmetacast*(self: gen_qfontdialog_types.QFontDialog, param1: cstring): pointer =
  fcQFontDialog_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQFontDialog_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFontDialogmetacall*(self: gen_qfontdialog_types.QFontDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQFontDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQFontDialog_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFontDialogsetVisible*(self: gen_qfontdialog_types.QFontDialog, visible: bool): void =
  fcQFontDialog_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQFontDialog_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QFontDialogchangeEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQFontDialog_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].changeEvent(self, slotval1)

proc QFontDialogdone*(self: gen_qfontdialog_types.QFontDialog, resultVal: cint): void =
  fcQFontDialog_virtualbase_done(self.h, resultVal)

proc miqt_exec_callback_cQFontDialog_done(vtbl: pointer, self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QFontDialogeventFilter*(self: gen_qfontdialog_types.QFontDialog, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFontDialog_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQFontDialog_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFontDialogsizeHint*(self: gen_qfontdialog_types.QFontDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontDialog_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQFontDialog_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QFontDialogminimumSizeHint*(self: gen_qfontdialog_types.QFontDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontDialog_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQFontDialog_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QFontDialogopen*(self: gen_qfontdialog_types.QFontDialog, ): void =
  fcQFontDialog_virtualbase_open(self.h)

proc miqt_exec_callback_cQFontDialog_open(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  vtbl[].open(self)

proc QFontDialogexec*(self: gen_qfontdialog_types.QFontDialog, ): cint =
  fcQFontDialog_virtualbase_exec(self.h)

proc miqt_exec_callback_cQFontDialog_exec(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QFontDialogaccept*(self: gen_qfontdialog_types.QFontDialog, ): void =
  fcQFontDialog_virtualbase_accept(self.h)

proc miqt_exec_callback_cQFontDialog_accept(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  vtbl[].accept(self)

proc QFontDialogreject*(self: gen_qfontdialog_types.QFontDialog, ): void =
  fcQFontDialog_virtualbase_reject(self.h)

proc miqt_exec_callback_cQFontDialog_reject(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  vtbl[].reject(self)

proc QFontDialogkeyPressEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQFontDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQFontDialog_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QFontDialogcloseEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQFontDialog_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQFontDialog_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)
  vtbl[].closeEvent(self, slotval1)

proc QFontDialogshowEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQFontDialog_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQFontDialog_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QFontDialogresizeEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQFontDialog_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQFontDialog_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QFontDialogcontextMenuEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQFontDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQFontDialog_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QFontDialogdevType*(self: gen_qfontdialog_types.QFontDialog, ): cint =
  fcQFontDialog_virtualbase_devType(self.h)

proc miqt_exec_callback_cQFontDialog_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QFontDialogheightForWidth*(self: gen_qfontdialog_types.QFontDialog, param1: cint): cint =
  fcQFontDialog_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQFontDialog_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QFontDialoghasHeightForWidth*(self: gen_qfontdialog_types.QFontDialog, ): bool =
  fcQFontDialog_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQFontDialog_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QFontDialogpaintEngine*(self: gen_qfontdialog_types.QFontDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQFontDialog_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQFontDialog_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QFontDialogevent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQFontDialog_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFontDialogmousePressEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFontDialog_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QFontDialogmouseReleaseEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFontDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QFontDialogmouseDoubleClickEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFontDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QFontDialogmouseMoveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQFontDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QFontDialogwheelEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQFontDialog_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QFontDialogkeyReleaseEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQFontDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QFontDialogfocusInEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQFontDialog_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QFontDialogfocusOutEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQFontDialog_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QFontDialogenterEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QEnterEvent): void =
  fcQFontDialog_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QFontDialogleaveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQFontDialog_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QFontDialogpaintEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQFontDialog_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QFontDialogmoveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQFontDialog_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QFontDialogtabletEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQFontDialog_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QFontDialogactionEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QActionEvent): void =
  fcQFontDialog_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QFontDialogdragEnterEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQFontDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QFontDialogdragMoveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQFontDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QFontDialogdragLeaveEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQFontDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QFontDialogdropEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QDropEvent): void =
  fcQFontDialog_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QFontDialoghideEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qevent_types.QHideEvent): void =
  fcQFontDialog_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QFontDialognativeEvent*(self: gen_qfontdialog_types.QFontDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQFontDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQFontDialog_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFontDialogmetric*(self: gen_qfontdialog_types.QFontDialog, param1: cint): cint =
  fcQFontDialog_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQFontDialog_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QFontDialoginitPainter*(self: gen_qfontdialog_types.QFontDialog, painter: gen_qpainter_types.QPainter): void =
  fcQFontDialog_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQFontDialog_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QFontDialogredirected*(self: gen_qfontdialog_types.QFontDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQFontDialog_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQFontDialog_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QFontDialogsharedPainter*(self: gen_qfontdialog_types.QFontDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQFontDialog_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQFontDialog_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QFontDialoginputMethodEvent*(self: gen_qfontdialog_types.QFontDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQFontDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQFontDialog_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QFontDialoginputMethodQuery*(self: gen_qfontdialog_types.QFontDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFontDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQFontDialog_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QFontDialogfocusNextPrevChild*(self: gen_qfontdialog_types.QFontDialog, next: bool): bool =
  fcQFontDialog_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQFontDialog_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QFontDialogtimerEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFontDialog_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QFontDialogchildEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFontDialog_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QFontDialogcustomEvent*(self: gen_qfontdialog_types.QFontDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQFontDialog_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQFontDialog_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QFontDialogconnectNotify*(self: gen_qfontdialog_types.QFontDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFontDialog_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFontDialog_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QFontDialogdisconnectNotify*(self: gen_qfontdialog_types.QFontDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFontDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFontDialog_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontDialogVTable](vtbl)
  let self = QFontDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qfontdialog_types.QFontDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QFontDialogVTable = nil): gen_qfontdialog_types.QFontDialog =
  let vtbl = if vtbl == nil: new QFontDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFontDialogVTable, _: ptr cQFontDialog) {.cdecl.} =
    let vtbl = cast[ref QFontDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFontDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFontDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFontDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFontDialog_setVisible
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFontDialog_changeEvent
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQFontDialog_done
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFontDialog_eventFilter
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFontDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFontDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFontDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQFontDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQFontDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQFontDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFontDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFontDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFontDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFontDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFontDialog_contextMenuEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFontDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFontDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFontDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFontDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFontDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFontDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFontDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFontDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFontDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFontDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFontDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFontDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFontDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFontDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFontDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFontDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFontDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFontDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFontDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFontDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFontDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFontDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFontDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFontDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFontDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFontDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFontDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFontDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFontDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFontDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFontDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFontDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFontDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFontDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFontDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFontDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFontDialog_disconnectNotify
  gen_qfontdialog_types.QFontDialog(h: fcQFontDialog_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qfontdialog_types.QFontDialog,
    vtbl: ref QFontDialogVTable = nil): gen_qfontdialog_types.QFontDialog =
  let vtbl = if vtbl == nil: new QFontDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFontDialogVTable, _: ptr cQFontDialog) {.cdecl.} =
    let vtbl = cast[ref QFontDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFontDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFontDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFontDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFontDialog_setVisible
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFontDialog_changeEvent
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQFontDialog_done
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFontDialog_eventFilter
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFontDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFontDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFontDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQFontDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQFontDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQFontDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFontDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFontDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFontDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFontDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFontDialog_contextMenuEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFontDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFontDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFontDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFontDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFontDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFontDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFontDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFontDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFontDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFontDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFontDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFontDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFontDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFontDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFontDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFontDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFontDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFontDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFontDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFontDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFontDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFontDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFontDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFontDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFontDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFontDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFontDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFontDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFontDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFontDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFontDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFontDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFontDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFontDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFontDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFontDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFontDialog_disconnectNotify
  gen_qfontdialog_types.QFontDialog(h: fcQFontDialog_new2(addr(vtbl[]), ))

proc create*(T: type gen_qfontdialog_types.QFontDialog,
    initial: gen_qfont_types.QFont,
    vtbl: ref QFontDialogVTable = nil): gen_qfontdialog_types.QFontDialog =
  let vtbl = if vtbl == nil: new QFontDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFontDialogVTable, _: ptr cQFontDialog) {.cdecl.} =
    let vtbl = cast[ref QFontDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFontDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFontDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFontDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFontDialog_setVisible
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFontDialog_changeEvent
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQFontDialog_done
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFontDialog_eventFilter
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFontDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFontDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFontDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQFontDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQFontDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQFontDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFontDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFontDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFontDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFontDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFontDialog_contextMenuEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFontDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFontDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFontDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFontDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFontDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFontDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFontDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFontDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFontDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFontDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFontDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFontDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFontDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFontDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFontDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFontDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFontDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFontDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFontDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFontDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFontDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFontDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFontDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFontDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFontDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFontDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFontDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFontDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFontDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFontDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFontDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFontDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFontDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFontDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFontDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFontDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFontDialog_disconnectNotify
  gen_qfontdialog_types.QFontDialog(h: fcQFontDialog_new3(addr(vtbl[]), initial.h))

proc create*(T: type gen_qfontdialog_types.QFontDialog,
    initial: gen_qfont_types.QFont, parent: gen_qwidget_types.QWidget,
    vtbl: ref QFontDialogVTable = nil): gen_qfontdialog_types.QFontDialog =
  let vtbl = if vtbl == nil: new QFontDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFontDialogVTable, _: ptr cQFontDialog) {.cdecl.} =
    let vtbl = cast[ref QFontDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFontDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFontDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFontDialog_metacall
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFontDialog_setVisible
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFontDialog_changeEvent
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQFontDialog_done
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFontDialog_eventFilter
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFontDialog_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFontDialog_minimumSizeHint
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFontDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQFontDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQFontDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQFontDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFontDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFontDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFontDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFontDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFontDialog_contextMenuEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFontDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFontDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFontDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFontDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFontDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFontDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFontDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFontDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFontDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFontDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFontDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFontDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFontDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFontDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFontDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFontDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFontDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFontDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFontDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFontDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFontDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFontDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFontDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFontDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFontDialog_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFontDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFontDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFontDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFontDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFontDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFontDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFontDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFontDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFontDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFontDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFontDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFontDialog_disconnectNotify
  gen_qfontdialog_types.QFontDialog(h: fcQFontDialog_new4(addr(vtbl[]), initial.h, parent.h))

proc staticMetaObject*(_: type gen_qfontdialog_types.QFontDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontDialog_staticMetaObject())
proc delete*(self: gen_qfontdialog_types.QFontDialog) =
  fcQFontDialog_delete(self.h)
