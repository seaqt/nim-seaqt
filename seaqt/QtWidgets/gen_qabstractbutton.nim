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

proc fcQAbstractButton_new(parent: pointer): ptr cQAbstractButton {.importc: "QAbstractButton_new".}
proc fcQAbstractButton_new2(): ptr cQAbstractButton {.importc: "QAbstractButton_new2".}
proc fcQAbstractButton_metaObject(self: pointer, ): pointer {.importc: "QAbstractButton_metaObject".}
proc fcQAbstractButton_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractButton_metacast".}
proc fcQAbstractButton_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractButton_metacall".}
proc fcQAbstractButton_tr(s: cstring): struct_miqt_string {.importc: "QAbstractButton_tr".}
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
proc fcQAbstractButton_connect_pressed(self: pointer, slot: int) {.importc: "QAbstractButton_connect_pressed".}
proc fcQAbstractButton_released(self: pointer, ): void {.importc: "QAbstractButton_released".}
proc fcQAbstractButton_connect_released(self: pointer, slot: int) {.importc: "QAbstractButton_connect_released".}
proc fcQAbstractButton_clicked(self: pointer, ): void {.importc: "QAbstractButton_clicked".}
proc fcQAbstractButton_connect_clicked(self: pointer, slot: int) {.importc: "QAbstractButton_connect_clicked".}
proc fcQAbstractButton_toggled(self: pointer, checked: bool): void {.importc: "QAbstractButton_toggled".}
proc fcQAbstractButton_connect_toggled(self: pointer, slot: int) {.importc: "QAbstractButton_connect_toggled".}
proc fcQAbstractButton_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractButton_tr2".}
proc fcQAbstractButton_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractButton_tr3".}
proc fcQAbstractButton_clicked1(self: pointer, checked: bool): void {.importc: "QAbstractButton_clicked1".}
proc fcQAbstractButton_connect_clicked1(self: pointer, slot: int) {.importc: "QAbstractButton_connect_clicked1".}
proc fQAbstractButton_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractButton_virtualbase_metaObject".}
proc fcQAbstractButton_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_metaObject".}
proc fQAbstractButton_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractButton_virtualbase_metacast".}
proc fcQAbstractButton_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_metacast".}
proc fQAbstractButton_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractButton_virtualbase_metacall".}
proc fcQAbstractButton_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_metacall".}
proc fcQAbstractButton_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_paintEvent".}
proc fQAbstractButton_virtualbase_hitButton(self: pointer, pos: pointer): bool{.importc: "QAbstractButton_virtualbase_hitButton".}
proc fcQAbstractButton_override_virtual_hitButton(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_hitButton".}
proc fQAbstractButton_virtualbase_checkStateSet(self: pointer, ): void{.importc: "QAbstractButton_virtualbase_checkStateSet".}
proc fcQAbstractButton_override_virtual_checkStateSet(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_checkStateSet".}
proc fQAbstractButton_virtualbase_nextCheckState(self: pointer, ): void{.importc: "QAbstractButton_virtualbase_nextCheckState".}
proc fcQAbstractButton_override_virtual_nextCheckState(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_nextCheckState".}
proc fQAbstractButton_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QAbstractButton_virtualbase_event".}
proc fcQAbstractButton_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_event".}
proc fQAbstractButton_virtualbase_keyPressEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_keyPressEvent".}
proc fcQAbstractButton_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_keyPressEvent".}
proc fQAbstractButton_virtualbase_keyReleaseEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_keyReleaseEvent".}
proc fcQAbstractButton_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_keyReleaseEvent".}
proc fQAbstractButton_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_mousePressEvent".}
proc fcQAbstractButton_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_mousePressEvent".}
proc fQAbstractButton_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_mouseReleaseEvent".}
proc fcQAbstractButton_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_mouseReleaseEvent".}
proc fQAbstractButton_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_mouseMoveEvent".}
proc fcQAbstractButton_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_mouseMoveEvent".}
proc fQAbstractButton_virtualbase_focusInEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_focusInEvent".}
proc fcQAbstractButton_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_focusInEvent".}
proc fQAbstractButton_virtualbase_focusOutEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_focusOutEvent".}
proc fcQAbstractButton_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_focusOutEvent".}
proc fQAbstractButton_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_changeEvent".}
proc fcQAbstractButton_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_changeEvent".}
proc fQAbstractButton_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QAbstractButton_virtualbase_timerEvent".}
proc fcQAbstractButton_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_timerEvent".}
proc fQAbstractButton_virtualbase_devType(self: pointer, ): cint{.importc: "QAbstractButton_virtualbase_devType".}
proc fcQAbstractButton_override_virtual_devType(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_devType".}
proc fQAbstractButton_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QAbstractButton_virtualbase_setVisible".}
proc fcQAbstractButton_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_setVisible".}
proc fQAbstractButton_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QAbstractButton_virtualbase_sizeHint".}
proc fcQAbstractButton_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_sizeHint".}
proc fQAbstractButton_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QAbstractButton_virtualbase_minimumSizeHint".}
proc fcQAbstractButton_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_minimumSizeHint".}
proc fQAbstractButton_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QAbstractButton_virtualbase_heightForWidth".}
proc fcQAbstractButton_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_heightForWidth".}
proc fQAbstractButton_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QAbstractButton_virtualbase_hasHeightForWidth".}
proc fcQAbstractButton_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_hasHeightForWidth".}
proc fQAbstractButton_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QAbstractButton_virtualbase_paintEngine".}
proc fcQAbstractButton_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_paintEngine".}
proc fQAbstractButton_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractButton_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractButton_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_wheelEvent".}
proc fcQAbstractButton_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_wheelEvent".}
proc fQAbstractButton_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_enterEvent".}
proc fcQAbstractButton_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_enterEvent".}
proc fQAbstractButton_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_leaveEvent".}
proc fcQAbstractButton_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_leaveEvent".}
proc fQAbstractButton_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_moveEvent".}
proc fcQAbstractButton_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_moveEvent".}
proc fQAbstractButton_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_resizeEvent".}
proc fcQAbstractButton_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_resizeEvent".}
proc fQAbstractButton_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_closeEvent".}
proc fcQAbstractButton_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_closeEvent".}
proc fQAbstractButton_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_contextMenuEvent".}
proc fcQAbstractButton_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_contextMenuEvent".}
proc fQAbstractButton_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_tabletEvent".}
proc fcQAbstractButton_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_tabletEvent".}
proc fQAbstractButton_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_actionEvent".}
proc fcQAbstractButton_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_actionEvent".}
proc fQAbstractButton_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_dragEnterEvent".}
proc fcQAbstractButton_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_dragEnterEvent".}
proc fQAbstractButton_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_dragMoveEvent".}
proc fcQAbstractButton_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_dragMoveEvent".}
proc fQAbstractButton_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_dragLeaveEvent".}
proc fcQAbstractButton_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_dragLeaveEvent".}
proc fQAbstractButton_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_dropEvent".}
proc fcQAbstractButton_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_dropEvent".}
proc fQAbstractButton_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_showEvent".}
proc fcQAbstractButton_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_showEvent".}
proc fQAbstractButton_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_hideEvent".}
proc fcQAbstractButton_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_hideEvent".}
proc fQAbstractButton_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QAbstractButton_virtualbase_nativeEvent".}
proc fcQAbstractButton_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_nativeEvent".}
proc fQAbstractButton_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QAbstractButton_virtualbase_metric".}
proc fcQAbstractButton_override_virtual_metric(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_metric".}
proc fQAbstractButton_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QAbstractButton_virtualbase_initPainter".}
proc fcQAbstractButton_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_initPainter".}
proc fQAbstractButton_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QAbstractButton_virtualbase_redirected".}
proc fcQAbstractButton_override_virtual_redirected(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_redirected".}
proc fQAbstractButton_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QAbstractButton_virtualbase_sharedPainter".}
proc fcQAbstractButton_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_sharedPainter".}
proc fQAbstractButton_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QAbstractButton_virtualbase_inputMethodEvent".}
proc fcQAbstractButton_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_inputMethodEvent".}
proc fQAbstractButton_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QAbstractButton_virtualbase_inputMethodQuery".}
proc fcQAbstractButton_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_inputMethodQuery".}
proc fQAbstractButton_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QAbstractButton_virtualbase_focusNextPrevChild".}
proc fcQAbstractButton_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_focusNextPrevChild".}
proc fQAbstractButton_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractButton_virtualbase_eventFilter".}
proc fcQAbstractButton_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_eventFilter".}
proc fQAbstractButton_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_childEvent".}
proc fcQAbstractButton_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_childEvent".}
proc fQAbstractButton_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractButton_virtualbase_customEvent".}
proc fcQAbstractButton_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_customEvent".}
proc fQAbstractButton_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractButton_virtualbase_connectNotify".}
proc fcQAbstractButton_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_connectNotify".}
proc fQAbstractButton_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractButton_virtualbase_disconnectNotify".}
proc fcQAbstractButton_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractButton_override_virtual_disconnectNotify".}
proc fcQAbstractButton_staticMetaObject(): pointer {.importc: "QAbstractButton_staticMetaObject".}
proc fcQAbstractButton_delete(self: pointer) {.importc: "QAbstractButton_delete".}


func init*(T: type gen_qabstractbutton_types.QAbstractButton, h: ptr cQAbstractButton): gen_qabstractbutton_types.QAbstractButton =
  T(h: h)
proc create*(T: type gen_qabstractbutton_types.QAbstractButton, parent: gen_qwidget_types.QWidget): gen_qabstractbutton_types.QAbstractButton =
  gen_qabstractbutton_types.QAbstractButton.init(fcQAbstractButton_new(parent.h))

proc create*(T: type gen_qabstractbutton_types.QAbstractButton, ): gen_qabstractbutton_types.QAbstractButton =
  gen_qabstractbutton_types.QAbstractButton.init(fcQAbstractButton_new2())

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
proc miqt_exec_callback_QAbstractButton_pressed(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractButtonpressedSlot](cast[pointer](slot))
  nimfunc[]()

proc onpressed*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonpressedSlot) =
  var tmp = new QAbstractButtonpressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_pressed(self.h, cast[int](addr tmp[]))

proc released*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_released(self.h)

type QAbstractButtonreleasedSlot* = proc()
proc miqt_exec_callback_QAbstractButton_released(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractButtonreleasedSlot](cast[pointer](slot))
  nimfunc[]()

proc onreleased*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonreleasedSlot) =
  var tmp = new QAbstractButtonreleasedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_released(self.h, cast[int](addr tmp[]))

proc clicked*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fcQAbstractButton_clicked(self.h)

type QAbstractButtonclickedSlot* = proc()
proc miqt_exec_callback_QAbstractButton_clicked(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractButtonclickedSlot](cast[pointer](slot))
  nimfunc[]()

proc onclicked*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonclickedSlot) =
  var tmp = new QAbstractButtonclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_clicked(self.h, cast[int](addr tmp[]))

proc toggled*(self: gen_qabstractbutton_types.QAbstractButton, checked: bool): void =
  fcQAbstractButton_toggled(self.h, checked)

type QAbstractButtontoggledSlot* = proc(checked: bool)
proc miqt_exec_callback_QAbstractButton_toggled(slot: int, checked: bool) {.exportc.} =
  let nimfunc = cast[ptr QAbstractButtontoggledSlot](cast[pointer](slot))
  let slotval1 = checked

  nimfunc[](slotval1)

proc ontoggled*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtontoggledSlot) =
  var tmp = new QAbstractButtontoggledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_toggled(self.h, cast[int](addr tmp[]))

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

proc clicked*(self: gen_qabstractbutton_types.QAbstractButton, checked: bool): void =
  fcQAbstractButton_clicked1(self.h, checked)

type QAbstractButtonclicked1Slot* = proc(checked: bool)
proc miqt_exec_callback_QAbstractButton_clicked1(slot: int, checked: bool) {.exportc.} =
  let nimfunc = cast[ptr QAbstractButtonclicked1Slot](cast[pointer](slot))
  let slotval1 = checked

  nimfunc[](slotval1)

proc onclicked*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonclicked1Slot) =
  var tmp = new QAbstractButtonclicked1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_connect_clicked1(self.h, cast[int](addr tmp[]))

proc QAbstractButtonmetaObject*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAbstractButton_virtualbase_metaObject(self.h))

type QAbstractButtonmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_metaObject(self: ptr cQAbstractButton, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractButton_metaObject ".} =
  var nimfunc = cast[ptr QAbstractButtonmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractButtonmetacast*(self: gen_qabstractbutton_types.QAbstractButton, param1: cstring): pointer =
  fQAbstractButton_virtualbase_metacast(self.h, param1)

type QAbstractButtonmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonmetacastProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_metacast(self: ptr cQAbstractButton, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractButton_metacast ".} =
  var nimfunc = cast[ptr QAbstractButtonmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractButtonmetacall*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint, param2: cint, param3: pointer): cint =
  fQAbstractButton_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractButtonmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonmetacallProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_metacall(self: ptr cQAbstractButton, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractButton_metacall ".} =
  var nimfunc = cast[ptr QAbstractButtonmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractButtonpaintEventProc* = proc(e: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonpaintEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_paintEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_paintEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: e)


  nimfunc[](slotval1)
proc QAbstractButtonhitButton*(self: gen_qabstractbutton_types.QAbstractButton, pos: gen_qpoint_types.QPoint): bool =
  fQAbstractButton_virtualbase_hitButton(self.h, pos.h)

type QAbstractButtonhitButtonProc* = proc(pos: gen_qpoint_types.QPoint): bool
proc onhitButton*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonhitButtonProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonhitButtonProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_hitButton(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_hitButton(self: ptr cQAbstractButton, slot: int, pos: pointer): bool {.exportc: "miqt_exec_callback_QAbstractButton_hitButton ".} =
  var nimfunc = cast[ptr QAbstractButtonhitButtonProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: pos)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractButtoncheckStateSet*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fQAbstractButton_virtualbase_checkStateSet(self.h)

type QAbstractButtoncheckStateSetProc* = proc(): void
proc oncheckStateSet*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtoncheckStateSetProc) =
  # TODO check subclass
  var tmp = new QAbstractButtoncheckStateSetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_checkStateSet(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_checkStateSet(self: ptr cQAbstractButton, slot: int): void {.exportc: "miqt_exec_callback_QAbstractButton_checkStateSet ".} =
  var nimfunc = cast[ptr QAbstractButtoncheckStateSetProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractButtonnextCheckState*(self: gen_qabstractbutton_types.QAbstractButton, ): void =
  fQAbstractButton_virtualbase_nextCheckState(self.h)

type QAbstractButtonnextCheckStateProc* = proc(): void
proc onnextCheckState*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonnextCheckStateProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonnextCheckStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_nextCheckState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_nextCheckState(self: ptr cQAbstractButton, slot: int): void {.exportc: "miqt_exec_callback_QAbstractButton_nextCheckState ".} =
  var nimfunc = cast[ptr QAbstractButtonnextCheckStateProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractButtonevent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qcoreevent_types.QEvent): bool =
  fQAbstractButton_virtualbase_event(self.h, e.h)

type QAbstractButtoneventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtoneventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtoneventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_event(self: ptr cQAbstractButton, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QAbstractButton_event ".} =
  var nimfunc = cast[ptr QAbstractButtoneventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractButtonkeyPressEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QKeyEvent): void =
  fQAbstractButton_virtualbase_keyPressEvent(self.h, e.h)

type QAbstractButtonkeyPressEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_keyPressEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_keyPressEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QAbstractButtonkeyReleaseEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QKeyEvent): void =
  fQAbstractButton_virtualbase_keyReleaseEvent(self.h, e.h)

type QAbstractButtonkeyReleaseEventProc* = proc(e: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_keyReleaseEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: e)


  nimfunc[](slotval1)
proc QAbstractButtonmousePressEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QMouseEvent): void =
  fQAbstractButton_virtualbase_mousePressEvent(self.h, e.h)

type QAbstractButtonmousePressEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonmousePressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_mousePressEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_mousePressEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QAbstractButtonmouseReleaseEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QMouseEvent): void =
  fQAbstractButton_virtualbase_mouseReleaseEvent(self.h, e.h)

type QAbstractButtonmouseReleaseEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_mouseReleaseEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QAbstractButtonmouseMoveEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QMouseEvent): void =
  fQAbstractButton_virtualbase_mouseMoveEvent(self.h, e.h)

type QAbstractButtonmouseMoveEventProc* = proc(e: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_mouseMoveEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: e)


  nimfunc[](slotval1)
proc QAbstractButtonfocusInEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QFocusEvent): void =
  fQAbstractButton_virtualbase_focusInEvent(self.h, e.h)

type QAbstractButtonfocusInEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonfocusInEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_focusInEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_focusInEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QAbstractButtonfocusOutEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qevent_types.QFocusEvent): void =
  fQAbstractButton_virtualbase_focusOutEvent(self.h, e.h)

type QAbstractButtonfocusOutEventProc* = proc(e: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_focusOutEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_focusOutEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: e)


  nimfunc[](slotval1)
proc QAbstractButtonchangeEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qcoreevent_types.QEvent): void =
  fQAbstractButton_virtualbase_changeEvent(self.h, e.h)

type QAbstractButtonchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonchangeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_changeEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_changeEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QAbstractButtontimerEvent*(self: gen_qabstractbutton_types.QAbstractButton, e: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractButton_virtualbase_timerEvent(self.h, e.h)

type QAbstractButtontimerEventProc* = proc(e: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtontimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtontimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_timerEvent(self: ptr cQAbstractButton, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractButtontimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)


  nimfunc[](slotval1)
proc QAbstractButtondevType*(self: gen_qabstractbutton_types.QAbstractButton, ): cint =
  fQAbstractButton_virtualbase_devType(self.h)

type QAbstractButtondevTypeProc* = proc(): cint
proc ondevType*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtondevTypeProc) =
  # TODO check subclass
  var tmp = new QAbstractButtondevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_devType(self: ptr cQAbstractButton, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractButton_devType ".} =
  var nimfunc = cast[ptr QAbstractButtondevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractButtonsetVisible*(self: gen_qabstractbutton_types.QAbstractButton, visible: bool): void =
  fQAbstractButton_virtualbase_setVisible(self.h, visible)

type QAbstractButtonsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonsetVisibleProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_setVisible(self: ptr cQAbstractButton, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QAbstractButton_setVisible ".} =
  var nimfunc = cast[ptr QAbstractButtonsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QAbstractButtonsizeHint*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractButton_virtualbase_sizeHint(self.h))

type QAbstractButtonsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonsizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_sizeHint(self: ptr cQAbstractButton, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractButton_sizeHint ".} =
  var nimfunc = cast[ptr QAbstractButtonsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractButtonminimumSizeHint*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractButton_virtualbase_minimumSizeHint(self.h))

type QAbstractButtonminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_minimumSizeHint(self: ptr cQAbstractButton, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractButton_minimumSizeHint ".} =
  var nimfunc = cast[ptr QAbstractButtonminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractButtonheightForWidth*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint): cint =
  fQAbstractButton_virtualbase_heightForWidth(self.h, param1)

type QAbstractButtonheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonheightForWidthProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_heightForWidth(self: ptr cQAbstractButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractButton_heightForWidth ".} =
  var nimfunc = cast[ptr QAbstractButtonheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractButtonhasHeightForWidth*(self: gen_qabstractbutton_types.QAbstractButton, ): bool =
  fQAbstractButton_virtualbase_hasHeightForWidth(self.h)

type QAbstractButtonhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_hasHeightForWidth(self: ptr cQAbstractButton, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractButton_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QAbstractButtonhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractButtonpaintEngine*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQAbstractButton_virtualbase_paintEngine(self.h))

type QAbstractButtonpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonpaintEngineProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_paintEngine(self: ptr cQAbstractButton, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractButton_paintEngine ".} =
  var nimfunc = cast[ptr QAbstractButtonpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractButtonmouseDoubleClickEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractButton_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QAbstractButtonmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_mouseDoubleClickEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtonwheelEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QWheelEvent): void =
  fQAbstractButton_virtualbase_wheelEvent(self.h, event.h)

type QAbstractButtonwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonwheelEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_wheelEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_wheelEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtonenterEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QEnterEvent): void =
  fQAbstractButton_virtualbase_enterEvent(self.h, event.h)

type QAbstractButtonenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonenterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_enterEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_enterEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtonleaveEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractButton_virtualbase_leaveEvent(self.h, event.h)

type QAbstractButtonleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonleaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_leaveEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_leaveEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtonmoveEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QMoveEvent): void =
  fQAbstractButton_virtualbase_moveEvent(self.h, event.h)

type QAbstractButtonmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonmoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_moveEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_moveEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtonresizeEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QResizeEvent): void =
  fQAbstractButton_virtualbase_resizeEvent(self.h, event.h)

type QAbstractButtonresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonresizeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_resizeEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_resizeEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtoncloseEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QCloseEvent): void =
  fQAbstractButton_virtualbase_closeEvent(self.h, event.h)

type QAbstractButtoncloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtoncloseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtoncloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_closeEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_closeEvent ".} =
  var nimfunc = cast[ptr QAbstractButtoncloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtoncontextMenuEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QContextMenuEvent): void =
  fQAbstractButton_virtualbase_contextMenuEvent(self.h, event.h)

type QAbstractButtoncontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtoncontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtoncontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_contextMenuEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_contextMenuEvent ".} =
  var nimfunc = cast[ptr QAbstractButtoncontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtontabletEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QTabletEvent): void =
  fQAbstractButton_virtualbase_tabletEvent(self.h, event.h)

type QAbstractButtontabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtontabletEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtontabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_tabletEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_tabletEvent ".} =
  var nimfunc = cast[ptr QAbstractButtontabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtonactionEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QActionEvent): void =
  fQAbstractButton_virtualbase_actionEvent(self.h, event.h)

type QAbstractButtonactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonactionEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_actionEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_actionEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtondragEnterEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QDragEnterEvent): void =
  fQAbstractButton_virtualbase_dragEnterEvent(self.h, event.h)

type QAbstractButtondragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtondragEnterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtondragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_dragEnterEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_dragEnterEvent ".} =
  var nimfunc = cast[ptr QAbstractButtondragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtondragMoveEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QDragMoveEvent): void =
  fQAbstractButton_virtualbase_dragMoveEvent(self.h, event.h)

type QAbstractButtondragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtondragMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtondragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_dragMoveEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_dragMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractButtondragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtondragLeaveEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QDragLeaveEvent): void =
  fQAbstractButton_virtualbase_dragLeaveEvent(self.h, event.h)

type QAbstractButtondragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtondragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtondragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_dragLeaveEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QAbstractButtondragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtondropEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QDropEvent): void =
  fQAbstractButton_virtualbase_dropEvent(self.h, event.h)

type QAbstractButtondropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtondropEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtondropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_dropEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_dropEvent ".} =
  var nimfunc = cast[ptr QAbstractButtondropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtonshowEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QShowEvent): void =
  fQAbstractButton_virtualbase_showEvent(self.h, event.h)

type QAbstractButtonshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonshowEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_showEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_showEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtonhideEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qevent_types.QHideEvent): void =
  fQAbstractButton_virtualbase_hideEvent(self.h, event.h)

type QAbstractButtonhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonhideEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_hideEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_hideEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtonnativeEvent*(self: gen_qabstractbutton_types.QAbstractButton, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQAbstractButton_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractButtonnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonnativeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_nativeEvent(self: ptr cQAbstractButton, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QAbstractButton_nativeEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractButtonmetric*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint): cint =
  fQAbstractButton_virtualbase_metric(self.h, cint(param1))

type QAbstractButtonmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonmetricProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_metric(self: ptr cQAbstractButton, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractButton_metric ".} =
  var nimfunc = cast[ptr QAbstractButtonmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractButtoninitPainter*(self: gen_qabstractbutton_types.QAbstractButton, painter: gen_qpainter_types.QPainter): void =
  fQAbstractButton_virtualbase_initPainter(self.h, painter.h)

type QAbstractButtoninitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtoninitPainterProc) =
  # TODO check subclass
  var tmp = new QAbstractButtoninitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_initPainter(self: ptr cQAbstractButton, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_initPainter ".} =
  var nimfunc = cast[ptr QAbstractButtoninitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QAbstractButtonredirected*(self: gen_qabstractbutton_types.QAbstractButton, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQAbstractButton_virtualbase_redirected(self.h, offset.h))

type QAbstractButtonredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonredirectedProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_redirected(self: ptr cQAbstractButton, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractButton_redirected ".} =
  var nimfunc = cast[ptr QAbstractButtonredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractButtonsharedPainter*(self: gen_qabstractbutton_types.QAbstractButton, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQAbstractButton_virtualbase_sharedPainter(self.h))

type QAbstractButtonsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonsharedPainterProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_sharedPainter(self: ptr cQAbstractButton, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractButton_sharedPainter ".} =
  var nimfunc = cast[ptr QAbstractButtonsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractButtoninputMethodEvent*(self: gen_qabstractbutton_types.QAbstractButton, param1: gen_qevent_types.QInputMethodEvent): void =
  fQAbstractButton_virtualbase_inputMethodEvent(self.h, param1.h)

type QAbstractButtoninputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtoninputMethodEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtoninputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_inputMethodEvent(self: ptr cQAbstractButton, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_inputMethodEvent ".} =
  var nimfunc = cast[ptr QAbstractButtoninputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractButtoninputMethodQuery*(self: gen_qabstractbutton_types.QAbstractButton, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractButton_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QAbstractButtoninputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtoninputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QAbstractButtoninputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_inputMethodQuery(self: ptr cQAbstractButton, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QAbstractButton_inputMethodQuery ".} =
  var nimfunc = cast[ptr QAbstractButtoninputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractButtonfocusNextPrevChild*(self: gen_qabstractbutton_types.QAbstractButton, next: bool): bool =
  fQAbstractButton_virtualbase_focusNextPrevChild(self.h, next)

type QAbstractButtonfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_focusNextPrevChild(self: ptr cQAbstractButton, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QAbstractButton_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QAbstractButtonfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractButtoneventFilter*(self: gen_qabstractbutton_types.QAbstractButton, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractButton_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractButtoneventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtoneventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractButtoneventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_eventFilter(self: ptr cQAbstractButton, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractButton_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractButtoneventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractButtonchildEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractButton_virtualbase_childEvent(self.h, event.h)

type QAbstractButtonchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_childEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_childEvent ".} =
  var nimfunc = cast[ptr QAbstractButtonchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtoncustomEvent*(self: gen_qabstractbutton_types.QAbstractButton, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractButton_virtualbase_customEvent(self.h, event.h)

type QAbstractButtoncustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtoncustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractButtoncustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_customEvent(self: ptr cQAbstractButton, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_customEvent ".} =
  var nimfunc = cast[ptr QAbstractButtoncustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractButtonconnectNotify*(self: gen_qabstractbutton_types.QAbstractButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractButton_virtualbase_connectNotify(self.h, signal.h)

type QAbstractButtonconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtonconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractButtonconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_connectNotify(self: ptr cQAbstractButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractButtonconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractButtondisconnectNotify*(self: gen_qabstractbutton_types.QAbstractButton, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractButton_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractButtondisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractbutton_types.QAbstractButton, slot: QAbstractButtondisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractButtondisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractButton_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractButton_disconnectNotify(self: ptr cQAbstractButton, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractButton_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractButtondisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstractbutton_types.QAbstractButton): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractButton_staticMetaObject())
proc delete*(self: gen_qabstractbutton_types.QAbstractButton) =
  fcQAbstractButton_delete(self.h)
