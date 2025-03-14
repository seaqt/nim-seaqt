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


{.compile("gen_qfontcombobox.cpp", QtWidgetsCFlags).}


type QFontComboBoxFontFilterEnum* = distinct cint
template AllFonts*(_: type QFontComboBoxFontFilterEnum): untyped = 0
template ScalableFonts*(_: type QFontComboBoxFontFilterEnum): untyped = 1
template NonScalableFonts*(_: type QFontComboBoxFontFilterEnum): untyped = 2
template MonospacedFonts*(_: type QFontComboBoxFontFilterEnum): untyped = 4
template ProportionalFonts*(_: type QFontComboBoxFontFilterEnum): untyped = 8


import ./gen_qfontcombobox_types
export gen_qfontcombobox_types

import
  ../QtCore/gen_qabstractitemmodel_types,
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
  gen_qabstractitemmodel_types,
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

proc fcQFontComboBox_metaObject(self: pointer): pointer {.importc: "QFontComboBox_metaObject".}
proc fcQFontComboBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QFontComboBox_metacast".}
proc fcQFontComboBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFontComboBox_metacall".}
proc fcQFontComboBox_tr(s: cstring): struct_miqt_string {.importc: "QFontComboBox_tr".}
proc fcQFontComboBox_setWritingSystem(self: pointer, writingSystem: cint): void {.importc: "QFontComboBox_setWritingSystem".}
proc fcQFontComboBox_writingSystem(self: pointer): cint {.importc: "QFontComboBox_writingSystem".}
proc fcQFontComboBox_setFontFilters(self: pointer, filters: cint): void {.importc: "QFontComboBox_setFontFilters".}
proc fcQFontComboBox_fontFilters(self: pointer): cint {.importc: "QFontComboBox_fontFilters".}
proc fcQFontComboBox_currentFont(self: pointer): pointer {.importc: "QFontComboBox_currentFont".}
proc fcQFontComboBox_sizeHint(self: pointer): pointer {.importc: "QFontComboBox_sizeHint".}
proc fcQFontComboBox_setSampleTextForSystem(self: pointer, writingSystem: cint, sampleText: struct_miqt_string): void {.importc: "QFontComboBox_setSampleTextForSystem".}
proc fcQFontComboBox_sampleTextForSystem(self: pointer, writingSystem: cint): struct_miqt_string {.importc: "QFontComboBox_sampleTextForSystem".}
proc fcQFontComboBox_setSampleTextForFont(self: pointer, fontFamily: struct_miqt_string, sampleText: struct_miqt_string): void {.importc: "QFontComboBox_setSampleTextForFont".}
proc fcQFontComboBox_sampleTextForFont(self: pointer, fontFamily: struct_miqt_string): struct_miqt_string {.importc: "QFontComboBox_sampleTextForFont".}
proc fcQFontComboBox_setDisplayFont(self: pointer, fontFamily: struct_miqt_string, font: pointer): void {.importc: "QFontComboBox_setDisplayFont".}
proc fcQFontComboBox_setCurrentFont(self: pointer, f: pointer): void {.importc: "QFontComboBox_setCurrentFont".}
proc fcQFontComboBox_currentFontChanged(self: pointer, f: pointer): void {.importc: "QFontComboBox_currentFontChanged".}
proc fcQFontComboBox_connect_currentFontChanged(self: pointer, slot: int, callback: proc (slot: int, f: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QFontComboBox_connect_currentFontChanged".}
proc fcQFontComboBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFontComboBox_tr2".}
proc fcQFontComboBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFontComboBox_tr3".}
proc fcQFontComboBox_vtbl(self: pointer): pointer {.importc: "QFontComboBox_vtbl".}
proc fcQFontComboBox_vdata(self: pointer): pointer {.importc: "QFontComboBox_vdata".}
type cQFontComboBoxVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  setModel*: proc(self: pointer, model: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  showPopup*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  hidePopup*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQFontComboBox_virtualbase_metaObject(self: pointer): pointer {.importc: "QFontComboBox_virtualbase_metaObject".}
proc fcQFontComboBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFontComboBox_virtualbase_metacast".}
proc fcQFontComboBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFontComboBox_virtualbase_metacall".}
proc fcQFontComboBox_virtualbase_sizeHint(self: pointer): pointer {.importc: "QFontComboBox_virtualbase_sizeHint".}
proc fcQFontComboBox_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QFontComboBox_virtualbase_event".}
proc fcQFontComboBox_virtualbase_setModel(self: pointer, model: pointer): void {.importc: "QFontComboBox_virtualbase_setModel".}
proc fcQFontComboBox_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QFontComboBox_virtualbase_minimumSizeHint".}
proc fcQFontComboBox_virtualbase_showPopup(self: pointer): void {.importc: "QFontComboBox_virtualbase_showPopup".}
proc fcQFontComboBox_virtualbase_hidePopup(self: pointer): void {.importc: "QFontComboBox_virtualbase_hidePopup".}
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
proc fcQFontComboBox_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QFontComboBox_virtualbase_initStyleOption".}
proc fcQFontComboBox_virtualbase_devType(self: pointer): cint {.importc: "QFontComboBox_virtualbase_devType".}
proc fcQFontComboBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QFontComboBox_virtualbase_setVisible".}
proc fcQFontComboBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QFontComboBox_virtualbase_heightForWidth".}
proc fcQFontComboBox_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QFontComboBox_virtualbase_hasHeightForWidth".}
proc fcQFontComboBox_virtualbase_paintEngine(self: pointer): pointer {.importc: "QFontComboBox_virtualbase_paintEngine".}
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
proc fcQFontComboBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QFontComboBox_virtualbase_nativeEvent".}
proc fcQFontComboBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QFontComboBox_virtualbase_metric".}
proc fcQFontComboBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QFontComboBox_virtualbase_initPainter".}
proc fcQFontComboBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QFontComboBox_virtualbase_redirected".}
proc fcQFontComboBox_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QFontComboBox_virtualbase_sharedPainter".}
proc fcQFontComboBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QFontComboBox_virtualbase_focusNextPrevChild".}
proc fcQFontComboBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFontComboBox_virtualbase_eventFilter".}
proc fcQFontComboBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_timerEvent".}
proc fcQFontComboBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_childEvent".}
proc fcQFontComboBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFontComboBox_virtualbase_customEvent".}
proc fcQFontComboBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFontComboBox_virtualbase_connectNotify".}
proc fcQFontComboBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFontComboBox_virtualbase_disconnectNotify".}
proc fcQFontComboBox_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QFontComboBox_protectedbase_updateMicroFocus".}
proc fcQFontComboBox_protectedbase_create(self: pointer): void {.importc: "QFontComboBox_protectedbase_create".}
proc fcQFontComboBox_protectedbase_destroy(self: pointer): void {.importc: "QFontComboBox_protectedbase_destroy".}
proc fcQFontComboBox_protectedbase_focusNextChild(self: pointer): bool {.importc: "QFontComboBox_protectedbase_focusNextChild".}
proc fcQFontComboBox_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QFontComboBox_protectedbase_focusPreviousChild".}
proc fcQFontComboBox_protectedbase_sender(self: pointer): pointer {.importc: "QFontComboBox_protectedbase_sender".}
proc fcQFontComboBox_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFontComboBox_protectedbase_senderSignalIndex".}
proc fcQFontComboBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFontComboBox_protectedbase_receivers".}
proc fcQFontComboBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFontComboBox_protectedbase_isSignalConnected".}
proc fcQFontComboBox_new(vtbl, vdata: pointer, parent: pointer): ptr cQFontComboBox {.importc: "QFontComboBox_new".}
proc fcQFontComboBox_new2(vtbl, vdata: pointer): ptr cQFontComboBox {.importc: "QFontComboBox_new2".}
proc fcQFontComboBox_staticMetaObject(): pointer {.importc: "QFontComboBox_staticMetaObject".}

proc metaObject*(self: gen_qfontcombobox_types.QFontComboBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontComboBox_metaObject(self.h), owned: false)

proc metacast*(self: gen_qfontcombobox_types.QFontComboBox, param1: cstring): pointer =
  fcQFontComboBox_metacast(self.h, param1)

proc metacall*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQFontComboBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfontcombobox_types.QFontComboBox, s: cstring): string =
  let v_ms = fcQFontComboBox_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setWritingSystem*(self: gen_qfontcombobox_types.QFontComboBox, writingSystem: cint): void =
  fcQFontComboBox_setWritingSystem(self.h, cint(writingSystem))

proc writingSystem*(self: gen_qfontcombobox_types.QFontComboBox): cint =
  cint(fcQFontComboBox_writingSystem(self.h))

proc setFontFilters*(self: gen_qfontcombobox_types.QFontComboBox, filters: cint): void =
  fcQFontComboBox_setFontFilters(self.h, cint(filters))

proc fontFilters*(self: gen_qfontcombobox_types.QFontComboBox): cint =
  cint(fcQFontComboBox_fontFilters(self.h))

proc currentFont*(self: gen_qfontcombobox_types.QFontComboBox): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQFontComboBox_currentFont(self.h), owned: true)

proc sizeHint*(self: gen_qfontcombobox_types.QFontComboBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontComboBox_sizeHint(self.h), owned: true)

proc setSampleTextForSystem*(self: gen_qfontcombobox_types.QFontComboBox, writingSystem: cint, sampleText: openArray[char]): void =
  fcQFontComboBox_setSampleTextForSystem(self.h, cint(writingSystem), struct_miqt_string(data: if len(sampleText) > 0: addr sampleText[0] else: nil, len: csize_t(len(sampleText))))

proc sampleTextForSystem*(self: gen_qfontcombobox_types.QFontComboBox, writingSystem: cint): string =
  let v_ms = fcQFontComboBox_sampleTextForSystem(self.h, cint(writingSystem))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSampleTextForFont*(self: gen_qfontcombobox_types.QFontComboBox, fontFamily: openArray[char], sampleText: openArray[char]): void =
  fcQFontComboBox_setSampleTextForFont(self.h, struct_miqt_string(data: if len(fontFamily) > 0: addr fontFamily[0] else: nil, len: csize_t(len(fontFamily))), struct_miqt_string(data: if len(sampleText) > 0: addr sampleText[0] else: nil, len: csize_t(len(sampleText))))

proc sampleTextForFont*(self: gen_qfontcombobox_types.QFontComboBox, fontFamily: openArray[char]): string =
  let v_ms = fcQFontComboBox_sampleTextForFont(self.h, struct_miqt_string(data: if len(fontFamily) > 0: addr fontFamily[0] else: nil, len: csize_t(len(fontFamily))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDisplayFont*(self: gen_qfontcombobox_types.QFontComboBox, fontFamily: openArray[char], font: gen_qfont_types.QFont): void =
  fcQFontComboBox_setDisplayFont(self.h, struct_miqt_string(data: if len(fontFamily) > 0: addr fontFamily[0] else: nil, len: csize_t(len(fontFamily))), font.h)

proc setCurrentFont*(self: gen_qfontcombobox_types.QFontComboBox, f: gen_qfont_types.QFont): void =
  fcQFontComboBox_setCurrentFont(self.h, f.h)

proc currentFontChanged*(self: gen_qfontcombobox_types.QFontComboBox, f: gen_qfont_types.QFont): void =
  fcQFontComboBox_currentFontChanged(self.h, f.h)

type QFontComboBoxcurrentFontChangedSlot* = proc(f: gen_qfont_types.QFont)
proc cQFontComboBox_slot_callback_currentFontChanged(slot: int, f: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QFontComboBoxcurrentFontChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qfont_types.QFont(h: f, owned: false)

  nimfunc[](slotval1)

proc cQFontComboBox_slot_callback_currentFontChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QFontComboBoxcurrentFontChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentFontChanged*(self: gen_qfontcombobox_types.QFontComboBox, slot: QFontComboBoxcurrentFontChangedSlot) =
  var tmp = new QFontComboBoxcurrentFontChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQFontComboBox_connect_currentFontChanged(self.h, cast[int](addr tmp[]), cQFontComboBox_slot_callback_currentFontChanged, cQFontComboBox_slot_callback_currentFontChanged_release)

proc tr*(_: type gen_qfontcombobox_types.QFontComboBox, s: cstring, c: cstring): string =
  let v_ms = fcQFontComboBox_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfontcombobox_types.QFontComboBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFontComboBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QFontComboBoxmetaObjectProc* = proc(self: QFontComboBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFontComboBoxmetacastProc* = proc(self: QFontComboBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QFontComboBoxmetacallProc* = proc(self: QFontComboBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFontComboBoxsizeHintProc* = proc(self: QFontComboBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFontComboBoxeventProc* = proc(self: QFontComboBox, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFontComboBoxsetModelProc* = proc(self: QFontComboBox, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
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
type QFontComboBoxinitStyleOptionProc* = proc(self: QFontComboBox, option: gen_qstyleoption_types.QStyleOptionComboBox): void {.raises: [], gcsafe.}
type QFontComboBoxdevTypeProc* = proc(self: QFontComboBox): cint {.raises: [], gcsafe.}
type QFontComboBoxsetVisibleProc* = proc(self: QFontComboBox, visible: bool): void {.raises: [], gcsafe.}
type QFontComboBoxheightForWidthProc* = proc(self: QFontComboBox, param1: cint): cint {.raises: [], gcsafe.}
type QFontComboBoxhasHeightForWidthProc* = proc(self: QFontComboBox): bool {.raises: [], gcsafe.}
type QFontComboBoxpaintEngineProc* = proc(self: QFontComboBox): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QFontComboBoxmouseDoubleClickEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFontComboBoxmouseMoveEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QFontComboBoxenterEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QFontComboBoxleaveEventProc* = proc(self: QFontComboBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFontComboBoxmoveEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QFontComboBoxcloseEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QFontComboBoxtabletEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QFontComboBoxactionEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QFontComboBoxdragEnterEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QFontComboBoxdragMoveEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QFontComboBoxdragLeaveEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QFontComboBoxdropEventProc* = proc(self: QFontComboBox, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QFontComboBoxnativeEventProc* = proc(self: QFontComboBox, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QFontComboBoxVTable* {.inheritable, pure.} = object
  vtbl: cQFontComboBoxVTable
  metaObject*: QFontComboBoxmetaObjectProc
  metacast*: QFontComboBoxmetacastProc
  metacall*: QFontComboBoxmetacallProc
  sizeHint*: QFontComboBoxsizeHintProc
  event*: QFontComboBoxeventProc
  setModel*: QFontComboBoxsetModelProc
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
  initStyleOption*: QFontComboBoxinitStyleOptionProc
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
proc QFontComboBoxmetaObject*(self: gen_qfontcombobox_types.QFontComboBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontComboBox_virtualbase_metaObject(self.h), owned: false)

proc cQFontComboBox_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFontComboBoxmetacast*(self: gen_qfontcombobox_types.QFontComboBox, param1: cstring): pointer =
  fcQFontComboBox_virtualbase_metacast(self.h, param1)

proc cQFontComboBox_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFontComboBoxmetacall*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQFontComboBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQFontComboBox_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFontComboBoxsizeHint*(self: gen_qfontcombobox_types.QFontComboBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontComboBox_virtualbase_sizeHint(self.h), owned: true)

proc cQFontComboBox_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFontComboBoxevent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qcoreevent_types.QEvent): bool =
  fcQFontComboBox_virtualbase_event(self.h, e.h)

proc cQFontComboBox_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFontComboBoxsetModel*(self: gen_qfontcombobox_types.QFontComboBox, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQFontComboBox_virtualbase_setModel(self.h, model.h)

proc cQFontComboBox_vtable_callback_setModel(self: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  vtbl[].setModel(self, slotval1)

proc QFontComboBoxminimumSizeHint*(self: gen_qfontcombobox_types.QFontComboBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFontComboBox_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQFontComboBox_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFontComboBoxshowPopup*(self: gen_qfontcombobox_types.QFontComboBox): void =
  fcQFontComboBox_virtualbase_showPopup(self.h)

proc cQFontComboBox_vtable_callback_showPopup(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  vtbl[].showPopup(self)

proc QFontComboBoxhidePopup*(self: gen_qfontcombobox_types.QFontComboBox): void =
  fcQFontComboBox_virtualbase_hidePopup(self.h)

proc cQFontComboBox_vtable_callback_hidePopup(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  vtbl[].hidePopup(self)

proc QFontComboBoxinputMethodQuery*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQFontComboBox_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQFontComboBox_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFontComboBoxfocusInEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QFocusEvent): void =
  fcQFontComboBox_virtualbase_focusInEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QFontComboBoxfocusOutEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QFocusEvent): void =
  fcQFontComboBox_virtualbase_focusOutEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QFontComboBoxchangeEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qcoreevent_types.QEvent): void =
  fcQFontComboBox_virtualbase_changeEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QFontComboBoxresizeEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QResizeEvent): void =
  fcQFontComboBox_virtualbase_resizeEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QFontComboBoxpaintEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QPaintEvent): void =
  fcQFontComboBox_virtualbase_paintEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QFontComboBoxshowEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QShowEvent): void =
  fcQFontComboBox_virtualbase_showEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_showEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: e, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QFontComboBoxhideEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QHideEvent): void =
  fcQFontComboBox_virtualbase_hideEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_hideEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: e, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QFontComboBoxmousePressEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QMouseEvent): void =
  fcQFontComboBox_virtualbase_mousePressEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QFontComboBoxmouseReleaseEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QMouseEvent): void =
  fcQFontComboBox_virtualbase_mouseReleaseEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QFontComboBoxkeyPressEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QKeyEvent): void =
  fcQFontComboBox_virtualbase_keyPressEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QFontComboBoxkeyReleaseEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QKeyEvent): void =
  fcQFontComboBox_virtualbase_keyReleaseEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QFontComboBoxwheelEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QWheelEvent): void =
  fcQFontComboBox_virtualbase_wheelEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QFontComboBoxcontextMenuEvent*(self: gen_qfontcombobox_types.QFontComboBox, e: gen_qevent_types.QContextMenuEvent): void =
  fcQFontComboBox_virtualbase_contextMenuEvent(self.h, e.h)

proc cQFontComboBox_vtable_callback_contextMenuEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QFontComboBoxinputMethodEvent*(self: gen_qfontcombobox_types.QFontComboBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQFontComboBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQFontComboBox_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QFontComboBoxinitStyleOption*(self: gen_qfontcombobox_types.QFontComboBox, option: gen_qstyleoption_types.QStyleOptionComboBox): void =
  fcQFontComboBox_virtualbase_initStyleOption(self.h, option.h)

proc cQFontComboBox_vtable_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionComboBox(h: option, owned: false)
  vtbl[].initStyleOption(self, slotval1)

proc QFontComboBoxdevType*(self: gen_qfontcombobox_types.QFontComboBox): cint =
  fcQFontComboBox_virtualbase_devType(self.h)

proc cQFontComboBox_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QFontComboBoxsetVisible*(self: gen_qfontcombobox_types.QFontComboBox, visible: bool): void =
  fcQFontComboBox_virtualbase_setVisible(self.h, visible)

proc cQFontComboBox_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QFontComboBoxheightForWidth*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint): cint =
  fcQFontComboBox_virtualbase_heightForWidth(self.h, param1)

proc cQFontComboBox_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QFontComboBoxhasHeightForWidth*(self: gen_qfontcombobox_types.QFontComboBox): bool =
  fcQFontComboBox_virtualbase_hasHeightForWidth(self.h)

proc cQFontComboBox_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QFontComboBoxpaintEngine*(self: gen_qfontcombobox_types.QFontComboBox): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQFontComboBox_virtualbase_paintEngine(self.h), owned: false)

proc cQFontComboBox_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFontComboBoxmouseDoubleClickEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QMouseEvent): void =
  fcQFontComboBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QFontComboBoxmouseMoveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QMouseEvent): void =
  fcQFontComboBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QFontComboBoxenterEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QEnterEvent): void =
  fcQFontComboBox_virtualbase_enterEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QFontComboBoxleaveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QEvent): void =
  fcQFontComboBox_virtualbase_leaveEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QFontComboBoxmoveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QMoveEvent): void =
  fcQFontComboBox_virtualbase_moveEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QFontComboBoxcloseEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QCloseEvent): void =
  fcQFontComboBox_virtualbase_closeEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QFontComboBoxtabletEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QTabletEvent): void =
  fcQFontComboBox_virtualbase_tabletEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QFontComboBoxactionEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QActionEvent): void =
  fcQFontComboBox_virtualbase_actionEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QFontComboBoxdragEnterEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQFontComboBox_virtualbase_dragEnterEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QFontComboBoxdragMoveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQFontComboBox_virtualbase_dragMoveEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QFontComboBoxdragLeaveEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQFontComboBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QFontComboBoxdropEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qevent_types.QDropEvent): void =
  fcQFontComboBox_virtualbase_dropEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QFontComboBoxnativeEvent*(self: gen_qfontcombobox_types.QFontComboBox, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQFontComboBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQFontComboBox_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFontComboBoxmetric*(self: gen_qfontcombobox_types.QFontComboBox, param1: cint): cint =
  fcQFontComboBox_virtualbase_metric(self.h, cint(param1))

proc cQFontComboBox_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QFontComboBoxinitPainter*(self: gen_qfontcombobox_types.QFontComboBox, painter: gen_qpainter_types.QPainter): void =
  fcQFontComboBox_virtualbase_initPainter(self.h, painter.h)

proc cQFontComboBox_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QFontComboBoxredirected*(self: gen_qfontcombobox_types.QFontComboBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQFontComboBox_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQFontComboBox_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFontComboBoxsharedPainter*(self: gen_qfontcombobox_types.QFontComboBox): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQFontComboBox_virtualbase_sharedPainter(self.h), owned: false)

proc cQFontComboBox_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFontComboBoxfocusNextPrevChild*(self: gen_qfontcombobox_types.QFontComboBox, next: bool): bool =
  fcQFontComboBox_virtualbase_focusNextPrevChild(self.h, next)

proc cQFontComboBox_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QFontComboBoxeventFilter*(self: gen_qfontcombobox_types.QFontComboBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFontComboBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQFontComboBox_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFontComboBoxtimerEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFontComboBox_virtualbase_timerEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QFontComboBoxchildEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFontComboBox_virtualbase_childEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QFontComboBoxcustomEvent*(self: gen_qfontcombobox_types.QFontComboBox, event: gen_qcoreevent_types.QEvent): void =
  fcQFontComboBox_virtualbase_customEvent(self.h, event.h)

proc cQFontComboBox_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QFontComboBoxconnectNotify*(self: gen_qfontcombobox_types.QFontComboBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFontComboBox_virtualbase_connectNotify(self.h, signal.h)

proc cQFontComboBox_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QFontComboBoxdisconnectNotify*(self: gen_qfontcombobox_types.QFontComboBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFontComboBox_virtualbase_disconnectNotify(self.h, signal.h)

proc cQFontComboBox_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFontComboBoxVTable](fcQFontComboBox_vdata(self))
  let self = QFontComboBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQFontComboBox* {.inheritable.} = ref object of QFontComboBox
  vtbl*: cQFontComboBoxVTable
method metaObject*(self: VirtualQFontComboBox): gen_qobjectdefs_types.QMetaObject {.base.} =
  QFontComboBoxmetaObject(self[])
proc cQFontComboBox_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQFontComboBox, param1: cstring): pointer {.base.} =
  QFontComboBoxmetacast(self[], param1)
proc cQFontComboBox_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQFontComboBox, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QFontComboBoxmetacall(self[], param1, param2, param3)
proc cQFontComboBox_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQFontComboBox): gen_qsize_types.QSize {.base.} =
  QFontComboBoxsizeHint(self[])
proc cQFontComboBox_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQFontComboBox, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFontComboBoxevent(self[], e)
proc cQFontComboBox_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method setModel*(self: VirtualQFontComboBox, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.base.} =
  QFontComboBoxsetModel(self[], model)
proc cQFontComboBox_method_callback_setModel(self: pointer, model: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model, owned: false)
  inst.setModel(slotval1)

method minimumSizeHint*(self: VirtualQFontComboBox): gen_qsize_types.QSize {.base.} =
  QFontComboBoxminimumSizeHint(self[])
proc cQFontComboBox_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method showPopup*(self: VirtualQFontComboBox): void {.base.} =
  QFontComboBoxshowPopup(self[])
proc cQFontComboBox_method_callback_showPopup(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  inst.showPopup()

method hidePopup*(self: VirtualQFontComboBox): void {.base.} =
  QFontComboBoxhidePopup(self[])
proc cQFontComboBox_method_callback_hidePopup(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  inst.hidePopup()

method inputMethodQuery*(self: VirtualQFontComboBox, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QFontComboBoxinputMethodQuery(self[], param1)
proc cQFontComboBox_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusInEvent*(self: VirtualQFontComboBox, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QFontComboBoxfocusInEvent(self[], e)
proc cQFontComboBox_method_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQFontComboBox, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QFontComboBoxfocusOutEvent(self[], e)
proc cQFontComboBox_method_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusOutEvent(slotval1)

method changeEvent*(self: VirtualQFontComboBox, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QFontComboBoxchangeEvent(self[], e)
proc cQFontComboBox_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

method resizeEvent*(self: VirtualQFontComboBox, e: gen_qevent_types.QResizeEvent): void {.base.} =
  QFontComboBoxresizeEvent(self[], e)
proc cQFontComboBox_method_callback_resizeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: e, owned: false)
  inst.resizeEvent(slotval1)

method paintEvent*(self: VirtualQFontComboBox, e: gen_qevent_types.QPaintEvent): void {.base.} =
  QFontComboBoxpaintEvent(self[], e)
proc cQFontComboBox_method_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  inst.paintEvent(slotval1)

method showEvent*(self: VirtualQFontComboBox, e: gen_qevent_types.QShowEvent): void {.base.} =
  QFontComboBoxshowEvent(self[], e)
proc cQFontComboBox_method_callback_showEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: e, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQFontComboBox, e: gen_qevent_types.QHideEvent): void {.base.} =
  QFontComboBoxhideEvent(self[], e)
proc cQFontComboBox_method_callback_hideEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: e, owned: false)
  inst.hideEvent(slotval1)

method mousePressEvent*(self: VirtualQFontComboBox, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QFontComboBoxmousePressEvent(self[], e)
proc cQFontComboBox_method_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQFontComboBox, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QFontComboBoxmouseReleaseEvent(self[], e)
proc cQFontComboBox_method_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseReleaseEvent(slotval1)

method keyPressEvent*(self: VirtualQFontComboBox, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QFontComboBoxkeyPressEvent(self[], e)
proc cQFontComboBox_method_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQFontComboBox, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QFontComboBoxkeyReleaseEvent(self[], e)
proc cQFontComboBox_method_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyReleaseEvent(slotval1)

method wheelEvent*(self: VirtualQFontComboBox, e: gen_qevent_types.QWheelEvent): void {.base.} =
  QFontComboBoxwheelEvent(self[], e)
proc cQFontComboBox_method_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  inst.wheelEvent(slotval1)

method contextMenuEvent*(self: VirtualQFontComboBox, e: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QFontComboBoxcontextMenuEvent(self[], e)
proc cQFontComboBox_method_callback_contextMenuEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: e, owned: false)
  inst.contextMenuEvent(slotval1)

method inputMethodEvent*(self: VirtualQFontComboBox, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QFontComboBoxinputMethodEvent(self[], param1)
proc cQFontComboBox_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method initStyleOption*(self: VirtualQFontComboBox, option: gen_qstyleoption_types.QStyleOptionComboBox): void {.base.} =
  QFontComboBoxinitStyleOption(self[], option)
proc cQFontComboBox_method_callback_initStyleOption(self: pointer, option: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qstyleoption_types.QStyleOptionComboBox(h: option, owned: false)
  inst.initStyleOption(slotval1)

method devType*(self: VirtualQFontComboBox): cint {.base.} =
  QFontComboBoxdevType(self[])
proc cQFontComboBox_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQFontComboBox, visible: bool): void {.base.} =
  QFontComboBoxsetVisible(self[], visible)
proc cQFontComboBox_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQFontComboBox, param1: cint): cint {.base.} =
  QFontComboBoxheightForWidth(self[], param1)
proc cQFontComboBox_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQFontComboBox): bool {.base.} =
  QFontComboBoxhasHeightForWidth(self[])
proc cQFontComboBox_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQFontComboBox): gen_qpaintengine_types.QPaintEngine {.base.} =
  QFontComboBoxpaintEngine(self[])
proc cQFontComboBox_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQFontComboBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFontComboBoxmouseDoubleClickEvent(self[], event)
proc cQFontComboBox_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQFontComboBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QFontComboBoxmouseMoveEvent(self[], event)
proc cQFontComboBox_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method enterEvent*(self: VirtualQFontComboBox, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QFontComboBoxenterEvent(self[], event)
proc cQFontComboBox_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQFontComboBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFontComboBoxleaveEvent(self[], event)
proc cQFontComboBox_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQFontComboBox, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QFontComboBoxmoveEvent(self[], event)
proc cQFontComboBox_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQFontComboBox, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QFontComboBoxcloseEvent(self[], event)
proc cQFontComboBox_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQFontComboBox, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QFontComboBoxtabletEvent(self[], event)
proc cQFontComboBox_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQFontComboBox, event: gen_qevent_types.QActionEvent): void {.base.} =
  QFontComboBoxactionEvent(self[], event)
proc cQFontComboBox_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQFontComboBox, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QFontComboBoxdragEnterEvent(self[], event)
proc cQFontComboBox_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQFontComboBox, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QFontComboBoxdragMoveEvent(self[], event)
proc cQFontComboBox_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQFontComboBox, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QFontComboBoxdragLeaveEvent(self[], event)
proc cQFontComboBox_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQFontComboBox, event: gen_qevent_types.QDropEvent): void {.base.} =
  QFontComboBoxdropEvent(self[], event)
proc cQFontComboBox_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method nativeEvent*(self: VirtualQFontComboBox, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QFontComboBoxnativeEvent(self[], eventType, message, resultVal)
proc cQFontComboBox_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQFontComboBox, param1: cint): cint {.base.} =
  QFontComboBoxmetric(self[], param1)
proc cQFontComboBox_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQFontComboBox, painter: gen_qpainter_types.QPainter): void {.base.} =
  QFontComboBoxinitPainter(self[], painter)
proc cQFontComboBox_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQFontComboBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QFontComboBoxredirected(self[], offset)
proc cQFontComboBox_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQFontComboBox): gen_qpainter_types.QPainter {.base.} =
  QFontComboBoxsharedPainter(self[])
