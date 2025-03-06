import ./Qt5Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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
{.compile("gen_qdialogbuttonbox.cpp", cflags).}


type QDialogButtonBoxButtonRoleEnum* = distinct cint
template InvalidRole*(_: type QDialogButtonBoxButtonRoleEnum): untyped = -1
template AcceptRole*(_: type QDialogButtonBoxButtonRoleEnum): untyped = 0
template RejectRole*(_: type QDialogButtonBoxButtonRoleEnum): untyped = 1
template DestructiveRole*(_: type QDialogButtonBoxButtonRoleEnum): untyped = 2
template ActionRole*(_: type QDialogButtonBoxButtonRoleEnum): untyped = 3
template HelpRole*(_: type QDialogButtonBoxButtonRoleEnum): untyped = 4
template YesRole*(_: type QDialogButtonBoxButtonRoleEnum): untyped = 5
template NoRole*(_: type QDialogButtonBoxButtonRoleEnum): untyped = 6
template ResetRole*(_: type QDialogButtonBoxButtonRoleEnum): untyped = 7
template ApplyRole*(_: type QDialogButtonBoxButtonRoleEnum): untyped = 8
template NRoles*(_: type QDialogButtonBoxButtonRoleEnum): untyped = 9


type QDialogButtonBoxStandardButtonEnum* = distinct cint
template NoButton*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 0
template Ok*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 1024
template Save*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 2048
template SaveAll*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 4096
template Open*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 8192
template Yes*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 16384
template YesToAll*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 32768
template No*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 65536
template NoToAll*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 131072
template Abort*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 262144
template Retry*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 524288
template Ignore*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 1048576
template Close*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 2097152
template Cancel*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 4194304
template Discard*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 8388608
template Help*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 16777216
template Apply*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 33554432
template Reset*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 67108864
template RestoreDefaults*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 134217728
template FirstButton*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 1024
template LastButton*(_: type QDialogButtonBoxStandardButtonEnum): untyped = 134217728


type QDialogButtonBoxButtonLayoutEnum* = distinct cint
template WinLayout*(_: type QDialogButtonBoxButtonLayoutEnum): untyped = 0
template MacLayout*(_: type QDialogButtonBoxButtonLayoutEnum): untyped = 1
template KdeLayout*(_: type QDialogButtonBoxButtonLayoutEnum): untyped = 2
template GnomeLayout*(_: type QDialogButtonBoxButtonLayoutEnum): untyped = 3
template AndroidLayout*(_: type QDialogButtonBoxButtonLayoutEnum): untyped = 5


import ./gen_qdialogbuttonbox_types
export gen_qdialogbuttonbox_types

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
  ./gen_qabstractbutton_types,
  ./gen_qpushbutton_types,
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
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qabstractbutton_types,
  gen_qpushbutton_types,
  gen_qwidget

type cQDialogButtonBox*{.exportc: "QDialogButtonBox", incompleteStruct.} = object

