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


{.compile("gen_qabstractbutton.cpp", QtWidgetsCFlags).}


import ./gen_qabstractbutton_types
export gen_qabstractbutton_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qkeysequence_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qbuttongroup_types,
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
  gen_qicon_types,
  gen_qkeysequence_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qbuttongroup_types,
  gen_qwidget

type cQAbstractButton*{.exportc: "QAbstractButton", incompleteStruct.} = object

proc fcQAbstractButton_metaObject(self: pointer): pointer {.importc: "QAbstractButton_metaObject".}
proc fcQAbstractButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractButton_metacast".}
proc fcQAbstractButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractButton_metacall".}
proc fcQAbstractButton_tr(s: cstring): struct_miqt_string {.importc: "QAbstractButton_tr".}
proc fcQAbstractButton_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractButton_trUtf8".}
proc fcQAbstractButton_setText(self: pointer, text: struct_miqt_string): void {.importc: "QAbstractButton_setText".}
proc fcQAbstractButton_text(self: pointer): struct_miqt_string {.importc: "QAbstractButton_text".}
proc fcQAbstractButton_setIcon(self: pointer, icon: pointer): void {.importc: "QAbstractButton_setIcon".}
proc fcQAbstractButton_icon(self: pointer): pointer {.importc: "QAbstractButton_icon".}
proc fcQAbstractButton_iconSize(self: pointer): pointer {.importc: "QAbstractButton_iconSize".}
proc fcQAbstractButton_setShortcut(self: pointer, key: pointer): void {.importc: "QAbstractButton_setShortcut".}
proc fcQAbstractButton_shortcut(self: pointer): pointer {.importc: "QAbstractButton_shortcut".}
proc fcQAbstractButton_setCheckable(self: pointer, checkable: bool): void {.importc: "QAbstractButton_setCheckable".}
proc fcQAbstractButton_isCheckable(self: pointer): bool {.importc: "QAbstractButton_isCheckable".}
proc fcQAbstractButton_isChecked(self: pointer): bool {.importc: "QAbstractButton_isChecked".}
proc fcQAbstractButton_setDown(self: pointer, down: bool): void {.importc: "QAbstractButton_setDown".}
proc fcQAbstractButton_isDown(self: pointer): bool {.importc: "QAbstractButton_isDown".}
proc fcQAbstractButton_setAutoRepeat(self: pointer, autoRepeat: bool): void {.importc: "QAbstractButton_setAutoRepeat".}
proc fcQAbstractButton_autoRepeat(self: pointer): bool {.importc: "QAbstractButton_autoRepeat".}
proc fcQAbstractButton_setAutoRepeatDelay(self: pointer, autoRepeatDelay: cint): void {.importc: "QAbstractButton_setAutoRepeatDelay".}
proc fcQAbstractButton_autoRepeatDelay(self: pointer): cint {.importc: "QAbstractButton_autoRepeatDelay".}
proc fcQAbstractButton_setAutoRepeatInterval(self: pointer, autoRepeatInterval: cint): void {.importc: "QAbstractButton_setAutoRepeatInterval".}
proc fcQAbstractButton_autoRepeatInterval(self: pointer): cint {.importc: "QAbstractButton_autoRepeatInterval".}
proc fcQAbstractButton_setAutoExclusive(self: pointer, autoExclusive: bool): void {.importc: "QAbstractButton_setAutoExclusive".}
proc fcQAbstractButton_autoExclusive(self: pointer): bool {.importc: "QAbstractButton_autoExclusive".}
proc fcQAbstractButton_group(self: pointer): pointer {.importc: "QAbstractButton_group".}
proc fcQAbstractButton_setIconSize(self: pointer, size: pointer): void {.importc: "QAbstractButton_setIconSize".}
proc fcQAbstractButton_animateClick(self: pointer): void {.importc: "QAbstractButton_animateClick".}
proc fcQAbstractButton_click(self: pointer): void {.importc: "QAbstractButton_click".}
proc fcQAbstractButton_toggle(self: pointer): void {.importc: "QAbstractButton_toggle".}
proc fcQAbstractButton_setChecked(self: pointer, checked: bool): void {.importc: "QAbstractButton_setChecked".}
proc fcQAbstractButton_pressed(self: pointer): void {.importc: "QAbstractButton_pressed".}
proc fcQAbstractButton_connect_pressed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractButton_connect_pressed".}
proc fcQAbstractButton_released(self: pointer): void {.importc: "QAbstractButton_released".}
proc fcQAbstractButton_connect_released(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractButton_connect_released".}
proc fcQAbstractButton_clicked(self: pointer): void {.importc: "QAbstractButton_clicked".}
proc fcQAbstractButton_connect_clicked(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractButton_connect_clicked".}
proc fcQAbstractButton_toggled(self: pointer, checked: bool): void {.importc: "QAbstractButton_toggled".}
proc fcQAbstractButton_connect_toggled(self: pointer, slot: int, callback: proc (slot: int, checked: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractButton_connect_toggled".}
proc fcQAbstractButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractButton_tr2".}
proc fcQAbstractButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractButton_tr3".}
proc fcQAbstractButton_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractButton_trUtf82".}
proc fcQAbstractButton_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractButton_trUtf83".}
proc fcQAbstractButton_animateClick1(self: pointer, msec: cint): void {.importc: "QAbstractButton_animateClick1".}
proc fcQAbstractButton_clicked1(self: pointer, checked: bool): void {.importc: "QAbstractButton_clicked1".}
proc fcQAbstractButton_connect_clicked1(self: pointer, slot: int, callback: proc (slot: int, checked: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractButton_connect_clicked1".}
proc fcQAbstractButton_vtbl(self: pointer): pointer {.importc: "QAbstractButton_vtbl".}
proc fcQAbstractButton_vdata(self: pointer): pointer {.importc: "QAbstractButton_vdata".}

type cQAbstractButtonVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  hitButton*: proc(self: pointer, pos: pointer): bool {.cdecl, raises: [], gcsafe.}
  checkStateSet*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  nextCheckState*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractButton_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractButton_virtualbase_metaObject".}
proc fcQAbstractButton_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractButton_virtualbase_metacast".}
proc fcQAbstractButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractButton_virtualbase_metacall".}
proc fcQAbstractButton_virtualbase_hitButton(self: pointer, pos: pointer): bool {.importc: "QAbstractButton_virtualbase_hitButton".}
proc fcQAbstractButton_virtualbase_checkStateSet(self: pointer): void {.importc: "QAbstractButton_virtualbase_checkStateSet".}
proc fcQAbstractButton_virtualbase_nextCheckState(self: pointer): void {.importc: "QAbstractButton_virtualbase_nextCheckState".}
proc fcQAbstractButton_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QAbstractButton_virtualbase_event".}
proc fcQAbstractButton_virtualbase_keyPressEvent(self: pointer, e: pointer): void {.importc: "QAbstractButton_virtualbase_keyPressEvent".}
proc fcQAbstractButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void {.importc: "QAbstractButton_virtualbase_keyReleaseEvent".}
proc fcQAbstractButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void {.importc: "QAbstractButton_virtualbase_mousePressEvent".}
proc fcQAbstractButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void {.importc: "QAbstractButton_virtualbase_mouseReleaseEvent".}
proc fcQAbstractButton_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void {.importc: "QAbstractButton_virtualbase_mouseMoveEvent".}
proc fcQAbstractButton_virtualbase_focusInEvent(self: pointer, e: pointer): void {.importc: "QAbstractButton_virtualbase_focusInEvent".}
proc fcQAbstractButton_virtualbase_focusOutEvent(self: pointer, e: pointer): void {.importc: "QAbstractButton_virtualbase_focusOutEvent".}
proc fcQAbstractButton_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QAbstractButton_virtualbase_changeEvent".}
proc fcQAbstractButton_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QAbstractButton_virtualbase_timerEvent".}
proc fcQAbstractButton_virtualbase_devType(self: pointer): cint {.importc: "QAbstractButton_virtualbase_devType".}
proc fcQAbstractButton_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QAbstractButton_virtualbase_setVisible".}
proc fcQAbstractButton_virtualbase_sizeHint(self: pointer): pointer {.importc: "QAbstractButton_virtualbase_sizeHint".}
proc fcQAbstractButton_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QAbstractButton_virtualbase_minimumSizeHint".}
proc fcQAbstractButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QAbstractButton_virtualbase_heightForWidth".}
proc fcQAbstractButton_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QAbstractButton_virtualbase_hasHeightForWidth".}
proc fcQAbstractButton_virtualbase_paintEngine(self: pointer): pointer {.importc: "QAbstractButton_virtualbase_paintEngine".}
proc fcQAbstractButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractButton_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_wheelEvent".}
proc fcQAbstractButton_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_enterEvent".}
proc fcQAbstractButton_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_leaveEvent".}
proc fcQAbstractButton_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_moveEvent".}
proc fcQAbstractButton_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_resizeEvent".}
proc fcQAbstractButton_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_closeEvent".}
proc fcQAbstractButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_contextMenuEvent".}
proc fcQAbstractButton_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_tabletEvent".}
proc fcQAbstractButton_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_actionEvent".}
proc fcQAbstractButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_dragEnterEvent".}
proc fcQAbstractButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_dragMoveEvent".}
proc fcQAbstractButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_dragLeaveEvent".}
proc fcQAbstractButton_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_dropEvent".}
proc fcQAbstractButton_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_showEvent".}
proc fcQAbstractButton_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_hideEvent".}
proc fcQAbstractButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QAbstractButton_virtualbase_nativeEvent".}
proc fcQAbstractButton_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QAbstractButton_virtualbase_metric".}
proc fcQAbstractButton_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QAbstractButton_virtualbase_initPainter".}
proc fcQAbstractButton_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QAbstractButton_virtualbase_redirected".}
proc fcQAbstractButton_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QAbstractButton_virtualbase_sharedPainter".}
proc fcQAbstractButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QAbstractButton_virtualbase_inputMethodEvent".}
proc fcQAbstractButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractButton_virtualbase_inputMethodQuery".}
proc fcQAbstractButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QAbstractButton_virtualbase_focusNextPrevChild".}
proc fcQAbstractButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractButton_virtualbase_eventFilter".}
proc fcQAbstractButton_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_childEvent".}
proc fcQAbstractButton_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_customEvent".}
proc fcQAbstractButton_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractButton_virtualbase_connectNotify".}
proc fcQAbstractButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractButton_virtualbase_disconnectNotify".}
proc fcQAbstractButton_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QAbstractButton_protectedbase_updateMicroFocus".}
proc fcQAbstractButton_protectedbase_create(self: pointer): void {.importc: "QAbstractButton_protectedbase_create".}
proc fcQAbstractButton_protectedbase_destroy(self: pointer): void {.importc: "QAbstractButton_protectedbase_destroy".}
proc fcQAbstractButton_protectedbase_focusNextChild(self: pointer): bool {.importc: "QAbstractButton_protectedbase_focusNextChild".}
proc fcQAbstractButton_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QAbstractButton_protectedbase_focusPreviousChild".}
proc fcQAbstractButton_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractButton_protectedbase_sender".}
proc fcQAbstractButton_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractButton_protectedbase_senderSignalIndex".}
proc fcQAbstractButton_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractButton_protectedbase_receivers".}
proc fcQAbstractButton_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractButton_protectedbase_isSignalConnected".}
proc fcQAbstractButton_new(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractButton {.importc: "QAbstractButton_new".}
proc fcQAbstractButton_new2(vtbl, vdata: pointer): ptr cQAbstractButton {.importc: "QAbstractButton_new2".}
proc fcQAbstractButton_staticMetaObject(): pointer {.importc: "QAbstractButton_staticMetaObject".}

proc metaObject*(self: gen_qabstractbutton_types.QAbstractButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractButton_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractbutton_types.QAbstractButton, param1: cstring): pointer =
  fcQAbstractButton_metacast(self.h, param1)

proc metacall*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractbutton_types.QAbstractButton, s: cstring): string =
  let v_ms = fcQAbstractButton_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractbutton_types.QAbstractButton, s: cstring): string =
  let v_ms = fcQAbstractButton_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qabstractbutton_types.QAbstractButton, text: openArray[char]): void =
  fcQAbstractButton_setText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc text*(self: gen_qabstractbutton_types.QAbstractButton): string =
  let v_ms = fcQAbstractButton_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setIcon*(self: gen_qabstractbutton_types.QAbstractButton, icon: gen_qicon_types.QIcon): void =
  fcQAbstractButton_setIcon(self.h, icon.h)

proc icon*(self: gen_qabstractbutton_types.QAbstractButton): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQAbstractButton_icon(self.h), owned: true)

proc iconSize*(self: gen_qabstractbutton_types.QAbstractButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractButton_iconSize(self.h), owned: true)

proc setShortcut*(self: gen_qabstractbutton_types.QAbstractButton, key: gen_qkeysequence_types.QKeySequence): void =
  fcQAbstractButton_setShortcut(self.h, key.h)

proc shortcut*(self: gen_qabstractbutton_types.QAbstractButton): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQAbstractButton_shortcut(self.h), owned: true)

proc setCheckable*(self: gen_qabstractbutton_types.QAbstractButton, checkable: bool): void =
  fcQAbstractButton_setCheckable(self.h, checkable)

proc isCheckable*(self: gen_qabstractbutton_types.QAbstractButton): bool =
  fcQAbstractButton_isCheckable(self.h)

proc isChecked*(self: gen_qabstractbutton_types.QAbstractButton): bool =
  fcQAbstractButton_isChecked(self.h)

proc setDown*(self: gen_qabstractbutton_types.QAbstractButton, down: bool): void =
  fcQAbstractButton_setDown(self.h, down)

proc isDown*(self: gen_qabstractbutton_types.QAbstractButton): bool =
  fcQAbstractButton_isDown(self.h)

proc setAutoRepeat*(self: gen_qabstractbutton_types.QAbstractButton, autoRepeat: bool): void =
  fcQAbstractButton_setAutoRepeat(self.h, autoRepeat)

proc autoRepeat*(self: gen_qabstractbutton_types.QAbstractButton): bool =
  fcQAbstractButton_autoRepeat(self.h)

proc setAutoRepeatDelay*(self: gen_qabstractbutton_types.QAbstractButton, autoRepeatDelay: cint): void =
  fcQAbstractButton_setAutoRepeatDelay(self.h, autoRepeatDelay)

proc autoRepeatDelay*(self: gen_qabstractbutton_types.QAbstractButton): cint =
  fcQAbstractButton_autoRepeatDelay(self.h)

proc setAutoRepeatInterval*(self: gen_qabstractbutton_types.QAbstractButton, autoRepeatInterval: cint): void =
  fcQAbstractButton_setAutoRepeatInterval(self.h, autoRepeatInterval)

proc autoRepeatInterval*(self: gen_qabstractbutton_types.QAbstractButton): cint =
  fcQAbstractButton_autoRepeatInterval(self.h)

proc setAutoExclusive*(self: gen_qabstractbutton_types.QAbstractButton, autoExclusive: bool): void =
  fcQAbstractButton_setAutoExclusive(self.h, autoExclusive)

proc autoExclusive*(self: gen_qabstractbutton_types.QAbstractButton): bool =
  fcQAbstractButton_autoExclusive(self.h)

proc group*(self: gen_qabstractbutton_types.QAbstractButton): gen_qbuttongroup_types.QButtonGroup =
  gen_qbuttongroup_types.QButtonGroup(h: fcQAbstractButton_group(self.h), owned: false)

proc setIconSize*(self: gen_qabstractbutton_types.QAbstractButton, size: gen_qsize_types.QSize): void =
  fcQAbstractButton_setIconSize(self.h, size.h)

proc animateClick*(self: gen_qabstractbutton_types.QAbstractButton): void =
  fcQAbstractButton_animateClick(self.h)

proc click*(self: gen_qabstractbutton_types.QAbstractButton): void =
  fcQAbstractButton_click(self.h)

proc toggle*(self: gen_qabstractbutton_types.QAbstractButton): void =
  fcQAbstractButton_toggle(self.h)

proc setChecked*(self: gen_qabstractbutton_types.QAbstractButton, checked: bool): void =
  fcQAbstractButton_setChecked(self.h, checked)

proc pressed*(self: gen_qabstractbutton_types.QAbstractButton): void =
  fcQAbstractButton_pressed(self.h)

type QAbstractButtonpressedSlot* = proc()
proc fcQAbstractButton_slot_callback_pressed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractButtonpressedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAbstractButton_slot_callback_pressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractButtonpressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPressed*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonpressedSlot) =
  var tmp = new QAbstractButtonpressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_pressed(self.h, cast[int](addr tmp[]), fcQAbstractButton_slot_callback_pressed, fcQAbstractButton_slot_callback_pressed_release)

proc released*(self: gen_qabstractbutton_types.QAbstractButton): void =
  fcQAbstractButton_released(self.h)

type QAbstractButtonreleasedSlot* = proc()
proc fcQAbstractButton_slot_callback_released(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractButtonreleasedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAbstractButton_slot_callback_released_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractButtonreleasedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onReleased*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonreleasedSlot) =
  var tmp = new QAbstractButtonreleasedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_released(self.h, cast[int](addr tmp[]), fcQAbstractButton_slot_callback_released, fcQAbstractButton_slot_callback_released_release)

proc clicked*(self: gen_qabstractbutton_types.QAbstractButton): void =
  fcQAbstractButton_clicked(self.h)

type QAbstractButtonclickedSlot* = proc()
proc fcQAbstractButton_slot_callback_clicked(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractButtonclickedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAbstractButton_slot_callback_clicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractButtonclickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onClicked*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonclickedSlot) =
  var tmp = new QAbstractButtonclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_clicked(self.h, cast[int](addr tmp[]), fcQAbstractButton_slot_callback_clicked, fcQAbstractButton_slot_callback_clicked_release)

proc toggled*(self: gen_qabstractbutton_types.QAbstractButton, checked: bool): void =
  fcQAbstractButton_toggled(self.h, checked)

type QAbstractButtontoggledSlot* = proc(checked: bool)
proc fcQAbstractButton_slot_callback_toggled(slot: int, checked: bool) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractButtontoggledSlot](cast[pointer](slot))
  let slotval1 = checked

  nimfunc[](slotval1)

