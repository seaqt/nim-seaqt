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
{.compile("gen_qmessagebox.cpp", cflags).}


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

proc fcQMessageBox_new(parent: pointer): ptr cQMessageBox {.importc: "QMessageBox_new".}
proc fcQMessageBox_new2(): ptr cQMessageBox {.importc: "QMessageBox_new2".}
proc fcQMessageBox_new3(icon: cint, title: struct_miqt_string, text: struct_miqt_string): ptr cQMessageBox {.importc: "QMessageBox_new3".}
proc fcQMessageBox_new4(title: struct_miqt_string, text: struct_miqt_string, icon: cint, button0: cint, button1: cint, button2: cint): ptr cQMessageBox {.importc: "QMessageBox_new4".}
proc fcQMessageBox_new5(icon: cint, title: struct_miqt_string, text: struct_miqt_string, buttons: cint): ptr cQMessageBox {.importc: "QMessageBox_new5".}
proc fcQMessageBox_new6(icon: cint, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, parent: pointer): ptr cQMessageBox {.importc: "QMessageBox_new6".}
proc fcQMessageBox_new7(icon: cint, title: struct_miqt_string, text: struct_miqt_string, buttons: cint, parent: pointer, flags: cint): ptr cQMessageBox {.importc: "QMessageBox_new7".}
proc fcQMessageBox_new8(title: struct_miqt_string, text: struct_miqt_string, icon: cint, button0: cint, button1: cint, button2: cint, parent: pointer): ptr cQMessageBox {.importc: "QMessageBox_new8".}
proc fcQMessageBox_new9(title: struct_miqt_string, text: struct_miqt_string, icon: cint, button0: cint, button1: cint, button2: cint, parent: pointer, f: cint): ptr cQMessageBox {.importc: "QMessageBox_new9".}
proc fcQMessageBox_metaObject(self: pointer, ): pointer {.importc: "QMessageBox_metaObject".}
proc fcQMessageBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QMessageBox_metacast".}
proc fcQMessageBox_tr(s: cstring): struct_miqt_string {.importc: "QMessageBox_tr".}
proc fcQMessageBox_addButton(self: pointer, button: pointer, role: cint): void {.importc: "QMessageBox_addButton".}
proc fcQMessageBox_addButton2(self: pointer, text: struct_miqt_string, role: cint): pointer {.importc: "QMessageBox_addButton2".}
proc fcQMessageBox_addButtonWithButton(self: pointer, button: cint): pointer {.importc: "QMessageBox_addButtonWithButton".}
proc fcQMessageBox_removeButton(self: pointer, button: pointer): void {.importc: "QMessageBox_removeButton".}
proc fcQMessageBox_buttons(self: pointer, ): struct_miqt_array {.importc: "QMessageBox_buttons".}
proc fcQMessageBox_buttonRole(self: pointer, button: pointer): cint {.importc: "QMessageBox_buttonRole".}
proc fcQMessageBox_setStandardButtons(self: pointer, buttons: cint): void {.importc: "QMessageBox_setStandardButtons".}
proc fcQMessageBox_standardButtons(self: pointer, ): cint {.importc: "QMessageBox_standardButtons".}
proc fcQMessageBox_standardButton(self: pointer, button: pointer): cint {.importc: "QMessageBox_standardButton".}
proc fcQMessageBox_button(self: pointer, which: cint): pointer {.importc: "QMessageBox_button".}
proc fcQMessageBox_defaultButton(self: pointer, ): pointer {.importc: "QMessageBox_defaultButton".}
proc fcQMessageBox_setDefaultButton(self: pointer, button: pointer): void {.importc: "QMessageBox_setDefaultButton".}
proc fcQMessageBox_setDefaultButtonWithButton(self: pointer, button: cint): void {.importc: "QMessageBox_setDefaultButtonWithButton".}
proc fcQMessageBox_escapeButton(self: pointer, ): pointer {.importc: "QMessageBox_escapeButton".}
proc fcQMessageBox_setEscapeButton(self: pointer, button: pointer): void {.importc: "QMessageBox_setEscapeButton".}
proc fcQMessageBox_setEscapeButtonWithButton(self: pointer, button: cint): void {.importc: "QMessageBox_setEscapeButtonWithButton".}
proc fcQMessageBox_clickedButton(self: pointer, ): pointer {.importc: "QMessageBox_clickedButton".}
proc fcQMessageBox_text(self: pointer, ): struct_miqt_string {.importc: "QMessageBox_text".}
proc fcQMessageBox_setText(self: pointer, text: struct_miqt_string): void {.importc: "QMessageBox_setText".}
proc fcQMessageBox_icon(self: pointer, ): cint {.importc: "QMessageBox_icon".}
proc fcQMessageBox_setIcon(self: pointer, icon: cint): void {.importc: "QMessageBox_setIcon".}
proc fcQMessageBox_iconPixmap(self: pointer, ): pointer {.importc: "QMessageBox_iconPixmap".}
proc fcQMessageBox_setIconPixmap(self: pointer, pixmap: pointer): void {.importc: "QMessageBox_setIconPixmap".}
proc fcQMessageBox_textFormat(self: pointer, ): cint {.importc: "QMessageBox_textFormat".}
proc fcQMessageBox_setTextFormat(self: pointer, format: cint): void {.importc: "QMessageBox_setTextFormat".}
proc fcQMessageBox_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QMessageBox_setTextInteractionFlags".}
proc fcQMessageBox_textInteractionFlags(self: pointer, ): cint {.importc: "QMessageBox_textInteractionFlags".}
proc fcQMessageBox_setCheckBox(self: pointer, cb: pointer): void {.importc: "QMessageBox_setCheckBox".}
proc fcQMessageBox_checkBox(self: pointer, ): pointer {.importc: "QMessageBox_checkBox".}
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
proc fcQMessageBox_informativeText(self: pointer, ): struct_miqt_string {.importc: "QMessageBox_informativeText".}
proc fcQMessageBox_setInformativeText(self: pointer, text: struct_miqt_string): void {.importc: "QMessageBox_setInformativeText".}
proc fcQMessageBox_detailedText(self: pointer, ): struct_miqt_string {.importc: "QMessageBox_detailedText".}
proc fcQMessageBox_setDetailedText(self: pointer, text: struct_miqt_string): void {.importc: "QMessageBox_setDetailedText".}
proc fcQMessageBox_setWindowTitle(self: pointer, title: struct_miqt_string): void {.importc: "QMessageBox_setWindowTitle".}
proc fcQMessageBox_setWindowModality(self: pointer, windowModality: cint): void {.importc: "QMessageBox_setWindowModality".}
proc fcQMessageBox_standardIcon(icon: cint): pointer {.importc: "QMessageBox_standardIcon".}
proc fcQMessageBox_buttonClicked(self: pointer, button: pointer): void {.importc: "QMessageBox_buttonClicked".}
proc fcQMessageBox_connect_buttonClicked(self: pointer, slot: int) {.importc: "QMessageBox_connect_buttonClicked".}
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
proc fQMessageBox_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QMessageBox_virtualbase_event".}
proc fcQMessageBox_override_virtual_event(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_event".}
proc fQMessageBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_resizeEvent".}
proc fcQMessageBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_resizeEvent".}
proc fQMessageBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_showEvent".}
proc fcQMessageBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_showEvent".}
proc fQMessageBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_closeEvent".}
proc fcQMessageBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_closeEvent".}
proc fQMessageBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_keyPressEvent".}
proc fcQMessageBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_keyPressEvent".}
proc fQMessageBox_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_changeEvent".}
proc fcQMessageBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_changeEvent".}
proc fQMessageBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QMessageBox_virtualbase_setVisible".}
proc fcQMessageBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_setVisible".}
proc fQMessageBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QMessageBox_virtualbase_sizeHint".}
proc fcQMessageBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_sizeHint".}
proc fQMessageBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QMessageBox_virtualbase_minimumSizeHint".}
proc fcQMessageBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_minimumSizeHint".}
proc fQMessageBox_virtualbase_open(self: pointer, ): void{.importc: "QMessageBox_virtualbase_open".}
proc fcQMessageBox_override_virtual_open(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_open".}
proc fQMessageBox_virtualbase_exec(self: pointer, ): cint{.importc: "QMessageBox_virtualbase_exec".}
proc fcQMessageBox_override_virtual_exec(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_exec".}
proc fQMessageBox_virtualbase_done(self: pointer, param1: cint): void{.importc: "QMessageBox_virtualbase_done".}
proc fcQMessageBox_override_virtual_done(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_done".}
proc fQMessageBox_virtualbase_accept(self: pointer, ): void{.importc: "QMessageBox_virtualbase_accept".}
proc fcQMessageBox_override_virtual_accept(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_accept".}
proc fQMessageBox_virtualbase_reject(self: pointer, ): void{.importc: "QMessageBox_virtualbase_reject".}
proc fcQMessageBox_override_virtual_reject(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_reject".}
proc fQMessageBox_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QMessageBox_virtualbase_contextMenuEvent".}
proc fcQMessageBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_contextMenuEvent".}
proc fQMessageBox_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QMessageBox_virtualbase_eventFilter".}
proc fcQMessageBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_eventFilter".}
proc fQMessageBox_virtualbase_devType(self: pointer, ): cint{.importc: "QMessageBox_virtualbase_devType".}
proc fcQMessageBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_devType".}
proc fQMessageBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QMessageBox_virtualbase_heightForWidth".}
proc fcQMessageBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_heightForWidth".}
proc fQMessageBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QMessageBox_virtualbase_hasHeightForWidth".}
proc fcQMessageBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_hasHeightForWidth".}
proc fQMessageBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QMessageBox_virtualbase_paintEngine".}
proc fcQMessageBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_paintEngine".}
proc fQMessageBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_mousePressEvent".}
proc fcQMessageBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_mousePressEvent".}
proc fQMessageBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_mouseReleaseEvent".}
proc fcQMessageBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_mouseReleaseEvent".}
proc fQMessageBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_mouseDoubleClickEvent".}
proc fcQMessageBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_mouseDoubleClickEvent".}
proc fQMessageBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_mouseMoveEvent".}
proc fcQMessageBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_mouseMoveEvent".}
proc fQMessageBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_wheelEvent".}
proc fcQMessageBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_wheelEvent".}
proc fQMessageBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_keyReleaseEvent".}
proc fcQMessageBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_keyReleaseEvent".}
proc fQMessageBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_focusInEvent".}
proc fcQMessageBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_focusInEvent".}
proc fQMessageBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_focusOutEvent".}
proc fcQMessageBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_focusOutEvent".}
proc fQMessageBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_enterEvent".}
proc fcQMessageBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_enterEvent".}
proc fQMessageBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_leaveEvent".}
proc fcQMessageBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_leaveEvent".}
proc fQMessageBox_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_paintEvent".}
proc fcQMessageBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_paintEvent".}
proc fQMessageBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_moveEvent".}
proc fcQMessageBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_moveEvent".}
proc fQMessageBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_tabletEvent".}
proc fcQMessageBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_tabletEvent".}
proc fQMessageBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_actionEvent".}
proc fcQMessageBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_actionEvent".}
proc fQMessageBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_dragEnterEvent".}
proc fcQMessageBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_dragEnterEvent".}
proc fQMessageBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_dragMoveEvent".}
proc fcQMessageBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_dragMoveEvent".}
proc fQMessageBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_dragLeaveEvent".}
proc fcQMessageBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_dragLeaveEvent".}
proc fQMessageBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_dropEvent".}
proc fcQMessageBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_dropEvent".}
proc fQMessageBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_hideEvent".}
proc fcQMessageBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_hideEvent".}
proc fQMessageBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QMessageBox_virtualbase_nativeEvent".}
proc fcQMessageBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_nativeEvent".}
proc fQMessageBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QMessageBox_virtualbase_metric".}
proc fcQMessageBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_metric".}
proc fQMessageBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QMessageBox_virtualbase_initPainter".}
proc fcQMessageBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_initPainter".}
proc fQMessageBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QMessageBox_virtualbase_redirected".}
proc fcQMessageBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_redirected".}
proc fQMessageBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QMessageBox_virtualbase_sharedPainter".}
proc fcQMessageBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_sharedPainter".}
proc fQMessageBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QMessageBox_virtualbase_inputMethodEvent".}
proc fcQMessageBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_inputMethodEvent".}
proc fQMessageBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QMessageBox_virtualbase_inputMethodQuery".}
proc fcQMessageBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_inputMethodQuery".}
proc fQMessageBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QMessageBox_virtualbase_focusNextPrevChild".}
proc fcQMessageBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_focusNextPrevChild".}
proc fQMessageBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_timerEvent".}
proc fcQMessageBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_timerEvent".}
proc fQMessageBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_childEvent".}
proc fcQMessageBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_childEvent".}
proc fQMessageBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMessageBox_virtualbase_customEvent".}
proc fcQMessageBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_customEvent".}
proc fQMessageBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMessageBox_virtualbase_connectNotify".}
proc fcQMessageBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_connectNotify".}
proc fQMessageBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMessageBox_virtualbase_disconnectNotify".}
proc fcQMessageBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMessageBox_override_virtual_disconnectNotify".}
proc fcQMessageBox_delete(self: pointer) {.importc: "QMessageBox_delete".}


func init*(T: type gen_qmessagebox_types.QMessageBox, h: ptr cQMessageBox): gen_qmessagebox_types.QMessageBox =
  T(h: h)
proc create*(T: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget): gen_qmessagebox_types.QMessageBox =
  gen_qmessagebox_types.QMessageBox.init(fcQMessageBox_new(parent.h))

proc create*(T: type gen_qmessagebox_types.QMessageBox, ): gen_qmessagebox_types.QMessageBox =
  gen_qmessagebox_types.QMessageBox.init(fcQMessageBox_new2())

proc create*(T: type gen_qmessagebox_types.QMessageBox, icon: cint, title: string, text: string): gen_qmessagebox_types.QMessageBox =
  gen_qmessagebox_types.QMessageBox.init(fcQMessageBox_new3(cint(icon), struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qmessagebox_types.QMessageBox, title: string, text: string, icon: cint, button0: cint, button1: cint, button2: cint): gen_qmessagebox_types.QMessageBox =
  gen_qmessagebox_types.QMessageBox.init(fcQMessageBox_new4(struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(icon), button0, button1, button2))

proc create*(T: type gen_qmessagebox_types.QMessageBox, icon: cint, title: string, text: string, buttons: cint): gen_qmessagebox_types.QMessageBox =
  gen_qmessagebox_types.QMessageBox.init(fcQMessageBox_new5(cint(icon), struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons)))

proc create*(T: type gen_qmessagebox_types.QMessageBox, icon: cint, title: string, text: string, buttons: cint, parent: gen_qwidget_types.QWidget): gen_qmessagebox_types.QMessageBox =
  gen_qmessagebox_types.QMessageBox.init(fcQMessageBox_new6(cint(icon), struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons), parent.h))

proc create*(T: type gen_qmessagebox_types.QMessageBox, icon: cint, title: string, text: string, buttons: cint, parent: gen_qwidget_types.QWidget, flags: cint): gen_qmessagebox_types.QMessageBox =
  gen_qmessagebox_types.QMessageBox.init(fcQMessageBox_new7(cint(icon), struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons), parent.h, cint(flags)))

proc create*(T: type gen_qmessagebox_types.QMessageBox, title: string, text: string, icon: cint, button0: cint, button1: cint, button2: cint, parent: gen_qwidget_types.QWidget): gen_qmessagebox_types.QMessageBox =
  gen_qmessagebox_types.QMessageBox.init(fcQMessageBox_new8(struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(icon), button0, button1, button2, parent.h))

proc create*(T: type gen_qmessagebox_types.QMessageBox, title: string, text: string, icon: cint, button0: cint, button1: cint, button2: cint, parent: gen_qwidget_types.QWidget, f: cint): gen_qmessagebox_types.QMessageBox =
  gen_qmessagebox_types.QMessageBox.init(fcQMessageBox_new9(struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(icon), button0, button1, button2, parent.h, cint(f)))

proc metaObject*(self: gen_qmessagebox_types.QMessageBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMessageBox_metaObject(self.h))

proc metacast*(self: gen_qmessagebox_types.QMessageBox, param1: cstring): pointer =
  fcQMessageBox_metacast(self.h, param1)

proc tr*(_: type gen_qmessagebox_types.QMessageBox, s: cstring): string =
  let v_ms = fcQMessageBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addButton*(self: gen_qmessagebox_types.QMessageBox, button: gen_qabstractbutton_types.QAbstractButton, role: cint): void =
  fcQMessageBox_addButton(self.h, button.h, cint(role))

proc addButton*(self: gen_qmessagebox_types.QMessageBox, text: string, role: cint): gen_qpushbutton_types.QPushButton =
  gen_qpushbutton_types.QPushButton(h: fcQMessageBox_addButton2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(role)))

proc addButton*(self: gen_qmessagebox_types.QMessageBox, button: cint): gen_qpushbutton_types.QPushButton =
  gen_qpushbutton_types.QPushButton(h: fcQMessageBox_addButtonWithButton(self.h, cint(button)))

proc removeButton*(self: gen_qmessagebox_types.QMessageBox, button: gen_qabstractbutton_types.QAbstractButton): void =
  fcQMessageBox_removeButton(self.h, button.h)

proc buttons*(self: gen_qmessagebox_types.QMessageBox, ): seq[gen_qabstractbutton_types.QAbstractButton] =
  var v_ma = fcQMessageBox_buttons(self.h)
  var vx_ret = newSeq[gen_qabstractbutton_types.QAbstractButton](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractbutton_types.QAbstractButton(h: v_outCast[i])
  vx_ret

proc buttonRole*(self: gen_qmessagebox_types.QMessageBox, button: gen_qabstractbutton_types.QAbstractButton): cint =
  cint(fcQMessageBox_buttonRole(self.h, button.h))

proc setStandardButtons*(self: gen_qmessagebox_types.QMessageBox, buttons: cint): void =
  fcQMessageBox_setStandardButtons(self.h, cint(buttons))

proc standardButtons*(self: gen_qmessagebox_types.QMessageBox, ): cint =
  cint(fcQMessageBox_standardButtons(self.h))

proc standardButton*(self: gen_qmessagebox_types.QMessageBox, button: gen_qabstractbutton_types.QAbstractButton): cint =
  cint(fcQMessageBox_standardButton(self.h, button.h))

proc button*(self: gen_qmessagebox_types.QMessageBox, which: cint): gen_qabstractbutton_types.QAbstractButton =
  gen_qabstractbutton_types.QAbstractButton(h: fcQMessageBox_button(self.h, cint(which)))

proc defaultButton*(self: gen_qmessagebox_types.QMessageBox, ): gen_qpushbutton_types.QPushButton =
  gen_qpushbutton_types.QPushButton(h: fcQMessageBox_defaultButton(self.h))

proc setDefaultButton*(self: gen_qmessagebox_types.QMessageBox, button: gen_qpushbutton_types.QPushButton): void =
  fcQMessageBox_setDefaultButton(self.h, button.h)

proc setDefaultButton*(self: gen_qmessagebox_types.QMessageBox, button: cint): void =
  fcQMessageBox_setDefaultButtonWithButton(self.h, cint(button))

proc escapeButton*(self: gen_qmessagebox_types.QMessageBox, ): gen_qabstractbutton_types.QAbstractButton =
  gen_qabstractbutton_types.QAbstractButton(h: fcQMessageBox_escapeButton(self.h))

proc setEscapeButton*(self: gen_qmessagebox_types.QMessageBox, button: gen_qabstractbutton_types.QAbstractButton): void =
  fcQMessageBox_setEscapeButton(self.h, button.h)

proc setEscapeButton*(self: gen_qmessagebox_types.QMessageBox, button: cint): void =
  fcQMessageBox_setEscapeButtonWithButton(self.h, cint(button))

proc clickedButton*(self: gen_qmessagebox_types.QMessageBox, ): gen_qabstractbutton_types.QAbstractButton =
  gen_qabstractbutton_types.QAbstractButton(h: fcQMessageBox_clickedButton(self.h))

proc text*(self: gen_qmessagebox_types.QMessageBox, ): string =
  let v_ms = fcQMessageBox_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: gen_qmessagebox_types.QMessageBox, text: string): void =
  fcQMessageBox_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc icon*(self: gen_qmessagebox_types.QMessageBox, ): cint =
  cint(fcQMessageBox_icon(self.h))

proc setIcon*(self: gen_qmessagebox_types.QMessageBox, icon: cint): void =
  fcQMessageBox_setIcon(self.h, cint(icon))

proc iconPixmap*(self: gen_qmessagebox_types.QMessageBox, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQMessageBox_iconPixmap(self.h))

proc setIconPixmap*(self: gen_qmessagebox_types.QMessageBox, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQMessageBox_setIconPixmap(self.h, pixmap.h)

proc textFormat*(self: gen_qmessagebox_types.QMessageBox, ): cint =
  cint(fcQMessageBox_textFormat(self.h))

proc setTextFormat*(self: gen_qmessagebox_types.QMessageBox, format: cint): void =
  fcQMessageBox_setTextFormat(self.h, cint(format))

proc setTextInteractionFlags*(self: gen_qmessagebox_types.QMessageBox, flags: cint): void =
  fcQMessageBox_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: gen_qmessagebox_types.QMessageBox, ): cint =
  cint(fcQMessageBox_textInteractionFlags(self.h))

proc setCheckBox*(self: gen_qmessagebox_types.QMessageBox, cb: gen_qcheckbox_types.QCheckBox): void =
  fcQMessageBox_setCheckBox(self.h, cb.h)

proc checkBox*(self: gen_qmessagebox_types.QMessageBox, ): gen_qcheckbox_types.QCheckBox =
  gen_qcheckbox_types.QCheckBox(h: fcQMessageBox_checkBox(self.h))

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string): cint =
  cint(fcQMessageBox_information(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint): cint =
  cint(fcQMessageBox_information2(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(button0)))

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string): cint =
  cint(fcQMessageBox_question(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint, button1: cint): cint =
  fcQMessageBox_question2(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(button0), cint(button1))

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string): cint =
  cint(fcQMessageBox_warning(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint, button1: cint): cint =
  fcQMessageBox_warning2(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(button0), cint(button1))

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string): cint =
  cint(fcQMessageBox_critical(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint, button1: cint): cint =
  fcQMessageBox_critical2(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(button0), cint(button1))

proc about*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string): void =
  fcQMessageBox_about(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))))