proc fcQDialogButtonBox_metaObject(self: pointer, ): pointer {.importc: "QDialogButtonBox_metaObject".}
proc fcQDialogButtonBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QDialogButtonBox_metacast".}
proc fcQDialogButtonBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDialogButtonBox_metacall".}
proc fcQDialogButtonBox_tr(s: cstring): struct_miqt_string {.importc: "QDialogButtonBox_tr".}
proc fcQDialogButtonBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QDialogButtonBox_trUtf8".}
proc fcQDialogButtonBox_setOrientation(self: pointer, orientation: cint): void {.importc: "QDialogButtonBox_setOrientation".}
proc fcQDialogButtonBox_orientation(self: pointer, ): cint {.importc: "QDialogButtonBox_orientation".}
proc fcQDialogButtonBox_addButton(self: pointer, button: pointer, role: cint): void {.importc: "QDialogButtonBox_addButton".}
proc fcQDialogButtonBox_addButton2(self: pointer, text: struct_miqt_string, role: cint): pointer {.importc: "QDialogButtonBox_addButton2".}
proc fcQDialogButtonBox_addButtonWithButton(self: pointer, button: cint): pointer {.importc: "QDialogButtonBox_addButtonWithButton".}
proc fcQDialogButtonBox_removeButton(self: pointer, button: pointer): void {.importc: "QDialogButtonBox_removeButton".}
proc fcQDialogButtonBox_clear(self: pointer, ): void {.importc: "QDialogButtonBox_clear".}
proc fcQDialogButtonBox_buttons(self: pointer, ): struct_miqt_array {.importc: "QDialogButtonBox_buttons".}
proc fcQDialogButtonBox_buttonRole(self: pointer, button: pointer): cint {.importc: "QDialogButtonBox_buttonRole".}
proc fcQDialogButtonBox_setStandardButtons(self: pointer, buttons: cint): void {.importc: "QDialogButtonBox_setStandardButtons".}
proc fcQDialogButtonBox_standardButtons(self: pointer, ): cint {.importc: "QDialogButtonBox_standardButtons".}
proc fcQDialogButtonBox_standardButton(self: pointer, button: pointer): cint {.importc: "QDialogButtonBox_standardButton".}
proc fcQDialogButtonBox_button(self: pointer, which: cint): pointer {.importc: "QDialogButtonBox_button".}
proc fcQDialogButtonBox_setCenterButtons(self: pointer, center: bool): void {.importc: "QDialogButtonBox_setCenterButtons".}
proc fcQDialogButtonBox_centerButtons(self: pointer, ): bool {.importc: "QDialogButtonBox_centerButtons".}
proc fcQDialogButtonBox_clicked(self: pointer, button: pointer): void {.importc: "QDialogButtonBox_clicked".}
proc fcQDialogButtonBox_connect_clicked(self: pointer, slot: int, callback: proc (slot: int, button: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDialogButtonBox_connect_clicked".}
proc fcQDialogButtonBox_accepted(self: pointer, ): void {.importc: "QDialogButtonBox_accepted".}
proc fcQDialogButtonBox_connect_accepted(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDialogButtonBox_connect_accepted".}
proc fcQDialogButtonBox_helpRequested(self: pointer, ): void {.importc: "QDialogButtonBox_helpRequested".}
proc fcQDialogButtonBox_connect_helpRequested(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDialogButtonBox_connect_helpRequested".}
proc fcQDialogButtonBox_rejected(self: pointer, ): void {.importc: "QDialogButtonBox_rejected".}
proc fcQDialogButtonBox_connect_rejected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDialogButtonBox_connect_rejected".}
proc fcQDialogButtonBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDialogButtonBox_tr2".}
proc fcQDialogButtonBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDialogButtonBox_tr3".}
proc fcQDialogButtonBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDialogButtonBox_trUtf82".}
proc fcQDialogButtonBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDialogButtonBox_trUtf83".}
type cQDialogButtonBoxVTable = object
  destructor*: proc(vtbl: ptr cQDialogButtonBoxVTable, self: ptr cQDialogButtonBox) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDialogButtonBox_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QDialogButtonBox_virtualbase_metaObject".}
proc fcQDialogButtonBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDialogButtonBox_virtualbase_metacast".}
proc fcQDialogButtonBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDialogButtonBox_virtualbase_metacall".}
proc fcQDialogButtonBox_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_changeEvent".}
proc fcQDialogButtonBox_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDialogButtonBox_virtualbase_event".}
proc fcQDialogButtonBox_virtualbase_devType(self: pointer, ): cint {.importc: "QDialogButtonBox_virtualbase_devType".}
proc fcQDialogButtonBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDialogButtonBox_virtualbase_setVisible".}
proc fcQDialogButtonBox_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QDialogButtonBox_virtualbase_sizeHint".}
proc fcQDialogButtonBox_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QDialogButtonBox_virtualbase_minimumSizeHint".}
proc fcQDialogButtonBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDialogButtonBox_virtualbase_heightForWidth".}
proc fcQDialogButtonBox_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QDialogButtonBox_virtualbase_hasHeightForWidth".}
proc fcQDialogButtonBox_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QDialogButtonBox_virtualbase_paintEngine".}
proc fcQDialogButtonBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_mousePressEvent".}
proc fcQDialogButtonBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_mouseReleaseEvent".}
proc fcQDialogButtonBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_mouseDoubleClickEvent".}
proc fcQDialogButtonBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_mouseMoveEvent".}
proc fcQDialogButtonBox_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_wheelEvent".}
proc fcQDialogButtonBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_keyPressEvent".}
proc fcQDialogButtonBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_keyReleaseEvent".}
proc fcQDialogButtonBox_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_focusInEvent".}
proc fcQDialogButtonBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_focusOutEvent".}
proc fcQDialogButtonBox_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_enterEvent".}
proc fcQDialogButtonBox_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_leaveEvent".}
proc fcQDialogButtonBox_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_paintEvent".}
proc fcQDialogButtonBox_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_moveEvent".}
proc fcQDialogButtonBox_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_resizeEvent".}
proc fcQDialogButtonBox_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_closeEvent".}
proc fcQDialogButtonBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_contextMenuEvent".}
proc fcQDialogButtonBox_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_tabletEvent".}
proc fcQDialogButtonBox_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_actionEvent".}
proc fcQDialogButtonBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_dragEnterEvent".}
proc fcQDialogButtonBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_dragMoveEvent".}
proc fcQDialogButtonBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_dragLeaveEvent".}
proc fcQDialogButtonBox_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_dropEvent".}
proc fcQDialogButtonBox_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_showEvent".}
proc fcQDialogButtonBox_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_hideEvent".}
proc fcQDialogButtonBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QDialogButtonBox_virtualbase_nativeEvent".}
proc fcQDialogButtonBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDialogButtonBox_virtualbase_metric".}
proc fcQDialogButtonBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDialogButtonBox_virtualbase_initPainter".}
proc fcQDialogButtonBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDialogButtonBox_virtualbase_redirected".}
proc fcQDialogButtonBox_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QDialogButtonBox_virtualbase_sharedPainter".}
proc fcQDialogButtonBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDialogButtonBox_virtualbase_inputMethodEvent".}
proc fcQDialogButtonBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDialogButtonBox_virtualbase_inputMethodQuery".}
proc fcQDialogButtonBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDialogButtonBox_virtualbase_focusNextPrevChild".}
proc fcQDialogButtonBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDialogButtonBox_virtualbase_eventFilter".}
proc fcQDialogButtonBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_timerEvent".}
proc fcQDialogButtonBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_childEvent".}
proc fcQDialogButtonBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_customEvent".}
proc fcQDialogButtonBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDialogButtonBox_virtualbase_connectNotify".}
proc fcQDialogButtonBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDialogButtonBox_virtualbase_disconnectNotify".}
proc fcQDialogButtonBox_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QDialogButtonBox_protectedbase_updateMicroFocus".}
proc fcQDialogButtonBox_protectedbase_create(self: pointer, ): void {.importc: "QDialogButtonBox_protectedbase_create".}
proc fcQDialogButtonBox_protectedbase_destroy(self: pointer, ): void {.importc: "QDialogButtonBox_protectedbase_destroy".}
proc fcQDialogButtonBox_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QDialogButtonBox_protectedbase_focusNextChild".}
proc fcQDialogButtonBox_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QDialogButtonBox_protectedbase_focusPreviousChild".}
proc fcQDialogButtonBox_protectedbase_sender(self: pointer, ): pointer {.importc: "QDialogButtonBox_protectedbase_sender".}
proc fcQDialogButtonBox_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QDialogButtonBox_protectedbase_senderSignalIndex".}
proc fcQDialogButtonBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDialogButtonBox_protectedbase_receivers".}
proc fcQDialogButtonBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDialogButtonBox_protectedbase_isSignalConnected".}
proc fcQDialogButtonBox_new(vtbl: pointer, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new".}
proc fcQDialogButtonBox_new2(vtbl: pointer, ): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new2".}
proc fcQDialogButtonBox_new3(vtbl: pointer, orientation: cint): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new3".}
proc fcQDialogButtonBox_new4(vtbl: pointer, buttons: cint): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new4".}
proc fcQDialogButtonBox_new5(vtbl: pointer, buttons: cint, orientation: cint): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new5".}
proc fcQDialogButtonBox_new6(vtbl: pointer, orientation: cint, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new6".}
proc fcQDialogButtonBox_new7(vtbl: pointer, buttons: cint, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new7".}
proc fcQDialogButtonBox_new8(vtbl: pointer, buttons: cint, orientation: cint, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new8".}
proc fcQDialogButtonBox_staticMetaObject(): pointer {.importc: "QDialogButtonBox_staticMetaObject".}
proc fcQDialogButtonBox_delete(self: pointer) {.importc: "QDialogButtonBox_delete".}

proc metaObject*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialogButtonBox_metaObject(self.h))

proc metacast*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cstring): pointer =
  fcQDialogButtonBox_metacast(self.h, param1)

proc metacall*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQDialogButtonBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring): string =
  let v_ms = fcQDialogButtonBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring): string =
  let v_ms = fcQDialogButtonBox_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOrientation*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, orientation: cint): void =
  fcQDialogButtonBox_setOrientation(self.h, cint(orientation))

proc orientation*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): cint =
  cint(fcQDialogButtonBox_orientation(self.h))

proc addButton*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, button: gen_qabstractbutton_types.QAbstractButton, role: cint): void =
  fcQDialogButtonBox_addButton(self.h, button.h, cint(role))

proc addButton*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, text: string, role: cint): gen_qpushbutton_types.QPushButton =
  gen_qpushbutton_types.QPushButton(h: fcQDialogButtonBox_addButton2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(role)))