proc fcQAbstractButton_slot_callback_toggled_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractButtontoggledSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onToggled*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtontoggledSlot) =
  var tmp = new QAbstractButtontoggledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_toggled(self.h, cast[int](addr tmp[]), fcQAbstractButton_slot_callback_toggled, fcQAbstractButton_slot_callback_toggled_release)

proc tr*(_: type gen_qabstractbutton_types.QAbstractButton, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractButton_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractbutton_types.QAbstractButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractbutton_types.QAbstractButton, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractButton_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractbutton_types.QAbstractButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractButton_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc animateClick*(self: gen_qabstractbutton_types.QAbstractButton, msec: cint): void =
  fcQAbstractButton_animateClick1(self.h, msec)

proc clicked*(self: gen_qabstractbutton_types.QAbstractButton, checked: bool): void =
  fcQAbstractButton_clicked1(self.h, checked)

type QAbstractButtonclicked1Slot* = proc(checked: bool)
proc fcQAbstractButton_slot_callback_clicked1(slot: int, checked: bool) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractButtonclicked1Slot](cast[pointer](slot))
  let slotval1 = checked

  nimfunc[](slotval1)

proc fcQAbstractButton_slot_callback_clicked1_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractButtonclicked1Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onClicked*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonclicked1Slot) =
  var tmp = new QAbstractButtonclicked1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_clicked1(self.h, cast[int](addr tmp[]), fcQAbstractButton_slot_callback_clicked1, fcQAbstractButton_slot_callback_clicked1_release)

