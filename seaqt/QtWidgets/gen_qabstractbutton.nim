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
{.compile("gen_qabstractbutton.cpp", cflags).}


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

proc fcQAbstractButton_metaObject(self: pointer, ): pointer {.importc: "QAbstractButton_metaObject".}
proc fcQAbstractButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractButton_metacast".}
proc fcQAbstractButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractButton_metacall".}
proc fcQAbstractButton_tr(s: cstring): struct_miqt_string {.importc: "QAbstractButton_tr".}
proc fcQAbstractButton_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractButton_trUtf8".}
proc fcQAbstractButton_setText(self: pointer, text: struct_miqt_string): void {.importc: "QAbstractButton_setText".}
proc fcQAbstractButton_text(self: pointer, ): struct_miqt_string {.importc: "QAbstractButton_text".}
proc fcQAbstractButton_setIcon(self: pointer, icon: pointer): void {.importc: "QAbstractButton_setIcon".}
proc fcQAbstractButton_icon(self: pointer, ): pointer {.importc: "QAbstractButton_icon".}
proc fcQAbstractButton_iconSize(self: pointer, ): pointer {.importc: "QAbstractButton_iconSize".}
proc fcQAbstractButton_setShortcut(self: pointer, key: pointer): void {.importc: "QAbstractButton_setShortcut".}
proc fcQAbstractButton_shortcut(self: pointer, ): pointer {.importc: "QAbstractButton_shortcut".}
proc fcQAbstractButton_setCheckable(self: pointer, checkable: bool): void {.importc: "QAbstractButton_setCheckable".}
proc fcQAbstractButton_isCheckable(self: pointer, ): bool {.importc: "QAbstractButton_isCheckable".}
proc fcQAbstractButton_isChecked(self: pointer, ): bool {.importc: "QAbstractButton_isChecked".}
proc fcQAbstractButton_setDown(self: pointer, down: bool): void {.importc: "QAbstractButton_setDown".}
proc fcQAbstractButton_isDown(self: pointer, ): bool {.importc: "QAbstractButton_isDown".}
proc fcQAbstractButton_setAutoRepeat(self: pointer, autoRepeat: bool): void {.importc: "QAbstractButton_setAutoRepeat".}
proc fcQAbstractButton_autoRepeat(self: pointer, ): bool {.importc: "QAbstractButton_autoRepeat".}
proc fcQAbstractButton_setAutoRepeatDelay(self: pointer, autoRepeatDelay: cint): void {.importc: "QAbstractButton_setAutoRepeatDelay".}
proc fcQAbstractButton_autoRepeatDelay(self: pointer, ): cint {.importc: "QAbstractButton_autoRepeatDelay".}
proc fcQAbstractButton_setAutoRepeatInterval(self: pointer, autoRepeatInterval: cint): void {.importc: "QAbstractButton_setAutoRepeatInterval".}
proc fcQAbstractButton_autoRepeatInterval(self: pointer, ): cint {.importc: "QAbstractButton_autoRepeatInterval".}
proc fcQAbstractButton_setAutoExclusive(self: pointer, autoExclusive: bool): void {.importc: "QAbstractButton_setAutoExclusive".}
proc fcQAbstractButton_autoExclusive(self: pointer, ): bool {.importc: "QAbstractButton_autoExclusive".}
proc fcQAbstractButton_group(self: pointer, ): pointer {.importc: "QAbstractButton_group".}
proc fcQAbstractButton_setIconSize(self: pointer, size: pointer): void {.importc: "QAbstractButton_setIconSize".}
proc fcQAbstractButton_animateClick(self: pointer, ): void {.importc: "QAbstractButton_animateClick".}
proc fcQAbstractButton_click(self: pointer, ): void {.importc: "QAbstractButton_click".}
proc fcQAbstractButton_toggle(self: pointer, ): void {.importc: "QAbstractButton_toggle".}
proc fcQAbstractButton_setChecked(self: pointer, checked: bool): void {.importc: "QAbstractButton_setChecked".}
proc fcQAbstractButton_pressed(self: pointer, ): void {.importc: "QAbstractButton_pressed".}
proc fcQAbstractButton_connect_pressed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractButton_connect_pressed".}
proc fcQAbstractButton_released(self: pointer, ): void {.importc: "QAbstractButton_released".}
proc fcQAbstractButton_connect_released(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractButton_connect_released".}
proc fcQAbstractButton_clicked(self: pointer, ): void {.importc: "QAbstractButton_clicked".}
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
type cQAbstractButtonVTable = object
  destructor*: proc(vtbl: ptr cQAbstractButtonVTable, self: ptr cQAbstractButton) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  hitButton*: proc(vtbl, self: pointer, pos: pointer): bool {.cdecl, raises: [], gcsafe.}
  checkStateSet*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  nextCheckState*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractButton_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAbstractButton_virtualbase_metaObject".}
proc fcQAbstractButton_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractButton_virtualbase_metacast".}
proc fcQAbstractButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractButton_virtualbase_metacall".}
proc fcQAbstractButton_virtualbase_hitButton(self: pointer, pos: pointer): bool {.importc: "QAbstractButton_virtualbase_hitButton".}
proc fcQAbstractButton_virtualbase_checkStateSet(self: pointer, ): void {.importc: "QAbstractButton_virtualbase_checkStateSet".}
proc fcQAbstractButton_virtualbase_nextCheckState(self: pointer, ): void {.importc: "QAbstractButton_virtualbase_nextCheckState".}
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
proc fcQAbstractButton_virtualbase_devType(self: pointer, ): cint {.importc: "QAbstractButton_virtualbase_devType".}
proc fcQAbstractButton_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QAbstractButton_virtualbase_setVisible".}
proc fcQAbstractButton_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QAbstractButton_virtualbase_sizeHint".}
proc fcQAbstractButton_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QAbstractButton_virtualbase_minimumSizeHint".}
proc fcQAbstractButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QAbstractButton_virtualbase_heightForWidth".}
proc fcQAbstractButton_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QAbstractButton_virtualbase_hasHeightForWidth".}
proc fcQAbstractButton_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QAbstractButton_virtualbase_paintEngine".}
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
proc fcQAbstractButton_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QAbstractButton_virtualbase_sharedPainter".}
proc fcQAbstractButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QAbstractButton_virtualbase_inputMethodEvent".}
proc fcQAbstractButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractButton_virtualbase_inputMethodQuery".}
proc fcQAbstractButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QAbstractButton_virtualbase_focusNextPrevChild".}
proc fcQAbstractButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractButton_virtualbase_eventFilter".}
proc fcQAbstractButton_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_childEvent".}
proc fcQAbstractButton_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractButton_virtualbase_customEvent".}
proc fcQAbstractButton_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractButton_virtualbase_connectNotify".}
proc fcQAbstractButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractButton_virtualbase_disconnectNotify".}
proc fcQAbstractButton_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QAbstractButton_protectedbase_updateMicroFocus".}
proc fcQAbstractButton_protectedbase_create(self: pointer, ): void {.importc: "QAbstractButton_protectedbase_create".}
proc fcQAbstractButton_protectedbase_destroy(self: pointer, ): void {.importc: "QAbstractButton_protectedbase_destroy".}
proc fcQAbstractButton_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QAbstractButton_protectedbase_focusNextChild".}
proc fcQAbstractButton_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QAbstractButton_protectedbase_focusPreviousChild".}
proc fcQAbstractButton_protectedbase_sender(self: pointer, ): pointer {.importc: "QAbstractButton_protectedbase_sender".}
proc fcQAbstractButton_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAbstractButton_protectedbase_senderSignalIndex".}
proc fcQAbstractButton_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractButton_protectedbase_receivers".}
proc fcQAbstractButton_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractButton_protectedbase_isSignalConnected".}
proc fcQAbstractButton_new(vtbl: pointer, parent: pointer): ptr cQAbstractButton {.importc: "QAbstractButton_new".}
proc fcQAbstractButton_new2(vtbl: pointer, ): ptr cQAbstractButton {.importc: "QAbstractButton_new2".}
proc fcQAbstractButton_staticMetaObject(): pointer {.importc: "QAbstractButton_staticMetaObject".}
proc fcQAbstractButton_delete(self: pointer) {.importc: "QAbstractButton_delete".}

proc metaObject*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractButton_metaObject(self.h))

