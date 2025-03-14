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


{.compile("gen_qmessagebox.cpp", QtWidgetsCFlags).}


type QMessageBoxIconEnum* = distinct cint
template NoIcon*(_: type QMessageBoxIconEnum): untyped = 0
template Information*(_: type QMessageBoxIconEnum): untyped = 1
template Warning*(_: type QMessageBoxIconEnum): untyped = 2
template Critical*(_: type QMessageBoxIconEnum): untyped = 3
template Question*(_: type QMessageBoxIconEnum): untyped = 4


type QMessageBoxButtonRoleEnum* = distinct cint
template InvalidRole*(_: type QMessageBoxButtonRoleEnum): untyped = -1
template AcceptRole*(_: type QMessageBoxButtonRoleEnum): untyped = 0
template RejectRole*(_: type QMessageBoxButtonRoleEnum): untyped = 1
template DestructiveRole*(_: type QMessageBoxButtonRoleEnum): untyped = 2
template ActionRole*(_: type QMessageBoxButtonRoleEnum): untyped = 3
template HelpRole*(_: type QMessageBoxButtonRoleEnum): untyped = 4
template YesRole*(_: type QMessageBoxButtonRoleEnum): untyped = 5
template NoRole*(_: type QMessageBoxButtonRoleEnum): untyped = 6
template ResetRole*(_: type QMessageBoxButtonRoleEnum): untyped = 7
template ApplyRole*(_: type QMessageBoxButtonRoleEnum): untyped = 8
template NRoles*(_: type QMessageBoxButtonRoleEnum): untyped = 9


type QMessageBoxStandardButtonEnum* = distinct cint
template NoButton*(_: type QMessageBoxStandardButtonEnum): untyped = 0
template Ok*(_: type QMessageBoxStandardButtonEnum): untyped = 1024
template Save*(_: type QMessageBoxStandardButtonEnum): untyped = 2048
template SaveAll*(_: type QMessageBoxStandardButtonEnum): untyped = 4096
template Open*(_: type QMessageBoxStandardButtonEnum): untyped = 8192
template Yes*(_: type QMessageBoxStandardButtonEnum): untyped = 16384
template YesToAll*(_: type QMessageBoxStandardButtonEnum): untyped = 32768
template No*(_: type QMessageBoxStandardButtonEnum): untyped = 65536
template NoToAll*(_: type QMessageBoxStandardButtonEnum): untyped = 131072
template Abort*(_: type QMessageBoxStandardButtonEnum): untyped = 262144
template Retry*(_: type QMessageBoxStandardButtonEnum): untyped = 524288
template Ignore*(_: type QMessageBoxStandardButtonEnum): untyped = 1048576
template Close*(_: type QMessageBoxStandardButtonEnum): untyped = 2097152
template Cancel*(_: type QMessageBoxStandardButtonEnum): untyped = 4194304
template Discard*(_: type QMessageBoxStandardButtonEnum): untyped = 8388608
template Help*(_: type QMessageBoxStandardButtonEnum): untyped = 16777216
template Apply*(_: type QMessageBoxStandardButtonEnum): untyped = 33554432
template Reset*(_: type QMessageBoxStandardButtonEnum): untyped = 67108864
template RestoreDefaults*(_: type QMessageBoxStandardButtonEnum): untyped = 134217728
template FirstButton*(_: type QMessageBoxStandardButtonEnum): untyped = 1024
template LastButton*(_: type QMessageBoxStandardButtonEnum): untyped = 134217728
template YesAll*(_: type QMessageBoxStandardButtonEnum): untyped = 32768
template NoAll*(_: type QMessageBoxStandardButtonEnum): untyped = 131072
template Default*(_: type QMessageBoxStandardButtonEnum): untyped = 256
template Escape*(_: type QMessageBoxStandardButtonEnum): untyped = 512
template FlagMask*(_: type QMessageBoxStandardButtonEnum): untyped = 768
template ButtonMask*(_: type QMessageBoxStandardButtonEnum): untyped = -769


import ./gen_qmessagebox_types
export gen_qmessagebox_types

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
  ../QtGui/gen_qpixmap_types,
  ./gen_qabstractbutton_types,
  ./gen_qcheckbox_types,
  ./gen_qdialog,
  ./gen_qpushbutton_types,
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
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpixmap_types,
  gen_qabstractbutton_types,
  gen_qcheckbox_types,
  gen_qdialog,
  gen_qpushbutton_types,
  gen_qwidget_types

type cQMessageBox*{.exportc: "QMessageBox", incompleteStruct.} = object

