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


{.compile("gen_qdialogbuttonbox.cpp", QtWidgetsCFlags).}


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

proc fcQDialogButtonBox_metaObject(self: pointer): pointer {.importc: "QDialogButtonBox_metaObject".}
proc fcQDialogButtonBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QDialogButtonBox_metacast".}
proc fcQDialogButtonBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDialogButtonBox_metacall".}
proc fcQDialogButtonBox_tr(s: cstring): struct_miqt_string {.importc: "QDialogButtonBox_tr".}
proc fcQDialogButtonBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QDialogButtonBox_trUtf8".}
proc fcQDialogButtonBox_setOrientation(self: pointer, orientation: cint): void {.importc: "QDialogButtonBox_setOrientation".}
proc fcQDialogButtonBox_orientation(self: pointer): cint {.importc: "QDialogButtonBox_orientation".}
proc fcQDialogButtonBox_addButton(self: pointer, button: pointer, role: cint): void {.importc: "QDialogButtonBox_addButton".}
proc fcQDialogButtonBox_addButton2(self: pointer, text: struct_miqt_string, role: cint): pointer {.importc: "QDialogButtonBox_addButton2".}
proc fcQDialogButtonBox_addButtonWithButton(self: pointer, button: cint): pointer {.importc: "QDialogButtonBox_addButtonWithButton".}
proc fcQDialogButtonBox_removeButton(self: pointer, button: pointer): void {.importc: "QDialogButtonBox_removeButton".}
proc fcQDialogButtonBox_clear(self: pointer): void {.importc: "QDialogButtonBox_clear".}
proc fcQDialogButtonBox_buttons(self: pointer): struct_miqt_array {.importc: "QDialogButtonBox_buttons".}
proc fcQDialogButtonBox_buttonRole(self: pointer, button: pointer): cint {.importc: "QDialogButtonBox_buttonRole".}
proc fcQDialogButtonBox_setStandardButtons(self: pointer, buttons: cint): void {.importc: "QDialogButtonBox_setStandardButtons".}
proc fcQDialogButtonBox_standardButtons(self: pointer): cint {.importc: "QDialogButtonBox_standardButtons".}
proc fcQDialogButtonBox_standardButton(self: pointer, button: pointer): cint {.importc: "QDialogButtonBox_standardButton".}
proc fcQDialogButtonBox_button(self: pointer, which: cint): pointer {.importc: "QDialogButtonBox_button".}
proc fcQDialogButtonBox_setCenterButtons(self: pointer, center: bool): void {.importc: "QDialogButtonBox_setCenterButtons".}
proc fcQDialogButtonBox_centerButtons(self: pointer): bool {.importc: "QDialogButtonBox_centerButtons".}
proc fcQDialogButtonBox_clicked(self: pointer, button: pointer): void {.importc: "QDialogButtonBox_clicked".}
proc fcQDialogButtonBox_connect_clicked(self: pointer, slot: int, callback: proc (slot: int, button: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDialogButtonBox_connect_clicked".}
proc fcQDialogButtonBox_accepted(self: pointer): void {.importc: "QDialogButtonBox_accepted".}
proc fcQDialogButtonBox_connect_accepted(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDialogButtonBox_connect_accepted".}
proc fcQDialogButtonBox_helpRequested(self: pointer): void {.importc: "QDialogButtonBox_helpRequested".}
proc fcQDialogButtonBox_connect_helpRequested(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDialogButtonBox_connect_helpRequested".}
proc fcQDialogButtonBox_rejected(self: pointer): void {.importc: "QDialogButtonBox_rejected".}
proc fcQDialogButtonBox_connect_rejected(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QDialogButtonBox_connect_rejected".}
proc fcQDialogButtonBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDialogButtonBox_tr2".}
proc fcQDialogButtonBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDialogButtonBox_tr3".}
proc fcQDialogButtonBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDialogButtonBox_trUtf82".}
proc fcQDialogButtonBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDialogButtonBox_trUtf83".}
proc fcQDialogButtonBox_vtbl(self: pointer): pointer {.importc: "QDialogButtonBox_vtbl".}
proc fcQDialogButtonBox_vdata(self: pointer): pointer {.importc: "QDialogButtonBox_vdata".}
type cQDialogButtonBoxVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQDialogButtonBox_virtualbase_metaObject(self: pointer): pointer {.importc: "QDialogButtonBox_virtualbase_metaObject".}
proc fcQDialogButtonBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDialogButtonBox_virtualbase_metacast".}
proc fcQDialogButtonBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDialogButtonBox_virtualbase_metacall".}
proc fcQDialogButtonBox_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_changeEvent".}
proc fcQDialogButtonBox_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDialogButtonBox_virtualbase_event".}
proc fcQDialogButtonBox_virtualbase_devType(self: pointer): cint {.importc: "QDialogButtonBox_virtualbase_devType".}
proc fcQDialogButtonBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDialogButtonBox_virtualbase_setVisible".}
proc fcQDialogButtonBox_virtualbase_sizeHint(self: pointer): pointer {.importc: "QDialogButtonBox_virtualbase_sizeHint".}
proc fcQDialogButtonBox_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QDialogButtonBox_virtualbase_minimumSizeHint".}
proc fcQDialogButtonBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDialogButtonBox_virtualbase_heightForWidth".}
proc fcQDialogButtonBox_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QDialogButtonBox_virtualbase_hasHeightForWidth".}
proc fcQDialogButtonBox_virtualbase_paintEngine(self: pointer): pointer {.importc: "QDialogButtonBox_virtualbase_paintEngine".}
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
proc fcQDialogButtonBox_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QDialogButtonBox_virtualbase_sharedPainter".}
proc fcQDialogButtonBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDialogButtonBox_virtualbase_inputMethodEvent".}
proc fcQDialogButtonBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDialogButtonBox_virtualbase_inputMethodQuery".}
proc fcQDialogButtonBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDialogButtonBox_virtualbase_focusNextPrevChild".}
proc fcQDialogButtonBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDialogButtonBox_virtualbase_eventFilter".}
proc fcQDialogButtonBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_timerEvent".}
proc fcQDialogButtonBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_childEvent".}
proc fcQDialogButtonBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDialogButtonBox_virtualbase_customEvent".}
proc fcQDialogButtonBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDialogButtonBox_virtualbase_connectNotify".}
proc fcQDialogButtonBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDialogButtonBox_virtualbase_disconnectNotify".}
proc fcQDialogButtonBox_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDialogButtonBox_protectedbase_updateMicroFocus".}
proc fcQDialogButtonBox_protectedbase_create(self: pointer): void {.importc: "QDialogButtonBox_protectedbase_create".}
proc fcQDialogButtonBox_protectedbase_destroy(self: pointer): void {.importc: "QDialogButtonBox_protectedbase_destroy".}
proc fcQDialogButtonBox_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDialogButtonBox_protectedbase_focusNextChild".}
proc fcQDialogButtonBox_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDialogButtonBox_protectedbase_focusPreviousChild".}
proc fcQDialogButtonBox_protectedbase_sender(self: pointer): pointer {.importc: "QDialogButtonBox_protectedbase_sender".}
proc fcQDialogButtonBox_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDialogButtonBox_protectedbase_senderSignalIndex".}
proc fcQDialogButtonBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDialogButtonBox_protectedbase_receivers".}
proc fcQDialogButtonBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDialogButtonBox_protectedbase_isSignalConnected".}
proc fcQDialogButtonBox_new(vtbl, vdata: pointer, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new".}
proc fcQDialogButtonBox_new2(vtbl, vdata: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new2".}
proc fcQDialogButtonBox_new3(vtbl, vdata: pointer, orientation: cint): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new3".}
proc fcQDialogButtonBox_new4(vtbl, vdata: pointer, buttons: cint): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new4".}
proc fcQDialogButtonBox_new5(vtbl, vdata: pointer, buttons: cint, orientation: cint): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new5".}
proc fcQDialogButtonBox_new6(vtbl, vdata: pointer, orientation: cint, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new6".}
proc fcQDialogButtonBox_new7(vtbl, vdata: pointer, buttons: cint, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new7".}
proc fcQDialogButtonBox_new8(vtbl, vdata: pointer, buttons: cint, orientation: cint, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new8".}
proc fcQDialogButtonBox_staticMetaObject(): pointer {.importc: "QDialogButtonBox_staticMetaObject".}

proc metaObject*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialogButtonBox_metaObject(self.h), owned: false)

proc metacast*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cstring): pointer =
  fcQDialogButtonBox_metacast(self.h, param1)

proc metacall*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQDialogButtonBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring): string =
  let v_ms = fcQDialogButtonBox_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring): string =
  let v_ms = fcQDialogButtonBox_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOrientation*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, orientation: cint): void =
  fcQDialogButtonBox_setOrientation(self.h, cint(orientation))

proc orientation*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): cint =
  cint(fcQDialogButtonBox_orientation(self.h))

proc addButton*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, button: gen_qabstractbutton_types.QAbstractButton, role: cint): void =
  fcQDialogButtonBox_addButton(self.h, button.h, cint(role))

proc addButton*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, text: openArray[char], role: cint): gen_qpushbutton_types.QPushButton =
  gen_qpushbutton_types.QPushButton(h: fcQDialogButtonBox_addButton2(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(role)), owned: false)

proc addButton*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, button: cint): gen_qpushbutton_types.QPushButton =
  gen_qpushbutton_types.QPushButton(h: fcQDialogButtonBox_addButtonWithButton(self.h, cint(button)), owned: false)

proc removeButton*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, button: gen_qabstractbutton_types.QAbstractButton): void =
  fcQDialogButtonBox_removeButton(self.h, button.h)