type QAbstractButtonmetaObjectProc* = proc(self: QAbstractButton): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractButtonmetacastProc* = proc(self: QAbstractButton, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractButtonmetacallProc* = proc(self: QAbstractButton, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractButtonpaintEventProc* = proc(self: QAbstractButton, e: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QAbstractButtonhitButtonProc* = proc(self: QAbstractButton, pos: gen_qpoint_types.QPoint): bool {.raises: [], gcsafe.}
type QAbstractButtoncheckStateSetProc* = proc(self: QAbstractButton): void {.raises: [], gcsafe.}
type QAbstractButtonnextCheckStateProc* = proc(self: QAbstractButton): void {.raises: [], gcsafe.}
type QAbstractButtoneventProc* = proc(self: QAbstractButton, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractButtonkeyPressEventProc* = proc(self: QAbstractButton, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractButtonkeyReleaseEventProc* = proc(self: QAbstractButton, e: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractButtonmousePressEventProc* = proc(self: QAbstractButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractButtonmouseReleaseEventProc* = proc(self: QAbstractButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractButtonmouseMoveEventProc* = proc(self: QAbstractButton, e: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractButtonfocusInEventProc* = proc(self: QAbstractButton, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractButtonfocusOutEventProc* = proc(self: QAbstractButton, e: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractButtonchangeEventProc* = proc(self: QAbstractButton, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractButtontimerEventProc* = proc(self: QAbstractButton, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractButtondevTypeProc* = proc(self: QAbstractButton): cint {.raises: [], gcsafe.}
type QAbstractButtonsetVisibleProc* = proc(self: QAbstractButton, visible: bool): void {.raises: [], gcsafe.}
type QAbstractButtonsizeHintProc* = proc(self: QAbstractButton): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractButtonminimumSizeHintProc* = proc(self: QAbstractButton): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractButtonheightForWidthProc* = proc(self: QAbstractButton, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractButtonhasHeightForWidthProc* = proc(self: QAbstractButton): bool {.raises: [], gcsafe.}
type QAbstractButtonpaintEngineProc* = proc(self: QAbstractButton): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QAbstractButtonmouseDoubleClickEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractButtonwheelEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QAbstractButtonenterEventProc* = proc(self: QAbstractButton, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractButtonleaveEventProc* = proc(self: QAbstractButton, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractButtonmoveEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QAbstractButtonresizeEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QAbstractButtoncloseEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QAbstractButtoncontextMenuEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QAbstractButtontabletEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QAbstractButtonactionEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QAbstractButtondragEnterEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QAbstractButtondragMoveEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QAbstractButtondragLeaveEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QAbstractButtondropEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QAbstractButtonshowEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QAbstractButtonhideEventProc* = proc(self: QAbstractButton, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QAbstractButtonnativeEventProc* = proc(self: QAbstractButton, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QAbstractButtonmetricProc* = proc(self: QAbstractButton, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractButtoninitPainterProc* = proc(self: QAbstractButton, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QAbstractButtonredirectedProc* = proc(self: QAbstractButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QAbstractButtonsharedPainterProc* = proc(self: QAbstractButton): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QAbstractButtoninputMethodEventProc* = proc(self: QAbstractButton, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QAbstractButtoninputMethodQueryProc* = proc(self: QAbstractButton, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractButtonfocusNextPrevChildProc* = proc(self: QAbstractButton, next: bool): bool {.raises: [], gcsafe.}
type QAbstractButtoneventFilterProc* = proc(self: QAbstractButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractButtonchildEventProc* = proc(self: QAbstractButton, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractButtoncustomEventProc* = proc(self: QAbstractButton, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractButtonconnectNotifyProc* = proc(self: QAbstractButton, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractButtondisconnectNotifyProc* = proc(self: QAbstractButton, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAbstractButtonVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractButtonVTable
  metaObject*: QAbstractButtonmetaObjectProc
  metacast*: QAbstractButtonmetacastProc
  metacall*: QAbstractButtonmetacallProc
  paintEvent*: QAbstractButtonpaintEventProc
  hitButton*: QAbstractButtonhitButtonProc
  checkStateSet*: QAbstractButtoncheckStateSetProc
  nextCheckState*: QAbstractButtonnextCheckStateProc
  event*: QAbstractButtoneventProc
  keyPressEvent*: QAbstractButtonkeyPressEventProc
  keyReleaseEvent*: QAbstractButtonkeyReleaseEventProc
  mousePressEvent*: QAbstractButtonmousePressEventProc
  mouseReleaseEvent*: QAbstractButtonmouseReleaseEventProc
  mouseMoveEvent*: QAbstractButtonmouseMoveEventProc
  focusInEvent*: QAbstractButtonfocusInEventProc
  focusOutEvent*: QAbstractButtonfocusOutEventProc
  changeEvent*: QAbstractButtonchangeEventProc
  timerEvent*: QAbstractButtontimerEventProc
  devType*: QAbstractButtondevTypeProc
  setVisible*: QAbstractButtonsetVisibleProc
  sizeHint*: QAbstractButtonsizeHintProc
  minimumSizeHint*: QAbstractButtonminimumSizeHintProc
  heightForWidth*: QAbstractButtonheightForWidthProc
  hasHeightForWidth*: QAbstractButtonhasHeightForWidthProc
  paintEngine*: QAbstractButtonpaintEngineProc
  mouseDoubleClickEvent*: QAbstractButtonmouseDoubleClickEventProc
  wheelEvent*: QAbstractButtonwheelEventProc
  enterEvent*: QAbstractButtonenterEventProc
  leaveEvent*: QAbstractButtonleaveEventProc
  moveEvent*: QAbstractButtonmoveEventProc
  resizeEvent*: QAbstractButtonresizeEventProc
  closeEvent*: QAbstractButtoncloseEventProc
  contextMenuEvent*: QAbstractButtoncontextMenuEventProc
  tabletEvent*: QAbstractButtontabletEventProc
  actionEvent*: QAbstractButtonactionEventProc
  dragEnterEvent*: QAbstractButtondragEnterEventProc
  dragMoveEvent*: QAbstractButtondragMoveEventProc
  dragLeaveEvent*: QAbstractButtondragLeaveEventProc
  dropEvent*: QAbstractButtondropEventProc
  showEvent*: QAbstractButtonshowEventProc
  hideEvent*: QAbstractButtonhideEventProc
  nativeEvent*: QAbstractButtonnativeEventProc
  metric*: QAbstractButtonmetricProc
  initPainter*: QAbstractButtoninitPainterProc
  redirected*: QAbstractButtonredirectedProc
  sharedPainter*: QAbstractButtonsharedPainterProc
  inputMethodEvent*: QAbstractButtoninputMethodEventProc
  inputMethodQuery*: QAbstractButtoninputMethodQueryProc
  focusNextPrevChild*: QAbstractButtonfocusNextPrevChildProc
  eventFilter*: QAbstractButtoneventFilterProc
  childEvent*: QAbstractButtonchildEventProc
  customEvent*: QAbstractButtoncustomEventProc
  connectNotify*: QAbstractButtonconnectNotifyProc
  disconnectNotify*: QAbstractButtondisconnectNotifyProc

proc QAbstractButtonmetaObject*(self: gen_qabstractbutton_types.QAbstractButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractButton_virtualbase_metaObject(self.h), owned: false)

proc QAbstractButtonmetacast*(self: gen_qabstractbutton_types.QAbstractButton, param1: cstring): pointer =
  fcQAbstractButton_virtualbase_metacast(self.h, param1)

proc QAbstractButtonmetacall*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAbstractButtonhitButton*(self: gen_qabstractbutton_types.QAbstractButton, pos: gen_qpoint_types.QPoint): bool =
  fcQAbstractButton_virtualbase_hitButton(self.h, pos.h)

proc QAbstractButtoncheckStateSet*(self: gen_qabstractbutton_types.QAbstractButton): void =
  fcQAbstractButton_virtualbase_checkStateSet(self.h)

proc QAbstractButtonnextCheckState*(self: gen_qabstractbutton_types.QAbstractButton): void =
  fcQAbstractButton_virtualbase_nextCheckState(self.h)

proc QAbstractButtonevent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractButton_virtualbase_event(self.h, e.h)

proc QAbstractButtonkeyPressEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QKeyEvent): void =
  fcQAbstractButton_virtualbase_keyPressEvent(self.h, e.h)

proc QAbstractButtonkeyReleaseEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QKeyEvent): void =
  fcQAbstractButton_virtualbase_keyReleaseEvent(self.h, e.h)

proc QAbstractButtonmousePressEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QMouseEvent): void =
  fcQAbstractButton_virtualbase_mousePressEvent(self.h, e.h)

proc QAbstractButtonmouseReleaseEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QMouseEvent): void =
  fcQAbstractButton_virtualbase_mouseReleaseEvent(self.h, e.h)

proc QAbstractButtonmouseMoveEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QMouseEvent): void =
  fcQAbstractButton_virtualbase_mouseMoveEvent(self.h, e.h)

proc QAbstractButtonfocusInEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QFocusEvent): void =
  fcQAbstractButton_virtualbase_focusInEvent(self.h, e.h)

proc QAbstractButtonfocusOutEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QFocusEvent): void =
  fcQAbstractButton_virtualbase_focusOutEvent(self.h, e.h)

proc QAbstractButtonchangeEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qcoreevent_types.QEvent): void =
  fcQAbstractButton_virtualbase_changeEvent(self.h, e.h)

proc QAbstractButtontimerEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractButton_virtualbase_timerEvent(self.h, e.h)

proc QAbstractButtondevType*(self: gen_qabstractbutton_types.QAbstractButton): cint =
  fcQAbstractButton_virtualbase_devType(self.h)

proc QAbstractButtonsetVisible*(self: gen_qabstractbutton_types.QAbstractButton, visible: bool): void =
  fcQAbstractButton_virtualbase_setVisible(self.h, visible)

proc QAbstractButtonsizeHint*(self: gen_qabstractbutton_types.QAbstractButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractButton_virtualbase_sizeHint(self.h), owned: true)

proc QAbstractButtonminimumSizeHint*(self: gen_qabstractbutton_types.QAbstractButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractButton_virtualbase_minimumSizeHint(self.h), owned: true)

proc QAbstractButtonheightForWidth*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint): cint =
  fcQAbstractButton_virtualbase_heightForWidth(self.h, param1)

proc QAbstractButtonhasHeightForWidth*(self: gen_qabstractbutton_types.QAbstractButton): bool =
  fcQAbstractButton_virtualbase_hasHeightForWidth(self.h)

proc QAbstractButtonpaintEngine*(self: gen_qabstractbutton_types.QAbstractButton): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQAbstractButton_virtualbase_paintEngine(self.h), owned: false)

proc QAbstractButtonmouseDoubleClickEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QAbstractButtonwheelEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QWheelEvent): void =
  fcQAbstractButton_virtualbase_wheelEvent(self.h, event.h)

proc QAbstractButtonenterEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractButton_virtualbase_enterEvent(self.h, event.h)

proc QAbstractButtonleaveEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractButton_virtualbase_leaveEvent(self.h, event.h)

proc QAbstractButtonmoveEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QMoveEvent): void =
  fcQAbstractButton_virtualbase_moveEvent(self.h, event.h)

proc QAbstractButtonresizeEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QResizeEvent): void =
  fcQAbstractButton_virtualbase_resizeEvent(self.h, event.h)

proc QAbstractButtoncloseEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QCloseEvent): void =
  fcQAbstractButton_virtualbase_closeEvent(self.h, event.h)

proc QAbstractButtoncontextMenuEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QContextMenuEvent): void =
  fcQAbstractButton_virtualbase_contextMenuEvent(self.h, event.h)

proc QAbstractButtontabletEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QTabletEvent): void =
  fcQAbstractButton_virtualbase_tabletEvent(self.h, event.h)

proc QAbstractButtonactionEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QActionEvent): void =
  fcQAbstractButton_virtualbase_actionEvent(self.h, event.h)

proc QAbstractButtondragEnterEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QDragEnterEvent): void =
  fcQAbstractButton_virtualbase_dragEnterEvent(self.h, event.h)

proc QAbstractButtondragMoveEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QDragMoveEvent): void =
  fcQAbstractButton_virtualbase_dragMoveEvent(self.h, event.h)

proc QAbstractButtondragLeaveEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQAbstractButton_virtualbase_dragLeaveEvent(self.h, event.h)

proc QAbstractButtondropEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QDropEvent): void =
  fcQAbstractButton_virtualbase_dropEvent(self.h, event.h)

proc QAbstractButtonshowEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QShowEvent): void =
  fcQAbstractButton_virtualbase_showEvent(self.h, event.h)

proc QAbstractButtonhideEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QHideEvent): void =
  fcQAbstractButton_virtualbase_hideEvent(self.h, event.h)

proc QAbstractButtonnativeEvent*(self: gen_qabstractbutton_types.QAbstractButton, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QAbstractButtonmetric*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint): cint =
  fcQAbstractButton_virtualbase_metric(self.h, cint(param1))

proc QAbstractButtoninitPainter*(self: gen_qabstractbutton_types.QAbstractButton, painter: gen_qpainter_types.QPainter): void =
  fcQAbstractButton_virtualbase_initPainter(self.h, painter.h)

proc QAbstractButtonredirected*(self: gen_qabstractbutton_types.QAbstractButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractButton_virtualbase_redirected(self.h, offset.h), owned: false)

proc QAbstractButtonsharedPainter*(self: gen_qabstractbutton_types.QAbstractButton): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQAbstractButton_virtualbase_sharedPainter(self.h), owned: false)

proc QAbstractButtoninputMethodEvent*(self: gen_qabstractbutton_types.QAbstractButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractButton_virtualbase_inputMethodEvent(self.h, param1.h)

proc QAbstractButtoninputMethodQuery*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractButton_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QAbstractButtonfocusNextPrevChild*(self: gen_qabstractbutton_types.QAbstractButton, next: bool): bool =
  fcQAbstractButton_virtualbase_focusNextPrevChild(self.h, next)

proc QAbstractButtoneventFilter*(self: gen_qabstractbutton_types.QAbstractButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractButton_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAbstractButtonchildEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractButton_virtualbase_childEvent(self.h, event.h)

proc QAbstractButtoncustomEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractButton_virtualbase_customEvent(self.h, event.h)

proc QAbstractButtonconnectNotify*(self: gen_qabstractbutton_types.QAbstractButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractButton_virtualbase_connectNotify(self.h, signal.h)

proc QAbstractButtondisconnectNotify*(self: gen_qabstractbutton_types.QAbstractButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractButton_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAbstractButton_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAbstractButton_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractButton_vtable_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_hitButton(self: pointer, pos: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = vtbl[].hitButton(self, slotval1)
  virtualReturn

proc fcQAbstractButton_vtable_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  vtbl[].checkStateSet(self)

proc fcQAbstractButton_vtable_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  vtbl[].nextCheckState(self)

proc fcQAbstractButton_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAbstractButton_vtable_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQAbstractButton_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQAbstractButton_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQAbstractButton_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQAbstractButton_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractButton_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQAbstractButton_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQAbstractButton_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQAbstractButton_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAbstractButton_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAbstractButton_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAbstractButton_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](fcQAbstractButton_vdata(self))
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractButton* {.inheritable.} = ref object of QAbstractButton
  vtbl*: cQAbstractButtonVTable

method metaObject*(self: VirtualQAbstractButton): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractButtonmetaObject(self[])
method metacast*(self: VirtualQAbstractButton, param1: cstring): pointer {.base.} =
  QAbstractButtonmetacast(self[], param1)
method metacall*(self: VirtualQAbstractButton, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractButtonmetacall(self[], param1, param2, param3)
method paintEvent*(self: VirtualQAbstractButton, e: gen_qevent_types.QPaintEvent): void {.base.} =
  raiseAssert("missing implementation of QAbstractButton.paintEvent")
method hitButton*(self: VirtualQAbstractButton, pos: gen_qpoint_types.QPoint): bool {.base.} =
  QAbstractButtonhitButton(self[], pos)
method checkStateSet*(self: VirtualQAbstractButton): void {.base.} =
  QAbstractButtoncheckStateSet(self[])
method nextCheckState*(self: VirtualQAbstractButton): void {.base.} =
  QAbstractButtonnextCheckState(self[])
method event*(self: VirtualQAbstractButton, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractButtonevent(self[], e)
method keyPressEvent*(self: VirtualQAbstractButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractButtonkeyPressEvent(self[], e)
method keyReleaseEvent*(self: VirtualQAbstractButton, e: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractButtonkeyReleaseEvent(self[], e)
method mousePressEvent*(self: VirtualQAbstractButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractButtonmousePressEvent(self[], e)
method mouseReleaseEvent*(self: VirtualQAbstractButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractButtonmouseReleaseEvent(self[], e)
method mouseMoveEvent*(self: VirtualQAbstractButton, e: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractButtonmouseMoveEvent(self[], e)
method focusInEvent*(self: VirtualQAbstractButton, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractButtonfocusInEvent(self[], e)
method focusOutEvent*(self: VirtualQAbstractButton, e: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractButtonfocusOutEvent(self[], e)
method changeEvent*(self: VirtualQAbstractButton, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractButtonchangeEvent(self[], e)
method timerEvent*(self: VirtualQAbstractButton, e: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractButtontimerEvent(self[], e)
method devType*(self: VirtualQAbstractButton): cint {.base.} =
  QAbstractButtondevType(self[])
method setVisible*(self: VirtualQAbstractButton, visible: bool): void {.base.} =
  QAbstractButtonsetVisible(self[], visible)
method sizeHint*(self: VirtualQAbstractButton): gen_qsize_types.QSize {.base.} =
  QAbstractButtonsizeHint(self[])
method minimumSizeHint*(self: VirtualQAbstractButton): gen_qsize_types.QSize {.base.} =
  QAbstractButtonminimumSizeHint(self[])
method heightForWidth*(self: VirtualQAbstractButton, param1: cint): cint {.base.} =
  QAbstractButtonheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQAbstractButton): bool {.base.} =
  QAbstractButtonhasHeightForWidth(self[])
method paintEngine*(self: VirtualQAbstractButton): gen_qpaintengine_types.QPaintEngine {.base.} =
  QAbstractButtonpaintEngine(self[])
method mouseDoubleClickEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractButtonmouseDoubleClickEvent(self[], event)
method wheelEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QAbstractButtonwheelEvent(self[], event)
method enterEvent*(self: VirtualQAbstractButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractButtonenterEvent(self[], event)
method leaveEvent*(self: VirtualQAbstractButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractButtonleaveEvent(self[], event)
method moveEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QAbstractButtonmoveEvent(self[], event)
method resizeEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QAbstractButtonresizeEvent(self[], event)
method closeEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QAbstractButtoncloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QAbstractButtoncontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QAbstractButtontabletEvent(self[], event)
method actionEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QActionEvent): void {.base.} =
  QAbstractButtonactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QAbstractButtondragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QAbstractButtondragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QAbstractButtondragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QDropEvent): void {.base.} =
  QAbstractButtondropEvent(self[], event)
method showEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QShowEvent): void {.base.} =
  QAbstractButtonshowEvent(self[], event)
method hideEvent*(self: VirtualQAbstractButton, event: gen_qevent_types.QHideEvent): void {.base.} =
  QAbstractButtonhideEvent(self[], event)
method nativeEvent*(self: VirtualQAbstractButton, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QAbstractButtonnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQAbstractButton, param1: cint): cint {.base.} =
  QAbstractButtonmetric(self[], param1)
method initPainter*(self: VirtualQAbstractButton, painter: gen_qpainter_types.QPainter): void {.base.} =
  QAbstractButtoninitPainter(self[], painter)
method redirected*(self: VirtualQAbstractButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QAbstractButtonredirected(self[], offset)
method sharedPainter*(self: VirtualQAbstractButton): gen_qpainter_types.QPainter {.base.} =
  QAbstractButtonsharedPainter(self[])
method inputMethodEvent*(self: VirtualQAbstractButton, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QAbstractButtoninputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQAbstractButton, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractButtoninputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQAbstractButton, next: bool): bool {.base.} =
  QAbstractButtonfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQAbstractButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractButtoneventFilter(self[], watched, event)
method childEvent*(self: VirtualQAbstractButton, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractButtonchildEvent(self[], event)
method customEvent*(self: VirtualQAbstractButton, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractButtoncustomEvent(self[], event)
method connectNotify*(self: VirtualQAbstractButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractButtonconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAbstractButton, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractButtondisconnectNotify(self[], signal)

proc fcQAbstractButton_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAbstractButton_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractButton_method_callback_paintEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e, owned: false)
  inst.paintEvent(slotval1)

proc fcQAbstractButton_method_callback_hitButton(self: pointer, pos: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: pos, owned: false)
  var virtualReturn = inst.hitButton(slotval1)
  virtualReturn

proc fcQAbstractButton_method_callback_checkStateSet(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  inst.checkStateSet()

proc fcQAbstractButton_method_callback_nextCheckState(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  inst.nextCheckState()

proc fcQAbstractButton_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAbstractButton_method_callback_keyPressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQAbstractButton_method_callback_keyReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQAbstractButton_method_callback_mousePressEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQAbstractButton_method_callback_mouseReleaseEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQAbstractButton_method_callback_mouseMoveEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQAbstractButton_method_callback_focusInEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusInEvent(slotval1)

proc fcQAbstractButton_method_callback_focusOutEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQAbstractButton_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

proc fcQAbstractButton_method_callback_timerEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e, owned: false)
  inst.timerEvent(slotval1)

proc fcQAbstractButton_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQAbstractButton_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQAbstractButton_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQAbstractButton_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQAbstractButton_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQAbstractButton_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQAbstractButton_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQAbstractButton_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQAbstractButton_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQAbstractButton_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQAbstractButton_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQAbstractButton_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQAbstractButton_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQAbstractButton_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQAbstractButton_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQAbstractButton_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQAbstractButton_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQAbstractButton_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQAbstractButton_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQAbstractButton_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQAbstractButton_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractButton_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQAbstractButton_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQAbstractButton_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQAbstractButton_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractButton_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQAbstractButton_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAbstractButton_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAbstractButton_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAbstractButton_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAbstractButton_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractButton](fcQAbstractButton_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_qabstractbutton_types.QAbstractButton): void =
  fcQAbstractButton_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qabstractbutton_types.QAbstractButton): void =
  fcQAbstractButton_protectedbase_create(self.h)

proc destroy*(self: gen_qabstractbutton_types.QAbstractButton): void =
  fcQAbstractButton_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qabstractbutton_types.QAbstractButton): bool =
  fcQAbstractButton_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qabstractbutton_types.QAbstractButton): bool =
  fcQAbstractButton_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qabstractbutton_types.QAbstractButton): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractButton_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractbutton_types.QAbstractButton): cint =
  fcQAbstractButton_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractbutton_types.QAbstractButton, signal: cstring): cint =
  fcQAbstractButton_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractbutton_types.QAbstractButton, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractButton_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractbutton_types.QAbstractButton,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QAbstractButtonVTable = nil): gen_qabstractbutton_types.QAbstractButton =
  let vtbl = if vtbl == nil: new QAbstractButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractButtonVTable](fcQAbstractButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAbstractButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAbstractButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAbstractButton_vtable_callback_metacall
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQAbstractButton_vtable_callback_paintEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = fcQAbstractButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = fcQAbstractButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = fcQAbstractButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAbstractButton_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQAbstractButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQAbstractButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQAbstractButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQAbstractButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQAbstractButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQAbstractButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQAbstractButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQAbstractButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAbstractButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQAbstractButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQAbstractButton_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQAbstractButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQAbstractButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQAbstractButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQAbstractButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQAbstractButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQAbstractButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQAbstractButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQAbstractButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQAbstractButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQAbstractButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQAbstractButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQAbstractButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQAbstractButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQAbstractButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQAbstractButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQAbstractButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQAbstractButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQAbstractButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQAbstractButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQAbstractButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQAbstractButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQAbstractButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQAbstractButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQAbstractButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQAbstractButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQAbstractButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQAbstractButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQAbstractButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQAbstractButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAbstractButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAbstractButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAbstractButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAbstractButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAbstractButton_vtable_callback_disconnectNotify
  gen_qabstractbutton_types.QAbstractButton(h: fcQAbstractButton_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qabstractbutton_types.QAbstractButton,
    vtbl: ref QAbstractButtonVTable = nil): gen_qabstractbutton_types.QAbstractButton =
  let vtbl = if vtbl == nil: new QAbstractButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractButtonVTable](fcQAbstractButton_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAbstractButton_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAbstractButton_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAbstractButton_vtable_callback_metacall
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQAbstractButton_vtable_callback_paintEvent
  if not isNil(vtbl[].hitButton):
    vtbl[].vtbl.hitButton = fcQAbstractButton_vtable_callback_hitButton
  if not isNil(vtbl[].checkStateSet):
    vtbl[].vtbl.checkStateSet = fcQAbstractButton_vtable_callback_checkStateSet
  if not isNil(vtbl[].nextCheckState):
    vtbl[].vtbl.nextCheckState = fcQAbstractButton_vtable_callback_nextCheckState
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAbstractButton_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQAbstractButton_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQAbstractButton_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQAbstractButton_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQAbstractButton_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQAbstractButton_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQAbstractButton_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQAbstractButton_vtable_callback_focusOutEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQAbstractButton_vtable_callback_changeEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAbstractButton_vtable_callback_timerEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQAbstractButton_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQAbstractButton_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQAbstractButton_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQAbstractButton_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQAbstractButton_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQAbstractButton_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQAbstractButton_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQAbstractButton_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQAbstractButton_vtable_callback_wheelEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQAbstractButton_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQAbstractButton_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQAbstractButton_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQAbstractButton_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQAbstractButton_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQAbstractButton_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQAbstractButton_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQAbstractButton_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQAbstractButton_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQAbstractButton_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQAbstractButton_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQAbstractButton_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQAbstractButton_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQAbstractButton_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQAbstractButton_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQAbstractButton_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQAbstractButton_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQAbstractButton_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQAbstractButton_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQAbstractButton_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQAbstractButton_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQAbstractButton_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAbstractButton_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAbstractButton_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAbstractButton_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAbstractButton_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAbstractButton_vtable_callback_disconnectNotify
  gen_qabstractbutton_types.QAbstractButton(h: fcQAbstractButton_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQAbstractButton_mvtbl = cQAbstractButtonVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractButton()[])](self.fcQAbstractButton_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAbstractButton_method_callback_metaObject,
  metacast: fcQAbstractButton_method_callback_metacast,
  metacall: fcQAbstractButton_method_callback_metacall,
  paintEvent: fcQAbstractButton_method_callback_paintEvent,
  hitButton: fcQAbstractButton_method_callback_hitButton,
  checkStateSet: fcQAbstractButton_method_callback_checkStateSet,
  nextCheckState: fcQAbstractButton_method_callback_nextCheckState,
  event: fcQAbstractButton_method_callback_event,
  keyPressEvent: fcQAbstractButton_method_callback_keyPressEvent,
  keyReleaseEvent: fcQAbstractButton_method_callback_keyReleaseEvent,
  mousePressEvent: fcQAbstractButton_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQAbstractButton_method_callback_mouseReleaseEvent,
  mouseMoveEvent: fcQAbstractButton_method_callback_mouseMoveEvent,
  focusInEvent: fcQAbstractButton_method_callback_focusInEvent,
  focusOutEvent: fcQAbstractButton_method_callback_focusOutEvent,
  changeEvent: fcQAbstractButton_method_callback_changeEvent,
  timerEvent: fcQAbstractButton_method_callback_timerEvent,
  devType: fcQAbstractButton_method_callback_devType,
  setVisible: fcQAbstractButton_method_callback_setVisible,
  sizeHint: fcQAbstractButton_method_callback_sizeHint,
  minimumSizeHint: fcQAbstractButton_method_callback_minimumSizeHint,
  heightForWidth: fcQAbstractButton_method_callback_heightForWidth,
  hasHeightForWidth: fcQAbstractButton_method_callback_hasHeightForWidth,
  paintEngine: fcQAbstractButton_method_callback_paintEngine,
  mouseDoubleClickEvent: fcQAbstractButton_method_callback_mouseDoubleClickEvent,
  wheelEvent: fcQAbstractButton_method_callback_wheelEvent,
  enterEvent: fcQAbstractButton_method_callback_enterEvent,
  leaveEvent: fcQAbstractButton_method_callback_leaveEvent,
  moveEvent: fcQAbstractButton_method_callback_moveEvent,
  resizeEvent: fcQAbstractButton_method_callback_resizeEvent,
  closeEvent: fcQAbstractButton_method_callback_closeEvent,
  contextMenuEvent: fcQAbstractButton_method_callback_contextMenuEvent,
  tabletEvent: fcQAbstractButton_method_callback_tabletEvent,
  actionEvent: fcQAbstractButton_method_callback_actionEvent,
  dragEnterEvent: fcQAbstractButton_method_callback_dragEnterEvent,
  dragMoveEvent: fcQAbstractButton_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQAbstractButton_method_callback_dragLeaveEvent,
  dropEvent: fcQAbstractButton_method_callback_dropEvent,
  showEvent: fcQAbstractButton_method_callback_showEvent,
  hideEvent: fcQAbstractButton_method_callback_hideEvent,
  nativeEvent: fcQAbstractButton_method_callback_nativeEvent,
  metric: fcQAbstractButton_method_callback_metric,
  initPainter: fcQAbstractButton_method_callback_initPainter,
  redirected: fcQAbstractButton_method_callback_redirected,
  sharedPainter: fcQAbstractButton_method_callback_sharedPainter,
  inputMethodEvent: fcQAbstractButton_method_callback_inputMethodEvent,
  inputMethodQuery: fcQAbstractButton_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQAbstractButton_method_callback_focusNextPrevChild,
  eventFilter: fcQAbstractButton_method_callback_eventFilter,
  childEvent: fcQAbstractButton_method_callback_childEvent,
  customEvent: fcQAbstractButton_method_callback_customEvent,
  connectNotify: fcQAbstractButton_method_callback_connectNotify,
  disconnectNotify: fcQAbstractButton_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractbutton_types.QAbstractButton,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQAbstractButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractButton_new(addr(cQAbstractButton_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qabstractbutton_types.QAbstractButton,
    inst: VirtualQAbstractButton) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractButton_new2(addr(cQAbstractButton_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractbutton_types.QAbstractButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractButton_staticMetaObject())