proc addButton*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, button: cint): gen_qpushbutton_types.QPushButton =
  gen_qpushbutton_types.QPushButton(h: fcQDialogButtonBox_addButtonWithButton(self.h, cint(button)))

proc removeButton*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, button: gen_qabstractbutton_types.QAbstractButton): void =
  fcQDialogButtonBox_removeButton(self.h, button.h)

proc clear*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): void =
  fcQDialogButtonBox_clear(self.h)

proc buttons*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): seq[gen_qabstractbutton_types.QAbstractButton] =
  var v_ma = fcQDialogButtonBox_buttons(self.h)
  var vx_ret = newSeq[gen_qabstractbutton_types.QAbstractButton](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractbutton_types.QAbstractButton(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc buttonRole*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, button: gen_qabstractbutton_types.QAbstractButton): cint =
  cint(fcQDialogButtonBox_buttonRole(self.h, button.h))

proc setStandardButtons*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, buttons: cint): void =
  fcQDialogButtonBox_setStandardButtons(self.h, cint(buttons))

proc standardButtons*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): cint =
  cint(fcQDialogButtonBox_standardButtons(self.h))

proc standardButton*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, button: gen_qabstractbutton_types.QAbstractButton): cint =
  cint(fcQDialogButtonBox_standardButton(self.h, button.h))