proc clear*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): void =
  fcQDialogButtonBox_clear(self.h)

proc buttons*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): seq[gen_qabstractbutton_types.QAbstractButton] =
  var v_ma = fcQDialogButtonBox_buttons(self.h)
  var vx_ret = newSeq[gen_qabstractbutton_types.QAbstractButton](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractbutton_types.QAbstractButton(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc buttonRole*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, button: gen_qabstractbutton_types.QAbstractButton): cint =
  cint(fcQDialogButtonBox_buttonRole(self.h, button.h))

proc setStandardButtons*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, buttons: cint): void =
  fcQDialogButtonBox_setStandardButtons(self.h, cint(buttons))

proc standardButtons*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): cint =
  cint(fcQDialogButtonBox_standardButtons(self.h))

proc standardButton*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, button: gen_qabstractbutton_types.QAbstractButton): cint =
  cint(fcQDialogButtonBox_standardButton(self.h, button.h))

proc button*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, which: cint): gen_qpushbutton_types.QPushButton =
  gen_qpushbutton_types.QPushButton(h: fcQDialogButtonBox_button(self.h, cint(which)), owned: false)

proc setCenterButtons*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, center: bool): void =
  fcQDialogButtonBox_setCenterButtons(self.h, center)

proc centerButtons*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): bool =
  fcQDialogButtonBox_centerButtons(self.h)

