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
template AndroidLayout*(_: type QDialogButtonBoxButtonLayoutEnum): untyped = 4


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

proc fcQDialogButtonBox_new(parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new".}
proc fcQDialogButtonBox_new2(): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new2".}
proc fcQDialogButtonBox_new3(orientation: cint): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new3".}
proc fcQDialogButtonBox_new4(buttons: cint): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new4".}
proc fcQDialogButtonBox_new5(buttons: cint, orientation: cint): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new5".}
proc fcQDialogButtonBox_new6(orientation: cint, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new6".}
proc fcQDialogButtonBox_new7(buttons: cint, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new7".}
proc fcQDialogButtonBox_new8(buttons: cint, orientation: cint, parent: pointer): ptr cQDialogButtonBox {.importc: "QDialogButtonBox_new8".}
proc fcQDialogButtonBox_metaObject(self: pointer, ): pointer {.importc: "QDialogButtonBox_metaObject".}
proc fcQDialogButtonBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QDialogButtonBox_metacast".}
proc fcQDialogButtonBox_tr(s: cstring): struct_miqt_string {.importc: "QDialogButtonBox_tr".}
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
proc fcQDialogButtonBox_connect_clicked(self: pointer, slot: int) {.importc: "QDialogButtonBox_connect_clicked".}
proc fcQDialogButtonBox_accepted(self: pointer, ): void {.importc: "QDialogButtonBox_accepted".}
proc fcQDialogButtonBox_connect_accepted(self: pointer, slot: int) {.importc: "QDialogButtonBox_connect_accepted".}
proc fcQDialogButtonBox_helpRequested(self: pointer, ): void {.importc: "QDialogButtonBox_helpRequested".}
proc fcQDialogButtonBox_connect_helpRequested(self: pointer, slot: int) {.importc: "QDialogButtonBox_connect_helpRequested".}
proc fcQDialogButtonBox_rejected(self: pointer, ): void {.importc: "QDialogButtonBox_rejected".}
proc fcQDialogButtonBox_connect_rejected(self: pointer, slot: int) {.importc: "QDialogButtonBox_connect_rejected".}
proc fcQDialogButtonBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDialogButtonBox_tr2".}
proc fcQDialogButtonBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDialogButtonBox_tr3".}
proc fQDialogButtonBox_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_changeEvent".}
proc fcQDialogButtonBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_changeEvent".}
proc fQDialogButtonBox_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDialogButtonBox_virtualbase_event".}
proc fcQDialogButtonBox_override_virtual_event(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_event".}
proc fQDialogButtonBox_virtualbase_devType(self: pointer, ): cint{.importc: "QDialogButtonBox_virtualbase_devType".}
proc fcQDialogButtonBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_devType".}
proc fQDialogButtonBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDialogButtonBox_virtualbase_setVisible".}
proc fcQDialogButtonBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_setVisible".}
proc fQDialogButtonBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDialogButtonBox_virtualbase_sizeHint".}
proc fcQDialogButtonBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_sizeHint".}
proc fQDialogButtonBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDialogButtonBox_virtualbase_minimumSizeHint".}
proc fcQDialogButtonBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_minimumSizeHint".}
proc fQDialogButtonBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDialogButtonBox_virtualbase_heightForWidth".}
proc fcQDialogButtonBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_heightForWidth".}
proc fQDialogButtonBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDialogButtonBox_virtualbase_hasHeightForWidth".}
proc fcQDialogButtonBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_hasHeightForWidth".}
proc fQDialogButtonBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDialogButtonBox_virtualbase_paintEngine".}
proc fcQDialogButtonBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_paintEngine".}
proc fQDialogButtonBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_mousePressEvent".}
proc fcQDialogButtonBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_mousePressEvent".}
proc fQDialogButtonBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_mouseReleaseEvent".}
proc fcQDialogButtonBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_mouseReleaseEvent".}
proc fQDialogButtonBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_mouseDoubleClickEvent".}
proc fcQDialogButtonBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_mouseDoubleClickEvent".}
proc fQDialogButtonBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_mouseMoveEvent".}
proc fcQDialogButtonBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_mouseMoveEvent".}
proc fQDialogButtonBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_wheelEvent".}
proc fcQDialogButtonBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_wheelEvent".}
proc fQDialogButtonBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_keyPressEvent".}
proc fcQDialogButtonBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_keyPressEvent".}
proc fQDialogButtonBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_keyReleaseEvent".}
proc fcQDialogButtonBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_keyReleaseEvent".}
proc fQDialogButtonBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_focusInEvent".}
proc fcQDialogButtonBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_focusInEvent".}
proc fQDialogButtonBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_focusOutEvent".}
proc fcQDialogButtonBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_focusOutEvent".}
proc fQDialogButtonBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_enterEvent".}
proc fcQDialogButtonBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_enterEvent".}
proc fQDialogButtonBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_leaveEvent".}
proc fcQDialogButtonBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_leaveEvent".}
proc fQDialogButtonBox_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_paintEvent".}
proc fcQDialogButtonBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_paintEvent".}
proc fQDialogButtonBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_moveEvent".}
proc fcQDialogButtonBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_moveEvent".}
proc fQDialogButtonBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_resizeEvent".}
proc fcQDialogButtonBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_resizeEvent".}
proc fQDialogButtonBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_closeEvent".}
proc fcQDialogButtonBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_closeEvent".}
proc fQDialogButtonBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_contextMenuEvent".}
proc fcQDialogButtonBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_contextMenuEvent".}
proc fQDialogButtonBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_tabletEvent".}
proc fcQDialogButtonBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_tabletEvent".}
proc fQDialogButtonBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_actionEvent".}
proc fcQDialogButtonBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_actionEvent".}
proc fQDialogButtonBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_dragEnterEvent".}
proc fcQDialogButtonBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_dragEnterEvent".}
proc fQDialogButtonBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_dragMoveEvent".}
proc fcQDialogButtonBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_dragMoveEvent".}
proc fQDialogButtonBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_dragLeaveEvent".}
proc fcQDialogButtonBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_dragLeaveEvent".}
proc fQDialogButtonBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_dropEvent".}
proc fcQDialogButtonBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_dropEvent".}
proc fQDialogButtonBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_showEvent".}
proc fcQDialogButtonBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_showEvent".}
proc fQDialogButtonBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_hideEvent".}
proc fcQDialogButtonBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_hideEvent".}
proc fQDialogButtonBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QDialogButtonBox_virtualbase_nativeEvent".}
proc fcQDialogButtonBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_nativeEvent".}
proc fQDialogButtonBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDialogButtonBox_virtualbase_metric".}
proc fcQDialogButtonBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_metric".}
proc fQDialogButtonBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDialogButtonBox_virtualbase_initPainter".}
proc fcQDialogButtonBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_initPainter".}
proc fQDialogButtonBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDialogButtonBox_virtualbase_redirected".}
proc fcQDialogButtonBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_redirected".}
proc fQDialogButtonBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDialogButtonBox_virtualbase_sharedPainter".}
proc fcQDialogButtonBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_sharedPainter".}
proc fQDialogButtonBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDialogButtonBox_virtualbase_inputMethodEvent".}
proc fcQDialogButtonBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_inputMethodEvent".}
proc fQDialogButtonBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDialogButtonBox_virtualbase_inputMethodQuery".}
proc fcQDialogButtonBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_inputMethodQuery".}
proc fQDialogButtonBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDialogButtonBox_virtualbase_focusNextPrevChild".}
proc fcQDialogButtonBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_focusNextPrevChild".}
proc fQDialogButtonBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDialogButtonBox_virtualbase_eventFilter".}
proc fcQDialogButtonBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_eventFilter".}
proc fQDialogButtonBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_timerEvent".}
proc fcQDialogButtonBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_timerEvent".}
proc fQDialogButtonBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_childEvent".}
proc fcQDialogButtonBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_childEvent".}
proc fQDialogButtonBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDialogButtonBox_virtualbase_customEvent".}
proc fcQDialogButtonBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_customEvent".}
proc fQDialogButtonBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDialogButtonBox_virtualbase_connectNotify".}
proc fcQDialogButtonBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_connectNotify".}
proc fQDialogButtonBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDialogButtonBox_virtualbase_disconnectNotify".}
proc fcQDialogButtonBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDialogButtonBox_override_virtual_disconnectNotify".}
proc fcQDialogButtonBox_delete(self: pointer) {.importc: "QDialogButtonBox_delete".}


func init*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox, h: ptr cQDialogButtonBox): gen_qdialogbuttonbox_types.QDialogButtonBox =
  T(h: h)
proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox, parent: gen_qwidget_types.QWidget): gen_qdialogbuttonbox_types.QDialogButtonBox =
  gen_qdialogbuttonbox_types.QDialogButtonBox.init(fcQDialogButtonBox_new(parent.h))

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qdialogbuttonbox_types.QDialogButtonBox =
  gen_qdialogbuttonbox_types.QDialogButtonBox.init(fcQDialogButtonBox_new2())

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox, orientation: cint): gen_qdialogbuttonbox_types.QDialogButtonBox =
  gen_qdialogbuttonbox_types.QDialogButtonBox.init(fcQDialogButtonBox_new3(cint(orientation)))

proc create2*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox, buttons: cint): gen_qdialogbuttonbox_types.QDialogButtonBox =
  gen_qdialogbuttonbox_types.QDialogButtonBox.init(fcQDialogButtonBox_new4(cint(buttons)))

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox, buttons: cint, orientation: cint): gen_qdialogbuttonbox_types.QDialogButtonBox =
  gen_qdialogbuttonbox_types.QDialogButtonBox.init(fcQDialogButtonBox_new5(cint(buttons), cint(orientation)))

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox, orientation: cint, parent: gen_qwidget_types.QWidget): gen_qdialogbuttonbox_types.QDialogButtonBox =
  gen_qdialogbuttonbox_types.QDialogButtonBox.init(fcQDialogButtonBox_new6(cint(orientation), parent.h))