proc metacast*(self: gen_qabstractbutton_types.QAbstractButton, param1: cstring): pointer =
  fcQAbstractButton_metacast(self.h, param1)

proc metacall*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractButton_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractbutton_types.QAbstractButton, s: cstring): string =
  let v_ms = fcQAbstractButton_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractbutton_types.QAbstractButton, s: cstring): string =
  let v_ms = fcQAbstractButton_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qabstractbutton_types.QAbstractButton, text: string): void =
  fcQAbstractButton_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc text*(self: gen_qabstractbutton_types.QAbstractButton, ): string =
  let v_ms = fcQAbstractButton_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setIcon*(self: gen_qabstractbutton_types.QAbstractButton, icon: gen_qicon_types.QIcon): void =
  fcQAbstractButton_setIcon(self.h, icon.h)

proc icon*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQAbstractButton_icon(self.h))

proc iconSize*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractButton_iconSize(self.h))

proc setShortcut*(self: gen_qabstractbutton_types.QAbstractButton, key: gen_qkeysequence_types.QKeySequence): void =
  fcQAbstractButton_setShortcut(self.h, key.h)

proc shortcut*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQAbstractButton_shortcut(self.h))

proc setCheckable*(self: gen_qabstractbutton_types.QAbstractButton, checkable: bool): void =
  fcQAbstractButton_setCheckable(self.h, checkable)