proc clicked*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, button: gen_qabstractbutton_types.QAbstractButton): void =
  fcQDialogButtonBox_clicked(self.h, button.h)

type QDialogButtonBoxclickedSlot* = proc(button: gen_qabstractbutton_types.QAbstractButton)
proc cQDialogButtonBox_slot_callback_clicked(slot: int, button: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QDialogButtonBoxclickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: button, owned: false)

  nimfunc[](slotval1)

proc cQDialogButtonBox_slot_callback_clicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDialogButtonBoxclickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclicked*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxclickedSlot) =
  var tmp = new QDialogButtonBoxclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_connect_clicked(self.h, cast[int](addr tmp[]), cQDialogButtonBox_slot_callback_clicked, cQDialogButtonBox_slot_callback_clicked_release)

proc accepted*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): void =
  fcQDialogButtonBox_accepted(self.h)

type QDialogButtonBoxacceptedSlot* = proc()
proc cQDialogButtonBox_slot_callback_accepted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDialogButtonBoxacceptedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQDialogButtonBox_slot_callback_accepted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDialogButtonBoxacceptedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaccepted*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxacceptedSlot) =
  var tmp = new QDialogButtonBoxacceptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_connect_accepted(self.h, cast[int](addr tmp[]), cQDialogButtonBox_slot_callback_accepted, cQDialogButtonBox_slot_callback_accepted_release)

proc helpRequested*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): void =
  fcQDialogButtonBox_helpRequested(self.h)

type QDialogButtonBoxhelpRequestedSlot* = proc()
proc cQDialogButtonBox_slot_callback_helpRequested(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDialogButtonBoxhelpRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQDialogButtonBox_slot_callback_helpRequested_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDialogButtonBoxhelpRequestedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhelpRequested*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxhelpRequestedSlot) =
  var tmp = new QDialogButtonBoxhelpRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_connect_helpRequested(self.h, cast[int](addr tmp[]), cQDialogButtonBox_slot_callback_helpRequested, cQDialogButtonBox_slot_callback_helpRequested_release)

proc rejected*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): void =
  fcQDialogButtonBox_rejected(self.h)

type QDialogButtonBoxrejectedSlot* = proc()
proc cQDialogButtonBox_slot_callback_rejected(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QDialogButtonBoxrejectedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQDialogButtonBox_slot_callback_rejected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QDialogButtonBoxrejectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrejected*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxrejectedSlot) =
  var tmp = new QDialogButtonBoxrejectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_connect_rejected(self.h, cast[int](addr tmp[]), cQDialogButtonBox_slot_callback_rejected, cQDialogButtonBox_slot_callback_rejected_release)

proc tr*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring, c: cstring): string =
  let v_ms = fcQDialogButtonBox_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDialogButtonBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring, c: cstring): string =
  let v_ms = fcQDialogButtonBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDialogButtonBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QDialogButtonBoxnativeEventProc* = proc(self: QDialogButtonBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QDialogButtonBoxVTable* {.inheritable, pure.} = object
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
proc QDialogButtonBoxmetaObject*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialogButtonBox_virtualbase_metaObject(self.h), owned: false)

proc cQDialogButtonBox_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogButtonBoxmetacast*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cstring): pointer =
  fcQDialogButtonBox_virtualbase_metacast(self.h, param1)

proc cQDialogButtonBox_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QDialogButtonBoxmetacall*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQDialogButtonBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQDialogButtonBox_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDialogButtonBoxchangeEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDialogButtonBox_virtualbase_changeEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QDialogButtonBoxevent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQDialogButtonBox_virtualbase_event(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QDialogButtonBoxdevType*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): cint =
  fcQDialogButtonBox_virtualbase_devType(self.h)

proc cQDialogButtonBox_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QDialogButtonBoxsetVisible*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, visible: bool): void =
  fcQDialogButtonBox_virtualbase_setVisible(self.h, visible)

proc cQDialogButtonBox_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QDialogButtonBoxsizeHint*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDialogButtonBox_virtualbase_sizeHint(self.h), owned: true)

proc cQDialogButtonBox_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogButtonBoxminimumSizeHint*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDialogButtonBox_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQDialogButtonBox_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogButtonBoxheightForWidth*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint): cint =
  fcQDialogButtonBox_virtualbase_heightForWidth(self.h, param1)

proc cQDialogButtonBox_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QDialogButtonBoxhasHeightForWidth*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): bool =
  fcQDialogButtonBox_virtualbase_hasHeightForWidth(self.h)

proc cQDialogButtonBox_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QDialogButtonBoxpaintEngine*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDialogButtonBox_virtualbase_paintEngine(self.h), owned: false)