proc fcQMessageBox_metaObject(self: pointer): pointer {.importc: "QMessageBox_metaObject".}
proc fcQMessageBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QMessageBox_metacast".}
proc fcQMessageBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMessageBox_metacall".}
proc fcQMessageBox_tr(s: cstring): struct_miqt_string {.importc: "QMessageBox_tr".}
proc fcQMessageBox_addButton(self: pointer, button: pointer, role: cint): void {.importc: "QMessageBox_addButton".}
proc fcQMessageBox_addButton2(self: pointer, text: struct_miqt_string, role: cint): pointer {.importc: "QMessageBox_addButton2".}
proc fcQMessageBox_addButtonWithButton(self: pointer, button: cint): pointer {.importc: "QMessageBox_addButtonWithButton".}
proc fcQMessageBox_removeButton(self: pointer, button: pointer): void {.importc: "QMessageBox_removeButton".}
proc fcQMessageBox_buttons(self: pointer): struct_miqt_array {.importc: "QMessageBox_buttons".}
proc fcQMessageBox_buttonRole(self: pointer, button: pointer): cint {.importc: "QMessageBox_buttonRole".}
proc fcQMessageBox_setStandardButtons(self: pointer, buttons: cint): void {.importc: "QMessageBox_setStandardButtons".}
proc fcQMessageBox_standardButtons(self: pointer): cint {.importc: "QMessageBox_standardButtons".}
proc fcQMessageBox_standardButton(self: pointer, button: pointer): cint {.importc: "QMessageBox_standardButton".}
proc fcQMessageBox_button(self: pointer, which: cint): pointer {.importc: "QMessageBox_button".}
proc fcQMessageBox_defaultButton(self: pointer): pointer {.importc: "QMessageBox_defaultButton".}
proc fcQMessageBox_setDefaultButton(self: pointer, button: pointer): void {.importc: "QMessageBox_setDefaultButton".}
proc fcQMessageBox_setDefaultButtonWithButton(self: pointer, button: cint): void {.importc: "QMessageBox_setDefaultButtonWithButton".}
proc fcQMessageBox_escapeButton(self: pointer): pointer {.importc: "QMessageBox_escapeButton".}
proc fcQMessageBox_setEscapeButton(self: pointer, button: pointer): void {.importc: "QMessageBox_setEscapeButton".}
proc fcQMessageBox_setEscapeButtonWithButton(self: pointer, button: cint): void {.importc: "QMessageBox_setEscapeButtonWithButton".}
proc fcQMessageBox_clickedButton(self: pointer): pointer {.importc: "QMessageBox_clickedButton".}
proc fcQMessageBox_text(self: pointer): struct_miqt_string {.importc: "QMessageBox_text".}
proc fcQMessageBox_setText(self: pointer, text: struct_miqt_string): void {.importc: "QMessageBox_setText".}
proc fcQMessageBox_icon(self: pointer): cint {.importc: "QMessageBox_icon".}
proc fcQMessageBox_setIcon(self: pointer, icon: cint): void {.importc: "QMessageBox_setIcon".}
proc fcQMessageBox_iconPixmap(self: pointer): pointer {.importc: "QMessageBox_iconPixmap".}
proc fcQMessageBox_setIconPixmap(self: pointer, pixmap: pointer): void {.importc: "QMessageBox_setIconPixmap".}
proc fcQMessageBox_textFormat(self: pointer): cint {.importc: "QMessageBox_textFormat".}
proc fcQMessageBox_setTextFormat(self: pointer, format: cint): void {.importc: "QMessageBox_setTextFormat".}
proc fcQMessageBox_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QMessageBox_setTextInteractionFlags".}
proc fcQMessageBox_textInteractionFlags(self: pointer): cint {.importc: "QMessageBox_textInteractionFlags".}
proc fcQMessageBox_setCheckBox(self: pointer, cb: pointer): void {.importc: "QMessageBox_setCheckBox".}
proc fcQMessageBox_checkBox(self: pointer): pointer {.importc: "QMessageBox_checkBox".}
proc fcQMessageBox_information(parent: pointer, title: struct_miqt_string, text: struct_miqt_string): cint {.importc: "QMessageBox_information".}
proc fcQMessageBox_information2(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint): cint {.importc: "QMessageBox_information2".}
proc fcQMessageBox_question(parent: pointer, title: struct_miqt_string, text: struct_miqt_string): cint {.importc: "QMessageBox_question".}
proc fcQMessageBox_question2(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_question2".}
proc fcQMessageBox_warning(parent: pointer, title: struct_miqt_string, text: struct_miqt_string): cint {.importc: "QMessageBox_warning".}
proc fcQMessageBox_warning2(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_warning2".}
proc fcQMessageBox_critical(parent: pointer, title: struct_miqt_string, text: struct_miqt_string): cint {.importc: "QMessageBox_critical".}
proc fcQMessageBox_critical2(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_critical2".}
proc fcQMessageBox_about(parent: pointer, title: struct_miqt_string, text: struct_miqt_string): void {.importc: "QMessageBox_about".}
proc fcQMessageBox_aboutQt(parent: pointer): void {.importc: "QMessageBox_aboutQt".}
proc fcQMessageBox_information3(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint): cint {.importc: "QMessageBox_information3".}
proc fcQMessageBox_information4(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string): cint {.importc: "QMessageBox_information4".}
proc fcQMessageBox_question3(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint): cint {.importc: "QMessageBox_question3".}
proc fcQMessageBox_question4(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string): cint {.importc: "QMessageBox_question4".}
proc fcQMessageBox_warning3(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_warning3".}
proc fcQMessageBox_warning4(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string): cint {.importc: "QMessageBox_warning4".}
proc fcQMessageBox_critical3(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_critical3".}
proc fcQMessageBox_critical4(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string): cint {.importc: "QMessageBox_critical4".}
proc fcQMessageBox_buttonText(self: pointer, button: cint): struct_miqt_string {.importc: "QMessageBox_buttonText".}
proc fcQMessageBox_setButtonText(self: pointer, button: cint, text: struct_miqt_string): void {.importc: "QMessageBox_setButtonText".}
proc fcQMessageBox_informativeText(self: pointer): struct_miqt_string {.importc: "QMessageBox_informativeText".}
proc fcQMessageBox_setInformativeText(self: pointer, text: struct_miqt_string): void {.importc: "QMessageBox_setInformativeText".}
proc fcQMessageBox_detailedText(self: pointer): struct_miqt_string {.importc: "QMessageBox_detailedText".}
proc fcQMessageBox_setDetailedText(self: pointer, text: struct_miqt_string): void {.importc: "QMessageBox_setDetailedText".}
proc fcQMessageBox_setWindowTitle(self: pointer, title: struct_miqt_string): void {.importc: "QMessageBox_setWindowTitle".}
proc fcQMessageBox_setWindowModality(self: pointer, windowModality: cint): void {.importc: "QMessageBox_setWindowModality".}
proc fcQMessageBox_standardIcon(icon: cint): pointer {.importc: "QMessageBox_standardIcon".}
proc fcQMessageBox_buttonClicked(self: pointer, button: pointer): void {.importc: "QMessageBox_buttonClicked".}
proc fcQMessageBox_connect_buttonClicked(self: pointer, slot: int, callback: proc (slot: int, button: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMessageBox_connect_buttonClicked".}
proc fcQMessageBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMessageBox_tr2".}
proc fcQMessageBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMessageBox_tr3".}
proc fcQMessageBox_information42(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint): cint {.importc: "QMessageBox_information42".}
proc fcQMessageBox_information5(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, defaultButton: cint): cint {.importc: "QMessageBox_information5".}
proc fcQMessageBox_information52(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_information52".}
proc fcQMessageBox_question42(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint): cint {.importc: "QMessageBox_question42".}
proc fcQMessageBox_question5(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, defaultButton: cint): cint {.importc: "QMessageBox_question5".}
proc fcQMessageBox_warning42(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint): cint {.importc: "QMessageBox_warning42".}
proc fcQMessageBox_warning5(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, defaultButton: cint): cint {.importc: "QMessageBox_warning5".}
proc fcQMessageBox_critical42(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint): cint {.importc: "QMessageBox_critical42".}
proc fcQMessageBox_critical5(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, defaultButton: cint): cint {.importc: "QMessageBox_critical5".}
proc fcQMessageBox_aboutQt2(parent: pointer, title: struct_miqt_string): void {.importc: "QMessageBox_aboutQt2".}
proc fcQMessageBox_information53(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_information53".}
proc fcQMessageBox_information6(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint, button2: cint): cint {.importc: "QMessageBox_information6".}
proc fcQMessageBox_information54(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string): cint {.importc: "QMessageBox_information54".}
proc fcQMessageBox_information62(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string): cint {.importc: "QMessageBox_information62".}
proc fcQMessageBox_information7(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint): cint {.importc: "QMessageBox_information7".}
proc fcQMessageBox_information8(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint {.importc: "QMessageBox_information8".}
proc fcQMessageBox_question52(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint): cint {.importc: "QMessageBox_question52".}
proc fcQMessageBox_question6(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint, button2: cint): cint {.importc: "QMessageBox_question6".}
proc fcQMessageBox_question53(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string): cint {.importc: "QMessageBox_question53".}
proc fcQMessageBox_question62(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string): cint {.importc: "QMessageBox_question62".}
proc fcQMessageBox_question7(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint): cint {.importc: "QMessageBox_question7".}
proc fcQMessageBox_question8(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint {.importc: "QMessageBox_question8".}
proc fcQMessageBox_warning6(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint, button2: cint): cint {.importc: "QMessageBox_warning6".}
proc fcQMessageBox_warning52(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string): cint {.importc: "QMessageBox_warning52".}
proc fcQMessageBox_warning62(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string): cint {.importc: "QMessageBox_warning62".}
proc fcQMessageBox_warning7(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint): cint {.importc: "QMessageBox_warning7".}
proc fcQMessageBox_warning8(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint {.importc: "QMessageBox_warning8".}
proc fcQMessageBox_critical6(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0: cint, button1: cint, button2: cint): cint {.importc: "QMessageBox_critical6".}
proc fcQMessageBox_critical52(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string): cint {.importc: "QMessageBox_critical52".}
proc fcQMessageBox_critical62(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string): cint {.importc: "QMessageBox_critical62".}
proc fcQMessageBox_critical7(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint): cint {.importc: "QMessageBox_critical7".}
proc fcQMessageBox_critical8(parent: pointer, title: struct_miqt_string, text: struct_miqt_string, button0Text: struct_miqt_string, button1Text: struct_miqt_string, button2Text: struct_miqt_string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint {.importc: "QMessageBox_critical8".}
proc fcQMessageBox_vtbl(self: pointer): pointer {.importc: "QMessageBox_vtbl".}
proc fcQMessageBox_vdata(self: pointer): pointer {.importc: "QMessageBox_vdata".}
type cQMessageBoxVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  done*: proc(self: pointer, param1: cint): void {.cdecl, raises: [], gcsafe.}
  accept*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQMessageBox_virtualbase_metaObject(self: pointer): pointer {.importc: "QMessageBox_virtualbase_metaObject".}
proc fcQMessageBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMessageBox_virtualbase_metacast".}
proc fcQMessageBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMessageBox_virtualbase_metacall".}
proc fcQMessageBox_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QMessageBox_virtualbase_event".}
proc fcQMessageBox_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_resizeEvent".}
proc fcQMessageBox_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_showEvent".}
proc fcQMessageBox_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_closeEvent".}
proc fcQMessageBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_keyPressEvent".}
proc fcQMessageBox_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_changeEvent".}
proc fcQMessageBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QMessageBox_virtualbase_setVisible".}
proc fcQMessageBox_virtualbase_sizeHint(self: pointer): pointer {.importc: "QMessageBox_virtualbase_sizeHint".}
proc fcQMessageBox_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QMessageBox_virtualbase_minimumSizeHint".}
proc fcQMessageBox_virtualbase_open(self: pointer): void {.importc: "QMessageBox_virtualbase_open".}
proc fcQMessageBox_virtualbase_exec(self: pointer): cint {.importc: "QMessageBox_virtualbase_exec".}
proc fcQMessageBox_virtualbase_done(self: pointer, param1: cint): void {.importc: "QMessageBox_virtualbase_done".}
proc fcQMessageBox_virtualbase_accept(self: pointer): void {.importc: "QMessageBox_virtualbase_accept".}
proc fcQMessageBox_virtualbase_reject(self: pointer): void {.importc: "QMessageBox_virtualbase_reject".}
proc fcQMessageBox_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QMessageBox_virtualbase_contextMenuEvent".}
proc fcQMessageBox_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QMessageBox_virtualbase_eventFilter".}
proc fcQMessageBox_virtualbase_devType(self: pointer): cint {.importc: "QMessageBox_virtualbase_devType".}
proc fcQMessageBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QMessageBox_virtualbase_heightForWidth".}
proc fcQMessageBox_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QMessageBox_virtualbase_hasHeightForWidth".}
proc fcQMessageBox_virtualbase_paintEngine(self: pointer): pointer {.importc: "QMessageBox_virtualbase_paintEngine".}
proc fcQMessageBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_mousePressEvent".}
proc fcQMessageBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_mouseReleaseEvent".}
proc fcQMessageBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_mouseDoubleClickEvent".}
proc fcQMessageBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_mouseMoveEvent".}
proc fcQMessageBox_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_wheelEvent".}
proc fcQMessageBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_keyReleaseEvent".}
proc fcQMessageBox_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_focusInEvent".}
proc fcQMessageBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_focusOutEvent".}
proc fcQMessageBox_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_enterEvent".}
proc fcQMessageBox_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_leaveEvent".}
proc fcQMessageBox_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_paintEvent".}
proc fcQMessageBox_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_moveEvent".}
proc fcQMessageBox_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_tabletEvent".}
proc fcQMessageBox_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_actionEvent".}
proc fcQMessageBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_dragEnterEvent".}
proc fcQMessageBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_dragMoveEvent".}
proc fcQMessageBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_dragLeaveEvent".}
proc fcQMessageBox_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_dropEvent".}
proc fcQMessageBox_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_hideEvent".}
proc fcQMessageBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QMessageBox_virtualbase_nativeEvent".}
proc fcQMessageBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QMessageBox_virtualbase_metric".}
proc fcQMessageBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QMessageBox_virtualbase_initPainter".}
proc fcQMessageBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QMessageBox_virtualbase_redirected".}
proc fcQMessageBox_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QMessageBox_virtualbase_sharedPainter".}
proc fcQMessageBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QMessageBox_virtualbase_inputMethodEvent".}
proc fcQMessageBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QMessageBox_virtualbase_inputMethodQuery".}
proc fcQMessageBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QMessageBox_virtualbase_focusNextPrevChild".}
proc fcQMessageBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_timerEvent".}
proc fcQMessageBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_childEvent".}
proc fcQMessageBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMessageBox_virtualbase_customEvent".}
proc fcQMessageBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMessageBox_virtualbase_connectNotify".}
proc fcQMessageBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMessageBox_virtualbase_disconnectNotify".}
proc fcQMessageBox_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QMessageBox_protectedbase_adjustPosition".}
proc fcQMessageBox_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QMessageBox_protectedbase_updateMicroFocus".}
proc fcQMessageBox_protectedbase_create(self: pointer): void {.importc: "QMessageBox_protectedbase_create".}
proc fcQMessageBox_protectedbase_destroy(self: pointer): void {.importc: "QMessageBox_protectedbase_destroy".}
proc fcQMessageBox_protectedbase_focusNextChild(self: pointer): bool {.importc: "QMessageBox_protectedbase_focusNextChild".}
proc fcQMessageBox_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QMessageBox_protectedbase_focusPreviousChild".}
proc fcQMessageBox_protectedbase_sender(self: pointer): pointer {.importc: "QMessageBox_protectedbase_sender".}
proc fcQMessageBox_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMessageBox_protectedbase_senderSignalIndex".}
proc fcQMessageBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMessageBox_protectedbase_receivers".}
proc fcQMessageBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMessageBox_protectedbase_isSignalConnected".}
proc fcQMessageBox_new(vtbl, vdata: pointer, parent: pointer): ptr cQMessageBox {.importc: "QMessageBox_new".}
proc fcQMessageBox_new2(vtbl, vdata: pointer): ptr cQMessageBox {.importc: "QMessageBox_new2".}
proc fcQMessageBox_new3(vtbl, vdata: pointer, icon: cint, title: struct_miqt_string, text: struct_miqt_string): ptr cQMessageBox {.importc: "QMessageBox_new3".}
proc fcQMessageBox_new4(vtbl, vdata: pointer, title: struct_miqt_string, text: struct_miqt_string, icon: cint, button0: cint, button1: cint, button2: cint): ptr cQMessageBox {.importc: "QMessageBox_new4".}
proc fcQMessageBox_new5(vtbl, vdata: pointer, icon: cint, title: struct_miqt_string, text: struct_miqt_string, buttons: cint): ptr cQMessageBox {.importc: "QMessageBox_new5".}
proc fcQMessageBox_new6(vtbl, vdata: pointer, icon: cint, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, parent: pointer): ptr cQMessageBox {.importc: "QMessageBox_new6".}
proc fcQMessageBox_new7(vtbl, vdata: pointer, icon: cint, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, parent: pointer, flags: cint): ptr cQMessageBox {.importc: "QMessageBox_new7".}
proc fcQMessageBox_new8(vtbl, vdata: pointer, title: struct_miqt_string, text: struct_miqt_string, icon: cint, button0: cint, button1: cint, button2: cint, parent: pointer): ptr cQMessageBox {.importc: "QMessageBox_new8".}
proc fcQMessageBox_new9(vtbl, vdata: pointer, title: struct_miqt_string, text: struct_miqt_string, icon: cint, button0: cint, button1: cint, button2: cint, parent: pointer, f: cint): ptr cQMessageBox {.importc: "QMessageBox_new9".}
proc fcQMessageBox_staticMetaObject(): pointer {.importc: "QMessageBox_staticMetaObject".}

proc metaObject*(self: gen_qmessagebox_types.QMessageBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMessageBox_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmessagebox_types.QMessageBox, param1: cstring): pointer =
  fcQMessageBox_metacast(self.h, param1)

proc metacall*(self: gen_qmessagebox_types.QMessageBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQMessageBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmessagebox_types.QMessageBox, s: cstring): string =
  let v_ms = fcQMessageBox_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addButton*(self: gen_qmessagebox_types.QMessageBox, button: gen_qabstractbutton_types.QAbstractButton, role: cint): void =
  fcQMessageBox_addButton(self.h, button.h, cint(role))

proc addButton*(self: gen_qmessagebox_types.QMessageBox, text: openArray[char], role: cint): gen_qpushbutton_types.QPushButton =
  gen_qpushbutton_types.QPushButton(h: fcQMessageBox_addButton2(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(role)), owned: false)

proc addButton*(self: gen_qmessagebox_types.QMessageBox, button: cint): gen_qpushbutton_types.QPushButton =
  gen_qpushbutton_types.QPushButton(h: fcQMessageBox_addButtonWithButton(self.h, cint(button)), owned: false)

proc removeButton*(self: gen_qmessagebox_types.QMessageBox, button: gen_qabstractbutton_types.QAbstractButton): void =
  fcQMessageBox_removeButton(self.h, button.h)

proc buttons*(self: gen_qmessagebox_types.QMessageBox): seq[gen_qabstractbutton_types.QAbstractButton] =
  var v_ma = fcQMessageBox_buttons(self.h)
  var vx_ret = newSeq[gen_qabstractbutton_types.QAbstractButton](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractbutton_types.QAbstractButton(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc buttonRole*(self: gen_qmessagebox_types.QMessageBox, button: gen_qabstractbutton_types.QAbstractButton): cint =
  cint(fcQMessageBox_buttonRole(self.h, button.h))

proc setStandardButtons*(self: gen_qmessagebox_types.QMessageBox, buttons: cint): void =
  fcQMessageBox_setStandardButtons(self.h, cint(buttons))

proc standardButtons*(self: gen_qmessagebox_types.QMessageBox): cint =
  cint(fcQMessageBox_standardButtons(self.h))

proc standardButton*(self: gen_qmessagebox_types.QMessageBox, button: gen_qabstractbutton_types.QAbstractButton): cint =
  cint(fcQMessageBox_standardButton(self.h, button.h))

proc button*(self: gen_qmessagebox_types.QMessageBox, which: cint): gen_qabstractbutton_types.QAbstractButton =
  gen_qabstractbutton_types.QAbstractButton(h: fcQMessageBox_button(self.h, cint(which)), owned: false)

proc defaultButton*(self: gen_qmessagebox_types.QMessageBox): gen_qpushbutton_types.QPushButton =
  gen_qpushbutton_types.QPushButton(h: fcQMessageBox_defaultButton(self.h), owned: false)

proc setDefaultButton*(self: gen_qmessagebox_types.QMessageBox, button: gen_qpushbutton_types.QPushButton): void =
  fcQMessageBox_setDefaultButton(self.h, button.h)

proc setDefaultButton*(self: gen_qmessagebox_types.QMessageBox, button: cint): void =
  fcQMessageBox_setDefaultButtonWithButton(self.h, cint(button))

proc escapeButton*(self: gen_qmessagebox_types.QMessageBox): gen_qabstractbutton_types.QAbstractButton =
  gen_qabstractbutton_types.QAbstractButton(h: fcQMessageBox_escapeButton(self.h), owned: false)

proc setEscapeButton*(self: gen_qmessagebox_types.QMessageBox, button: gen_qabstractbutton_types.QAbstractButton): void =
  fcQMessageBox_setEscapeButton(self.h, button.h)

proc setEscapeButton*(self: gen_qmessagebox_types.QMessageBox, button: cint): void =
  fcQMessageBox_setEscapeButtonWithButton(self.h, cint(button))

proc clickedButton*(self: gen_qmessagebox_types.QMessageBox): gen_qabstractbutton_types.QAbstractButton =
  gen_qabstractbutton_types.QAbstractButton(h: fcQMessageBox_clickedButton(self.h), owned: false)

proc text*(self: gen_qmessagebox_types.QMessageBox): string =
  let v_ms = fcQMessageBox_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qmessagebox_types.QMessageBox, text: openArray[char]): void =
  fcQMessageBox_setText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc icon*(self: gen_qmessagebox_types.QMessageBox): cint =
  cint(fcQMessageBox_icon(self.h))

proc setIcon*(self: gen_qmessagebox_types.QMessageBox, icon: cint): void =
  fcQMessageBox_setIcon(self.h, cint(icon))

proc iconPixmap*(self: gen_qmessagebox_types.QMessageBox): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQMessageBox_iconPixmap(self.h), owned: true)

proc setIconPixmap*(self: gen_qmessagebox_types.QMessageBox, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQMessageBox_setIconPixmap(self.h, pixmap.h)

proc textFormat*(self: gen_qmessagebox_types.QMessageBox): cint =
  cint(fcQMessageBox_textFormat(self.h))

proc setTextFormat*(self: gen_qmessagebox_types.QMessageBox, format: cint): void =
  fcQMessageBox_setTextFormat(self.h, cint(format))

proc setTextInteractionFlags*(self: gen_qmessagebox_types.QMessageBox, flags: cint): void =
  fcQMessageBox_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: gen_qmessagebox_types.QMessageBox): cint =
  cint(fcQMessageBox_textInteractionFlags(self.h))

proc setCheckBox*(self: gen_qmessagebox_types.QMessageBox, cb: gen_qcheckbox_types.QCheckBox): void =
  fcQMessageBox_setCheckBox(self.h, cb.h)

proc checkBox*(self: gen_qmessagebox_types.QMessageBox): gen_qcheckbox_types.QCheckBox =
  gen_qcheckbox_types.QCheckBox(h: fcQMessageBox_checkBox(self.h), owned: false)

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char]): cint =
  cint(fcQMessageBox_information(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))))

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint): cint =
  cint(fcQMessageBox_information2(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(button0)))

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char]): cint =
  cint(fcQMessageBox_question(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))))

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint, button1: cint): cint =
  fcQMessageBox_question2(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(button0), cint(button1))

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char]): cint =
  cint(fcQMessageBox_warning(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))))

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint, button1: cint): cint =
  fcQMessageBox_warning2(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(button0), cint(button1))

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char]): cint =
  cint(fcQMessageBox_critical(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))))

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint, button1: cint): cint =
  fcQMessageBox_critical2(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(button0), cint(button1))