proc create2*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox, buttons: cint, parent: gen_qwidget_types.QWidget): gen_qdialogbuttonbox_types.QDialogButtonBox =
  gen_qdialogbuttonbox_types.QDialogButtonBox.init(fcQDialogButtonBox_new7(cint(buttons), parent.h))

proc create*(T: type gen_qdialogbuttonbox_types.QDialogButtonBox, buttons: cint, orientation: cint, parent: gen_qwidget_types.QWidget): gen_qdialogbuttonbox_types.QDialogButtonBox =
  gen_qdialogbuttonbox_types.QDialogButtonBox.init(fcQDialogButtonBox_new8(cint(buttons), cint(orientation), parent.h))

proc metaObject*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDialogButtonBox_metaObject(self.h))

proc metacast*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cstring): pointer =
  fcQDialogButtonBox_metacast(self.h, param1)

proc tr*(_: type gen_qdialogbuttonbox_types.QDialogButtonBox, s: cstring): string =
  let v_ms = fcQDialogButtonBox_tr(s)
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
proc miqt_exec_callback_QDialogButtonBox_clicked(slot: int, button: pointer) {.exportc.} =
  let nimfunc = cast[ptr QDialogButtonBoxclickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: button)

  nimfunc[](slotval1)

proc onclicked*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxclickedSlot) =
  var tmp = new QDialogButtonBoxclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_connect_clicked(self.h, cast[int](addr tmp[]))