proc cQDialogButtonBox_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogButtonBoxmousePressEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDialogButtonBox_virtualbase_mousePressEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QDialogButtonBoxmouseReleaseEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDialogButtonBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QDialogButtonBoxmouseDoubleClickEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDialogButtonBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QDialogButtonBoxmouseMoveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void =
  fcQDialogButtonBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QDialogButtonBoxwheelEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QWheelEvent): void =
  fcQDialogButtonBox_virtualbase_wheelEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QDialogButtonBoxkeyPressEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QKeyEvent): void =
  fcQDialogButtonBox_virtualbase_keyPressEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QDialogButtonBoxkeyReleaseEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QKeyEvent): void =
  fcQDialogButtonBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QDialogButtonBoxfocusInEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QFocusEvent): void =
  fcQDialogButtonBox_virtualbase_focusInEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QDialogButtonBoxfocusOutEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QFocusEvent): void =
  fcQDialogButtonBox_virtualbase_focusOutEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QDialogButtonBoxenterEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDialogButtonBox_virtualbase_enterEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QDialogButtonBoxleaveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDialogButtonBox_virtualbase_leaveEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QDialogButtonBoxpaintEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QPaintEvent): void =
  fcQDialogButtonBox_virtualbase_paintEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QDialogButtonBoxmoveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMoveEvent): void =
  fcQDialogButtonBox_virtualbase_moveEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QDialogButtonBoxresizeEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QResizeEvent): void =
  fcQDialogButtonBox_virtualbase_resizeEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QDialogButtonBoxcloseEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QCloseEvent): void =
  fcQDialogButtonBox_virtualbase_closeEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QDialogButtonBoxcontextMenuEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDialogButtonBox_virtualbase_contextMenuEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QDialogButtonBoxtabletEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QTabletEvent): void =
  fcQDialogButtonBox_virtualbase_tabletEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QDialogButtonBoxactionEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QActionEvent): void =
  fcQDialogButtonBox_virtualbase_actionEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QDialogButtonBoxdragEnterEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDialogButtonBox_virtualbase_dragEnterEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QDialogButtonBoxdragMoveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDialogButtonBox_virtualbase_dragMoveEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QDialogButtonBoxdragLeaveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDialogButtonBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QDialogButtonBoxdropEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QDropEvent): void =
  fcQDialogButtonBox_virtualbase_dropEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QDialogButtonBoxshowEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QShowEvent): void =
  fcQDialogButtonBox_virtualbase_showEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QDialogButtonBoxhideEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QHideEvent): void =
  fcQDialogButtonBox_virtualbase_hideEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QDialogButtonBoxnativeEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQDialogButtonBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQDialogButtonBox_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QDialogButtonBoxmetric*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint): cint =
  fcQDialogButtonBox_virtualbase_metric(self.h, cint(param1))

proc cQDialogButtonBox_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QDialogButtonBoxinitPainter*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, painter: gen_qpainter_types.QPainter): void =
  fcQDialogButtonBox_virtualbase_initPainter(self.h, painter.h)

proc cQDialogButtonBox_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QDialogButtonBoxredirected*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDialogButtonBox_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQDialogButtonBox_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogButtonBoxsharedPainter*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDialogButtonBox_virtualbase_sharedPainter(self.h), owned: false)

proc cQDialogButtonBox_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogButtonBoxinputMethodEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDialogButtonBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQDialogButtonBox_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QDialogButtonBoxinputMethodQuery*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDialogButtonBox_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQDialogButtonBox_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QDialogButtonBoxfocusNextPrevChild*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, next: bool): bool =
  fcQDialogButtonBox_virtualbase_focusNextPrevChild(self.h, next)

proc cQDialogButtonBox_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QDialogButtonBoxeventFilter*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDialogButtonBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQDialogButtonBox_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QDialogButtonBoxtimerEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDialogButtonBox_virtualbase_timerEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QDialogButtonBoxchildEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDialogButtonBox_virtualbase_childEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QDialogButtonBoxcustomEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void =
  fcQDialogButtonBox_virtualbase_customEvent(self.h, event.h)

proc cQDialogButtonBox_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QDialogButtonBoxconnectNotify*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDialogButtonBox_virtualbase_connectNotify(self.h, signal.h)

proc cQDialogButtonBox_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QDialogButtonBoxdisconnectNotify*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDialogButtonBox_virtualbase_disconnectNotify(self.h, signal.h)

proc cQDialogButtonBox_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
  let self = QDialogButtonBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDialogButtonBox* {.inheritable.} = ref object of QDialogButtonBox
  vtbl*: cQDialogButtonBoxVTable
method metaObject*(self: VirtualQDialogButtonBox): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDialogButtonBoxmetaObject(self[])
proc cQDialogButtonBox_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQDialogButtonBox, param1: cstring): pointer {.base.} =
  QDialogButtonBoxmetacast(self[], param1)
proc cQDialogButtonBox_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQDialogButtonBox, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDialogButtonBoxmetacall(self[], param1, param2, param3)
proc cQDialogButtonBox_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQDialogButtonBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialogButtonBoxchangeEvent(self[], event)
proc cQDialogButtonBox_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

method event*(self: VirtualQDialogButtonBox, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDialogButtonBoxevent(self[], event)
proc cQDialogButtonBox_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method devType*(self: VirtualQDialogButtonBox): cint {.base.} =
  QDialogButtonBoxdevType(self[])
proc cQDialogButtonBox_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQDialogButtonBox, visible: bool): void {.base.} =
  QDialogButtonBoxsetVisible(self[], visible)