proc about*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char]): void =
  fcQMessageBox_about(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc aboutQt*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget): void =
  fcQMessageBox_aboutQt(parent.h)

proc information2*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint): cint =
  fcQMessageBox_information3(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), button0)

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char]): cint =
  fcQMessageBox_information4(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))))

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint): cint =
  fcQMessageBox_question3(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), button0)

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char]): cint =
  fcQMessageBox_question4(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))))

proc warning2*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint, button1: cint): cint =
  fcQMessageBox_warning3(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), button0, button1)

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char]): cint =
  fcQMessageBox_warning4(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))))

proc critical2*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint, button1: cint): cint =
  fcQMessageBox_critical3(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), button0, button1)

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char]): cint =
  fcQMessageBox_critical4(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))))

proc buttonText*(self: gen_qmessagebox_types.QMessageBox, button: cint): string =
  let v_ms = fcQMessageBox_buttonText(self.h, button)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setButtonText*(self: gen_qmessagebox_types.QMessageBox, button: cint, text: openArray[char]): void =
  fcQMessageBox_setButtonText(self.h, button, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc informativeText*(self: gen_qmessagebox_types.QMessageBox): string =
  let v_ms = fcQMessageBox_informativeText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setInformativeText*(self: gen_qmessagebox_types.QMessageBox, text: openArray[char]): void =
  fcQMessageBox_setInformativeText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc detailedText*(self: gen_qmessagebox_types.QMessageBox): string =
  let v_ms = fcQMessageBox_detailedText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setDetailedText*(self: gen_qmessagebox_types.QMessageBox, text: openArray[char]): void =
  fcQMessageBox_setDetailedText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc setWindowTitle*(self: gen_qmessagebox_types.QMessageBox, title: openArray[char]): void =
  fcQMessageBox_setWindowTitle(self.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))))