proc accepted*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): void =
  fcQDialogButtonBox_accepted(self.h)

type QDialogButtonBoxacceptedSlot* = proc()
proc miqt_exec_callback_QDialogButtonBox_accepted(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QDialogButtonBoxacceptedSlot](cast[pointer](slot))
  nimfunc[]()

proc onaccepted*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxacceptedSlot) =
  var tmp = new QDialogButtonBoxacceptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_connect_accepted(self.h, cast[int](addr tmp[]))

proc helpRequested*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): void =
  fcQDialogButtonBox_helpRequested(self.h)

type QDialogButtonBoxhelpRequestedSlot* = proc()
proc miqt_exec_callback_QDialogButtonBox_helpRequested(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QDialogButtonBoxhelpRequestedSlot](cast[pointer](slot))
  nimfunc[]()

proc onhelpRequested*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxhelpRequestedSlot) =
  var tmp = new QDialogButtonBoxhelpRequestedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_connect_helpRequested(self.h, cast[int](addr tmp[]))

proc rejected*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): void =
  fcQDialogButtonBox_rejected(self.h)

type QDialogButtonBoxrejectedSlot* = proc()
proc miqt_exec_callback_QDialogButtonBox_rejected(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QDialogButtonBoxrejectedSlot](cast[pointer](slot))
  nimfunc[]()