proc cQDialogButtonBox_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQDialogButtonBox): gen_qsize_types.QSize {.base.} =
  QDialogButtonBoxsizeHint(self[])
proc cQDialogButtonBox_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQDialogButtonBox): gen_qsize_types.QSize {.base.} =
  QDialogButtonBoxminimumSizeHint(self[])
proc cQDialogButtonBox_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQDialogButtonBox, param1: cint): cint {.base.} =
  QDialogButtonBoxheightForWidth(self[], param1)
proc cQDialogButtonBox_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQDialogButtonBox): bool {.base.} =
  QDialogButtonBoxhasHeightForWidth(self[])
proc cQDialogButtonBox_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQDialogButtonBox): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDialogButtonBoxpaintEngine(self[])
proc cQDialogButtonBox_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialogButtonBoxmousePressEvent(self[], event)
proc cQDialogButtonBox_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialogButtonBoxmouseReleaseEvent(self[], event)
proc cQDialogButtonBox_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialogButtonBoxmouseDoubleClickEvent(self[], event)
proc cQDialogButtonBox_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDialogButtonBoxmouseMoveEvent(self[], event)
proc cQDialogButtonBox_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QDialogButtonBoxwheelEvent(self[], event)
proc cQDialogButtonBox_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDialogButtonBoxkeyPressEvent(self[], event)
proc cQDialogButtonBox_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDialogButtonBoxkeyReleaseEvent(self[], event)
proc cQDialogButtonBox_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDialogButtonBoxfocusInEvent(self[], event)
proc cQDialogButtonBox_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDialogButtonBoxfocusOutEvent(self[], event)
proc cQDialogButtonBox_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQDialogButtonBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialogButtonBoxenterEvent(self[], event)
proc cQDialogButtonBox_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQDialogButtonBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialogButtonBoxleaveEvent(self[], event)
proc cQDialogButtonBox_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QDialogButtonBoxpaintEvent(self[], event)
proc cQDialogButtonBox_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDialogButtonBoxmoveEvent(self[], event)
proc cQDialogButtonBox_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QDialogButtonBoxresizeEvent(self[], event)
proc cQDialogButtonBox_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QDialogButtonBoxcloseEvent(self[], event)
proc cQDialogButtonBox_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDialogButtonBoxcontextMenuEvent(self[], event)
proc cQDialogButtonBox_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDialogButtonBoxtabletEvent(self[], event)
proc cQDialogButtonBox_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDialogButtonBoxactionEvent(self[], event)
proc cQDialogButtonBox_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDialogButtonBoxdragEnterEvent(self[], event)
proc cQDialogButtonBox_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDialogButtonBoxdragMoveEvent(self[], event)
proc cQDialogButtonBox_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDialogButtonBoxdragLeaveEvent(self[], event)
proc cQDialogButtonBox_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDialogButtonBoxdropEvent(self[], event)
proc cQDialogButtonBox_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QShowEvent): void {.base.} =
  QDialogButtonBoxshowEvent(self[], event)
proc cQDialogButtonBox_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQDialogButtonBox, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDialogButtonBoxhideEvent(self[], event)
proc cQDialogButtonBox_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQDialogButtonBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QDialogButtonBoxnativeEvent(self[], eventType, message, resultVal)
proc cQDialogButtonBox_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQDialogButtonBox, param1: cint): cint {.base.} =
  QDialogButtonBoxmetric(self[], param1)
proc cQDialogButtonBox_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQDialogButtonBox, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDialogButtonBoxinitPainter(self[], painter)
proc cQDialogButtonBox_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQDialogButtonBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDialogButtonBoxredirected(self[], offset)
proc cQDialogButtonBox_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQDialogButtonBox): gen_qpainter_types.QPainter {.base.} =
  QDialogButtonBoxsharedPainter(self[])
proc cQDialogButtonBox_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQDialogButtonBox, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDialogButtonBoxinputMethodEvent(self[], param1)
proc cQDialogButtonBox_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQDialogButtonBox, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDialogButtonBoxinputMethodQuery(self[], param1)
proc cQDialogButtonBox_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQDialogButtonBox, next: bool): bool {.base.} =
  QDialogButtonBoxfocusNextPrevChild(self[], next)
proc cQDialogButtonBox_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQDialogButtonBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDialogButtonBoxeventFilter(self[], watched, event)
proc cQDialogButtonBox_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQDialogButtonBox, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDialogButtonBoxtimerEvent(self[], event)
proc cQDialogButtonBox_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQDialogButtonBox, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDialogButtonBoxchildEvent(self[], event)
proc cQDialogButtonBox_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQDialogButtonBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDialogButtonBoxcustomEvent(self[], event)
proc cQDialogButtonBox_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQDialogButtonBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDialogButtonBoxconnectNotify(self[], signal)
proc cQDialogButtonBox_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQDialogButtonBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDialogButtonBoxdisconnectNotify(self[], signal)
proc cQDialogButtonBox_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDialogButtonBox](fcQDialogButtonBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): void =
  fcQDialogButtonBox_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): void =
  fcQDialogButtonBox_protectedbase_create(self.h)

