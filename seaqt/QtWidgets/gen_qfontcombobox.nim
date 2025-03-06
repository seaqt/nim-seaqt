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
  gen_qfont_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qcombobox,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQFontComboBox*{.exportc: "QFontComboBox", incompleteStruct.} = object

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
proc fcQFontComboBox_connect_currentFontChanged(self: pointer, slot: int, callback: proc (slot: int, f: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFontComboBox_connect_currentFontChanged".}
proc fcQFontComboBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFontComboBox_tr2".}
proc fcQFontComboBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFontComboBox_tr3".}
proc fcQFontComboBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFontComboBox_trUtf82".}
proc fcQFontComboBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFontComboBox_trUtf83".}
type cQFontComboBoxVTable = object
  destructor*: proc(vtbl: ptr cQFontComboBoxVTable, self: ptr cQFontComboBox) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  showPopup*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  hidePopup*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQFontComboBox_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QFontComboBox_virtualbase_metaObject".}
proc fcQFontComboBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFontComboBox_virtualbase_metacast".}
proc fcQFontComboBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFontComboBox_virtualbase_metacall".}
proc fcQFontComboBox_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QFontComboBox_virtualbase_sizeHint".}
proc fcQFontComboBox_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QFontComboBox_virtualbase_event".}
proc fcQFontComboBox_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QFontComboBox_virtualbase_minimumSizeHint".}
proc fcQFontComboBox_virtualbase_showPopup(self: pointer, ): void {.importc: "QFontComboBox_virtualbase_showPopup".}
proc fcQFontComboBox_virtualbase_hidePopup(self: pointer, ): void {.importc: "QFontComboBox_virtualbase_hidePopup".}
proc fcQFontComboBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QFontComboBox_virtualbase_inputMethodQuery".}
proc fcQFontComboBox_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_focusInEvent".}
proc fcQFontComboBox_virtualbase_focusOutEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_focusOutEvent".}
proc fcQFontComboBox_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_changeEvent".}
proc fcQFontComboBox_virtualbase_resizeEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_resizeEvent".}
proc fcQFontComboBox_virtualbase_paintEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_paintEvent".}
proc fcQFontComboBox_virtualbase_showEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_showEvent".}
proc fcQFontComboBox_virtualbase_hideEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_hideEvent".}
proc fcQFontComboBox_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_mousePressEvent".}
proc fcQFontComboBox_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_mouseReleaseEvent".}
proc fcQFontComboBox_virtualbase_keyPressEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_keyPressEvent".}
proc fcQFontComboBox_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_keyReleaseEvent".}
proc fcQFontComboBox_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_wheelEvent".}
proc fcQFontComboBox_virtualbase_contextMenuEvent(self: pointer, e: pointer): void {.importc: "QFontComboBox_virtualbase_contextMenuEvent".}
proc fcQFontComboBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QFontComboBox_virtualbase_inputMethodEvent".}
proc fcQFontComboBox_virtualbase_devType(self: pointer, ): cint {.importc: "QFontComboBox_virtualbase_devType".}
proc fcQFontComboBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QFontComboBox_virtualbase_setVisible".}
proc fcQFontComboBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QFontComboBox_virtualbase_heightForWidth".}
proc fcQFontComboBox_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QFontComboBox_virtualbase_hasHeightForWidth".}
proc fcQFontComboBox_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QFontComboBox_virtualbase_paintEngine".}
proc fcQFontComboBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_mouseDoubleClickEvent".}
proc fcQFontComboBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_mouseMoveEvent".}
proc fcQFontComboBox_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_enterEvent".}
proc fcQFontComboBox_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_leaveEvent".}
proc fcQFontComboBox_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_moveEvent".}
proc fcQFontComboBox_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_closeEvent".}
proc fcQFontComboBox_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_tabletEvent".}
proc fcQFontComboBox_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_actionEvent".}
proc fcQFontComboBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_dragEnterEvent".}
proc fcQFontComboBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_dragMoveEvent".}
proc fcQFontComboBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_dragLeaveEvent".}
proc fcQFontComboBox_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_dropEvent".}
proc fcQFontComboBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QFontComboBox_virtualbase_nativeEvent".}
proc fcQFontComboBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QFontComboBox_virtualbase_metric".}
proc fcQFontComboBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QFontComboBox_virtualbase_initPainter".}
proc fcQFontComboBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QFontComboBox_virtualbase_redirected".}
proc fcQFontComboBox_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QFontComboBox_virtualbase_sharedPainter".}
proc fcQFontComboBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QFontComboBox_virtualbase_focusNextPrevChild".}
proc fcQFontComboBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFontComboBox_virtualbase_eventFilter".}
proc fcQFontComboBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_timerEvent".}
proc fcQFontComboBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_childEvent".}
proc fcQFontComboBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_customEvent".}
proc fcQFontComboBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFontComboBox_virtualbase_connectNotify".}
proc fcQFontComboBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFontComboBox_virtualbase_disconnectNotify".}
proc fcQFontComboBox_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QFontComboBox_protectedbase_initStyleOption".}
proc fcQFontComboBox_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QFontComboBox_protectedbase_updateMicroFocus".}
proc fcQFontComboBox_protectedbase_create(self: pointer, ): void {.importc: "QFontComboBox_protectedbase_create".}
proc fcQFontComboBox_protectedbase_destroy(self: pointer, ): void {.importc: "QFontComboBox_protectedbase_destroy".}
proc fcQFontComboBox_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QFontComboBox_protectedbase_focusNextChild".}
proc fcQFontComboBox_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QFontComboBox_protectedbase_focusPreviousChild".}
proc fcQFontComboBox_protectedbase_sender(self: pointer, ): pointer {.importc: "QFontComboBox_protectedbase_sender".}
proc fcQFontComboBox_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QFontComboBox_protectedbase_senderSignalIndex".}
proc fcQFontComboBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFontComboBox_protectedbase_receivers".}
proc fcQFontComboBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFontComboBox_protectedbase_isSignalConnected".}
proc fcQFontComboBox_new(vtbl: pointer, parent: pointer): ptr cQFontComboBox {.importc: "QFontComboBox_new".}
proc fcQFontComboBox_new2(vtbl: pointer, ): ptr cQFontComboBox {.importc: "QFontComboBox_new2".}
proc fcQFontComboBox_staticMetaObject(): pointer {.importc: "QFontComboBox_staticMetaObject".}
proc fcQFontComboBox_delete(self: pointer) {.importc: "QFontComboBox_delete".}

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
proc miqt_exec_callback_cQFontComboBox_currentFontChanged(slot: int, f: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QFontComboBoxcurrentFontChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qfont_types.QFont(h: f)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQFontComboBox_currentFontChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFontComboBoxcurrentFontChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentFontChanged*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxcurrentFontChangedSlot) =
  var tmp = new QFontComboBoxcurrentFontChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_connect_currentFontChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQFontComboBox_currentFontChanged, miqt_exec_callback_cQFontComboBox_currentFontChanged_release)

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

type QFontComboBoxmetaObjectProc* = proc(self: QFontComboBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFontComboBoxmetacastProc* = proc(self: QFontComboBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QFontComboBoxmetacallProc* = proc(self: QFontComboBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFontComboBoxsizeHintProc* = proc(self: QFontComboBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFontComboBoxeventProc* = proc(self: QFontComboBox, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFontComboBoxminimumSizeHintProc* = proc(self: QFontComboBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFontComboBoxshowPopupProc* = proc(self: QFontComboBox): void {.raises: [], gcsafe.}
type QFontComboBoxhidePopupProc* = proc(self: QFontComboBox): void {.raises: [], gcsafe.}
type QFontComboBoxinputMethodQueryProc* = proc(self: QFontComboBox, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QFontComboBoxfocusInEventProc* = proc(self: QFontComboBox, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QFontComboBoxfocusOutEventProc* = proc(self: QFontComboBox, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QFontComboBoxchangeEventProc* = proc(self: QFontComboBox, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFontComboBoxresizeEventProc* = proc(self: QFontComboBox, e: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QFontComboBoxpaintEventProc* = proc(self: QFontComboBox, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QFontComboBoxshowEventProc* = proc(self: QFontComboBox, e: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QFontComboBoxhideEventProc* = proc(self: QFontComboBox, e: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QFontComboBoxmousePressEventProc* = proc(self: QFontComboBox, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFontComboBoxmouseReleaseEventProc* = proc(self: QFontComboBox, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFontComboBoxkeyPressEventProc* = proc(self: QFontComboBox, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QFontComboBoxkeyReleaseEventProc* = proc(self: QFontComboBox, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QFontComboBoxwheelEventProc* = proc(self: QFontComboBox, e: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QFontComboBoxcontextMenuEventProc* = proc(self: QFontComboBox, e: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QFontComboBoxinputMethodEventProc* = proc(self: QFontComboBox, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QFontComboBoxdevTypeProc* = proc(self: QFontComboBox): cint {.raises: [], gcsafe.}
type QFontComboBoxsetVisibleProc* = proc(self: QFontComboBox, visible: bool): void {.raises: [], gcsafe.}
type QFontComboBoxheightForWidthProc* = proc(self: QFontComboBox, param1: cint): cint {.raises: [], gcsafe.}
type QFontComboBoxhasHeightForWidthProc* = proc(self: QFontComboBox): bool {.raises: [], gcsafe.}
type QFontComboBoxpaintEngineProc* = proc(self: QFontComboBox): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QFontComboBoxmouseDoubleClickEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFontComboBoxmouseMoveEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFontComboBoxenterEventProc* = proc(self: QFontComboBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFontComboBoxleaveEventProc* = proc(self: QFontComboBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFontComboBoxmoveEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QFontComboBoxcloseEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QFontComboBoxtabletEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QFontComboBoxactionEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QFontComboBoxdragEnterEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QFontComboBoxdragMoveEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QFontComboBoxdragLeaveEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QFontComboBoxdropEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QFontComboBoxnativeEventProc* = proc(self: QFontComboBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QFontComboBoxmetricProc* = proc(self: QFontComboBox, param1: cint): cint {.raises: [], gcsafe.}
type QFontComboBoxinitPainterProc* = proc(self: QFontComboBox, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QFontComboBoxredirectedProc* = proc(self: QFontComboBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QFontComboBoxsharedPainterProc* = proc(self: QFontComboBox): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QFontComboBoxfocusNextPrevChildProc* = proc(self: QFontComboBox, next: bool): bool {.raises: [], gcsafe.}
type QFontComboBoxeventFilterProc* = proc(self: QFontComboBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFontComboBoxtimerEventProc* = proc(self: QFontComboBox, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFontComboBoxchildEventProc* = proc(self: QFontComboBox, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFontComboBoxcustomEventProc* = proc(self: QFontComboBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFontComboBoxconnectNotifyProc* = proc(self: QFontComboBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFontComboBoxdisconnectNotifyProc* = proc(self: QFontComboBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFontComboBoxVTable* = object
  vtbl: cQFontComboBoxVTable
  metaObject*: QFontComboBoxmetaObjectProc
  metacast*: QFontComboBoxmetacastProc
  metacall*: QFontComboBoxmetacallProc
  sizeHint*: QFontComboBoxsizeHintProc
  event*: QFontComboBoxeventProc
  minimumSizeHint*: QFontComboBoxminimumSizeHintProc
  showPopup*: QFontComboBoxshowPopupProc
  hidePopup*: QFontComboBoxhidePopupProc
  inputMethodQuery*: QFontComboBoxinputMethodQueryProc
  focusInEvent*: QFontComboBoxfocusInEventProc
  focusOutEvent*: QFontComboBoxfocusOutEventProc
  changeEvent*: QFontComboBoxchangeEventProc
  resizeEvent*: QFontComboBoxresizeEventProc
  paintEvent*: QFontComboBoxpaintEventProc
  showEvent*: QFontComboBoxshowEventProc
  hideEvent*: QFontComboBoxhideEventProc
  mousePressEvent*: QFontComboBoxmousePressEventProc
  mouseReleaseEvent*: QFontComboBoxmouseReleaseEventProc
  keyPressEvent*: QFontComboBoxkeyPressEventProc
  keyReleaseEvent*: QFontComboBoxkeyReleaseEventProc
  wheelEvent*: QFontComboBoxwheelEventProc
  contextMenuEvent*: QFontComboBoxcontextMenuEventProc
  inputMethodEvent*: QFontComboBoxinputMethodEventProc
  devType*: QFontComboBoxdevTypeProc
  setVisible*: QFontComboBoxsetVisibleProc
  heightForWidth*: QFontComboBoxheightForWidthProc
  hasHeightForWidth*: QFontComboBoxhasHeightForWidthProc
  paintEngine*: QFontComboBoxpaintEngineProc
  mouseDoubleClickEvent*: QFontComboBoxmouseDoubleClickEventProc
  mouseMoveEvent*: QFontComboBoxmouseMoveEventProc
  enterEvent*: QFontComboBoxenterEventProc
  leaveEvent*: QFontComboBoxleaveEventProc
  moveEvent*: QFontComboBoxmoveEventProc
  closeEvent*: QFontComboBoxcloseEventProc
  tabletEvent*: QFontComboBoxtabletEventProc
  actionEvent*: QFontComboBoxactionEventProc
  dragEnterEvent*: QFontComboBoxdragEnterEventProc
  dragMoveEvent*: QFontComboBoxdragMoveEventProc
  dragLeaveEvent*: QFontComboBoxdragLeaveEventProc
  dropEvent*: QFontComboBoxdropEventProc
  nativeEvent*: QFontComboBoxnativeEventProc
  metric*: QFontComboBoxmetricProc
  initPainter*: QFontComboBoxinitPainterProc
  redirected*: QFontComboBoxredirectedProc
  sharedPainter*: QFontComboBoxsharedPainterProc
  focusNextPrevChild*: QFontComboBoxfocusNextPrevChildProc
  eventFilter*: QFontComboBoxeventFilterProc
  timerEvent*: QFontComboBoxtimerEventProc
  childEvent*: QFontComboBoxchildEventProc
  customEvent*: QFontComboBoxcustomEventProc
  connectNotify*: QFontComboBoxconnectNotifyProc
  disconnectNotify*: QFontComboBoxdisconnectNotifyProc
proc QFontComboBoxmetaObject*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontComboBox_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQFontComboBox_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QFontComboBoxmetacast*(self: gen_qfontcombobox_types.QFontComboBox, param1: cstring): pointer =
  fcQFontComboBox_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQFontComboBox_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFontComboBoxmetacall*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQFontComboBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQFontComboBox_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFontComboBoxsizeHint*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontComboBox_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQFontComboBox_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QFontComboBoxevent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qcoreevent_types.QEvent): bool =
  fcQFontComboBox_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFontComboBoxminimumSizeHint*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontComboBox_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQFontComboBox_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QFontComboBoxshowPopup*(self: gen_qfontcombobox_types.QFontComboBox, ): void =
  fcQFontComboBox_virtualbase_showPopup(self.h)

proc miqt_exec_callback_cQFontComboBox_showPopup(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  vtbl[].showPopup(self)

proc QFontComboBoxhidePopup*(self: gen_qfontcombobox_types.QFontComboBox, ): void =
  fcQFontComboBox_virtualbase_hidePopup(self.h)

proc miqt_exec_callback_cQFontComboBox_hidePopup(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  vtbl[].hidePopup(self)

proc QFontComboBoxinputMethodQuery*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFontComboBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQFontComboBox_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QFontComboBoxfocusInEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QFocusEvent): void =
  fcQFontComboBox_virtualbase_focusInEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_focusInEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusInEvent(self, slotval1)

proc QFontComboBoxfocusOutEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QFocusEvent): void =
  fcQFontComboBox_virtualbase_focusOutEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_focusOutEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusOutEvent(self, slotval1)

proc QFontComboBoxchangeEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qcoreevent_types.QEvent): void =
  fcQFontComboBox_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QFontComboBoxresizeEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QResizeEvent): void =
  fcQFontComboBox_virtualbase_resizeEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_resizeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e)
  vtbl[].resizeEvent(self, slotval1)

proc QFontComboBoxpaintEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QPaintEvent): void =
  fcQFontComboBox_virtualbase_paintEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)
  vtbl[].paintEvent(self, slotval1)

proc QFontComboBoxshowEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QShowEvent): void =
  fcQFontComboBox_virtualbase_showEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_showEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: e)
  vtbl[].showEvent(self, slotval1)

proc QFontComboBoxhideEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QHideEvent): void =
  fcQFontComboBox_virtualbase_hideEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_hideEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: e)
  vtbl[].hideEvent(self, slotval1)

proc QFontComboBoxmousePressEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QMouseEvent): void =
  fcQFontComboBox_virtualbase_mousePressEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_mousePressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mousePressEvent(self, slotval1)

proc QFontComboBoxmouseReleaseEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QMouseEvent): void =
  fcQFontComboBox_virtualbase_mouseReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_mouseReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QFontComboBoxkeyPressEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QKeyEvent): void =
  fcQFontComboBox_virtualbase_keyPressEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_keyPressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyPressEvent(self, slotval1)

proc QFontComboBoxkeyReleaseEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QKeyEvent): void =
  fcQFontComboBox_virtualbase_keyReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_keyReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QFontComboBoxwheelEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QWheelEvent): void =
  fcQFontComboBox_virtualbase_wheelEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_wheelEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)
  vtbl[].wheelEvent(self, slotval1)

proc QFontComboBoxcontextMenuEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QContextMenuEvent): void =
  fcQFontComboBox_virtualbase_contextMenuEvent(self.h, e.h)

proc miqt_exec_callback_cQFontComboBox_contextMenuEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e)
  vtbl[].contextMenuEvent(self, slotval1)

proc QFontComboBoxinputMethodEvent*(self: gen_qfontcombobox_types.QFontComboBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQFontComboBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQFontComboBox_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QFontComboBoxdevType*(self: gen_qfontcombobox_types.QFontComboBox, ): cint =
  fcQFontComboBox_virtualbase_devType(self.h)

proc miqt_exec_callback_cQFontComboBox_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QFontComboBoxsetVisible*(self: gen_qfontcombobox_types.QFontComboBox, visible: bool): void =
  fcQFontComboBox_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQFontComboBox_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QFontComboBoxheightForWidth*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint): cint =
  fcQFontComboBox_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQFontComboBox_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QFontComboBoxhasHeightForWidth*(self: gen_qfontcombobox_types.QFontComboBox, ): bool =
  fcQFontComboBox_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQFontComboBox_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QFontComboBoxpaintEngine*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQFontComboBox_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQFontComboBox_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QFontComboBoxmouseDoubleClickEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QMouseEvent): void =
  fcQFontComboBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QFontComboBoxmouseMoveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QMouseEvent): void =
  fcQFontComboBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QFontComboBoxenterEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QEvent): void =
  fcQFontComboBox_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QFontComboBoxleaveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QEvent): void =
  fcQFontComboBox_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QFontComboBoxmoveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QMoveEvent): void =
  fcQFontComboBox_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QFontComboBoxcloseEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QCloseEvent): void =
  fcQFontComboBox_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QFontComboBoxtabletEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QTabletEvent): void =
  fcQFontComboBox_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QFontComboBoxactionEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QActionEvent): void =
  fcQFontComboBox_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QFontComboBoxdragEnterEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQFontComboBox_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QFontComboBoxdragMoveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQFontComboBox_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QFontComboBoxdragLeaveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQFontComboBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QFontComboBoxdropEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QDropEvent): void =
  fcQFontComboBox_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QFontComboBoxnativeEvent*(self: gen_qfontcombobox_types.QFontComboBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQFontComboBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQFontComboBox_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFontComboBoxmetric*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint): cint =
  fcQFontComboBox_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQFontComboBox_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QFontComboBoxinitPainter*(self: gen_qfontcombobox_types.QFontComboBox, painter: gen_qpainter_types.QPainter): void =
  fcQFontComboBox_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQFontComboBox_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QFontComboBoxredirected*(self: gen_qfontcombobox_types.QFontComboBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQFontComboBox_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQFontComboBox_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QFontComboBoxsharedPainter*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQFontComboBox_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQFontComboBox_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QFontComboBoxfocusNextPrevChild*(self: gen_qfontcombobox_types.QFontComboBox, next: bool): bool =
  fcQFontComboBox_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQFontComboBox_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QFontComboBoxeventFilter*(self: gen_qfontcombobox_types.QFontComboBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFontComboBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQFontComboBox_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFontComboBoxtimerEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFontComboBox_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QFontComboBoxchildEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFontComboBox_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QFontComboBoxcustomEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QEvent): void =
  fcQFontComboBox_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQFontComboBox_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QFontComboBoxconnectNotify*(self: gen_qfontcombobox_types.QFontComboBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFontComboBox_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFontComboBox_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QFontComboBoxdisconnectNotify*(self: gen_qfontcombobox_types.QFontComboBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFontComboBox_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFontComboBox_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](vtbl)
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc initStyleOption*(self: gen_qfontcombobox_types.QFontComboBox, option: gen_qstyleoption_types.QStyleOptionComboBox): void =
  fcQFontComboBox_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qfontcombobox_types.QFontComboBox, ): void =
  fcQFontComboBox_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qfontcombobox_types.QFontComboBox, ): void =
  fcQFontComboBox_protectedbase_create(self.h)

proc destroy*(self: gen_qfontcombobox_types.QFontComboBox, ): void =
  fcQFontComboBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qfontcombobox_types.QFontComboBox, ): bool =
  fcQFontComboBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qfontcombobox_types.QFontComboBox, ): bool =
  fcQFontComboBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qfontcombobox_types.QFontComboBox, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFontComboBox_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qfontcombobox_types.QFontComboBox, ): cint =
  fcQFontComboBox_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfontcombobox_types.QFontComboBox, signal: cstring): cint =
  fcQFontComboBox_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfontcombobox_types.QFontComboBox, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFontComboBox_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qfontcombobox_types.QFontComboBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QFontComboBoxVTable = nil): gen_qfontcombobox_types.QFontComboBox =
  let vtbl = if vtbl == nil: new QFontComboBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFontComboBoxVTable, _: ptr cQFontComboBox) {.cdecl.} =
    let vtbl = cast[ref QFontComboBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFontComboBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFontComboBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFontComboBox_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFontComboBox_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFontComboBox_event
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFontComboBox_minimumSizeHint
  if not isNil(vtbl.showPopup):
    vtbl[].vtbl.showPopup = miqt_exec_callback_cQFontComboBox_showPopup
  if not isNil(vtbl.hidePopup):
    vtbl[].vtbl.hidePopup = miqt_exec_callback_cQFontComboBox_hidePopup
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFontComboBox_inputMethodQuery
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFontComboBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFontComboBox_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFontComboBox_changeEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFontComboBox_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFontComboBox_paintEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFontComboBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFontComboBox_hideEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFontComboBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFontComboBox_mouseReleaseEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFontComboBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFontComboBox_keyReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFontComboBox_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFontComboBox_contextMenuEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFontComboBox_inputMethodEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFontComboBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFontComboBox_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFontComboBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFontComboBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFontComboBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFontComboBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFontComboBox_mouseMoveEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFontComboBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFontComboBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFontComboBox_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFontComboBox_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFontComboBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFontComboBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFontComboBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFontComboBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFontComboBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFontComboBox_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFontComboBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFontComboBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFontComboBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFontComboBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFontComboBox_sharedPainter
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFontComboBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFontComboBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFontComboBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFontComboBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFontComboBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFontComboBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFontComboBox_disconnectNotify
  gen_qfontcombobox_types.QFontComboBox(h: fcQFontComboBox_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qfontcombobox_types.QFontComboBox,
    vtbl: ref QFontComboBoxVTable = nil): gen_qfontcombobox_types.QFontComboBox =
  let vtbl = if vtbl == nil: new QFontComboBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFontComboBoxVTable, _: ptr cQFontComboBox) {.cdecl.} =
    let vtbl = cast[ref QFontComboBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFontComboBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFontComboBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFontComboBox_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQFontComboBox_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFontComboBox_event
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQFontComboBox_minimumSizeHint
  if not isNil(vtbl.showPopup):
    vtbl[].vtbl.showPopup = miqt_exec_callback_cQFontComboBox_showPopup
  if not isNil(vtbl.hidePopup):
    vtbl[].vtbl.hidePopup = miqt_exec_callback_cQFontComboBox_hidePopup
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQFontComboBox_inputMethodQuery
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQFontComboBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQFontComboBox_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQFontComboBox_changeEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQFontComboBox_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQFontComboBox_paintEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQFontComboBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQFontComboBox_hideEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQFontComboBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQFontComboBox_mouseReleaseEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQFontComboBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQFontComboBox_keyReleaseEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQFontComboBox_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQFontComboBox_contextMenuEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQFontComboBox_inputMethodEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQFontComboBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQFontComboBox_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQFontComboBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQFontComboBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQFontComboBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQFontComboBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQFontComboBox_mouseMoveEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQFontComboBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQFontComboBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQFontComboBox_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQFontComboBox_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQFontComboBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQFontComboBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQFontComboBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQFontComboBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQFontComboBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQFontComboBox_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQFontComboBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQFontComboBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQFontComboBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQFontComboBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQFontComboBox_sharedPainter
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQFontComboBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFontComboBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFontComboBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFontComboBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFontComboBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFontComboBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFontComboBox_disconnectNotify
  gen_qfontcombobox_types.QFontComboBox(h: fcQFontComboBox_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qfontcombobox_types.QFontComboBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontComboBox_staticMetaObject())
proc delete*(self: gen_qfontcombobox_types.QFontComboBox) =
  fcQFontComboBox_delete(self.h)