proc button*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, which: cint): gen_qpushbutton_types.QPushButton =
  gen_qpushbutton_types.QPushButton(h: fcQDialogButtonBox_button(self.h, cint(which)))

proc setCenterButtons*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, center: bool): void =
  fcQDialogButtonBox_setCenterButtons(self.h, center)

proc centerButtons*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): bool =
  fcQDialogButtonBox_centerButtons(self.h)

proc clicked*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, button: gen_qabstractbutton_types.QAbstractButton): void =
  fcQDialogButtonBox_clicked(self.h, button.h)

type QDialogButtonBoxclickedSlot* = proc(button: gen_qabstractbutton_types.QAbstractButton)
proc miqt_exec_callback_cQDialogButtonBox_clicked(slot: int, button: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDialogButtonBoxclickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: button)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQDialogButtonBox_clicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDialogButtonBoxclickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclicked*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxclickedSlot) =
  var tmp = new QDialogButtonBoxclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_connect_clicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQDialogButtonBox_clicked, miqt_exec_callback_cQDialogButtonBox_clicked_release)

proc accepted*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): void =
  fcQDialogButtonBox_accepted(self.h)

type QDialogButtonBoxacceptedSlot* = proc()
proc miqt_exec_callback_cQDialogButtonBox_accepted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDialogButtonBoxacceptedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQDialogButtonBox_accepted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDialogButtonBoxacceptedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaccepted*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxacceptedSlot) =
  var tmp = new QDialogButtonBoxacceptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_connect_accepted(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQDialogButtonBox_accepted, miqt_exec_callback_cQDialogButtonBox_accepted_release)

proc helpRequested*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): void =
  fcQDialogButtonBox_helpRequested(self.h)

type QDialogButtonBoxhelpRequestedSlot* = proc()
proc miqt_exec_callback_cQDialogButtonBox_helpRequested(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDialogButtonBoxhelpRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQDialogButtonBox_helpRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDialogButtonBoxhelpRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhelpRequested*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxhelpRequestedSlot) =
  var tmp = new QDialogButtonBoxhelpRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_connect_helpRequested(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQDialogButtonBox_helpRequested, miqt_exec_callback_cQDialogButtonBox_helpRequested_release)

proc rejected*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): void =
  fcQDialogButtonBox_rejected(self.h)

type QDialogButtonBoxrejectedSlot* = proc()
proc miqt_exec_callback_cQDialogButtonBox_rejected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDialogButtonBoxrejectedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQDialogButtonBox_rejected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDialogButtonBoxrejectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrejected*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxrejectedSlot) =
  var tmp = new QDialogButtonBoxrejectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_connect_rejected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQDialogButtonBox_rejected, miqt_exec_callback_cQDialogButtonBox_rejected_release)