proc destroy*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): void =
  fcQDialogButtonBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): bool =
  fcQDialogButtonBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): bool =
  fcQDialogButtonBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDialogButtonBox_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qdialogbuttonbox_types.QDialogButtonBox): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDialogButtonBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDialogButtonBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDialogButtonBox_vtable_callback_metacall
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDialogButtonBox_vtable_callback_changeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDialogButtonBox_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDialogButtonBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDialogButtonBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDialogButtonBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDialogButtonBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDialogButtonBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDialogButtonBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDialogButtonBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDialogButtonBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDialogButtonBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDialogButtonBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDialogButtonBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDialogButtonBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDialogButtonBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDialogButtonBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDialogButtonBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDialogButtonBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDialogButtonBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDialogButtonBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDialogButtonBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDialogButtonBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDialogButtonBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDialogButtonBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDialogButtonBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDialogButtonBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDialogButtonBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDialogButtonBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDialogButtonBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDialogButtonBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDialogButtonBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDialogButtonBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDialogButtonBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDialogButtonBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDialogButtonBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDialogButtonBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDialogButtonBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDialogButtonBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDialogButtonBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDialogButtonBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDialogButtonBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDialogButtonBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDialogButtonBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDialogButtonBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDialogButtonBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDialogButtonBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDialogButtonBox_vtable_callback_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDialogButtonBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDialogButtonBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDialogButtonBox_vtable_callback_metacall
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDialogButtonBox_vtable_callback_changeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDialogButtonBox_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDialogButtonBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDialogButtonBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDialogButtonBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDialogButtonBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDialogButtonBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDialogButtonBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDialogButtonBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDialogButtonBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDialogButtonBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDialogButtonBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDialogButtonBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDialogButtonBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDialogButtonBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDialogButtonBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDialogButtonBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDialogButtonBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDialogButtonBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDialogButtonBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDialogButtonBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDialogButtonBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDialogButtonBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDialogButtonBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDialogButtonBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDialogButtonBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDialogButtonBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDialogButtonBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDialogButtonBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDialogButtonBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDialogButtonBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDialogButtonBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDialogButtonBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDialogButtonBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDialogButtonBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDialogButtonBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDialogButtonBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDialogButtonBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDialogButtonBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDialogButtonBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDialogButtonBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDialogButtonBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDialogButtonBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDialogButtonBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDialogButtonBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDialogButtonBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDialogButtonBox_vtable_callback_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    orientation: cint,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDialogButtonBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDialogButtonBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDialogButtonBox_vtable_callback_metacall
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDialogButtonBox_vtable_callback_changeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDialogButtonBox_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDialogButtonBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDialogButtonBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDialogButtonBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDialogButtonBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDialogButtonBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDialogButtonBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDialogButtonBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDialogButtonBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDialogButtonBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDialogButtonBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDialogButtonBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDialogButtonBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDialogButtonBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDialogButtonBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDialogButtonBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDialogButtonBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDialogButtonBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDialogButtonBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDialogButtonBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDialogButtonBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDialogButtonBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDialogButtonBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDialogButtonBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDialogButtonBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDialogButtonBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDialogButtonBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDialogButtonBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDialogButtonBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDialogButtonBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDialogButtonBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDialogButtonBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDialogButtonBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDialogButtonBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDialogButtonBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDialogButtonBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDialogButtonBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDialogButtonBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDialogButtonBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDialogButtonBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDialogButtonBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDialogButtonBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDialogButtonBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDialogButtonBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDialogButtonBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDialogButtonBox_vtable_callback_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(orientation)), owned: true)