proc aboutQt*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget): void =
  fcQMessageBox_aboutQt(parent.h)

proc information2*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint): cint =
  fcQMessageBox_information3(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0)

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string): cint =
  fcQMessageBox_information4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))))

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint): cint =
  fcQMessageBox_question3(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0)

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string): cint =
  fcQMessageBox_question4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))))

proc warning2*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint, button1: cint): cint =
  fcQMessageBox_warning3(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1)

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string): cint =
  fcQMessageBox_warning4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))))

proc critical2*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint, button1: cint): cint =
  fcQMessageBox_critical3(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1)

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string): cint =
  fcQMessageBox_critical4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))))

proc buttonText*(self: gen_qmessagebox_types.QMessageBox, button: cint): string =
  let v_ms = fcQMessageBox_buttonText(self.h, button)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setButtonText*(self: gen_qmessagebox_types.QMessageBox, button: cint, text: string): void =
  fcQMessageBox_setButtonText(self.h, button, struct_miqt_string(data: text, len: csize_t(len(text))))

proc informativeText*(self: gen_qmessagebox_types.QMessageBox, ): string =
  let v_ms = fcQMessageBox_informativeText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setInformativeText*(self: gen_qmessagebox_types.QMessageBox, text: string): void =
  fcQMessageBox_setInformativeText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc detailedText*(self: gen_qmessagebox_types.QMessageBox, ): string =
  let v_ms = fcQMessageBox_detailedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDetailedText*(self: gen_qmessagebox_types.QMessageBox, text: string): void =
  fcQMessageBox_setDetailedText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setWindowTitle*(self: gen_qmessagebox_types.QMessageBox, title: string): void =
  fcQMessageBox_setWindowTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc setWindowModality*(self: gen_qmessagebox_types.QMessageBox, windowModality: cint): void =
  fcQMessageBox_setWindowModality(self.h, cint(windowModality))