proc onrejected*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxrejectedSlot) =
  var tmp = new QDialogButtonBoxrejectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_connect_rejected(self.h, cast[int](addr tmp[]))

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

proc QDialogButtonBoxchangeEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void =
  fQDialogButtonBox_virtualbase_changeEvent(self.h, event.h)

type QDialogButtonBoxchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxchangeEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_changeEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_changeEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxevent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): bool =
  fQDialogButtonBox_virtualbase_event(self.h, event.h)

type QDialogButtonBoxeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxeventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_event(self: ptr cQDialogButtonBox, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDialogButtonBox_event ".} =
  var nimfunc = cast[ptr QDialogButtonBoxeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialogButtonBoxdevType*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): cint =
  fQDialogButtonBox_virtualbase_devType(self.h)

type QDialogButtonBoxdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxdevTypeProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_devType(self: ptr cQDialogButtonBox, slot: int): cint {.exportc: "miqt_exec_callback_QDialogButtonBox_devType ".} =
  var nimfunc = cast[ptr QDialogButtonBoxdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDialogButtonBoxsetVisible*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, visible: bool): void =
  fQDialogButtonBox_virtualbase_setVisible(self.h, visible)

type QDialogButtonBoxsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxsetVisibleProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_setVisible(self: ptr cQDialogButtonBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDialogButtonBox_setVisible ".} =
  var nimfunc = cast[ptr QDialogButtonBoxsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QDialogButtonBoxsizeHint*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDialogButtonBox_virtualbase_sizeHint(self.h))

type QDialogButtonBoxsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxsizeHintProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_sizeHint(self: ptr cQDialogButtonBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_sizeHint ".} =
  var nimfunc = cast[ptr QDialogButtonBoxsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialogButtonBoxminimumSizeHint*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDialogButtonBox_virtualbase_minimumSizeHint(self.h))

type QDialogButtonBoxminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_minimumSizeHint(self: ptr cQDialogButtonBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_minimumSizeHint ".} =
  var nimfunc = cast[ptr QDialogButtonBoxminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialogButtonBoxheightForWidth*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint): cint =
  fQDialogButtonBox_virtualbase_heightForWidth(self.h, param1)

type QDialogButtonBoxheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxheightForWidthProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_heightForWidth(self: ptr cQDialogButtonBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDialogButtonBox_heightForWidth ".} =
  var nimfunc = cast[ptr QDialogButtonBoxheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialogButtonBoxhasHeightForWidth*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): bool =
  fQDialogButtonBox_virtualbase_hasHeightForWidth(self.h)

type QDialogButtonBoxhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_hasHeightForWidth(self: ptr cQDialogButtonBox, slot: int): bool {.exportc: "miqt_exec_callback_QDialogButtonBox_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QDialogButtonBoxhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDialogButtonBoxpaintEngine*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQDialogButtonBox_virtualbase_paintEngine(self.h))

type QDialogButtonBoxpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxpaintEngineProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_paintEngine(self: ptr cQDialogButtonBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_paintEngine ".} =
  var nimfunc = cast[ptr QDialogButtonBoxpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialogButtonBoxmousePressEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void =
  fQDialogButtonBox_virtualbase_mousePressEvent(self.h, event.h)

type QDialogButtonBoxmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxmousePressEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_mousePressEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_mousePressEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxmouseReleaseEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void =
  fQDialogButtonBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDialogButtonBoxmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_mouseReleaseEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxmouseDoubleClickEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void =
  fQDialogButtonBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDialogButtonBoxmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_mouseDoubleClickEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxmouseMoveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMouseEvent): void =
  fQDialogButtonBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QDialogButtonBoxmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_mouseMoveEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxwheelEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QWheelEvent): void =
  fQDialogButtonBox_virtualbase_wheelEvent(self.h, event.h)

type QDialogButtonBoxwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxwheelEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_wheelEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_wheelEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxkeyPressEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QKeyEvent): void =
  fQDialogButtonBox_virtualbase_keyPressEvent(self.h, event.h)

type QDialogButtonBoxkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_keyPressEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_keyPressEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxkeyReleaseEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QKeyEvent): void =
  fQDialogButtonBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QDialogButtonBoxkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_keyReleaseEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxfocusInEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QFocusEvent): void =
  fQDialogButtonBox_virtualbase_focusInEvent(self.h, event.h)

type QDialogButtonBoxfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxfocusInEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_focusInEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_focusInEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxfocusOutEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QFocusEvent): void =
  fQDialogButtonBox_virtualbase_focusOutEvent(self.h, event.h)

type QDialogButtonBoxfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_focusOutEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_focusOutEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxenterEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QEnterEvent): void =
  fQDialogButtonBox_virtualbase_enterEvent(self.h, event.h)

type QDialogButtonBoxenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxenterEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_enterEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_enterEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxleaveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void =
  fQDialogButtonBox_virtualbase_leaveEvent(self.h, event.h)

type QDialogButtonBoxleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxleaveEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_leaveEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_leaveEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxpaintEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QPaintEvent): void =
  fQDialogButtonBox_virtualbase_paintEvent(self.h, event.h)

type QDialogButtonBoxpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxpaintEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_paintEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_paintEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxmoveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QMoveEvent): void =
  fQDialogButtonBox_virtualbase_moveEvent(self.h, event.h)

type QDialogButtonBoxmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxmoveEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_moveEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_moveEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxresizeEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QResizeEvent): void =
  fQDialogButtonBox_virtualbase_resizeEvent(self.h, event.h)

type QDialogButtonBoxresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxresizeEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_resizeEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_resizeEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxcloseEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QCloseEvent): void =
  fQDialogButtonBox_virtualbase_closeEvent(self.h, event.h)

type QDialogButtonBoxcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxcloseEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_closeEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_closeEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxcontextMenuEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QContextMenuEvent): void =
  fQDialogButtonBox_virtualbase_contextMenuEvent(self.h, event.h)

type QDialogButtonBoxcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_contextMenuEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_contextMenuEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxtabletEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QTabletEvent): void =
  fQDialogButtonBox_virtualbase_tabletEvent(self.h, event.h)

type QDialogButtonBoxtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxtabletEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_tabletEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_tabletEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxactionEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QActionEvent): void =
  fQDialogButtonBox_virtualbase_actionEvent(self.h, event.h)

type QDialogButtonBoxactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxactionEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_actionEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_actionEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxdragEnterEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QDragEnterEvent): void =
  fQDialogButtonBox_virtualbase_dragEnterEvent(self.h, event.h)

type QDialogButtonBoxdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_dragEnterEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_dragEnterEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxdragMoveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QDragMoveEvent): void =
  fQDialogButtonBox_virtualbase_dragMoveEvent(self.h, event.h)

type QDialogButtonBoxdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_dragMoveEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_dragMoveEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxdragLeaveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fQDialogButtonBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QDialogButtonBoxdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_dragLeaveEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxdropEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QDropEvent): void =
  fQDialogButtonBox_virtualbase_dropEvent(self.h, event.h)

type QDialogButtonBoxdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxdropEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_dropEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_dropEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxshowEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QShowEvent): void =
  fQDialogButtonBox_virtualbase_showEvent(self.h, event.h)

type QDialogButtonBoxshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxshowEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_showEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_showEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxhideEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qevent_types.QHideEvent): void =
  fQDialogButtonBox_virtualbase_hideEvent(self.h, event.h)

type QDialogButtonBoxhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxhideEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_hideEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_hideEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxnativeEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQDialogButtonBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDialogButtonBoxnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxnativeEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_nativeEvent(self: ptr cQDialogButtonBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QDialogButtonBox_nativeEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDialogButtonBoxmetric*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint): cint =
  fQDialogButtonBox_virtualbase_metric(self.h, cint(param1))

type QDialogButtonBoxmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxmetricProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_metric(self: ptr cQDialogButtonBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDialogButtonBox_metric ".} =
  var nimfunc = cast[ptr QDialogButtonBoxmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialogButtonBoxinitPainter*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, painter: gen_qpainter_types.QPainter): void =
  fQDialogButtonBox_virtualbase_initPainter(self.h, painter.h)

type QDialogButtonBoxinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxinitPainterProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_initPainter(self: ptr cQDialogButtonBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_initPainter ".} =
  var nimfunc = cast[ptr QDialogButtonBoxinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QDialogButtonBoxredirected*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQDialogButtonBox_virtualbase_redirected(self.h, offset.h))

type QDialogButtonBoxredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxredirectedProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_redirected(self: ptr cQDialogButtonBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_redirected ".} =
  var nimfunc = cast[ptr QDialogButtonBoxredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDialogButtonBoxsharedPainter*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQDialogButtonBox_virtualbase_sharedPainter(self.h))

type QDialogButtonBoxsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxsharedPainterProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_sharedPainter(self: ptr cQDialogButtonBox, slot: int): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_sharedPainter ".} =
  var nimfunc = cast[ptr QDialogButtonBoxsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDialogButtonBoxinputMethodEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fQDialogButtonBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QDialogButtonBoxinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_inputMethodEvent(self: ptr cQDialogButtonBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_inputMethodEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QDialogButtonBoxinputMethodQuery*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQDialogButtonBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDialogButtonBoxinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_inputMethodQuery(self: ptr cQDialogButtonBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDialogButtonBox_inputMethodQuery ".} =
  var nimfunc = cast[ptr QDialogButtonBoxinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDialogButtonBoxfocusNextPrevChild*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, next: bool): bool =
  fQDialogButtonBox_virtualbase_focusNextPrevChild(self.h, next)

type QDialogButtonBoxfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_focusNextPrevChild(self: ptr cQDialogButtonBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDialogButtonBox_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QDialogButtonBoxfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDialogButtonBoxeventFilter*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQDialogButtonBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDialogButtonBoxeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxeventFilterProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_eventFilter(self: ptr cQDialogButtonBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDialogButtonBox_eventFilter ".} =
  var nimfunc = cast[ptr QDialogButtonBoxeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDialogButtonBoxtimerEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fQDialogButtonBox_virtualbase_timerEvent(self.h, event.h)

type QDialogButtonBoxtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxtimerEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_timerEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_timerEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxchildEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QChildEvent): void =
  fQDialogButtonBox_virtualbase_childEvent(self.h, event.h)

type QDialogButtonBoxchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxchildEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_childEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_childEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxcustomEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, event: gen_qcoreevent_types.QEvent): void =
  fQDialogButtonBox_virtualbase_customEvent(self.h, event.h)

type QDialogButtonBoxcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxcustomEventProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_customEvent(self: ptr cQDialogButtonBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_customEvent ".} =
  var nimfunc = cast[ptr QDialogButtonBoxcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDialogButtonBoxconnectNotify*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDialogButtonBox_virtualbase_connectNotify(self.h, signal.h)

type QDialogButtonBoxconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_connectNotify(self: ptr cQDialogButtonBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_connectNotify ".} =
  var nimfunc = cast[ptr QDialogButtonBoxconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDialogButtonBoxdisconnectNotify*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDialogButtonBox_virtualbase_disconnectNotify(self.h, signal.h)

type QDialogButtonBoxdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdialogbuttonbox_types.QDialogButtonBox, slot: QDialogButtonBoxdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDialogButtonBoxdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDialogButtonBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDialogButtonBox_disconnectNotify(self: ptr cQDialogButtonBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDialogButtonBox_disconnectNotify ".} =
  var nimfunc = cast[ptr QDialogButtonBoxdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qdialogbuttonbox_types.QDialogButtonBox) =
  fcQDialogButtonBox_delete(self.h)