proc create2*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    buttons: cint,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDialogButtonBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDialogButtonBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDialogButtonBox_vtable_callback_metacall
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDialogButtonBox_vtable_callback_changeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDialogButtonBox_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDialogButtonBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDialogButtonBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDialogButtonBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDialogButtonBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDialogButtonBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDialogButtonBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDialogButtonBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDialogButtonBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDialogButtonBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDialogButtonBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDialogButtonBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDialogButtonBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDialogButtonBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDialogButtonBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDialogButtonBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDialogButtonBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDialogButtonBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDialogButtonBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDialogButtonBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDialogButtonBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDialogButtonBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDialogButtonBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDialogButtonBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDialogButtonBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDialogButtonBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDialogButtonBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDialogButtonBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDialogButtonBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDialogButtonBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDialogButtonBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDialogButtonBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDialogButtonBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDialogButtonBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDialogButtonBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDialogButtonBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDialogButtonBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDialogButtonBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDialogButtonBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDialogButtonBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDialogButtonBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDialogButtonBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDialogButtonBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDialogButtonBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDialogButtonBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDialogButtonBox_vtable_callback_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new4(addr(vtbl[].vtbl), addr(vtbl[]), cint(buttons)), owned: true)

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    buttons: cint, orientation: cint,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDialogButtonBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDialogButtonBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDialogButtonBox_vtable_callback_metacall
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDialogButtonBox_vtable_callback_changeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDialogButtonBox_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDialogButtonBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDialogButtonBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDialogButtonBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDialogButtonBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDialogButtonBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDialogButtonBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDialogButtonBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDialogButtonBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDialogButtonBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDialogButtonBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDialogButtonBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDialogButtonBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDialogButtonBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDialogButtonBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDialogButtonBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDialogButtonBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDialogButtonBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDialogButtonBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDialogButtonBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDialogButtonBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDialogButtonBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDialogButtonBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDialogButtonBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDialogButtonBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDialogButtonBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDialogButtonBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDialogButtonBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDialogButtonBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDialogButtonBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDialogButtonBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDialogButtonBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDialogButtonBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDialogButtonBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDialogButtonBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDialogButtonBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDialogButtonBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDialogButtonBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDialogButtonBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDialogButtonBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDialogButtonBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDialogButtonBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDialogButtonBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDialogButtonBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDialogButtonBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDialogButtonBox_vtable_callback_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new5(addr(vtbl[].vtbl), addr(vtbl[]), cint(buttons), cint(orientation)), owned: true)

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    orientation: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDialogButtonBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDialogButtonBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDialogButtonBox_vtable_callback_metacall
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDialogButtonBox_vtable_callback_changeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDialogButtonBox_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDialogButtonBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDialogButtonBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDialogButtonBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDialogButtonBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDialogButtonBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDialogButtonBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDialogButtonBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDialogButtonBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDialogButtonBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDialogButtonBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDialogButtonBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDialogButtonBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDialogButtonBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDialogButtonBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDialogButtonBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDialogButtonBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDialogButtonBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDialogButtonBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDialogButtonBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDialogButtonBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDialogButtonBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDialogButtonBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDialogButtonBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDialogButtonBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDialogButtonBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDialogButtonBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDialogButtonBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDialogButtonBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDialogButtonBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDialogButtonBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDialogButtonBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDialogButtonBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDialogButtonBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDialogButtonBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDialogButtonBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDialogButtonBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDialogButtonBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDialogButtonBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDialogButtonBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDialogButtonBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDialogButtonBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDialogButtonBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDialogButtonBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDialogButtonBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDialogButtonBox_vtable_callback_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new6(addr(vtbl[].vtbl), addr(vtbl[]), cint(orientation), parent.h), owned: true)