proc cQFontComboBox_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQFontComboBox, next: bool): bool {.base.} =
  QFontComboBoxfocusNextPrevChild(self[], next)
proc cQFontComboBox_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQFontComboBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFontComboBoxeventFilter(self[], watched, event)
proc cQFontComboBox_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQFontComboBox, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QFontComboBoxtimerEvent(self[], event)
proc cQFontComboBox_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQFontComboBox, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QFontComboBoxchildEvent(self[], event)
proc cQFontComboBox_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQFontComboBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFontComboBoxcustomEvent(self[], event)
proc cQFontComboBox_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQFontComboBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFontComboBoxconnectNotify(self[], signal)
proc cQFontComboBox_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQFontComboBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFontComboBoxdisconnectNotify(self[], signal)
proc cQFontComboBox_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFontComboBox](fcQFontComboBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qfontcombobox_types.QFontComboBox): void =
  fcQFontComboBox_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qfontcombobox_types.QFontComboBox): void =
  fcQFontComboBox_protectedbase_create(self.h)

proc destroy*(self: gen_qfontcombobox_types.QFontComboBox): void =
  fcQFontComboBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qfontcombobox_types.QFontComboBox): bool =
  fcQFontComboBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qfontcombobox_types.QFontComboBox): bool =
  fcQFontComboBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qfontcombobox_types.QFontComboBox): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFontComboBox_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qfontcombobox_types.QFontComboBox): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFontComboBoxVTable](fcQFontComboBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFontComboBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFontComboBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFontComboBox_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFontComboBox_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFontComboBox_vtable_callback_event
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = cQFontComboBox_vtable_callback_setModel
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFontComboBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].showPopup):
    vtbl[].vtbl.showPopup = cQFontComboBox_vtable_callback_showPopup
  if not isNil(vtbl[].hidePopup):
    vtbl[].vtbl.hidePopup = cQFontComboBox_vtable_callback_hidePopup
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFontComboBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFontComboBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFontComboBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFontComboBox_vtable_callback_changeEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFontComboBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFontComboBox_vtable_callback_paintEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFontComboBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFontComboBox_vtable_callback_hideEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFontComboBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFontComboBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFontComboBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFontComboBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFontComboBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFontComboBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFontComboBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQFontComboBox_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFontComboBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFontComboBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFontComboBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFontComboBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFontComboBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFontComboBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFontComboBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFontComboBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFontComboBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFontComboBox_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFontComboBox_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFontComboBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFontComboBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFontComboBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFontComboBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFontComboBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFontComboBox_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFontComboBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFontComboBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFontComboBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFontComboBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFontComboBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFontComboBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFontComboBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFontComboBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFontComboBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFontComboBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFontComboBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFontComboBox_vtable_callback_disconnectNotify
  gen_qfontcombobox_types.QFontComboBox(h: fcQFontComboBox_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qfontcombobox_types.QFontComboBox,
    vtbl: ref QFontComboBoxVTable = nil): gen_qfontcombobox_types.QFontComboBox =
  let vtbl = if vtbl == nil: new QFontComboBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFontComboBoxVTable](fcQFontComboBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFontComboBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFontComboBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFontComboBox_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFontComboBox_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFontComboBox_vtable_callback_event
  if not isNil(vtbl[].setModel):
    vtbl[].vtbl.setModel = cQFontComboBox_vtable_callback_setModel
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQFontComboBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].showPopup):
    vtbl[].vtbl.showPopup = cQFontComboBox_vtable_callback_showPopup
  if not isNil(vtbl[].hidePopup):
    vtbl[].vtbl.hidePopup = cQFontComboBox_vtable_callback_hidePopup
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQFontComboBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQFontComboBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQFontComboBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQFontComboBox_vtable_callback_changeEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQFontComboBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQFontComboBox_vtable_callback_paintEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQFontComboBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQFontComboBox_vtable_callback_hideEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQFontComboBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQFontComboBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQFontComboBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQFontComboBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQFontComboBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQFontComboBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQFontComboBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].initStyleOption):
    vtbl[].vtbl.initStyleOption = cQFontComboBox_vtable_callback_initStyleOption
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQFontComboBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQFontComboBox_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFontComboBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFontComboBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQFontComboBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQFontComboBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQFontComboBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQFontComboBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQFontComboBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQFontComboBox_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQFontComboBox_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQFontComboBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQFontComboBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQFontComboBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQFontComboBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQFontComboBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQFontComboBox_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQFontComboBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQFontComboBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQFontComboBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQFontComboBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQFontComboBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQFontComboBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFontComboBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFontComboBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFontComboBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFontComboBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFontComboBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFontComboBox_vtable_callback_disconnectNotify
  gen_qfontcombobox_types.QFontComboBox(h: fcQFontComboBox_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQFontComboBox_mvtbl = cQFontComboBoxVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFontComboBox()[])](self.fcQFontComboBox_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQFontComboBox_method_callback_metaObject,
  metacast: cQFontComboBox_method_callback_metacast,
  metacall: cQFontComboBox_method_callback_metacall,
  sizeHint: cQFontComboBox_method_callback_sizeHint,
  event: cQFontComboBox_method_callback_event,
  setModel: cQFontComboBox_method_callback_setModel,
  minimumSizeHint: cQFontComboBox_method_callback_minimumSizeHint,
  showPopup: cQFontComboBox_method_callback_showPopup,
  hidePopup: cQFontComboBox_method_callback_hidePopup,
  inputMethodQuery: cQFontComboBox_method_callback_inputMethodQuery,
  focusInEvent: cQFontComboBox_method_callback_focusInEvent,
  focusOutEvent: cQFontComboBox_method_callback_focusOutEvent,
  changeEvent: cQFontComboBox_method_callback_changeEvent,
  resizeEvent: cQFontComboBox_method_callback_resizeEvent,
  paintEvent: cQFontComboBox_method_callback_paintEvent,
  showEvent: cQFontComboBox_method_callback_showEvent,
  hideEvent: cQFontComboBox_method_callback_hideEvent,
  mousePressEvent: cQFontComboBox_method_callback_mousePressEvent,
  mouseReleaseEvent: cQFontComboBox_method_callback_mouseReleaseEvent,
  keyPressEvent: cQFontComboBox_method_callback_keyPressEvent,
  keyReleaseEvent: cQFontComboBox_method_callback_keyReleaseEvent,
  wheelEvent: cQFontComboBox_method_callback_wheelEvent,
  contextMenuEvent: cQFontComboBox_method_callback_contextMenuEvent,
  inputMethodEvent: cQFontComboBox_method_callback_inputMethodEvent,
  initStyleOption: cQFontComboBox_method_callback_initStyleOption,
  devType: cQFontComboBox_method_callback_devType,
  setVisible: cQFontComboBox_method_callback_setVisible,
  heightForWidth: cQFontComboBox_method_callback_heightForWidth,
  hasHeightForWidth: cQFontComboBox_method_callback_hasHeightForWidth,
  paintEngine: cQFontComboBox_method_callback_paintEngine,
  mouseDoubleClickEvent: cQFontComboBox_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQFontComboBox_method_callback_mouseMoveEvent,
  enterEvent: cQFontComboBox_method_callback_enterEvent,
  leaveEvent: cQFontComboBox_method_callback_leaveEvent,
  moveEvent: cQFontComboBox_method_callback_moveEvent,
  closeEvent: cQFontComboBox_method_callback_closeEvent,
  tabletEvent: cQFontComboBox_method_callback_tabletEvent,
  actionEvent: cQFontComboBox_method_callback_actionEvent,
  dragEnterEvent: cQFontComboBox_method_callback_dragEnterEvent,
  dragMoveEvent: cQFontComboBox_method_callback_dragMoveEvent,
  dragLeaveEvent: cQFontComboBox_method_callback_dragLeaveEvent,
  dropEvent: cQFontComboBox_method_callback_dropEvent,
  nativeEvent: cQFontComboBox_method_callback_nativeEvent,
  metric: cQFontComboBox_method_callback_metric,
  initPainter: cQFontComboBox_method_callback_initPainter,
  redirected: cQFontComboBox_method_callback_redirected,
  sharedPainter: cQFontComboBox_method_callback_sharedPainter,
  focusNextPrevChild: cQFontComboBox_method_callback_focusNextPrevChild,
  eventFilter: cQFontComboBox_method_callback_eventFilter,
  timerEvent: cQFontComboBox_method_callback_timerEvent,
  childEvent: cQFontComboBox_method_callback_childEvent,
  customEvent: cQFontComboBox_method_callback_customEvent,
  connectNotify: cQFontComboBox_method_callback_connectNotify,
  disconnectNotify: cQFontComboBox_method_callback_disconnectNotify,
)
proc create*(T: type gen_qfontcombobox_types.QFontComboBox,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQFontComboBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFontComboBox_new(addr(cQFontComboBox_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qfontcombobox_types.QFontComboBox,
    inst: VirtualQFontComboBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFontComboBox_new2(addr(cQFontComboBox_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qfontcombobox_types.QFontComboBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFontComboBox_staticMetaObject())