proc standardIcon*(_: type gen_qmessagebox_types.QMessageBox, icon: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQMessageBox_standardIcon(cint(icon)))

proc buttonClicked*(self: gen_qmessagebox_types.QMessageBox, button: gen_qabstractbutton_types.QAbstractButton): void =
  fcQMessageBox_buttonClicked(self.h, button.h)

type QMessageBoxbuttonClickedSlot* = proc(button: gen_qabstractbutton_types.QAbstractButton)
proc miqt_exec_callback_QMessageBox_buttonClicked(slot: int, button: pointer) {.exportc.} =
  let nimfunc = cast[ptr QMessageBoxbuttonClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractbutton_types.QAbstractButton(h: button)

  nimfunc[](slotval1)

proc onbuttonClicked*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxbuttonClickedSlot) =
  var tmp = new QMessageBoxbuttonClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_connect_buttonClicked(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qmessagebox_types.QMessageBox, s: cstring, c: cstring): string =
  let v_ms = fcQMessageBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmessagebox_types.QMessageBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMessageBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc information3*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, buttons: cint): cint =
  cint(fcQMessageBox_information42(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons)))

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, buttons: cint, defaultButton: cint): cint =
  cint(fcQMessageBox_information5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons), cint(defaultButton)))

proc information2*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint, button1: cint): cint =
  cint(fcQMessageBox_information52(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(button0), cint(button1)))