proc tr*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring, c: cstring): string =
  let v_ms = fcQDialogButtonBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDialogButtonBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring, c: cstring): string =
  let v_ms = fcQDialogButtonBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDialogButtonBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QDialogButtonBoxmetaObjectProc* = proc(self: QDialogButtonBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDialogButtonBoxmetacastProc* = proc(self: QDialogButtonBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QDialogButtonBoxmetacallProc* = proc(self: QDialogButtonBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDialogButtonBoxchangeEventProc* = proc(self: QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxeventProc* = proc(self: QDialogButtonBox, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDialogButtonBoxdevTypeProc* = proc(self: QDialogButtonBox): cint {.raises: [], gcsafe.}
type QDialogButtonBoxsetVisibleProc* = proc(self: QDialogButtonBox, visible: bool): void {.raises: [], gcsafe.}
type QDialogButtonBoxsizeHintProc* = proc(self: QDialogButtonBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDialogButtonBoxminimumSizeHintProc* = proc(self: QDialogButtonBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDialogButtonBoxheightForWidthProc* = proc(self: QDialogButtonBox, param1: cint): cint {.raises: [], gcsafe.}
type QDialogButtonBoxhasHeightForWidthProc* = proc(self: QDialogButtonBox): bool {.raises: [], gcsafe.}
type QDialogButtonBoxpaintEngineProc* = proc(self: QDialogButtonBox): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDialogButtonBoxmousePressEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxmouseReleaseEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxmouseDoubleClickEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxmouseMoveEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxwheelEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxkeyPressEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxkeyReleaseEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxfocusInEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxfocusOutEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxenterEventProc* = proc(self: QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxleaveEventProc* = proc(self: QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxpaintEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxmoveEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxresizeEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxcloseEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxcontextMenuEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxtabletEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxactionEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxdragEnterEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxdragMoveEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxdragLeaveEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxdropEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxshowEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxhideEventProc* = proc(self: QDialogButtonBox, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxnativeEventProc* = proc(self: QDialogButtonBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QDialogButtonBoxmetricProc* = proc(self: QDialogButtonBox, param1: cint): cint {.raises: [], gcsafe.}
type QDialogButtonBoxinitPainterProc* = proc(self: QDialogButtonBox, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDialogButtonBoxredirectedProc* = proc(self: QDialogButtonBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDialogButtonBoxsharedPainterProc* = proc(self: QDialogButtonBox): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDialogButtonBoxinputMethodEventProc* = proc(self: QDialogButtonBox, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxinputMethodQueryProc* = proc(self: QDialogButtonBox, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDialogButtonBoxfocusNextPrevChildProc* = proc(self: QDialogButtonBox, next: bool): bool {.raises: [], gcsafe.}
type QDialogButtonBoxeventFilterProc* = proc(self: QDialogButtonBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDialogButtonBoxtimerEventProc* = proc(self: QDialogButtonBox, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxchildEventProc* = proc(self: QDialogButtonBox, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxcustomEventProc* = proc(self: QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDialogButtonBoxconnectNotifyProc* = proc(self: QDialogButtonBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDialogButtonBoxdisconnectNotifyProc* = proc(self: QDialogButtonBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDialogButtonBoxVTable* = object
  vtbl: cQDialogButtonBoxVTable
  metaObject*: QDialogButtonBoxmetaObjectProc
  metacast*: QDialogButtonBoxmetacastProc
  metacall*: QDialogButtonBoxmetacallProc
  changeEvent*: QDialogButtonBoxchangeEventProc
  event*: QDialogButtonBoxeventProc
  devType*: QDialogButtonBoxdevTypeProc
  setVisible*: QDialogButtonBoxsetVisibleProc
  sizeHint*: QDialogButtonBoxsizeHintProc
  minimumSizeHint*: QDialogButtonBoxminimumSizeHintProc
  heightForWidth*: QDialogButtonBoxheightForWidthProc
  hasHeightForWidth*: QDialogButtonBoxhasHeightForWidthProc
  paintEngine*: QDialogButtonBoxpaintEngineProc
  mousePressEvent*: QDialogButtonBoxmousePressEventProc
  mouseReleaseEvent*: QDialogButtonBoxmouseReleaseEventProc
  mouseDoubleClickEvent*: QDialogButtonBoxmouseDoubleClickEventProc
  mouseMoveEvent*: QDialogButtonBoxmouseMoveEventProc
  wheelEvent*: QDialogButtonBoxwheelEventProc
  keyPressEvent*: QDialogButtonBoxkeyPressEventProc
  keyReleaseEvent*: QDialogButtonBoxkeyReleaseEventProc
  focusInEvent*: QDialogButtonBoxfocusInEventProc
  focusOutEvent*: QDialogButtonBoxfocusOutEventProc
  enterEvent*: QDialogButtonBoxenterEventProc
  leaveEvent*: QDialogButtonBoxleaveEventProc
  paintEvent*: QDialogButtonBoxpaintEventProc
  moveEvent*: QDialogButtonBoxmoveEventProc
  resizeEvent*: QDialogButtonBoxresizeEventProc
  closeEvent*: QDialogButtonBoxcloseEventProc
  contextMenuEvent*: QDialogButtonBoxcontextMenuEventProc
  tabletEvent*: QDialogButtonBoxtabletEventProc
  actionEvent*: QDialogButtonBoxactionEventProc
  dragEnterEvent*: QDialogButtonBoxdragEnterEventProc
  dragMoveEvent*: QDialogButtonBoxdragMoveEventProc
  dragLeaveEvent*: QDialogButtonBoxdragLeaveEventProc
  dropEvent*: QDialogButtonBoxdropEventProc
  showEvent*: QDialogButtonBoxshowEventProc
  hideEvent*: QDialogButtonBoxhideEventProc
  nativeEvent*: QDialogButtonBoxnativeEventProc
  metric*: QDialogButtonBoxmetricProc
  initPainter*: QDialogButtonBoxinitPainterProc
  redirected*: QDialogButtonBoxredirectedProc
  sharedPainter*: QDialogButtonBoxsharedPainterProc
  inputMethodEvent*: QDialogButtonBoxinputMethodEventProc
  inputMethodQuery*: QDialogButtonBoxinputMethodQueryProc
  focusNextPrevChild*: QDialogButtonBoxfocusNextPrevChildProc
  eventFilter*: QDialogButtonBoxeventFilterProc
  timerEvent*: QDialogButtonBoxtimerEventProc
  childEvent*: QDialogButtonBoxchildEventProc
  customEvent*: QDialogButtonBoxcustomEventProc
  connectNotify*: QDialogButtonBoxconnectNotifyProc
  disconnectNotify*: QDialogButtonBoxdisconnectNotifyProc
proc QDialogButtonBoxmetaObject*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialogButtonBox_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQDialogButtonBox_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QDialogButtonBoxmetacast*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cstring): pointer =
  fcQDialogButtonBox_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQDialogButtonBox_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDialogButtonBoxmetacall*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQDialogButtonBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQDialogButtonBox_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDialogButtonBoxchangeEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDialogButtonBox_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].changeEvent(self, slotval1)

proc QDialogButtonBoxevent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQDialogButtonBox_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDialogButtonBoxdevType*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): cint =
  fcQDialogButtonBox_virtualbase_devType(self.h)

proc miqt_exec_callback_cQDialogButtonBox_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QDialogButtonBoxsetVisible*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, visible: bool): void =
  fcQDialogButtonBox_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQDialogButtonBox_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QDialogButtonBoxsizeHint*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDialogButtonBox_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQDialogButtonBox_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QDialogButtonBoxminimumSizeHint*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDialogButtonBox_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQDialogButtonBox_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QDialogButtonBoxheightForWidth*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint): cint =
  fcQDialogButtonBox_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQDialogButtonBox_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QDialogButtonBoxhasHeightForWidth*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): bool =
  fcQDialogButtonBox_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQDialogButtonBox_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QDialogButtonBoxpaintEngine*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDialogButtonBox_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQDialogButtonBox_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QDialogButtonBoxmousePressEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDialogButtonBox_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QDialogButtonBoxmouseReleaseEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDialogButtonBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QDialogButtonBoxmouseDoubleClickEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDialogButtonBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QDialogButtonBoxmouseMoveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDialogButtonBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QDialogButtonBoxwheelEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QWheelEvent): void =
  fcQDialogButtonBox_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QDialogButtonBoxkeyPressEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QKeyEvent): void =
  fcQDialogButtonBox_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QDialogButtonBoxkeyReleaseEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QKeyEvent): void =
  fcQDialogButtonBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QDialogButtonBoxfocusInEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QFocusEvent): void =
  fcQDialogButtonBox_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QDialogButtonBoxfocusOutEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QFocusEvent): void =
  fcQDialogButtonBox_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QDialogButtonBoxenterEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDialogButtonBox_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QDialogButtonBoxleaveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDialogButtonBox_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QDialogButtonBoxpaintEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QPaintEvent): void =
  fcQDialogButtonBox_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QDialogButtonBoxmoveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMoveEvent): void =
  fcQDialogButtonBox_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QDialogButtonBoxresizeEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QResizeEvent): void =
  fcQDialogButtonBox_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QDialogButtonBoxcloseEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QCloseEvent): void =
  fcQDialogButtonBox_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QDialogButtonBoxcontextMenuEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDialogButtonBox_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QDialogButtonBoxtabletEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QTabletEvent): void =
  fcQDialogButtonBox_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QDialogButtonBoxactionEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QActionEvent): void =
  fcQDialogButtonBox_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QDialogButtonBoxdragEnterEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDialogButtonBox_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QDialogButtonBoxdragMoveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDialogButtonBox_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QDialogButtonBoxdragLeaveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDialogButtonBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QDialogButtonBoxdropEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QDropEvent): void =
  fcQDialogButtonBox_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QDialogButtonBoxshowEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QShowEvent): void =
  fcQDialogButtonBox_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QDialogButtonBoxhideEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QHideEvent): void =
  fcQDialogButtonBox_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QDialogButtonBoxnativeEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQDialogButtonBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQDialogButtonBox_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDialogButtonBoxmetric*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint): cint =
  fcQDialogButtonBox_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQDialogButtonBox_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QDialogButtonBoxinitPainter*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, painter: gen_qpainter_types.QPainter): void =
  fcQDialogButtonBox_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQDialogButtonBox_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QDialogButtonBoxredirected*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDialogButtonBox_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQDialogButtonBox_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QDialogButtonBoxsharedPainter*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDialogButtonBox_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQDialogButtonBox_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QDialogButtonBoxinputMethodEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDialogButtonBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQDialogButtonBox_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QDialogButtonBoxinputMethodQuery*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDialogButtonBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQDialogButtonBox_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QDialogButtonBoxfocusNextPrevChild*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, next: bool): bool =
  fcQDialogButtonBox_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQDialogButtonBox_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QDialogButtonBoxeventFilter*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDialogButtonBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDialogButtonBoxtimerEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDialogButtonBox_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QDialogButtonBoxchildEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDialogButtonBox_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QDialogButtonBoxcustomEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDialogButtonBox_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQDialogButtonBox_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QDialogButtonBoxconnectNotify*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDialogButtonBox_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDialogButtonBox_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QDialogButtonBoxdisconnectNotify*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDialogButtonBox_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQDialogButtonBox_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](vtbl)
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateMicroFocus*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): void =
  fcQDialogButtonBox_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): void =
  fcQDialogButtonBox_protectedbase_create(self.h)