proc isCheckable*(self: gen_qabstractbutton_types.QAbstractButton, ): bool =
  fcQAbstractButton_isCheckable(self.h)

proc isChecked*(self: gen_qabstractbutton_types.QAbstractButton, ): bool =
  fcQAbstractButton_isChecked(self.h)

proc setDown*(self: gen_qabstractbutton_types.QAbstractButton, down: bool): void =
  fcQAbstractButton_setDown(self.h, down)

proc isDown*(self: gen_qabstractbutton_types.QAbstractButton, ): bool =
  fcQAbstractButton_isDown(self.h)

proc setAutoRepeat*(self: gen_qabstractbutton_types.QAbstractButton, autoRepeat: bool): void =
  fcQAbstractButton_setAutoRepeat(self.h, autoRepeat)

proc autoRepeat*(self: gen_qabstractbutton_types.QAbstractButton, ): bool =
  fcQAbstractButton_autoRepeat(self.h)

proc setAutoRepeatDelay*(self: gen_qabstractbutton_types.QAbstractButton, autoRepeatDelay: cint): void =
  fcQAbstractButton_setAutoRepeatDelay(self.h, autoRepeatDelay)

proc autoRepeatDelay*(self: gen_qabstractbutton_types.QAbstractButton, ): cint =
  fcQAbstractButton_autoRepeatDelay(self.h)

proc setAutoRepeatInterval*(self: gen_qabstractbutton_types.QAbstractButton, autoRepeatInterval: cint): void =
  fcQAbstractButton_setAutoRepeatInterval(self.h, autoRepeatInterval)

proc autoRepeatInterval*(self: gen_qabstractbutton_types.QAbstractButton, ): cint =
  fcQAbstractButton_autoRepeatInterval(self.h)

proc setAutoExclusive*(self: gen_qabstractbutton_types.QAbstractButton, autoExclusive: bool): void =
  fcQAbstractButton_setAutoExclusive(self.h, autoExclusive)

proc autoExclusive*(self: gen_qabstractbutton_types.QAbstractButton, ): bool =
  fcQAbstractButton_autoExclusive(self.h)

proc group*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qbuttongroup_types.QButtonGroup =
  gen_qbuttongroup_types.QButtonGroup(h: fcQAbstractButton_group(self.h))

proc setIconSize*(self: gen_qabstractbutton_types.QAbstractButton, size: gen_qsize_types.QSize): void =
  fcQAbstractButton_setIconSize(self.h, size.h)

proc animateClick*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_animateClick(self.h)

proc click*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_click(self.h)

proc toggle*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_toggle(self.h)

proc setChecked*(self: gen_qabstractbutton_types.QAbstractButton, checked: bool): void =
  fcQAbstractButton_setChecked(self.h, checked)

proc pressed*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_pressed(self.h)

type QAbstractButtonpressedSlot* = proc()
proc miqt_exec_callback_cQAbstractButton_pressed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractButtonpressedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAbstractButton_pressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractButtonpressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpressed*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonpressedSlot) =
  var tmp = new QAbstractButtonpressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_pressed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractButton_pressed, miqt_exec_callback_cQAbstractButton_pressed_release)

proc released*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_released(self.h)

type QAbstractButtonreleasedSlot* = proc()
proc miqt_exec_callback_cQAbstractButton_released(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractButtonreleasedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAbstractButton_released_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractButtonreleasedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onreleased*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonreleasedSlot) =
  var tmp = new QAbstractButtonreleasedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_released(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractButton_released, miqt_exec_callback_cQAbstractButton_released_release)