proc question2*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, buttons: cint): cint =
  cint(fcQMessageBox_question42(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons)))

proc question2*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, buttons: cint, defaultButton: cint): cint =
  cint(fcQMessageBox_question5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons), cint(defaultButton)))

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, buttons: cint): cint =
  cint(fcQMessageBox_warning42(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons)))

proc warning3*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, buttons: cint, defaultButton: cint): cint =
  cint(fcQMessageBox_warning5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons), cint(defaultButton)))

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, buttons: cint): cint =
  cint(fcQMessageBox_critical42(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons)))

proc critical3*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, buttons: cint, defaultButton: cint): cint =
  cint(fcQMessageBox_critical5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), cint(buttons), cint(defaultButton)))

proc aboutQt*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string): void =
  fcQMessageBox_aboutQt2(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc information3*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint, button1: cint): cint =
  fcQMessageBox_information53(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1)

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint, button1: cint, button2: cint): cint =
  fcQMessageBox_information6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1, button2)

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string): cint =
  fcQMessageBox_information54(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))))

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string): cint =
  fcQMessageBox_information62(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))))

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint): cint =
  fcQMessageBox_information7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber)

proc information*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint =
  fcQMessageBox_information8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber, escapeButtonNumber)

proc question3*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint, button1: cint): cint =
  fcQMessageBox_question52(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1)

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint, button1: cint, button2: cint): cint =
  fcQMessageBox_question6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1, button2)

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string): cint =
  fcQMessageBox_question53(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))))

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string): cint =
  fcQMessageBox_question62(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))))

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint): cint =
  fcQMessageBox_question7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber)