proc setWindowModality*(self: gen_qmessagebox_types.QMessageBox, windowModality: cint): void =
  fcQMessageBox_setWindowModality(self.h, cint(windowModality))

proc standardIcon*(_: type gen_qmessagebox_types.QMessageBox, icon: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQMessageBox_standardIcon(cint(icon)), owned: true)

proc buttonClicked*(self: gen_qmessagebox_types.QMessageBox, button: gen_qabstractbutton_types.QAbstractButton): void =
  fcQMessageBox_buttonClicked(self.h, button.h)

type QMessageBoxbuttonClickedSlot* = proc(button: gen_qabstractbutton_types.QAbstractButton)
proc cQMessageBox_slot_callback_buttonClicked(slot: int, button: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMessageBoxbuttonClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: button, owned: false)

  nimfunc[](slotval1)

proc cQMessageBox_slot_callback_buttonClicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMessageBoxbuttonClickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbuttonClicked*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxbuttonClickedSlot) =
  var tmp = new QMessageBoxbuttonClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_connect_buttonClicked(self.h, cast[int](addr tmp[]), cQMessageBox_slot_callback_buttonClicked, cQMessageBox_slot_callback_buttonClicked_release)

proc tr*(_: type gen_qmessagebox_types.QMessageBox, s: cstring, c: cstring): string =
  let v_ms = fcQMessageBox_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmessagebox_types.QMessageBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMessageBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc information3*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], buttons: cint): cint =
  cint(fcQMessageBox_information42(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons)))

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], buttons: cint, defaultButton: cint): cint =
  cint(fcQMessageBox_information5(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons), cint(defaultButton)))

proc information2*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint, button1: cint): cint =
  cint(fcQMessageBox_information52(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(button0), cint(button1)))

proc question2*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], buttons: cint): cint =
  cint(fcQMessageBox_question42(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons)))

proc question2*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], buttons: cint, defaultButton: cint): cint =
  cint(fcQMessageBox_question5(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons), cint(defaultButton)))

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], buttons: cint): cint =
  cint(fcQMessageBox_warning42(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons)))

proc warning3*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], buttons: cint, defaultButton: cint): cint =
  cint(fcQMessageBox_warning5(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons), cint(defaultButton)))

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], buttons: cint): cint =
  cint(fcQMessageBox_critical42(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons)))

proc critical3*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], buttons: cint, defaultButton: cint): cint =
  cint(fcQMessageBox_critical5(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons), cint(defaultButton)))

proc aboutQt*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char]): void =
  fcQMessageBox_aboutQt2(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))))

proc information3*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint, button1: cint): cint =
  fcQMessageBox_information53(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), button0, button1)

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint, button1: cint, button2: cint): cint =
  fcQMessageBox_information6(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), button0, button1, button2)

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char]): cint =
  fcQMessageBox_information54(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))))

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char], button2Text: openArray[char]): cint =
  fcQMessageBox_information62(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))), struct_miqt_string(data: if len(button2Text) > 0: addr button2Text[0] else: nil, len: csize_t(len(button2Text))))

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char], button2Text: openArray[char], defaultButtonNumber: cint): cint =
  fcQMessageBox_information7(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))), struct_miqt_string(data: if len(button2Text) > 0: addr button2Text[0] else: nil, len: csize_t(len(button2Text))), defaultButtonNumber)

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char], button2Text: openArray[char], defaultButtonNumber: cint, escapeButtonNumber: cint): cint =
  fcQMessageBox_information8(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))), struct_miqt_string(data: if len(button2Text) > 0: addr button2Text[0] else: nil, len: csize_t(len(button2Text))), defaultButtonNumber, escapeButtonNumber)

proc question3*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint, button1: cint): cint =
  fcQMessageBox_question52(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), button0, button1)

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint, button1: cint, button2: cint): cint =
  fcQMessageBox_question6(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), button0, button1, button2)

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char]): cint =
  fcQMessageBox_question53(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))))

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char], button2Text: openArray[char]): cint =
  fcQMessageBox_question62(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))), struct_miqt_string(data: if len(button2Text) > 0: addr button2Text[0] else: nil, len: csize_t(len(button2Text))))

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char], button2Text: openArray[char], defaultButtonNumber: cint): cint =
  fcQMessageBox_question7(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))), struct_miqt_string(data: if len(button2Text) > 0: addr button2Text[0] else: nil, len: csize_t(len(button2Text))), defaultButtonNumber)

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char], button2Text: openArray[char], defaultButtonNumber: cint, escapeButtonNumber: cint): cint =
  fcQMessageBox_question8(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))), struct_miqt_string(data: if len(button2Text) > 0: addr button2Text[0] else: nil, len: csize_t(len(button2Text))), defaultButtonNumber, escapeButtonNumber)

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint, button1: cint, button2: cint): cint =
  fcQMessageBox_warning6(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), button0, button1, button2)

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char]): cint =
  fcQMessageBox_warning52(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))))

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char], button2Text: openArray[char]): cint =
  fcQMessageBox_warning62(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))), struct_miqt_string(data: if len(button2Text) > 0: addr button2Text[0] else: nil, len: csize_t(len(button2Text))))

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char], button2Text: openArray[char], defaultButtonNumber: cint): cint =
  fcQMessageBox_warning7(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))), struct_miqt_string(data: if len(button2Text) > 0: addr button2Text[0] else: nil, len: csize_t(len(button2Text))), defaultButtonNumber)

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char], button2Text: openArray[char], defaultButtonNumber: cint, escapeButtonNumber: cint): cint =
  fcQMessageBox_warning8(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))), struct_miqt_string(data: if len(button2Text) > 0: addr button2Text[0] else: nil, len: csize_t(len(button2Text))), defaultButtonNumber, escapeButtonNumber)

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0: cint, button1: cint, button2: cint): cint =
  fcQMessageBox_critical6(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), button0, button1, button2)

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char]): cint =
  fcQMessageBox_critical52(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))))

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char], button2Text: openArray[char]): cint =
  fcQMessageBox_critical62(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))), struct_miqt_string(data: if len(button2Text) > 0: addr button2Text[0] else: nil, len: csize_t(len(button2Text))))

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char], button2Text: openArray[char], defaultButtonNumber: cint): cint =
  fcQMessageBox_critical7(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))), struct_miqt_string(data: if len(button2Text) > 0: addr button2Text[0] else: nil, len: csize_t(len(button2Text))), defaultButtonNumber)

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: openArray[char], text: openArray[char], button0Text: openArray[char], button1Text: openArray[char], button2Text: openArray[char], defaultButtonNumber: cint, escapeButtonNumber: cint): cint =
  fcQMessageBox_critical8(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), struct_miqt_string(data: if len(button0Text) > 0: addr button0Text[0] else: nil, len: csize_t(len(button0Text))), struct_miqt_string(data: if len(button1Text) > 0: addr button1Text[0] else: nil, len: csize_t(len(button1Text))), struct_miqt_string(data: if len(button2Text) > 0: addr button2Text[0] else: nil, len: csize_t(len(button2Text))), defaultButtonNumber, escapeButtonNumber)