proc clicked*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_clicked(self.h)

type QAbstractButtonclickedSlot* = proc()
proc miqt_exec_callback_cQAbstractButton_clicked(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractButtonclickedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAbstractButton_clicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractButtonclickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclicked*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonclickedSlot) =
  var tmp = new QAbstractButtonclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_clicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractButton_clicked, miqt_exec_callback_cQAbstractButton_clicked_release)

proc toggled*(self: gen_qabstractbutton_types.QAbstractButton, checked: bool): void =
  fcQAbstractButton_toggled(self.h, checked)

type QAbstractButtontoggledSlot* = proc(checked: bool)
proc miqt_exec_callback_cQAbstractButton_toggled(slot: int, checked: bool) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractButtontoggledSlot](cast[pointer](slot))
  let slotval1 = checked

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAbstractButton_toggled_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractButtontoggledSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontoggled*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtontoggledSlot) =
  var tmp = new QAbstractButtontoggledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_toggled(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractButton_toggled, miqt_exec_callback_cQAbstractButton_toggled_release)

proc tr*(_: type gen_qabstractbutton_types.QAbstractButton, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractButton_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractbutton_types.QAbstractButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractButton_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractbutton_types.QAbstractButton, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractButton_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractbutton_types.QAbstractButton, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractButton_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc animateClick*(self: gen_qabstractbutton_types.QAbstractButton, msec: cint): void =
  fcQAbstractButton_animateClick1(self.h, msec)

proc clicked*(self: gen_qabstractbutton_types.QAbstractButton, checked: bool): void =
  fcQAbstractButton_clicked1(self.h, checked)

type QAbstractButtonclicked1Slot* = proc(checked: bool)
proc miqt_exec_callback_cQAbstractButton_clicked1(slot: int, checked: bool) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractButtonclicked1Slot](cast[pointer](slot))
  let slotval1 = checked

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAbstractButton_clicked1_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractButtonclicked1Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclicked*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonclicked1Slot) =
  var tmp = new QAbstractButtonclicked1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_clicked1(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractButton_clicked1, miqt_exec_callback_cQAbstractButton_clicked1_release)

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
type QAbstractButtonnativeEventProc* = proc(self: QAbstractButton, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QAbstractButtonVTable* = object
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
proc QAbstractButtonmetaObject*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractButton_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAbstractButton_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAbstractButtonmetacast*(self: gen_qabstractbutton_types.QAbstractButton, param1: cstring): pointer =
  fcQAbstractButton_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAbstractButton_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractButtonmetacall*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAbstractButton_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQAbstractButton_paintEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)
  vtbl[].paintEvent(self, slotval1)

proc QAbstractButtonhitButton*(self: gen_qabstractbutton_types.QAbstractButton, pos: gen_qpoint_types.QPoint): bool =
  fcQAbstractButton_virtualbase_hitButton(self.h, pos.h)

proc miqt_exec_callback_cQAbstractButton_hitButton(vtbl: pointer, self: pointer, pos: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: pos)
  var virtualReturn = vtbl[].hitButton(self, slotval1)
  virtualReturn

proc QAbstractButtoncheckStateSet*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_virtualbase_checkStateSet(self.h)

proc miqt_exec_callback_cQAbstractButton_checkStateSet(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  vtbl[].checkStateSet(self)

proc QAbstractButtonnextCheckState*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_virtualbase_nextCheckState(self.h)

proc miqt_exec_callback_cQAbstractButton_nextCheckState(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  vtbl[].nextCheckState(self)

proc QAbstractButtonevent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractButton_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQAbstractButton_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractButtonkeyPressEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QKeyEvent): void =
  fcQAbstractButton_virtualbase_keyPressEvent(self.h, e.h)

proc miqt_exec_callback_cQAbstractButton_keyPressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyPressEvent(self, slotval1)

proc QAbstractButtonkeyReleaseEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QKeyEvent): void =
  fcQAbstractButton_virtualbase_keyReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQAbstractButton_keyReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QAbstractButtonmousePressEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QMouseEvent): void =
  fcQAbstractButton_virtualbase_mousePressEvent(self.h, e.h)

proc miqt_exec_callback_cQAbstractButton_mousePressEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mousePressEvent(self, slotval1)

proc QAbstractButtonmouseReleaseEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QMouseEvent): void =
  fcQAbstractButton_virtualbase_mouseReleaseEvent(self.h, e.h)