proc question*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint =
  fcQMessageBox_question8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber, escapeButtonNumber)

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint, button1: cint, button2: cint): cint =
  fcQMessageBox_warning6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1, button2)

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string): cint =
  fcQMessageBox_warning52(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))))

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string): cint =
  fcQMessageBox_warning62(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))))

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint): cint =
  fcQMessageBox_warning7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber)

proc warning*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint =
  fcQMessageBox_warning8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber, escapeButtonNumber)

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0: cint, button1: cint, button2: cint): cint =
  fcQMessageBox_critical6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), button0, button1, button2)

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string): cint =
  fcQMessageBox_critical52(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))))

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string): cint =
  fcQMessageBox_critical62(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))))

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint): cint =
  fcQMessageBox_critical7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber)

proc critical*(_: type gen_qmessagebox_types.QMessageBox, parent: gen_qwidget_types.QWidget, title: string, text: string, button0Text: string, button1Text: string, button2Text: string, defaultButtonNumber: cint, escapeButtonNumber: cint): cint =
  fcQMessageBox_critical8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: text, len: csize_t(len(text))), struct_miqt_string(data: button0Text, len: csize_t(len(button0Text))), struct_miqt_string(data: button1Text, len: csize_t(len(button1Text))), struct_miqt_string(data: button2Text, len: csize_t(len(button2Text))), defaultButtonNumber, escapeButtonNumber)