type QMessageBoxmetaObjectProc* = proc(self: QMessageBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMessageBoxmetacastProc* = proc(self: QMessageBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QMessageBoxmetacallProc* = proc(self: QMessageBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMessageBoxeventProc* = proc(self: QMessageBox, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMessageBoxresizeEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QMessageBoxshowEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QMessageBoxcloseEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QMessageBoxkeyPressEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QMessageBoxchangeEventProc* = proc(self: QMessageBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMessageBoxsetVisibleProc* = proc(self: QMessageBox, visible: bool): void {.raises: [], gcsafe.}
type QMessageBoxsizeHintProc* = proc(self: QMessageBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMessageBoxminimumSizeHintProc* = proc(self: QMessageBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QMessageBoxopenProc* = proc(self: QMessageBox): void {.raises: [], gcsafe.}
type QMessageBoxexecProc* = proc(self: QMessageBox): cint {.raises: [], gcsafe.}
type QMessageBoxdoneProc* = proc(self: QMessageBox, param1: cint): void {.raises: [], gcsafe.}
type QMessageBoxacceptProc* = proc(self: QMessageBox): void {.raises: [], gcsafe.}
type QMessageBoxrejectProc* = proc(self: QMessageBox): void {.raises: [], gcsafe.}
type QMessageBoxcontextMenuEventProc* = proc(self: QMessageBox, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QMessageBoxeventFilterProc* = proc(self: QMessageBox, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMessageBoxdevTypeProc* = proc(self: QMessageBox): cint {.raises: [], gcsafe.}
type QMessageBoxheightForWidthProc* = proc(self: QMessageBox, param1: cint): cint {.raises: [], gcsafe.}
type QMessageBoxhasHeightForWidthProc* = proc(self: QMessageBox): bool {.raises: [], gcsafe.}
type QMessageBoxpaintEngineProc* = proc(self: QMessageBox): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QMessageBoxmousePressEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMessageBoxmouseReleaseEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMessageBoxmouseDoubleClickEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMessageBoxmouseMoveEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QMessageBoxwheelEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QMessageBoxkeyReleaseEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QMessageBoxfocusInEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QMessageBoxfocusOutEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QMessageBoxenterEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QMessageBoxleaveEventProc* = proc(self: QMessageBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMessageBoxpaintEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QMessageBoxmoveEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QMessageBoxtabletEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QMessageBoxactionEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QMessageBoxdragEnterEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QMessageBoxdragMoveEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QMessageBoxdragLeaveEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QMessageBoxdropEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QMessageBoxhideEventProc* = proc(self: QMessageBox, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QMessageBoxnativeEventProc* = proc(self: QMessageBox, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QMessageBoxmetricProc* = proc(self: QMessageBox, param1: cint): cint {.raises: [], gcsafe.}
type QMessageBoxinitPainterProc* = proc(self: QMessageBox, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QMessageBoxredirectedProc* = proc(self: QMessageBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QMessageBoxsharedPainterProc* = proc(self: QMessageBox): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QMessageBoxinputMethodEventProc* = proc(self: QMessageBox, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QMessageBoxinputMethodQueryProc* = proc(self: QMessageBox, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QMessageBoxfocusNextPrevChildProc* = proc(self: QMessageBox, next: bool): bool {.raises: [], gcsafe.}
type QMessageBoxtimerEventProc* = proc(self: QMessageBox, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMessageBoxchildEventProc* = proc(self: QMessageBox, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMessageBoxcustomEventProc* = proc(self: QMessageBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMessageBoxconnectNotifyProc* = proc(self: QMessageBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMessageBoxdisconnectNotifyProc* = proc(self: QMessageBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMessageBoxVTable* {.inheritable, pure.} = object
  vtbl: cQMessageBoxVTable
  metaObject*: QMessageBoxmetaObjectProc
  metacast*: QMessageBoxmetacastProc
  metacall*: QMessageBoxmetacallProc
  event*: QMessageBoxeventProc
  resizeEvent*: QMessageBoxresizeEventProc
  showEvent*: QMessageBoxshowEventProc
  closeEvent*: QMessageBoxcloseEventProc
  keyPressEvent*: QMessageBoxkeyPressEventProc
  changeEvent*: QMessageBoxchangeEventProc
  setVisible*: QMessageBoxsetVisibleProc
  sizeHint*: QMessageBoxsizeHintProc
  minimumSizeHint*: QMessageBoxminimumSizeHintProc
  open*: QMessageBoxopenProc
  exec*: QMessageBoxexecProc
  done*: QMessageBoxdoneProc
  accept*: QMessageBoxacceptProc
  reject*: QMessageBoxrejectProc
  contextMenuEvent*: QMessageBoxcontextMenuEventProc
  eventFilter*: QMessageBoxeventFilterProc
  devType*: QMessageBoxdevTypeProc
  heightForWidth*: QMessageBoxheightForWidthProc
  hasHeightForWidth*: QMessageBoxhasHeightForWidthProc
  paintEngine*: QMessageBoxpaintEngineProc
  mousePressEvent*: QMessageBoxmousePressEventProc
  mouseReleaseEvent*: QMessageBoxmouseReleaseEventProc
  mouseDoubleClickEvent*: QMessageBoxmouseDoubleClickEventProc
  mouseMoveEvent*: QMessageBoxmouseMoveEventProc
  wheelEvent*: QMessageBoxwheelEventProc
  keyReleaseEvent*: QMessageBoxkeyReleaseEventProc
  focusInEvent*: QMessageBoxfocusInEventProc
  focusOutEvent*: QMessageBoxfocusOutEventProc
  enterEvent*: QMessageBoxenterEventProc
  leaveEvent*: QMessageBoxleaveEventProc
  paintEvent*: QMessageBoxpaintEventProc
  moveEvent*: QMessageBoxmoveEventProc
  tabletEvent*: QMessageBoxtabletEventProc
  actionEvent*: QMessageBoxactionEventProc
  dragEnterEvent*: QMessageBoxdragEnterEventProc
  dragMoveEvent*: QMessageBoxdragMoveEventProc
  dragLeaveEvent*: QMessageBoxdragLeaveEventProc
  dropEvent*: QMessageBoxdropEventProc
  hideEvent*: QMessageBoxhideEventProc
  nativeEvent*: QMessageBoxnativeEventProc
  metric*: QMessageBoxmetricProc
  initPainter*: QMessageBoxinitPainterProc
  redirected*: QMessageBoxredirectedProc
  sharedPainter*: QMessageBoxsharedPainterProc
  inputMethodEvent*: QMessageBoxinputMethodEventProc
  inputMethodQuery*: QMessageBoxinputMethodQueryProc
  focusNextPrevChild*: QMessageBoxfocusNextPrevChildProc
  timerEvent*: QMessageBoxtimerEventProc
  childEvent*: QMessageBoxchildEventProc
  customEvent*: QMessageBoxcustomEventProc
  connectNotify*: QMessageBoxconnectNotifyProc
  disconnectNotify*: QMessageBoxdisconnectNotifyProc
proc QMessageBoxmetaObject*(self: gen_qmessagebox_types.QMessageBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMessageBox_virtualbase_metaObject(self.h), owned: false)

proc cQMessageBox_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMessageBoxmetacast*(self: gen_qmessagebox_types.QMessageBox, param1: cstring): pointer =
  fcQMessageBox_virtualbase_metacast(self.h, param1)

proc cQMessageBox_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMessageBoxmetacall*(self: gen_qmessagebox_types.QMessageBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQMessageBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQMessageBox_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMessageBoxevent*(self: gen_qmessagebox_types.QMessageBox, e: gen_qcoreevent_types.QEvent): bool =
  fcQMessageBox_virtualbase_event(self.h, e.h)

proc cQMessageBox_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMessageBoxresizeEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QResizeEvent): void =
  fcQMessageBox_virtualbase_resizeEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QMessageBoxshowEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QShowEvent): void =
  fcQMessageBox_virtualbase_showEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QMessageBoxcloseEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QCloseEvent): void =
  fcQMessageBox_virtualbase_closeEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QMessageBoxkeyPressEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QKeyEvent): void =
  fcQMessageBox_virtualbase_keyPressEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QMessageBoxchangeEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qcoreevent_types.QEvent): void =
  fcQMessageBox_virtualbase_changeEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QMessageBoxsetVisible*(self: gen_qmessagebox_types.QMessageBox, visible: bool): void =
  fcQMessageBox_virtualbase_setVisible(self.h, visible)

proc cQMessageBox_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QMessageBoxsizeHint*(self: gen_qmessagebox_types.QMessageBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMessageBox_virtualbase_sizeHint(self.h), owned: true)

proc cQMessageBox_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMessageBoxminimumSizeHint*(self: gen_qmessagebox_types.QMessageBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMessageBox_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQMessageBox_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMessageBoxopen*(self: gen_qmessagebox_types.QMessageBox): void =
  fcQMessageBox_virtualbase_open(self.h)

proc cQMessageBox_vtable_callback_open(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  vtbl[].open(self)

proc QMessageBoxexec*(self: gen_qmessagebox_types.QMessageBox): cint =
  fcQMessageBox_virtualbase_exec(self.h)

proc cQMessageBox_vtable_callback_exec(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QMessageBoxdone*(self: gen_qmessagebox_types.QMessageBox, param1: cint): void =
  fcQMessageBox_virtualbase_done(self.h, param1)

proc cQMessageBox_vtable_callback_done(self: pointer, param1: cint): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = param1
  vtbl[].done(self, slotval1)

proc QMessageBoxaccept*(self: gen_qmessagebox_types.QMessageBox): void =
  fcQMessageBox_virtualbase_accept(self.h)

proc cQMessageBox_vtable_callback_accept(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  vtbl[].accept(self)

proc QMessageBoxreject*(self: gen_qmessagebox_types.QMessageBox): void =
  fcQMessageBox_virtualbase_reject(self.h)

proc cQMessageBox_vtable_callback_reject(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  vtbl[].reject(self)

proc QMessageBoxcontextMenuEvent*(self: gen_qmessagebox_types.QMessageBox, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQMessageBox_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQMessageBox_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QMessageBoxeventFilter*(self: gen_qmessagebox_types.QMessageBox, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQMessageBox_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQMessageBox_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMessageBoxdevType*(self: gen_qmessagebox_types.QMessageBox): cint =
  fcQMessageBox_virtualbase_devType(self.h)

proc cQMessageBox_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QMessageBoxheightForWidth*(self: gen_qmessagebox_types.QMessageBox, param1: cint): cint =
  fcQMessageBox_virtualbase_heightForWidth(self.h, param1)

proc cQMessageBox_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QMessageBoxhasHeightForWidth*(self: gen_qmessagebox_types.QMessageBox): bool =
  fcQMessageBox_virtualbase_hasHeightForWidth(self.h)

proc cQMessageBox_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QMessageBoxpaintEngine*(self: gen_qmessagebox_types.QMessageBox): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQMessageBox_virtualbase_paintEngine(self.h), owned: false)

proc cQMessageBox_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMessageBoxmousePressEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QMouseEvent): void =
  fcQMessageBox_virtualbase_mousePressEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QMessageBoxmouseReleaseEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QMouseEvent): void =
  fcQMessageBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QMessageBoxmouseDoubleClickEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QMouseEvent): void =
  fcQMessageBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QMessageBoxmouseMoveEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QMouseEvent): void =
  fcQMessageBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QMessageBoxwheelEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QWheelEvent): void =
  fcQMessageBox_virtualbase_wheelEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QMessageBoxkeyReleaseEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QKeyEvent): void =
  fcQMessageBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QMessageBoxfocusInEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QFocusEvent): void =
  fcQMessageBox_virtualbase_focusInEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QMessageBoxfocusOutEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QFocusEvent): void =
  fcQMessageBox_virtualbase_focusOutEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QMessageBoxenterEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QEnterEvent): void =
  fcQMessageBox_virtualbase_enterEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QMessageBoxleaveEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qcoreevent_types.QEvent): void =
  fcQMessageBox_virtualbase_leaveEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QMessageBoxpaintEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QPaintEvent): void =
  fcQMessageBox_virtualbase_paintEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QMessageBoxmoveEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QMoveEvent): void =
  fcQMessageBox_virtualbase_moveEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QMessageBoxtabletEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QTabletEvent): void =
  fcQMessageBox_virtualbase_tabletEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QMessageBoxactionEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QActionEvent): void =
  fcQMessageBox_virtualbase_actionEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QMessageBoxdragEnterEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQMessageBox_virtualbase_dragEnterEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QMessageBoxdragMoveEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQMessageBox_virtualbase_dragMoveEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QMessageBoxdragLeaveEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQMessageBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QMessageBoxdropEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QDropEvent): void =
  fcQMessageBox_virtualbase_dropEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QMessageBoxhideEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QHideEvent): void =
  fcQMessageBox_virtualbase_hideEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QMessageBoxnativeEvent*(self: gen_qmessagebox_types.QMessageBox, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQMessageBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQMessageBox_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMessageBoxmetric*(self: gen_qmessagebox_types.QMessageBox, param1: cint): cint =
  fcQMessageBox_virtualbase_metric(self.h, cint(param1))

proc cQMessageBox_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QMessageBoxinitPainter*(self: gen_qmessagebox_types.QMessageBox, painter: gen_qpainter_types.QPainter): void =
  fcQMessageBox_virtualbase_initPainter(self.h, painter.h)

proc cQMessageBox_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QMessageBoxredirected*(self: gen_qmessagebox_types.QMessageBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQMessageBox_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQMessageBox_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMessageBoxsharedPainter*(self: gen_qmessagebox_types.QMessageBox): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQMessageBox_virtualbase_sharedPainter(self.h), owned: false)

proc cQMessageBox_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMessageBoxinputMethodEvent*(self: gen_qmessagebox_types.QMessageBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQMessageBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQMessageBox_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QMessageBoxinputMethodQuery*(self: gen_qmessagebox_types.QMessageBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQMessageBox_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQMessageBox_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMessageBoxfocusNextPrevChild*(self: gen_qmessagebox_types.QMessageBox, next: bool): bool =
  fcQMessageBox_virtualbase_focusNextPrevChild(self.h, next)

proc cQMessageBox_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QMessageBoxtimerEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMessageBox_virtualbase_timerEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QMessageBoxchildEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMessageBox_virtualbase_childEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QMessageBoxcustomEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qcoreevent_types.QEvent): void =
  fcQMessageBox_virtualbase_customEvent(self.h, event.h)

proc cQMessageBox_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QMessageBoxconnectNotify*(self: gen_qmessagebox_types.QMessageBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMessageBox_virtualbase_connectNotify(self.h, signal.h)

proc cQMessageBox_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QMessageBoxdisconnectNotify*(self: gen_qmessagebox_types.QMessageBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMessageBox_virtualbase_disconnectNotify(self.h, signal.h)

proc cQMessageBox_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMessageBoxVTable](fcQMessageBox_vdata(self))
  let self = QMessageBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMessageBox* {.inheritable.} = ref object of QMessageBox
  vtbl*: cQMessageBoxVTable
method metaObject*(self: VirtualQMessageBox): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMessageBoxmetaObject(self[])
proc cQMessageBox_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQMessageBox, param1: cstring): pointer {.base.} =
  QMessageBoxmetacast(self[], param1)
proc cQMessageBox_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQMessageBox, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMessageBoxmetacall(self[], param1, param2, param3)
proc cQMessageBox_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQMessageBox, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMessageBoxevent(self[], e)
proc cQMessageBox_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method resizeEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QMessageBoxresizeEvent(self[], event)
proc cQMessageBox_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method showEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QShowEvent): void {.base.} =
  QMessageBoxshowEvent(self[], event)
proc cQMessageBox_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method closeEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QMessageBoxcloseEvent(self[], event)
proc cQMessageBox_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method keyPressEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QMessageBoxkeyPressEvent(self[], event)
proc cQMessageBox_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method changeEvent*(self: VirtualQMessageBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMessageBoxchangeEvent(self[], event)
proc cQMessageBox_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

method setVisible*(self: VirtualQMessageBox, visible: bool): void {.base.} =
  QMessageBoxsetVisible(self[], visible)
proc cQMessageBox_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQMessageBox): gen_qsize_types.QSize {.base.} =
  QMessageBoxsizeHint(self[])
proc cQMessageBox_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQMessageBox): gen_qsize_types.QSize {.base.} =
  QMessageBoxminimumSizeHint(self[])
proc cQMessageBox_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method open*(self: VirtualQMessageBox): void {.base.} =
  QMessageBoxopen(self[])
proc cQMessageBox_method_callback_open(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  inst.open()

method exec*(self: VirtualQMessageBox): cint {.base.} =
  QMessageBoxexec(self[])
proc cQMessageBox_method_callback_exec(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  var virtualReturn = inst.exec()
  virtualReturn

method done*(self: VirtualQMessageBox, param1: cint): void {.base.} =
  QMessageBoxdone(self[], param1)
proc cQMessageBox_method_callback_done(self: pointer, param1: cint): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = param1
  inst.done(slotval1)

method accept*(self: VirtualQMessageBox): void {.base.} =
  QMessageBoxaccept(self[])
proc cQMessageBox_method_callback_accept(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  inst.accept()

method reject*(self: VirtualQMessageBox): void {.base.} =
  QMessageBoxreject(self[])
proc cQMessageBox_method_callback_reject(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  inst.reject()

method contextMenuEvent*(self: VirtualQMessageBox, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QMessageBoxcontextMenuEvent(self[], param1)
proc cQMessageBox_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method eventFilter*(self: VirtualQMessageBox, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMessageBoxeventFilter(self[], param1, param2)
proc cQMessageBox_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method devType*(self: VirtualQMessageBox): cint {.base.} =
  QMessageBoxdevType(self[])
proc cQMessageBox_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method heightForWidth*(self: VirtualQMessageBox, param1: cint): cint {.base.} =
  QMessageBoxheightForWidth(self[], param1)
proc cQMessageBox_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQMessageBox): bool {.base.} =
  QMessageBoxhasHeightForWidth(self[])
proc cQMessageBox_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQMessageBox): gen_qpaintengine_types.QPaintEngine {.base.} =
  QMessageBoxpaintEngine(self[])
proc cQMessageBox_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QMessageBoxmousePressEvent(self[], event)
proc cQMessageBox_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QMessageBoxmouseReleaseEvent(self[], event)
proc cQMessageBox_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QMessageBoxmouseDoubleClickEvent(self[], event)
proc cQMessageBox_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QMessageBoxmouseMoveEvent(self[], event)
proc cQMessageBox_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QMessageBoxwheelEvent(self[], event)
proc cQMessageBox_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QMessageBoxkeyReleaseEvent(self[], event)
proc cQMessageBox_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QMessageBoxfocusInEvent(self[], event)
proc cQMessageBox_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QMessageBoxfocusOutEvent(self[], event)
proc cQMessageBox_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QMessageBoxenterEvent(self[], event)
proc cQMessageBox_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQMessageBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMessageBoxleaveEvent(self[], event)
proc cQMessageBox_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QMessageBoxpaintEvent(self[], event)
proc cQMessageBox_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QMessageBoxmoveEvent(self[], event)
proc cQMessageBox_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QMessageBoxtabletEvent(self[], event)
proc cQMessageBox_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QActionEvent): void {.base.} =
  QMessageBoxactionEvent(self[], event)
proc cQMessageBox_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QMessageBoxdragEnterEvent(self[], event)
proc cQMessageBox_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QMessageBoxdragMoveEvent(self[], event)
proc cQMessageBox_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QMessageBoxdragLeaveEvent(self[], event)
proc cQMessageBox_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QDropEvent): void {.base.} =
  QMessageBoxdropEvent(self[], event)
proc cQMessageBox_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method hideEvent*(self: VirtualQMessageBox, event: gen_qevent_types.QHideEvent): void {.base.} =
  QMessageBoxhideEvent(self[], event)
proc cQMessageBox_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQMessageBox, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QMessageBoxnativeEvent(self[], eventType, message, resultVal)
proc cQMessageBox_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQMessageBox, param1: cint): cint {.base.} =
  QMessageBoxmetric(self[], param1)
proc cQMessageBox_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQMessageBox, painter: gen_qpainter_types.QPainter): void {.base.} =
  QMessageBoxinitPainter(self[], painter)
proc cQMessageBox_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQMessageBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QMessageBoxredirected(self[], offset)
proc cQMessageBox_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQMessageBox): gen_qpainter_types.QPainter {.base.} =
  QMessageBoxsharedPainter(self[])
proc cQMessageBox_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQMessageBox, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QMessageBoxinputMethodEvent(self[], param1)
proc cQMessageBox_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQMessageBox, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QMessageBoxinputMethodQuery(self[], param1)
proc cQMessageBox_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQMessageBox, next: bool): bool {.base.} =
  QMessageBoxfocusNextPrevChild(self[], next)
proc cQMessageBox_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQMessageBox, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMessageBoxtimerEvent(self[], event)
proc cQMessageBox_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQMessageBox, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMessageBoxchildEvent(self[], event)
proc cQMessageBox_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQMessageBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMessageBoxcustomEvent(self[], event)
proc cQMessageBox_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQMessageBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMessageBoxconnectNotify(self[], signal)
proc cQMessageBox_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQMessageBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMessageBoxdisconnectNotify(self[], signal)
proc cQMessageBox_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMessageBox](fcQMessageBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc adjustPosition*(self: gen_qmessagebox_types.QMessageBox, param1: gen_qwidget_types.QWidget): void =
  fcQMessageBox_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qmessagebox_types.QMessageBox): void =
  fcQMessageBox_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qmessagebox_types.QMessageBox): void =
  fcQMessageBox_protectedbase_create(self.h)

proc destroy*(self: gen_qmessagebox_types.QMessageBox): void =
  fcQMessageBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qmessagebox_types.QMessageBox): bool =
  fcQMessageBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qmessagebox_types.QMessageBox): bool =
  fcQMessageBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qmessagebox_types.QMessageBox): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMessageBox_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmessagebox_types.QMessageBox): cint =
  fcQMessageBox_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmessagebox_types.QMessageBox, signal: cstring): cint =
  fcQMessageBox_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmessagebox_types.QMessageBox, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMessageBox_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QMessageBoxVTable = nil): gen_qmessagebox_types.QMessageBox =
  let vtbl = if vtbl == nil: new QMessageBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMessageBoxVTable](fcQMessageBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMessageBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMessageBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMessageBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMessageBox_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMessageBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMessageBox_vtable_callback_showEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMessageBox_vtable_callback_closeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMessageBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMessageBox_vtable_callback_changeEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMessageBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMessageBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMessageBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQMessageBox_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQMessageBox_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQMessageBox_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQMessageBox_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQMessageBox_vtable_callback_reject
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMessageBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMessageBox_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMessageBox_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMessageBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMessageBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMessageBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMessageBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMessageBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMessageBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMessageBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMessageBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMessageBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMessageBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMessageBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMessageBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMessageBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMessageBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMessageBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMessageBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMessageBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMessageBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMessageBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMessageBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMessageBox_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMessageBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMessageBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMessageBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMessageBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMessageBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMessageBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMessageBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMessageBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMessageBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMessageBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMessageBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMessageBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMessageBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMessageBox_vtable_callback_disconnectNotify
  gen_qmessagebox_types.QMessageBox(h: fcQMessageBox_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    vtbl: ref QMessageBoxVTable = nil): gen_qmessagebox_types.QMessageBox =
  let vtbl = if vtbl == nil: new QMessageBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMessageBoxVTable](fcQMessageBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMessageBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMessageBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMessageBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMessageBox_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMessageBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMessageBox_vtable_callback_showEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMessageBox_vtable_callback_closeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMessageBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMessageBox_vtable_callback_changeEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMessageBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMessageBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMessageBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQMessageBox_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQMessageBox_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQMessageBox_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQMessageBox_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQMessageBox_vtable_callback_reject
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMessageBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMessageBox_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMessageBox_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMessageBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMessageBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMessageBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMessageBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMessageBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMessageBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMessageBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMessageBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMessageBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMessageBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMessageBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMessageBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMessageBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMessageBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMessageBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMessageBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMessageBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMessageBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMessageBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMessageBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMessageBox_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMessageBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMessageBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMessageBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMessageBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMessageBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMessageBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMessageBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMessageBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMessageBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMessageBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMessageBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMessageBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMessageBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMessageBox_vtable_callback_disconnectNotify
  gen_qmessagebox_types.QMessageBox(h: fcQMessageBox_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    icon: cint, title: openArray[char], text: openArray[char],
    vtbl: ref QMessageBoxVTable = nil): gen_qmessagebox_types.QMessageBox =
  let vtbl = if vtbl == nil: new QMessageBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMessageBoxVTable](fcQMessageBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMessageBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMessageBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMessageBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMessageBox_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMessageBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMessageBox_vtable_callback_showEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMessageBox_vtable_callback_closeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMessageBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMessageBox_vtable_callback_changeEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMessageBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMessageBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMessageBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQMessageBox_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQMessageBox_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQMessageBox_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQMessageBox_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQMessageBox_vtable_callback_reject
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMessageBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMessageBox_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMessageBox_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMessageBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMessageBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMessageBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMessageBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMessageBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMessageBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMessageBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMessageBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMessageBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMessageBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMessageBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMessageBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMessageBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMessageBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMessageBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMessageBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMessageBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMessageBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMessageBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMessageBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMessageBox_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMessageBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMessageBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMessageBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMessageBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMessageBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMessageBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMessageBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMessageBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMessageBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMessageBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMessageBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMessageBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMessageBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMessageBox_vtable_callback_disconnectNotify
  gen_qmessagebox_types.QMessageBox(h: fcQMessageBox_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(icon), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    title: openArray[char], text: openArray[char], icon: cint, button0: cint, button1: cint, button2: cint,
    vtbl: ref QMessageBoxVTable = nil): gen_qmessagebox_types.QMessageBox =
  let vtbl = if vtbl == nil: new QMessageBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMessageBoxVTable](fcQMessageBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMessageBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMessageBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMessageBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMessageBox_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMessageBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMessageBox_vtable_callback_showEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMessageBox_vtable_callback_closeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMessageBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMessageBox_vtable_callback_changeEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMessageBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMessageBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMessageBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQMessageBox_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQMessageBox_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQMessageBox_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQMessageBox_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQMessageBox_vtable_callback_reject
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMessageBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMessageBox_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMessageBox_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMessageBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMessageBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMessageBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMessageBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMessageBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMessageBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMessageBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMessageBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMessageBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMessageBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMessageBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMessageBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMessageBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMessageBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMessageBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMessageBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMessageBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMessageBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMessageBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMessageBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMessageBox_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMessageBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMessageBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMessageBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMessageBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMessageBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMessageBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMessageBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMessageBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMessageBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMessageBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMessageBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMessageBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMessageBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMessageBox_vtable_callback_disconnectNotify
  gen_qmessagebox_types.QMessageBox(h: fcQMessageBox_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(icon), button0, button1, button2), owned: true)

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    icon: cint, title: openArray[char], text: openArray[char], buttons: cint,
    vtbl: ref QMessageBoxVTable = nil): gen_qmessagebox_types.QMessageBox =
  let vtbl = if vtbl == nil: new QMessageBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMessageBoxVTable](fcQMessageBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMessageBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMessageBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMessageBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMessageBox_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMessageBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMessageBox_vtable_callback_showEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMessageBox_vtable_callback_closeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMessageBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMessageBox_vtable_callback_changeEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMessageBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMessageBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMessageBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQMessageBox_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQMessageBox_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQMessageBox_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQMessageBox_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQMessageBox_vtable_callback_reject
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMessageBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMessageBox_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMessageBox_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMessageBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMessageBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMessageBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMessageBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMessageBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMessageBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMessageBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMessageBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMessageBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMessageBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMessageBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMessageBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMessageBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMessageBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMessageBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMessageBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMessageBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMessageBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMessageBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMessageBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMessageBox_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMessageBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMessageBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMessageBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMessageBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMessageBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMessageBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMessageBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMessageBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMessageBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMessageBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMessageBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMessageBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMessageBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMessageBox_vtable_callback_disconnectNotify
  gen_qmessagebox_types.QMessageBox(h: fcQMessageBox_new5(addr(vtbl[].vtbl), addr(vtbl[]), cint(icon), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons)), owned: true)

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    icon: cint, title: openArray[char], text: openArray[char], buttons: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QMessageBoxVTable = nil): gen_qmessagebox_types.QMessageBox =
  let vtbl = if vtbl == nil: new QMessageBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMessageBoxVTable](fcQMessageBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMessageBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMessageBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMessageBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMessageBox_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMessageBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMessageBox_vtable_callback_showEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMessageBox_vtable_callback_closeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMessageBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMessageBox_vtable_callback_changeEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMessageBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMessageBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMessageBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQMessageBox_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQMessageBox_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQMessageBox_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQMessageBox_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQMessageBox_vtable_callback_reject
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMessageBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMessageBox_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMessageBox_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMessageBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMessageBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMessageBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMessageBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMessageBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMessageBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMessageBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMessageBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMessageBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMessageBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMessageBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMessageBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMessageBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMessageBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMessageBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMessageBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMessageBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMessageBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMessageBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMessageBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMessageBox_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMessageBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMessageBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMessageBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMessageBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMessageBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMessageBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMessageBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMessageBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMessageBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMessageBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMessageBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMessageBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMessageBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMessageBox_vtable_callback_disconnectNotify
  gen_qmessagebox_types.QMessageBox(h: fcQMessageBox_new6(addr(vtbl[].vtbl), addr(vtbl[]), cint(icon), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons), parent.h), owned: true)

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    icon: cint, title: openArray[char], text: openArray[char], buttons: cint, parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QMessageBoxVTable = nil): gen_qmessagebox_types.QMessageBox =
  let vtbl = if vtbl == nil: new QMessageBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMessageBoxVTable](fcQMessageBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMessageBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMessageBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMessageBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMessageBox_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMessageBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMessageBox_vtable_callback_showEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMessageBox_vtable_callback_closeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMessageBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMessageBox_vtable_callback_changeEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMessageBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMessageBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMessageBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQMessageBox_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQMessageBox_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQMessageBox_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQMessageBox_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQMessageBox_vtable_callback_reject
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMessageBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMessageBox_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMessageBox_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMessageBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMessageBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMessageBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMessageBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMessageBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMessageBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMessageBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMessageBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMessageBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMessageBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMessageBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMessageBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMessageBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMessageBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMessageBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMessageBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMessageBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMessageBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMessageBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMessageBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMessageBox_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMessageBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMessageBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMessageBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMessageBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMessageBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMessageBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMessageBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMessageBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMessageBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMessageBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMessageBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMessageBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMessageBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMessageBox_vtable_callback_disconnectNotify
  gen_qmessagebox_types.QMessageBox(h: fcQMessageBox_new7(addr(vtbl[].vtbl), addr(vtbl[]), cint(icon), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons), parent.h, cint(flags)), owned: true)

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    title: openArray[char], text: openArray[char], icon: cint, button0: cint, button1: cint, button2: cint, parent: gen_qwidget_types.QWidget,
    vtbl: ref QMessageBoxVTable = nil): gen_qmessagebox_types.QMessageBox =
  let vtbl = if vtbl == nil: new QMessageBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMessageBoxVTable](fcQMessageBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMessageBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMessageBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMessageBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMessageBox_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMessageBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMessageBox_vtable_callback_showEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMessageBox_vtable_callback_closeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMessageBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMessageBox_vtable_callback_changeEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMessageBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMessageBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMessageBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQMessageBox_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQMessageBox_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQMessageBox_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQMessageBox_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQMessageBox_vtable_callback_reject
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMessageBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMessageBox_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMessageBox_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMessageBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMessageBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMessageBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMessageBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMessageBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMessageBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMessageBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMessageBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMessageBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMessageBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMessageBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMessageBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMessageBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMessageBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMessageBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMessageBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMessageBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMessageBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMessageBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMessageBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMessageBox_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMessageBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMessageBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMessageBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMessageBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMessageBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMessageBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMessageBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMessageBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMessageBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMessageBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMessageBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMessageBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMessageBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMessageBox_vtable_callback_disconnectNotify
  gen_qmessagebox_types.QMessageBox(h: fcQMessageBox_new8(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(icon), button0, button1, button2, parent.h), owned: true)

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    title: openArray[char], text: openArray[char], icon: cint, button0: cint, button1: cint, button2: cint, parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QMessageBoxVTable = nil): gen_qmessagebox_types.QMessageBox =
  let vtbl = if vtbl == nil: new QMessageBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMessageBoxVTable](fcQMessageBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMessageBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMessageBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMessageBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMessageBox_vtable_callback_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQMessageBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQMessageBox_vtable_callback_showEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQMessageBox_vtable_callback_closeEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQMessageBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQMessageBox_vtable_callback_changeEvent
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQMessageBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQMessageBox_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQMessageBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQMessageBox_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQMessageBox_vtable_callback_exec
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQMessageBox_vtable_callback_done
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQMessageBox_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQMessageBox_vtable_callback_reject
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQMessageBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMessageBox_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQMessageBox_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQMessageBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQMessageBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQMessageBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQMessageBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQMessageBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQMessageBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQMessageBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQMessageBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQMessageBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQMessageBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQMessageBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQMessageBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQMessageBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQMessageBox_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQMessageBox_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQMessageBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQMessageBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQMessageBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQMessageBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQMessageBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQMessageBox_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQMessageBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQMessageBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQMessageBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQMessageBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQMessageBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQMessageBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQMessageBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQMessageBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQMessageBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMessageBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMessageBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMessageBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMessageBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMessageBox_vtable_callback_disconnectNotify
  gen_qmessagebox_types.QMessageBox(h: fcQMessageBox_new9(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(icon), button0, button1, button2, parent.h, cint(f)), owned: true)

const cQMessageBox_mvtbl = cQMessageBoxVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMessageBox()[])](self.fcQMessageBox_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQMessageBox_method_callback_metaObject,
  metacast: cQMessageBox_method_callback_metacast,
  metacall: cQMessageBox_method_callback_metacall,
  event: cQMessageBox_method_callback_event,
  resizeEvent: cQMessageBox_method_callback_resizeEvent,
  showEvent: cQMessageBox_method_callback_showEvent,
  closeEvent: cQMessageBox_method_callback_closeEvent,
  keyPressEvent: cQMessageBox_method_callback_keyPressEvent,
  changeEvent: cQMessageBox_method_callback_changeEvent,
  setVisible: cQMessageBox_method_callback_setVisible,
  sizeHint: cQMessageBox_method_callback_sizeHint,
  minimumSizeHint: cQMessageBox_method_callback_minimumSizeHint,
  open: cQMessageBox_method_callback_open,
  exec: cQMessageBox_method_callback_exec,
  done: cQMessageBox_method_callback_done,
  accept: cQMessageBox_method_callback_accept,
  reject: cQMessageBox_method_callback_reject,
  contextMenuEvent: cQMessageBox_method_callback_contextMenuEvent,
  eventFilter: cQMessageBox_method_callback_eventFilter,
  devType: cQMessageBox_method_callback_devType,
  heightForWidth: cQMessageBox_method_callback_heightForWidth,
  hasHeightForWidth: cQMessageBox_method_callback_hasHeightForWidth,
  paintEngine: cQMessageBox_method_callback_paintEngine,
  mousePressEvent: cQMessageBox_method_callback_mousePressEvent,
  mouseReleaseEvent: cQMessageBox_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQMessageBox_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQMessageBox_method_callback_mouseMoveEvent,
  wheelEvent: cQMessageBox_method_callback_wheelEvent,
  keyReleaseEvent: cQMessageBox_method_callback_keyReleaseEvent,
  focusInEvent: cQMessageBox_method_callback_focusInEvent,
  focusOutEvent: cQMessageBox_method_callback_focusOutEvent,
  enterEvent: cQMessageBox_method_callback_enterEvent,
  leaveEvent: cQMessageBox_method_callback_leaveEvent,
  paintEvent: cQMessageBox_method_callback_paintEvent,
  moveEvent: cQMessageBox_method_callback_moveEvent,
  tabletEvent: cQMessageBox_method_callback_tabletEvent,
  actionEvent: cQMessageBox_method_callback_actionEvent,
  dragEnterEvent: cQMessageBox_method_callback_dragEnterEvent,
  dragMoveEvent: cQMessageBox_method_callback_dragMoveEvent,
  dragLeaveEvent: cQMessageBox_method_callback_dragLeaveEvent,
  dropEvent: cQMessageBox_method_callback_dropEvent,
  hideEvent: cQMessageBox_method_callback_hideEvent,
  nativeEvent: cQMessageBox_method_callback_nativeEvent,
  metric: cQMessageBox_method_callback_metric,
  initPainter: cQMessageBox_method_callback_initPainter,
  redirected: cQMessageBox_method_callback_redirected,
  sharedPainter: cQMessageBox_method_callback_sharedPainter,
  inputMethodEvent: cQMessageBox_method_callback_inputMethodEvent,
  inputMethodQuery: cQMessageBox_method_callback_inputMethodQuery,
  focusNextPrevChild: cQMessageBox_method_callback_focusNextPrevChild,
  timerEvent: cQMessageBox_method_callback_timerEvent,
  childEvent: cQMessageBox_method_callback_childEvent,
  customEvent: cQMessageBox_method_callback_customEvent,
  connectNotify: cQMessageBox_method_callback_connectNotify,
  disconnectNotify: cQMessageBox_method_callback_disconnectNotify,
)
proc create*(T: type gen_qmessagebox_types.QMessageBox,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQMessageBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMessageBox_new(addr(cQMessageBox_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    inst: VirtualQMessageBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMessageBox_new2(addr(cQMessageBox_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    icon: cint, title: openArray[char], text: openArray[char],
    inst: VirtualQMessageBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMessageBox_new3(addr(cQMessageBox_mvtbl), addr(inst[]), cint(icon), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    title: openArray[char], text: openArray[char], icon: cint, button0: cint, button1: cint, button2: cint,
    inst: VirtualQMessageBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMessageBox_new4(addr(cQMessageBox_mvtbl), addr(inst[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(icon), button0, button1, button2)
  inst[].owned = true

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    icon: cint, title: openArray[char], text: openArray[char], buttons: cint,
    inst: VirtualQMessageBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMessageBox_new5(addr(cQMessageBox_mvtbl), addr(inst[]), cint(icon), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons))
  inst[].owned = true

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    icon: cint, title: openArray[char], text: openArray[char], buttons: cint, parent: gen_qwidget_types.QWidget,
    inst: VirtualQMessageBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMessageBox_new6(addr(cQMessageBox_mvtbl), addr(inst[]), cint(icon), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons), parent.h)
  inst[].owned = true

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    icon: cint, title: openArray[char], text: openArray[char], buttons: cint, parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQMessageBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMessageBox_new7(addr(cQMessageBox_mvtbl), addr(inst[]), cint(icon), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(buttons), parent.h, cint(flags))
  inst[].owned = true

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    title: openArray[char], text: openArray[char], icon: cint, button0: cint, button1: cint, button2: cint, parent: gen_qwidget_types.QWidget,
    inst: VirtualQMessageBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMessageBox_new8(addr(cQMessageBox_mvtbl), addr(inst[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(icon), button0, button1, button2, parent.h)
  inst[].owned = true

proc create*(T: type gen_qmessagebox_types.QMessageBox,
    title: openArray[char], text: openArray[char], icon: cint, button0: cint, button1: cint, button2: cint, parent: gen_qwidget_types.QWidget, f: cint,
    inst: VirtualQMessageBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMessageBox_new9(addr(cQMessageBox_mvtbl), addr(inst[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), cint(icon), button0, button1, button2, parent.h, cint(f))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qmessagebox_types.QMessageBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMessageBox_staticMetaObject())