proc miqt_exec_callback_cQAbstractButton_mouseReleaseEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QAbstractButtonmouseMoveEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QMouseEvent): void =
  fcQAbstractButton_virtualbase_mouseMoveEvent(self.h, e.h)

proc miqt_exec_callback_cQAbstractButton_mouseMoveEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QAbstractButtonfocusInEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QFocusEvent): void =
  fcQAbstractButton_virtualbase_focusInEvent(self.h, e.h)

proc miqt_exec_callback_cQAbstractButton_focusInEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusInEvent(self, slotval1)

proc QAbstractButtonfocusOutEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QFocusEvent): void =
  fcQAbstractButton_virtualbase_focusOutEvent(self.h, e.h)

proc miqt_exec_callback_cQAbstractButton_focusOutEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)
  vtbl[].focusOutEvent(self, slotval1)

proc QAbstractButtonchangeEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qcoreevent_types.QEvent): void =
  fcQAbstractButton_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQAbstractButton_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QAbstractButtontimerEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractButton_virtualbase_timerEvent(self.h, e.h)

proc miqt_exec_callback_cQAbstractButton_timerEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractButtondevType*(self: gen_qabstractbutton_types.QAbstractButton, ): cint =
  fcQAbstractButton_virtualbase_devType(self.h)