proc destroy*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): void =
  fcQDialogButtonBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): bool =
  fcQDialogButtonBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): bool =
  fcQDialogButtonBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDialogButtonBox_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): cint =
  fcQDialogButtonBox_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, signal: cstring): cint =
  fcQDialogButtonBox_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDialogButtonBox_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDialogButtonBoxVTable, _: ptr cQDialogButtonBox) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDialogButtonBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDialogButtonBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDialogButtonBox_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDialogButtonBox_changeEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDialogButtonBox_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDialogButtonBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDialogButtonBox_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDialogButtonBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDialogButtonBox_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDialogButtonBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDialogButtonBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDialogButtonBox_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDialogButtonBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDialogButtonBox_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDialogButtonBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDialogButtonBox_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDialogButtonBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDialogButtonBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDialogButtonBox_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDialogButtonBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDialogButtonBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDialogButtonBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDialogButtonBox_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDialogButtonBox_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDialogButtonBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDialogButtonBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDialogButtonBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDialogButtonBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDialogButtonBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDialogButtonBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDialogButtonBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDialogButtonBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDialogButtonBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDialogButtonBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDialogButtonBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDialogButtonBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDialogButtonBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDialogButtonBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDialogButtonBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDialogButtonBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDialogButtonBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDialogButtonBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDialogButtonBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDialogButtonBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDialogButtonBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDialogButtonBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDialogButtonBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDialogButtonBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDialogButtonBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDialogButtonBox_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDialogButtonBoxVTable, _: ptr cQDialogButtonBox) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDialogButtonBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDialogButtonBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDialogButtonBox_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDialogButtonBox_changeEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDialogButtonBox_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDialogButtonBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDialogButtonBox_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDialogButtonBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDialogButtonBox_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDialogButtonBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDialogButtonBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDialogButtonBox_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDialogButtonBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDialogButtonBox_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDialogButtonBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDialogButtonBox_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDialogButtonBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDialogButtonBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDialogButtonBox_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDialogButtonBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDialogButtonBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDialogButtonBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDialogButtonBox_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDialogButtonBox_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDialogButtonBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDialogButtonBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDialogButtonBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDialogButtonBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDialogButtonBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDialogButtonBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDialogButtonBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDialogButtonBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDialogButtonBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDialogButtonBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDialogButtonBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDialogButtonBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDialogButtonBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDialogButtonBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDialogButtonBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDialogButtonBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDialogButtonBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDialogButtonBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDialogButtonBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDialogButtonBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDialogButtonBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDialogButtonBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDialogButtonBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDialogButtonBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDialogButtonBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDialogButtonBox_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new2(addr(vtbl[]), ))

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    orientation: cint,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDialogButtonBoxVTable, _: ptr cQDialogButtonBox) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDialogButtonBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDialogButtonBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDialogButtonBox_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDialogButtonBox_changeEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDialogButtonBox_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDialogButtonBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDialogButtonBox_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDialogButtonBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDialogButtonBox_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDialogButtonBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDialogButtonBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDialogButtonBox_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDialogButtonBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDialogButtonBox_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDialogButtonBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDialogButtonBox_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDialogButtonBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDialogButtonBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDialogButtonBox_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDialogButtonBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDialogButtonBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDialogButtonBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDialogButtonBox_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDialogButtonBox_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDialogButtonBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDialogButtonBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDialogButtonBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDialogButtonBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDialogButtonBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDialogButtonBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDialogButtonBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDialogButtonBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDialogButtonBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDialogButtonBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDialogButtonBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDialogButtonBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDialogButtonBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDialogButtonBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDialogButtonBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDialogButtonBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDialogButtonBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDialogButtonBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDialogButtonBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDialogButtonBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDialogButtonBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDialogButtonBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDialogButtonBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDialogButtonBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDialogButtonBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDialogButtonBox_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new3(addr(vtbl[]), cint(orientation)))