proc QMessageBoxevent*(self: gen_qmessagebox_types.QMessageBox, e: gen_qcoreevent_types.QEvent): bool =
  fQMessageBox_virtualbase_event(self.h, e.h)

type QMessageBoxeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxeventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_event(self: ptr cQMessageBox, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QMessageBox_event ".} =
  var nimfunc = cast[ptr QMessageBoxeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMessageBoxresizeEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QResizeEvent): void =
  fQMessageBox_virtualbase_resizeEvent(self.h, event.h)

type QMessageBoxresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxresizeEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_resizeEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_resizeEvent ".} =
  var nimfunc = cast[ptr QMessageBoxresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxshowEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QShowEvent): void =
  fQMessageBox_virtualbase_showEvent(self.h, event.h)

type QMessageBoxshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxshowEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_showEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_showEvent ".} =
  var nimfunc = cast[ptr QMessageBoxshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxcloseEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QCloseEvent): void =
  fQMessageBox_virtualbase_closeEvent(self.h, event.h)

type QMessageBoxcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxcloseEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_closeEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_closeEvent ".} =
  var nimfunc = cast[ptr QMessageBoxcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxkeyPressEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QKeyEvent): void =
  fQMessageBox_virtualbase_keyPressEvent(self.h, event.h)

type QMessageBoxkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_keyPressEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_keyPressEvent ".} =
  var nimfunc = cast[ptr QMessageBoxkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxchangeEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qcoreevent_types.QEvent): void =
  fQMessageBox_virtualbase_changeEvent(self.h, event.h)

type QMessageBoxchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxchangeEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_changeEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_changeEvent ".} =
  var nimfunc = cast[ptr QMessageBoxchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxsetVisible*(self: gen_qmessagebox_types.QMessageBox, visible: bool): void =
  fQMessageBox_virtualbase_setVisible(self.h, visible)

type QMessageBoxsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxsetVisibleProc) =
  # TODO check subclass
  var tmp = new QMessageBoxsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_setVisible(self: ptr cQMessageBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QMessageBox_setVisible ".} =
  var nimfunc = cast[ptr QMessageBoxsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QMessageBoxsizeHint*(self: gen_qmessagebox_types.QMessageBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMessageBox_virtualbase_sizeHint(self.h))

type QMessageBoxsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxsizeHintProc) =
  # TODO check subclass
  var tmp = new QMessageBoxsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_sizeHint(self: ptr cQMessageBox, slot: int): pointer {.exportc: "miqt_exec_callback_QMessageBox_sizeHint ".} =
  var nimfunc = cast[ptr QMessageBoxsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMessageBoxminimumSizeHint*(self: gen_qmessagebox_types.QMessageBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQMessageBox_virtualbase_minimumSizeHint(self.h))

type QMessageBoxminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QMessageBoxminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_minimumSizeHint(self: ptr cQMessageBox, slot: int): pointer {.exportc: "miqt_exec_callback_QMessageBox_minimumSizeHint ".} =
  var nimfunc = cast[ptr QMessageBoxminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMessageBoxopen*(self: gen_qmessagebox_types.QMessageBox, ): void =
  fQMessageBox_virtualbase_open(self.h)

type QMessageBoxopenProc* = proc(): void
proc onopen*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxopenProc) =
  # TODO check subclass
  var tmp = new QMessageBoxopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_open(self: ptr cQMessageBox, slot: int): void {.exportc: "miqt_exec_callback_QMessageBox_open ".} =
  var nimfunc = cast[ptr QMessageBoxopenProc](cast[pointer](slot))

  nimfunc[]()
proc QMessageBoxexec*(self: gen_qmessagebox_types.QMessageBox, ): cint =
  fQMessageBox_virtualbase_exec(self.h)

type QMessageBoxexecProc* = proc(): cint
proc onexec*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxexecProc) =
  # TODO check subclass
  var tmp = new QMessageBoxexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_exec(self: ptr cQMessageBox, slot: int): cint {.exportc: "miqt_exec_callback_QMessageBox_exec ".} =
  var nimfunc = cast[ptr QMessageBoxexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMessageBoxdone*(self: gen_qmessagebox_types.QMessageBox, param1: cint): void =
  fQMessageBox_virtualbase_done(self.h, param1)

type QMessageBoxdoneProc* = proc(param1: cint): void
proc ondone*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxdoneProc) =
  # TODO check subclass
  var tmp = new QMessageBoxdoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_done(self: ptr cQMessageBox, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QMessageBox_done ".} =
  var nimfunc = cast[ptr QMessageBoxdoneProc](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)
proc QMessageBoxaccept*(self: gen_qmessagebox_types.QMessageBox, ): void =
  fQMessageBox_virtualbase_accept(self.h)

type QMessageBoxacceptProc* = proc(): void
proc onaccept*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxacceptProc) =
  # TODO check subclass
  var tmp = new QMessageBoxacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_accept(self: ptr cQMessageBox, slot: int): void {.exportc: "miqt_exec_callback_QMessageBox_accept ".} =
  var nimfunc = cast[ptr QMessageBoxacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QMessageBoxreject*(self: gen_qmessagebox_types.QMessageBox, ): void =
  fQMessageBox_virtualbase_reject(self.h)

type QMessageBoxrejectProc* = proc(): void
proc onreject*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxrejectProc) =
  # TODO check subclass
  var tmp = new QMessageBoxrejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_reject(self: ptr cQMessageBox, slot: int): void {.exportc: "miqt_exec_callback_QMessageBox_reject ".} =
  var nimfunc = cast[ptr QMessageBoxrejectProc](cast[pointer](slot))

  nimfunc[]()
proc QMessageBoxcontextMenuEvent*(self: gen_qmessagebox_types.QMessageBox, param1: gen_qevent_types.QContextMenuEvent): void =
  fQMessageBox_virtualbase_contextMenuEvent(self.h, param1.h)

type QMessageBoxcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_contextMenuEvent(self: ptr cQMessageBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_contextMenuEvent ".} =
  var nimfunc = cast[ptr QMessageBoxcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QMessageBoxeventFilter*(self: gen_qmessagebox_types.QMessageBox, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQMessageBox_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QMessageBoxeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxeventFilterProc) =
  # TODO check subclass
  var tmp = new QMessageBoxeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_eventFilter(self: ptr cQMessageBox, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QMessageBox_eventFilter ".} =
  var nimfunc = cast[ptr QMessageBoxeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMessageBoxdevType*(self: gen_qmessagebox_types.QMessageBox, ): cint =
  fQMessageBox_virtualbase_devType(self.h)

type QMessageBoxdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxdevTypeProc) =
  # TODO check subclass
  var tmp = new QMessageBoxdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_devType(self: ptr cQMessageBox, slot: int): cint {.exportc: "miqt_exec_callback_QMessageBox_devType ".} =
  var nimfunc = cast[ptr QMessageBoxdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMessageBoxheightForWidth*(self: gen_qmessagebox_types.QMessageBox, param1: cint): cint =
  fQMessageBox_virtualbase_heightForWidth(self.h, param1)

type QMessageBoxheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxheightForWidthProc) =
  # TODO check subclass
  var tmp = new QMessageBoxheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_heightForWidth(self: ptr cQMessageBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMessageBox_heightForWidth ".} =
  var nimfunc = cast[ptr QMessageBoxheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMessageBoxhasHeightForWidth*(self: gen_qmessagebox_types.QMessageBox, ): bool =
  fQMessageBox_virtualbase_hasHeightForWidth(self.h)

type QMessageBoxhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QMessageBoxhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_hasHeightForWidth(self: ptr cQMessageBox, slot: int): bool {.exportc: "miqt_exec_callback_QMessageBox_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QMessageBoxhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QMessageBoxpaintEngine*(self: gen_qmessagebox_types.QMessageBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQMessageBox_virtualbase_paintEngine(self.h))

type QMessageBoxpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxpaintEngineProc) =
  # TODO check subclass
  var tmp = new QMessageBoxpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_paintEngine(self: ptr cQMessageBox, slot: int): pointer {.exportc: "miqt_exec_callback_QMessageBox_paintEngine ".} =
  var nimfunc = cast[ptr QMessageBoxpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMessageBoxmousePressEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QMouseEvent): void =
  fQMessageBox_virtualbase_mousePressEvent(self.h, event.h)

type QMessageBoxmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxmousePressEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_mousePressEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_mousePressEvent ".} =
  var nimfunc = cast[ptr QMessageBoxmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxmouseReleaseEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QMouseEvent): void =
  fQMessageBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QMessageBoxmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_mouseReleaseEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QMessageBoxmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxmouseDoubleClickEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QMouseEvent): void =
  fQMessageBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QMessageBoxmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_mouseDoubleClickEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QMessageBoxmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxmouseMoveEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QMouseEvent): void =
  fQMessageBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QMessageBoxmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_mouseMoveEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QMessageBoxmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxwheelEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QWheelEvent): void =
  fQMessageBox_virtualbase_wheelEvent(self.h, event.h)

type QMessageBoxwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxwheelEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_wheelEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_wheelEvent ".} =
  var nimfunc = cast[ptr QMessageBoxwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxkeyReleaseEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QKeyEvent): void =
  fQMessageBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QMessageBoxkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_keyReleaseEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QMessageBoxkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxfocusInEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QFocusEvent): void =
  fQMessageBox_virtualbase_focusInEvent(self.h, event.h)

type QMessageBoxfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxfocusInEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_focusInEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_focusInEvent ".} =
  var nimfunc = cast[ptr QMessageBoxfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxfocusOutEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QFocusEvent): void =
  fQMessageBox_virtualbase_focusOutEvent(self.h, event.h)

type QMessageBoxfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_focusOutEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_focusOutEvent ".} =
  var nimfunc = cast[ptr QMessageBoxfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxenterEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QEnterEvent): void =
  fQMessageBox_virtualbase_enterEvent(self.h, event.h)

type QMessageBoxenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxenterEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_enterEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_enterEvent ".} =
  var nimfunc = cast[ptr QMessageBoxenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxleaveEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qcoreevent_types.QEvent): void =
  fQMessageBox_virtualbase_leaveEvent(self.h, event.h)

type QMessageBoxleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxleaveEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_leaveEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_leaveEvent ".} =
  var nimfunc = cast[ptr QMessageBoxleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxpaintEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QPaintEvent): void =
  fQMessageBox_virtualbase_paintEvent(self.h, event.h)

type QMessageBoxpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxpaintEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_paintEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_paintEvent ".} =
  var nimfunc = cast[ptr QMessageBoxpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxmoveEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QMoveEvent): void =
  fQMessageBox_virtualbase_moveEvent(self.h, event.h)

type QMessageBoxmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxmoveEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_moveEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_moveEvent ".} =
  var nimfunc = cast[ptr QMessageBoxmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxtabletEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QTabletEvent): void =
  fQMessageBox_virtualbase_tabletEvent(self.h, event.h)

type QMessageBoxtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxtabletEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_tabletEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_tabletEvent ".} =
  var nimfunc = cast[ptr QMessageBoxtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxactionEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QActionEvent): void =
  fQMessageBox_virtualbase_actionEvent(self.h, event.h)

type QMessageBoxactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxactionEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_actionEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_actionEvent ".} =
  var nimfunc = cast[ptr QMessageBoxactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxdragEnterEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QDragEnterEvent): void =
  fQMessageBox_virtualbase_dragEnterEvent(self.h, event.h)

type QMessageBoxdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_dragEnterEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_dragEnterEvent ".} =
  var nimfunc = cast[ptr QMessageBoxdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxdragMoveEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QDragMoveEvent): void =
  fQMessageBox_virtualbase_dragMoveEvent(self.h, event.h)

type QMessageBoxdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_dragMoveEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_dragMoveEvent ".} =
  var nimfunc = cast[ptr QMessageBoxdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxdragLeaveEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fQMessageBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QMessageBoxdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_dragLeaveEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QMessageBoxdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxdropEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QDropEvent): void =
  fQMessageBox_virtualbase_dropEvent(self.h, event.h)

type QMessageBoxdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxdropEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_dropEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_dropEvent ".} =
  var nimfunc = cast[ptr QMessageBoxdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxhideEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qevent_types.QHideEvent): void =
  fQMessageBox_virtualbase_hideEvent(self.h, event.h)

type QMessageBoxhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxhideEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_hideEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_hideEvent ".} =
  var nimfunc = cast[ptr QMessageBoxhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxnativeEvent*(self: gen_qmessagebox_types.QMessageBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQMessageBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QMessageBoxnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxnativeEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_nativeEvent(self: ptr cQMessageBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QMessageBox_nativeEvent ".} =
  var nimfunc = cast[ptr QMessageBoxnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMessageBoxmetric*(self: gen_qmessagebox_types.QMessageBox, param1: cint): cint =
  fQMessageBox_virtualbase_metric(self.h, cint(param1))

type QMessageBoxmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxmetricProc) =
  # TODO check subclass
  var tmp = new QMessageBoxmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_metric(self: ptr cQMessageBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QMessageBox_metric ".} =
  var nimfunc = cast[ptr QMessageBoxmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMessageBoxinitPainter*(self: gen_qmessagebox_types.QMessageBox, painter: gen_qpainter_types.QPainter): void =
  fQMessageBox_virtualbase_initPainter(self.h, painter.h)

type QMessageBoxinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxinitPainterProc) =
  # TODO check subclass
  var tmp = new QMessageBoxinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_initPainter(self: ptr cQMessageBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_initPainter ".} =
  var nimfunc = cast[ptr QMessageBoxinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QMessageBoxredirected*(self: gen_qmessagebox_types.QMessageBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQMessageBox_virtualbase_redirected(self.h, offset.h))

type QMessageBoxredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxredirectedProc) =
  # TODO check subclass
  var tmp = new QMessageBoxredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_redirected(self: ptr cQMessageBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QMessageBox_redirected ".} =
  var nimfunc = cast[ptr QMessageBoxredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QMessageBoxsharedPainter*(self: gen_qmessagebox_types.QMessageBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQMessageBox_virtualbase_sharedPainter(self.h))

type QMessageBoxsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxsharedPainterProc) =
  # TODO check subclass
  var tmp = new QMessageBoxsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_sharedPainter(self: ptr cQMessageBox, slot: int): pointer {.exportc: "miqt_exec_callback_QMessageBox_sharedPainter ".} =
  var nimfunc = cast[ptr QMessageBoxsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMessageBoxinputMethodEvent*(self: gen_qmessagebox_types.QMessageBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fQMessageBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QMessageBoxinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_inputMethodEvent(self: ptr cQMessageBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_inputMethodEvent ".} =
  var nimfunc = cast[ptr QMessageBoxinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QMessageBoxinputMethodQuery*(self: gen_qmessagebox_types.QMessageBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQMessageBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QMessageBoxinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QMessageBoxinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_inputMethodQuery(self: ptr cQMessageBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QMessageBox_inputMethodQuery ".} =
  var nimfunc = cast[ptr QMessageBoxinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QMessageBoxfocusNextPrevChild*(self: gen_qmessagebox_types.QMessageBox, next: bool): bool =
  fQMessageBox_virtualbase_focusNextPrevChild(self.h, next)

type QMessageBoxfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QMessageBoxfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_focusNextPrevChild(self: ptr cQMessageBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QMessageBox_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QMessageBoxfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMessageBoxtimerEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fQMessageBox_virtualbase_timerEvent(self.h, event.h)

type QMessageBoxtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxtimerEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_timerEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_timerEvent ".} =
  var nimfunc = cast[ptr QMessageBoxtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxchildEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qcoreevent_types.QChildEvent): void =
  fQMessageBox_virtualbase_childEvent(self.h, event.h)

type QMessageBoxchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxchildEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_childEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_childEvent ".} =
  var nimfunc = cast[ptr QMessageBoxchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxcustomEvent*(self: gen_qmessagebox_types.QMessageBox, event: gen_qcoreevent_types.QEvent): void =
  fQMessageBox_virtualbase_customEvent(self.h, event.h)

type QMessageBoxcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxcustomEventProc) =
  # TODO check subclass
  var tmp = new QMessageBoxcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_customEvent(self: ptr cQMessageBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_customEvent ".} =
  var nimfunc = cast[ptr QMessageBoxcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMessageBoxconnectNotify*(self: gen_qmessagebox_types.QMessageBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMessageBox_virtualbase_connectNotify(self.h, signal.h)

type QMessageBoxconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMessageBoxconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_connectNotify(self: ptr cQMessageBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_connectNotify ".} =
  var nimfunc = cast[ptr QMessageBoxconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMessageBoxdisconnectNotify*(self: gen_qmessagebox_types.QMessageBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMessageBox_virtualbase_disconnectNotify(self.h, signal.h)

type QMessageBoxdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmessagebox_types.QMessageBox, slot: QMessageBoxdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMessageBoxdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMessageBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMessageBox_disconnectNotify(self: ptr cQMessageBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMessageBox_disconnectNotify ".} =
  var nimfunc = cast[ptr QMessageBoxdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qmessagebox_types.QMessageBox) =
  fcQMessageBox_delete(self.h)