proc miqt_exec_callback_cQAbstractButton_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QAbstractButtonsetVisible*(self: gen_qabstractbutton_types.QAbstractButton, visible: bool): void =
  fcQAbstractButton_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQAbstractButton_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QAbstractButtonsizeHint*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractButton_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQAbstractButton_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QAbstractButtonminimumSizeHint*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractButton_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQAbstractButton_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QAbstractButtonheightForWidth*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint): cint =
  fcQAbstractButton_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQAbstractButton_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QAbstractButtonhasHeightForWidth*(self: gen_qabstractbutton_types.QAbstractButton, ): bool =
  fcQAbstractButton_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQAbstractButton_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QAbstractButtonpaintEngine*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQAbstractButton_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQAbstractButton_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QAbstractButtonmouseDoubleClickEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QAbstractButtonwheelEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QWheelEvent): void =
  fcQAbstractButton_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QAbstractButtonenterEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractButton_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QAbstractButtonleaveEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractButton_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QAbstractButtonmoveEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QMoveEvent): void =
  fcQAbstractButton_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QAbstractButtonresizeEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QResizeEvent): void =
  fcQAbstractButton_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QAbstractButtoncloseEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QCloseEvent): void =
  fcQAbstractButton_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QAbstractButtoncontextMenuEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QContextMenuEvent): void =
  fcQAbstractButton_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QAbstractButtontabletEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QTabletEvent): void =
  fcQAbstractButton_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QAbstractButtonactionEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QActionEvent): void =
  fcQAbstractButton_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QAbstractButtondragEnterEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QDragEnterEvent): void =
  fcQAbstractButton_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QAbstractButtondragMoveEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QDragMoveEvent): void =
  fcQAbstractButton_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QAbstractButtondragLeaveEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQAbstractButton_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QAbstractButtondropEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QDropEvent): void =
  fcQAbstractButton_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QAbstractButtonshowEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QShowEvent): void =
  fcQAbstractButton_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QAbstractButtonhideEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QHideEvent): void =
  fcQAbstractButton_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QAbstractButtonnativeEvent*(self: gen_qabstractbutton_types.QAbstractButton, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQAbstractButton_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractButtonmetric*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint): cint =
  fcQAbstractButton_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQAbstractButton_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QAbstractButtoninitPainter*(self: gen_qabstractbutton_types.QAbstractButton, painter: gen_qpainter_types.QPainter): void =
  fcQAbstractButton_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQAbstractButton_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QAbstractButtonredirected*(self: gen_qabstractbutton_types.QAbstractButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractButton_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQAbstractButton_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QAbstractButtonsharedPainter*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQAbstractButton_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQAbstractButton_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QAbstractButtoninputMethodEvent*(self: gen_qabstractbutton_types.QAbstractButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractButton_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractButton_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QAbstractButtoninputMethodQuery*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractButton_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQAbstractButton_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QAbstractButtonfocusNextPrevChild*(self: gen_qabstractbutton_types.QAbstractButton, next: bool): bool =
  fcQAbstractButton_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQAbstractButton_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QAbstractButtoneventFilter*(self: gen_qabstractbutton_types.QAbstractButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractButton_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAbstractButton_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractButtonchildEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractButton_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAbstractButtoncustomEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractButton_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractButton_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAbstractButtonconnectNotify*(self: gen_qabstractbutton_types.QAbstractButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractButton_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractButton_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractButtondisconnectNotify*(self: gen_qabstractbutton_types.QAbstractButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractButton_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractButton_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractButtonVTable](vtbl)
  let self = QAbstractButton(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateMicroFocus*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_protectedbase_create(self.h)

proc destroy*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qabstractbutton_types.QAbstractButton, ): bool =
  fcQAbstractButton_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qabstractbutton_types.QAbstractButton, ): bool =
  fcQAbstractButton_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractButton_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qabstractbutton_types.QAbstractButton, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractButtonVTable, _: ptr cQAbstractButton) {.cdecl.} =
    let vtbl = cast[ref QAbstractButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractButton_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractButton_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractButton_metacall
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQAbstractButton_paintEvent
  if not isNil(vtbl.hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQAbstractButton_hitButton
  if not isNil(vtbl.checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQAbstractButton_checkStateSet
  if not isNil(vtbl.nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQAbstractButton_nextCheckState
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractButton_event
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractButton_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractButton_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractButton_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractButton_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractButton_mouseMoveEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractButton_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractButton_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQAbstractButton_changeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractButton_timerEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQAbstractButton_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQAbstractButton_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractButton_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQAbstractButton_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQAbstractButton_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQAbstractButton_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQAbstractButton_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractButton_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractButton_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQAbstractButton_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQAbstractButton_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQAbstractButton_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQAbstractButton_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQAbstractButton_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractButton_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQAbstractButton_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQAbstractButton_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractButton_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractButton_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractButton_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractButton_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQAbstractButton_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQAbstractButton_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQAbstractButton_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQAbstractButton_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQAbstractButton_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQAbstractButton_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQAbstractButton_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractButton_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractButton_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQAbstractButton_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractButton_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractButton_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractButton_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractButton_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractButton_disconnectNotify
  gen_qabstractbutton_types.QAbstractButton(h: fcQAbstractButton_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qabstractbutton_types.QAbstractButton,
    vtbl: ref QAbstractButtonVTable = nil): gen_qabstractbutton_types.QAbstractButton =
  let vtbl = if vtbl == nil: new QAbstractButtonVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractButtonVTable, _: ptr cQAbstractButton) {.cdecl.} =
    let vtbl = cast[ref QAbstractButtonVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractButton_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractButton_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractButton_metacall
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQAbstractButton_paintEvent
  if not isNil(vtbl.hitButton):
    vtbl[].vtbl.hitButton = miqt_exec_callback_cQAbstractButton_hitButton
  if not isNil(vtbl.checkStateSet):
    vtbl[].vtbl.checkStateSet = miqt_exec_callback_cQAbstractButton_checkStateSet
  if not isNil(vtbl.nextCheckState):
    vtbl[].vtbl.nextCheckState = miqt_exec_callback_cQAbstractButton_nextCheckState
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractButton_event
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractButton_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractButton_keyReleaseEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractButton_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractButton_mouseReleaseEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractButton_mouseMoveEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractButton_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractButton_focusOutEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQAbstractButton_changeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractButton_timerEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQAbstractButton_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQAbstractButton_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractButton_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQAbstractButton_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQAbstractButton_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQAbstractButton_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQAbstractButton_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractButton_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractButton_wheelEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQAbstractButton_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQAbstractButton_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQAbstractButton_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQAbstractButton_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQAbstractButton_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractButton_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQAbstractButton_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQAbstractButton_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractButton_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractButton_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractButton_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractButton_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQAbstractButton_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQAbstractButton_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQAbstractButton_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQAbstractButton_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQAbstractButton_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQAbstractButton_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQAbstractButton_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractButton_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractButton_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQAbstractButton_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractButton_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractButton_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractButton_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractButton_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractButton_disconnectNotify
  gen_qabstractbutton_types.QAbstractButton(h: fcQAbstractButton_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qabstractbutton_types.QAbstractButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractButton_staticMetaObject())
proc delete*(self: gen_qabstractbutton_types.QAbstractButton) =
  fcQAbstractButton_delete(self.h)