proc create2*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    buttons: cint,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDialogButtonBoxVTable, _: ptr cQDialogButtonBox) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDialogButtonBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDialogButtonBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDialogButtonBox_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDialogButtonBox_changeEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDialogButtonBox_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDialogButtonBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDialogButtonBox_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDialogButtonBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDialogButtonBox_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDialogButtonBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDialogButtonBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDialogButtonBox_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDialogButtonBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDialogButtonBox_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDialogButtonBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDialogButtonBox_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDialogButtonBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDialogButtonBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDialogButtonBox_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDialogButtonBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDialogButtonBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDialogButtonBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDialogButtonBox_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDialogButtonBox_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDialogButtonBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDialogButtonBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDialogButtonBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDialogButtonBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDialogButtonBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDialogButtonBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDialogButtonBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDialogButtonBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDialogButtonBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDialogButtonBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDialogButtonBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDialogButtonBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDialogButtonBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDialogButtonBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDialogButtonBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDialogButtonBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDialogButtonBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDialogButtonBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDialogButtonBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDialogButtonBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDialogButtonBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDialogButtonBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDialogButtonBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDialogButtonBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDialogButtonBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDialogButtonBox_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new4(addr(vtbl[]), cint(buttons)))

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    buttons: cint, orientation: cint,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDialogButtonBoxVTable, _: ptr cQDialogButtonBox) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDialogButtonBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDialogButtonBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDialogButtonBox_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDialogButtonBox_changeEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDialogButtonBox_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDialogButtonBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDialogButtonBox_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDialogButtonBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDialogButtonBox_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDialogButtonBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDialogButtonBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDialogButtonBox_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDialogButtonBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDialogButtonBox_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDialogButtonBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDialogButtonBox_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDialogButtonBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDialogButtonBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDialogButtonBox_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDialogButtonBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDialogButtonBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDialogButtonBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDialogButtonBox_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDialogButtonBox_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDialogButtonBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDialogButtonBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDialogButtonBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDialogButtonBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDialogButtonBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDialogButtonBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDialogButtonBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDialogButtonBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDialogButtonBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDialogButtonBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDialogButtonBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDialogButtonBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDialogButtonBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDialogButtonBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDialogButtonBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDialogButtonBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDialogButtonBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDialogButtonBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDialogButtonBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDialogButtonBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDialogButtonBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDialogButtonBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDialogButtonBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDialogButtonBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDialogButtonBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDialogButtonBox_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new5(addr(vtbl[]), cint(buttons), cint(orientation)))

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    orientation: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDialogButtonBoxVTable, _: ptr cQDialogButtonBox) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDialogButtonBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDialogButtonBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDialogButtonBox_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDialogButtonBox_changeEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDialogButtonBox_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDialogButtonBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDialogButtonBox_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDialogButtonBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDialogButtonBox_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDialogButtonBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDialogButtonBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDialogButtonBox_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDialogButtonBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDialogButtonBox_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDialogButtonBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDialogButtonBox_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDialogButtonBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDialogButtonBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDialogButtonBox_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDialogButtonBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDialogButtonBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDialogButtonBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDialogButtonBox_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDialogButtonBox_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDialogButtonBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDialogButtonBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDialogButtonBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDialogButtonBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDialogButtonBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDialogButtonBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDialogButtonBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDialogButtonBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDialogButtonBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDialogButtonBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDialogButtonBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDialogButtonBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDialogButtonBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDialogButtonBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDialogButtonBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDialogButtonBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDialogButtonBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDialogButtonBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDialogButtonBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDialogButtonBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDialogButtonBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDialogButtonBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDialogButtonBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDialogButtonBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDialogButtonBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDialogButtonBox_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new6(addr(vtbl[]), cint(orientation), parent.h))