proc create2*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    buttons: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDialogButtonBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDialogButtonBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDialogButtonBox_vtable_callback_metacall
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDialogButtonBox_vtable_callback_changeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDialogButtonBox_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDialogButtonBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDialogButtonBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDialogButtonBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDialogButtonBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDialogButtonBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDialogButtonBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDialogButtonBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDialogButtonBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDialogButtonBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDialogButtonBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDialogButtonBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDialogButtonBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDialogButtonBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDialogButtonBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDialogButtonBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDialogButtonBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDialogButtonBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDialogButtonBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDialogButtonBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDialogButtonBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDialogButtonBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDialogButtonBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDialogButtonBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDialogButtonBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDialogButtonBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDialogButtonBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDialogButtonBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDialogButtonBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDialogButtonBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDialogButtonBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDialogButtonBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDialogButtonBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDialogButtonBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDialogButtonBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDialogButtonBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDialogButtonBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDialogButtonBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDialogButtonBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDialogButtonBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDialogButtonBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDialogButtonBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDialogButtonBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDialogButtonBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDialogButtonBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDialogButtonBox_vtable_callback_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new7(addr(vtbl[].vtbl), addr(vtbl[]), cint(buttons), parent.h), owned: true)

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    buttons: cint, orientation: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QDialogButtonBoxVTable = nil): gen_qdialogbuttonbox_types.QDialogButtonBox =
  let vtbl = if vtbl == nil: new QDialogButtonBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDialogButtonBoxVTable](fcQDialogButtonBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQDialogButtonBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQDialogButtonBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQDialogButtonBox_vtable_callback_metacall
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQDialogButtonBox_vtable_callback_changeEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQDialogButtonBox_vtable_callback_event
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQDialogButtonBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQDialogButtonBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQDialogButtonBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQDialogButtonBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQDialogButtonBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQDialogButtonBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQDialogButtonBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQDialogButtonBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQDialogButtonBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQDialogButtonBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQDialogButtonBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQDialogButtonBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQDialogButtonBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQDialogButtonBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQDialogButtonBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQDialogButtonBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQDialogButtonBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQDialogButtonBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQDialogButtonBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQDialogButtonBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQDialogButtonBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQDialogButtonBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQDialogButtonBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQDialogButtonBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQDialogButtonBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQDialogButtonBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQDialogButtonBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQDialogButtonBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQDialogButtonBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQDialogButtonBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQDialogButtonBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQDialogButtonBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQDialogButtonBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQDialogButtonBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQDialogButtonBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQDialogButtonBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQDialogButtonBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQDialogButtonBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQDialogButtonBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQDialogButtonBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQDialogButtonBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQDialogButtonBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQDialogButtonBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQDialogButtonBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQDialogButtonBox_vtable_callback_disconnectNotify
  gen_qdialogbuttonbox_types.QDialogButtonBox(h: fcQDialogButtonBox_new8(addr(vtbl[].vtbl), addr(vtbl[]), cint(buttons), cint(orientation), parent.h), owned: true)

const cQDialogButtonBox_mvtbl = cQDialogButtonBoxVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDialogButtonBox()[])](self.fcQDialogButtonBox_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQDialogButtonBox_method_callback_metaObject,
  metacast: cQDialogButtonBox_method_callback_metacast,
  metacall: cQDialogButtonBox_method_callback_metacall,
  changeEvent: cQDialogButtonBox_method_callback_changeEvent,
  event: cQDialogButtonBox_method_callback_event,
  devType: cQDialogButtonBox_method_callback_devType,
  setVisible: cQDialogButtonBox_method_callback_setVisible,
  sizeHint: cQDialogButtonBox_method_callback_sizeHint,
  minimumSizeHint: cQDialogButtonBox_method_callback_minimumSizeHint,
  heightForWidth: cQDialogButtonBox_method_callback_heightForWidth,
  hasHeightForWidth: cQDialogButtonBox_method_callback_hasHeightForWidth,
  paintEngine: cQDialogButtonBox_method_callback_paintEngine,
  mousePressEvent: cQDialogButtonBox_method_callback_mousePressEvent,
  mouseReleaseEvent: cQDialogButtonBox_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQDialogButtonBox_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQDialogButtonBox_method_callback_mouseMoveEvent,
  wheelEvent: cQDialogButtonBox_method_callback_wheelEvent,
  keyPressEvent: cQDialogButtonBox_method_callback_keyPressEvent,
  keyReleaseEvent: cQDialogButtonBox_method_callback_keyReleaseEvent,
  focusInEvent: cQDialogButtonBox_method_callback_focusInEvent,
  focusOutEvent: cQDialogButtonBox_method_callback_focusOutEvent,
  enterEvent: cQDialogButtonBox_method_callback_enterEvent,
  leaveEvent: cQDialogButtonBox_method_callback_leaveEvent,
  paintEvent: cQDialogButtonBox_method_callback_paintEvent,
  moveEvent: cQDialogButtonBox_method_callback_moveEvent,
  resizeEvent: cQDialogButtonBox_method_callback_resizeEvent,
  closeEvent: cQDialogButtonBox_method_callback_closeEvent,
  contextMenuEvent: cQDialogButtonBox_method_callback_contextMenuEvent,
  tabletEvent: cQDialogButtonBox_method_callback_tabletEvent,
  actionEvent: cQDialogButtonBox_method_callback_actionEvent,
  dragEnterEvent: cQDialogButtonBox_method_callback_dragEnterEvent,
  dragMoveEvent: cQDialogButtonBox_method_callback_dragMoveEvent,
  dragLeaveEvent: cQDialogButtonBox_method_callback_dragLeaveEvent,
  dropEvent: cQDialogButtonBox_method_callback_dropEvent,
  showEvent: cQDialogButtonBox_method_callback_showEvent,
  hideEvent: cQDialogButtonBox_method_callback_hideEvent,
  nativeEvent: cQDialogButtonBox_method_callback_nativeEvent,
  metric: cQDialogButtonBox_method_callback_metric,
  initPainter: cQDialogButtonBox_method_callback_initPainter,
  redirected: cQDialogButtonBox_method_callback_redirected,
  sharedPainter: cQDialogButtonBox_method_callback_sharedPainter,
  inputMethodEvent: cQDialogButtonBox_method_callback_inputMethodEvent,
  inputMethodQuery: cQDialogButtonBox_method_callback_inputMethodQuery,
  focusNextPrevChild: cQDialogButtonBox_method_callback_focusNextPrevChild,
  eventFilter: cQDialogButtonBox_method_callback_eventFilter,
  timerEvent: cQDialogButtonBox_method_callback_timerEvent,
  childEvent: cQDialogButtonBox_method_callback_childEvent,
  customEvent: cQDialogButtonBox_method_callback_customEvent,
  connectNotify: cQDialogButtonBox_method_callback_connectNotify,
  disconnectNotify: cQDialogButtonBox_method_callback_disconnectNotify,
)
proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQDialogButtonBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDialogButtonBox_new(addr(cQDialogButtonBox_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    inst: VirtualQDialogButtonBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDialogButtonBox_new2(addr(cQDialogButtonBox_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    orientation: cint,
    inst: VirtualQDialogButtonBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDialogButtonBox_new3(addr(cQDialogButtonBox_mvtbl), addr(inst[]), cint(orientation))
  inst[].owned = true

proc create2*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    buttons: cint,
    inst: VirtualQDialogButtonBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDialogButtonBox_new4(addr(cQDialogButtonBox_mvtbl), addr(inst[]), cint(buttons))
  inst[].owned = true

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    buttons: cint, orientation: cint,
    inst: VirtualQDialogButtonBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDialogButtonBox_new5(addr(cQDialogButtonBox_mvtbl), addr(inst[]), cint(buttons), cint(orientation))
  inst[].owned = true

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    orientation: cint, parent: gen_qwidget_types.QWidget,
    inst: VirtualQDialogButtonBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDialogButtonBox_new6(addr(cQDialogButtonBox_mvtbl), addr(inst[]), cint(orientation), parent.h)
  inst[].owned = true

proc create2*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    buttons: cint, parent: gen_qwidget_types.QWidget,
    inst: VirtualQDialogButtonBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDialogButtonBox_new7(addr(cQDialogButtonBox_mvtbl), addr(inst[]), cint(buttons), parent.h)
  inst[].owned = true

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox,
    buttons: cint, orientation: cint, parent: gen_qwidget_types.QWidget,
    inst: VirtualQDialogButtonBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDialogButtonBox_new8(addr(cQDialogButtonBox_mvtbl), addr(inst[]), cint(buttons), cint(orientation), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialogButtonBox_staticMetaObject())