proc create2*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    buttons: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDialogButtonBoxVTable, _: ptr cQDialogButtonBox) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDialogButtonBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDialogButtonBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDialogButtonBox_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDialogButtonBox_changeEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDialogButtonBox_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDialogButtonBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDialogButtonBox_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDialogButtonBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDialogButtonBox_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDialogButtonBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDialogButtonBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDialogButtonBox_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDialogButtonBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDialogButtonBox_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDialogButtonBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDialogButtonBox_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDialogButtonBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDialogButtonBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDialogButtonBox_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDialogButtonBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDialogButtonBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDialogButtonBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDialogButtonBox_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDialogButtonBox_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDialogButtonBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDialogButtonBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDialogButtonBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDialogButtonBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDialogButtonBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDialogButtonBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDialogButtonBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDialogButtonBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDialogButtonBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDialogButtonBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDialogButtonBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDialogButtonBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDialogButtonBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDialogButtonBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDialogButtonBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDialogButtonBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDialogButtonBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDialogButtonBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDialogButtonBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDialogButtonBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDialogButtonBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDialogButtonBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDialogButtonBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDialogButtonBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDialogButtonBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDialogButtonBox_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new7(addr(vtbl[]), cint(buttons), parent.h))

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    buttons: cint, orientation: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQDialogButtonBoxVTable, _: ptr cQDialogButtonBox) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQDialogButtonBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQDialogButtonBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQDialogButtonBox_metacall
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQDialogButtonBox_changeEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQDialogButtonBox_event
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQDialogButtonBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQDialogButtonBox_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQDialogButtonBox_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQDialogButtonBox_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQDialogButtonBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQDialogButtonBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQDialogButtonBox_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQDialogButtonBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQDialogButtonBox_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQDialogButtonBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQDialogButtonBox_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQDialogButtonBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQDialogButtonBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQDialogButtonBox_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQDialogButtonBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQDialogButtonBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQDialogButtonBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQDialogButtonBox_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQDialogButtonBox_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQDialogButtonBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQDialogButtonBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQDialogButtonBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQDialogButtonBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQDialogButtonBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQDialogButtonBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQDialogButtonBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQDialogButtonBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQDialogButtonBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQDialogButtonBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQDialogButtonBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQDialogButtonBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQDialogButtonBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQDialogButtonBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQDialogButtonBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQDialogButtonBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQDialogButtonBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQDialogButtonBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQDialogButtonBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQDialogButtonBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQDialogButtonBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQDialogButtonBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQDialogButtonBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQDialogButtonBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQDialogButtonBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQDialogButtonBox_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new8(addr(vtbl[]), cint(buttons), cint(orientation), parent.h))

proc staticMetaObject*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialogButtonBox_staticMetaObject())
proc delete*(self: gen_qdialogbuttonbox_types.QDialogButtonBox) =
  fcQDialogButtonBox_delete(self.h)
