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
{.compile("gen_qinputdialog.cpp", cflags).}


type QInputDialogInputDialogOptionEnum* = distinct cint
template NoButtons*(_: type QInputDialogInputDialogOptionEnum): untyped = 1
template UseListViewForComboBoxItems*(_: type QInputDialogInputDialogOptionEnum): untyped = 2
template UsePlainTextEditForTextInput*(_: type QInputDialogInputDialogOptionEnum): untyped = 4


type QInputDialogInputModeEnum* = distinct cint
template TextInput*(_: type QInputDialogInputModeEnum): untyped = 0
template IntInput*(_: type QInputDialogInputModeEnum): untyped = 1
template DoubleInput*(_: type QInputDialogInputModeEnum): untyped = 2


import ./gen_qinputdialog_types
export gen_qinputdialog_types

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
  ./gen_qdialog,
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
  gen_qdialog,
  gen_qwidget_types

type cQInputDialog*{.exportc: "QInputDialog", incompleteStruct.} = object

proc fcQInputDialog_new(parent: pointer): ptr cQInputDialog {.importc: "QInputDialog_new".}
proc fcQInputDialog_new2(): ptr cQInputDialog {.importc: "QInputDialog_new2".}
proc fcQInputDialog_new3(parent: pointer, flags: cint): ptr cQInputDialog {.importc: "QInputDialog_new3".}
proc fcQInputDialog_metaObject(self: pointer, ): pointer {.importc: "QInputDialog_metaObject".}
proc fcQInputDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputDialog_metacast".}
proc fcQInputDialog_tr(s: cstring): struct_miqt_string {.importc: "QInputDialog_tr".}
proc fcQInputDialog_setInputMode(self: pointer, mode: cint): void {.importc: "QInputDialog_setInputMode".}
proc fcQInputDialog_inputMode(self: pointer, ): cint {.importc: "QInputDialog_inputMode".}
proc fcQInputDialog_setLabelText(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_setLabelText".}
proc fcQInputDialog_labelText(self: pointer, ): struct_miqt_string {.importc: "QInputDialog_labelText".}
proc fcQInputDialog_setOption(self: pointer, option: cint): void {.importc: "QInputDialog_setOption".}
proc fcQInputDialog_testOption(self: pointer, option: cint): bool {.importc: "QInputDialog_testOption".}
proc fcQInputDialog_setOptions(self: pointer, options: cint): void {.importc: "QInputDialog_setOptions".}
proc fcQInputDialog_options(self: pointer, ): cint {.importc: "QInputDialog_options".}
proc fcQInputDialog_setTextValue(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_setTextValue".}
proc fcQInputDialog_textValue(self: pointer, ): struct_miqt_string {.importc: "QInputDialog_textValue".}
proc fcQInputDialog_setTextEchoMode(self: pointer, mode: cint): void {.importc: "QInputDialog_setTextEchoMode".}
proc fcQInputDialog_textEchoMode(self: pointer, ): cint {.importc: "QInputDialog_textEchoMode".}
proc fcQInputDialog_setComboBoxEditable(self: pointer, editable: bool): void {.importc: "QInputDialog_setComboBoxEditable".}
proc fcQInputDialog_isComboBoxEditable(self: pointer, ): bool {.importc: "QInputDialog_isComboBoxEditable".}
proc fcQInputDialog_setComboBoxItems(self: pointer, items: struct_miqt_array): void {.importc: "QInputDialog_setComboBoxItems".}
proc fcQInputDialog_comboBoxItems(self: pointer, ): struct_miqt_array {.importc: "QInputDialog_comboBoxItems".}
proc fcQInputDialog_setIntValue(self: pointer, value: cint): void {.importc: "QInputDialog_setIntValue".}
proc fcQInputDialog_intValue(self: pointer, ): cint {.importc: "QInputDialog_intValue".}
proc fcQInputDialog_setIntMinimum(self: pointer, min: cint): void {.importc: "QInputDialog_setIntMinimum".}
proc fcQInputDialog_intMinimum(self: pointer, ): cint {.importc: "QInputDialog_intMinimum".}
proc fcQInputDialog_setIntMaximum(self: pointer, max: cint): void {.importc: "QInputDialog_setIntMaximum".}
proc fcQInputDialog_intMaximum(self: pointer, ): cint {.importc: "QInputDialog_intMaximum".}
proc fcQInputDialog_setIntRange(self: pointer, min: cint, max: cint): void {.importc: "QInputDialog_setIntRange".}
proc fcQInputDialog_setIntStep(self: pointer, step: cint): void {.importc: "QInputDialog_setIntStep".}
proc fcQInputDialog_intStep(self: pointer, ): cint {.importc: "QInputDialog_intStep".}
proc fcQInputDialog_setDoubleValue(self: pointer, value: float64): void {.importc: "QInputDialog_setDoubleValue".}
proc fcQInputDialog_doubleValue(self: pointer, ): float64 {.importc: "QInputDialog_doubleValue".}
proc fcQInputDialog_setDoubleMinimum(self: pointer, min: float64): void {.importc: "QInputDialog_setDoubleMinimum".}
proc fcQInputDialog_doubleMinimum(self: pointer, ): float64 {.importc: "QInputDialog_doubleMinimum".}
proc fcQInputDialog_setDoubleMaximum(self: pointer, max: float64): void {.importc: "QInputDialog_setDoubleMaximum".}
proc fcQInputDialog_doubleMaximum(self: pointer, ): float64 {.importc: "QInputDialog_doubleMaximum".}
proc fcQInputDialog_setDoubleRange(self: pointer, min: float64, max: float64): void {.importc: "QInputDialog_setDoubleRange".}
proc fcQInputDialog_setDoubleDecimals(self: pointer, decimals: cint): void {.importc: "QInputDialog_setDoubleDecimals".}
proc fcQInputDialog_doubleDecimals(self: pointer, ): cint {.importc: "QInputDialog_doubleDecimals".}
proc fcQInputDialog_setOkButtonText(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_setOkButtonText".}
proc fcQInputDialog_okButtonText(self: pointer, ): struct_miqt_string {.importc: "QInputDialog_okButtonText".}
proc fcQInputDialog_setCancelButtonText(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_setCancelButtonText".}
proc fcQInputDialog_cancelButtonText(self: pointer, ): struct_miqt_string {.importc: "QInputDialog_cancelButtonText".}
proc fcQInputDialog_minimumSizeHint(self: pointer, ): pointer {.importc: "QInputDialog_minimumSizeHint".}
proc fcQInputDialog_sizeHint(self: pointer, ): pointer {.importc: "QInputDialog_sizeHint".}
proc fcQInputDialog_setVisible(self: pointer, visible: bool): void {.importc: "QInputDialog_setVisible".}
proc fcQInputDialog_getText(parent: pointer, title: struct_miqt_string, label: struct_miqt_string): struct_miqt_string {.importc: "QInputDialog_getText".}
proc fcQInputDialog_getMultiLineText(parent: pointer, title: struct_miqt_string, label: struct_miqt_string): struct_miqt_string {.importc: "QInputDialog_getMultiLineText".}
proc fcQInputDialog_getItem(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array): struct_miqt_string {.importc: "QInputDialog_getItem".}
proc fcQInputDialog_getInt(parent: pointer, title: struct_miqt_string, label: struct_miqt_string): cint {.importc: "QInputDialog_getInt".}
proc fcQInputDialog_getDouble(parent: pointer, title: struct_miqt_string, label: struct_miqt_string): float64 {.importc: "QInputDialog_getDouble".}
proc fcQInputDialog_setDoubleStep(self: pointer, step: float64): void {.importc: "QInputDialog_setDoubleStep".}
proc fcQInputDialog_doubleStep(self: pointer, ): float64 {.importc: "QInputDialog_doubleStep".}
proc fcQInputDialog_textValueChanged(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_textValueChanged".}
proc fcQInputDialog_connect_textValueChanged(self: pointer, slot: int) {.importc: "QInputDialog_connect_textValueChanged".}
proc fcQInputDialog_textValueSelected(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_textValueSelected".}
proc fcQInputDialog_connect_textValueSelected(self: pointer, slot: int) {.importc: "QInputDialog_connect_textValueSelected".}
proc fcQInputDialog_intValueChanged(self: pointer, value: cint): void {.importc: "QInputDialog_intValueChanged".}
proc fcQInputDialog_connect_intValueChanged(self: pointer, slot: int) {.importc: "QInputDialog_connect_intValueChanged".}
proc fcQInputDialog_intValueSelected(self: pointer, value: cint): void {.importc: "QInputDialog_intValueSelected".}
proc fcQInputDialog_connect_intValueSelected(self: pointer, slot: int) {.importc: "QInputDialog_connect_intValueSelected".}
proc fcQInputDialog_doubleValueChanged(self: pointer, value: float64): void {.importc: "QInputDialog_doubleValueChanged".}
proc fcQInputDialog_connect_doubleValueChanged(self: pointer, slot: int) {.importc: "QInputDialog_connect_doubleValueChanged".}
proc fcQInputDialog_doubleValueSelected(self: pointer, value: float64): void {.importc: "QInputDialog_doubleValueSelected".}
proc fcQInputDialog_connect_doubleValueSelected(self: pointer, slot: int) {.importc: "QInputDialog_connect_doubleValueSelected".}
proc fcQInputDialog_done(self: pointer, resultVal: cint): void {.importc: "QInputDialog_done".}
proc fcQInputDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QInputDialog_tr2".}
proc fcQInputDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QInputDialog_tr3".}
proc fcQInputDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QInputDialog_setOption2".}
proc fcQInputDialog_getText4(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, echo: cint): struct_miqt_string {.importc: "QInputDialog_getText4".}
proc fcQInputDialog_getText5(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, echo: cint, text: struct_miqt_string): struct_miqt_string {.importc: "QInputDialog_getText5".}
proc fcQInputDialog_getText6(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, echo: cint, text: struct_miqt_string, ok: ptr bool): struct_miqt_string {.importc: "QInputDialog_getText6".}
proc fcQInputDialog_getText7(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, echo: cint, text: struct_miqt_string, ok: ptr bool, flags: cint): struct_miqt_string {.importc: "QInputDialog_getText7".}
proc fcQInputDialog_getText8(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, echo: cint, text: struct_miqt_string, ok: ptr bool, flags: cint, inputMethodHints: cint): struct_miqt_string {.importc: "QInputDialog_getText8".}
proc fcQInputDialog_getMultiLineText4(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, text: struct_miqt_string): struct_miqt_string {.importc: "QInputDialog_getMultiLineText4".}
proc fcQInputDialog_getMultiLineText5(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, text: struct_miqt_string, ok: ptr bool): struct_miqt_string {.importc: "QInputDialog_getMultiLineText5".}
proc fcQInputDialog_getMultiLineText6(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, text: struct_miqt_string, ok: ptr bool, flags: cint): struct_miqt_string {.importc: "QInputDialog_getMultiLineText6".}
proc fcQInputDialog_getMultiLineText7(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, text: struct_miqt_string, ok: ptr bool, flags: cint, inputMethodHints: cint): struct_miqt_string {.importc: "QInputDialog_getMultiLineText7".}
proc fcQInputDialog_getItem5(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array, current: cint): struct_miqt_string {.importc: "QInputDialog_getItem5".}
proc fcQInputDialog_getItem6(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array, current: cint, editable: bool): struct_miqt_string {.importc: "QInputDialog_getItem6".}
proc fcQInputDialog_getItem7(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array, current: cint, editable: bool, ok: ptr bool): struct_miqt_string {.importc: "QInputDialog_getItem7".}
proc fcQInputDialog_getItem8(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array, current: cint, editable: bool, ok: ptr bool, flags: cint): struct_miqt_string {.importc: "QInputDialog_getItem8".}
proc fcQInputDialog_getItem9(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array, current: cint, editable: bool, ok: ptr bool, flags: cint, inputMethodHints: cint): struct_miqt_string {.importc: "QInputDialog_getItem9".}
proc fcQInputDialog_getInt4(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: cint): cint {.importc: "QInputDialog_getInt4".}
proc fcQInputDialog_getInt5(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: cint, minValue: cint): cint {.importc: "QInputDialog_getInt5".}
proc fcQInputDialog_getInt6(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: cint, minValue: cint, maxValue: cint): cint {.importc: "QInputDialog_getInt6".}
proc fcQInputDialog_getInt7(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: cint, minValue: cint, maxValue: cint, step: cint): cint {.importc: "QInputDialog_getInt7".}
proc fcQInputDialog_getInt8(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: cint, minValue: cint, maxValue: cint, step: cint, ok: ptr bool): cint {.importc: "QInputDialog_getInt8".}
proc fcQInputDialog_getInt9(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: cint, minValue: cint, maxValue: cint, step: cint, ok: ptr bool, flags: cint): cint {.importc: "QInputDialog_getInt9".}
proc fcQInputDialog_getDouble4(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64): float64 {.importc: "QInputDialog_getDouble4".}
proc fcQInputDialog_getDouble5(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64): float64 {.importc: "QInputDialog_getDouble5".}
proc fcQInputDialog_getDouble6(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64, maxValue: float64): float64 {.importc: "QInputDialog_getDouble6".}
proc fcQInputDialog_getDouble7(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64, maxValue: float64, decimals: cint): float64 {.importc: "QInputDialog_getDouble7".}
proc fcQInputDialog_getDouble8(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool): float64 {.importc: "QInputDialog_getDouble8".}
proc fcQInputDialog_getDouble9(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool, flags: cint): float64 {.importc: "QInputDialog_getDouble9".}
proc fcQInputDialog_getDouble10(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool, flags: cint, step: float64): float64 {.importc: "QInputDialog_getDouble10".}
proc fQInputDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QInputDialog_virtualbase_minimumSizeHint".}
proc fcQInputDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_minimumSizeHint".}
proc fQInputDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QInputDialog_virtualbase_sizeHint".}
proc fcQInputDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_sizeHint".}
proc fQInputDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QInputDialog_virtualbase_setVisible".}
proc fcQInputDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_setVisible".}
proc fQInputDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QInputDialog_virtualbase_done".}
proc fcQInputDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_done".}
proc fQInputDialog_virtualbase_open(self: pointer, ): void{.importc: "QInputDialog_virtualbase_open".}
proc fcQInputDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_open".}
proc fQInputDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QInputDialog_virtualbase_exec".}
proc fcQInputDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_exec".}
proc fQInputDialog_virtualbase_accept(self: pointer, ): void{.importc: "QInputDialog_virtualbase_accept".}
proc fcQInputDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_accept".}
proc fQInputDialog_virtualbase_reject(self: pointer, ): void{.importc: "QInputDialog_virtualbase_reject".}
proc fcQInputDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_reject".}
proc fQInputDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_keyPressEvent".}
proc fcQInputDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_keyPressEvent".}
proc fQInputDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_closeEvent".}
proc fcQInputDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_closeEvent".}
proc fQInputDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_showEvent".}
proc fcQInputDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_showEvent".}
proc fQInputDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_resizeEvent".}
proc fcQInputDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_resizeEvent".}
proc fQInputDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_contextMenuEvent".}
proc fcQInputDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_contextMenuEvent".}
proc fQInputDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QInputDialog_virtualbase_eventFilter".}
proc fcQInputDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_eventFilter".}
proc fQInputDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QInputDialog_virtualbase_devType".}
proc fcQInputDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_devType".}
proc fQInputDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QInputDialog_virtualbase_heightForWidth".}
proc fcQInputDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_heightForWidth".}
proc fQInputDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QInputDialog_virtualbase_hasHeightForWidth".}
proc fcQInputDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_hasHeightForWidth".}
proc fQInputDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QInputDialog_virtualbase_paintEngine".}
proc fcQInputDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_paintEngine".}
proc fQInputDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QInputDialog_virtualbase_event".}
proc fcQInputDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_event".}
proc fQInputDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_mousePressEvent".}
proc fcQInputDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_mousePressEvent".}
proc fQInputDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_mouseReleaseEvent".}
proc fcQInputDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_mouseReleaseEvent".}
proc fQInputDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQInputDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_mouseDoubleClickEvent".}
proc fQInputDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_mouseMoveEvent".}
proc fcQInputDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_mouseMoveEvent".}
proc fQInputDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_wheelEvent".}
proc fcQInputDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_wheelEvent".}
proc fQInputDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_keyReleaseEvent".}
proc fcQInputDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_keyReleaseEvent".}
proc fQInputDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_focusInEvent".}
proc fcQInputDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_focusInEvent".}
proc fQInputDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_focusOutEvent".}
proc fcQInputDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_focusOutEvent".}
proc fQInputDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_enterEvent".}
proc fcQInputDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_enterEvent".}
proc fQInputDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_leaveEvent".}
proc fcQInputDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_leaveEvent".}
proc fQInputDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_paintEvent".}
proc fcQInputDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_paintEvent".}
proc fQInputDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_moveEvent".}
proc fcQInputDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_moveEvent".}
proc fQInputDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_tabletEvent".}
proc fcQInputDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_tabletEvent".}
proc fQInputDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_actionEvent".}
proc fcQInputDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_actionEvent".}
proc fQInputDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_dragEnterEvent".}
proc fcQInputDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_dragEnterEvent".}
proc fQInputDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_dragMoveEvent".}
proc fcQInputDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_dragMoveEvent".}
proc fQInputDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_dragLeaveEvent".}
proc fcQInputDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_dragLeaveEvent".}
proc fQInputDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_dropEvent".}
proc fcQInputDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_dropEvent".}
proc fQInputDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_hideEvent".}
proc fcQInputDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_hideEvent".}
proc fQInputDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QInputDialog_virtualbase_nativeEvent".}
proc fcQInputDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_nativeEvent".}
proc fQInputDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_changeEvent".}
proc fcQInputDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_changeEvent".}
proc fQInputDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QInputDialog_virtualbase_metric".}
proc fcQInputDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_metric".}
proc fQInputDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QInputDialog_virtualbase_initPainter".}
proc fcQInputDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_initPainter".}
proc fQInputDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QInputDialog_virtualbase_redirected".}
proc fcQInputDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_redirected".}
proc fQInputDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QInputDialog_virtualbase_sharedPainter".}
proc fcQInputDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_sharedPainter".}
proc fQInputDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QInputDialog_virtualbase_inputMethodEvent".}
proc fcQInputDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_inputMethodEvent".}
proc fQInputDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QInputDialog_virtualbase_inputMethodQuery".}
proc fcQInputDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_inputMethodQuery".}
proc fQInputDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QInputDialog_virtualbase_focusNextPrevChild".}
proc fcQInputDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_focusNextPrevChild".}
proc fQInputDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_timerEvent".}
proc fcQInputDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_timerEvent".}
proc fQInputDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_childEvent".}
proc fcQInputDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_childEvent".}
proc fQInputDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QInputDialog_virtualbase_customEvent".}
proc fcQInputDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_customEvent".}
proc fQInputDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QInputDialog_virtualbase_connectNotify".}
proc fcQInputDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_connectNotify".}
proc fQInputDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QInputDialog_virtualbase_disconnectNotify".}
proc fcQInputDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QInputDialog_override_virtual_disconnectNotify".}
proc fcQInputDialog_delete(self: pointer) {.importc: "QInputDialog_delete".}


func init*(T: type gen_qinputdialog_types.QInputDialog, h: ptr cQInputDialog): gen_qinputdialog_types.QInputDialog =
  T(h: h)
proc create*(T: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget): gen_qinputdialog_types.QInputDialog =
  gen_qinputdialog_types.QInputDialog.init(fcQInputDialog_new(parent.h))

proc create*(T: type gen_qinputdialog_types.QInputDialog, ): gen_qinputdialog_types.QInputDialog =
  gen_qinputdialog_types.QInputDialog.init(fcQInputDialog_new2())

proc create*(T: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, flags: cint): gen_qinputdialog_types.QInputDialog =
  gen_qinputdialog_types.QInputDialog.init(fcQInputDialog_new3(parent.h, cint(flags)))

proc metaObject*(self: gen_qinputdialog_types.QInputDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDialog_metaObject(self.h))

proc metacast*(self: gen_qinputdialog_types.QInputDialog, param1: cstring): pointer =
  fcQInputDialog_metacast(self.h, param1)

proc tr*(_: type gen_qinputdialog_types.QInputDialog, s: cstring): string =
  let v_ms = fcQInputDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setInputMode*(self: gen_qinputdialog_types.QInputDialog, mode: cint): void =
  fcQInputDialog_setInputMode(self.h, cint(mode))

proc inputMode*(self: gen_qinputdialog_types.QInputDialog, ): cint =
  cint(fcQInputDialog_inputMode(self.h))

proc setLabelText*(self: gen_qinputdialog_types.QInputDialog, text: string): void =
  fcQInputDialog_setLabelText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc labelText*(self: gen_qinputdialog_types.QInputDialog, ): string =
  let v_ms = fcQInputDialog_labelText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qinputdialog_types.QInputDialog, option: cint): void =
  fcQInputDialog_setOption(self.h, cint(option))

proc testOption*(self: gen_qinputdialog_types.QInputDialog, option: cint): bool =
  fcQInputDialog_testOption(self.h, cint(option))

proc setOptions*(self: gen_qinputdialog_types.QInputDialog, options: cint): void =
  fcQInputDialog_setOptions(self.h, cint(options))

proc options*(self: gen_qinputdialog_types.QInputDialog, ): cint =
  cint(fcQInputDialog_options(self.h))

proc setTextValue*(self: gen_qinputdialog_types.QInputDialog, text: string): void =
  fcQInputDialog_setTextValue(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc textValue*(self: gen_qinputdialog_types.QInputDialog, ): string =
  let v_ms = fcQInputDialog_textValue(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTextEchoMode*(self: gen_qinputdialog_types.QInputDialog, mode: cint): void =
  fcQInputDialog_setTextEchoMode(self.h, cint(mode))

proc textEchoMode*(self: gen_qinputdialog_types.QInputDialog, ): cint =
  cint(fcQInputDialog_textEchoMode(self.h))

proc setComboBoxEditable*(self: gen_qinputdialog_types.QInputDialog, editable: bool): void =
  fcQInputDialog_setComboBoxEditable(self.h, editable)

proc isComboBoxEditable*(self: gen_qinputdialog_types.QInputDialog, ): bool =
  fcQInputDialog_isComboBoxEditable(self.h)

proc setComboBoxItems*(self: gen_qinputdialog_types.QInputDialog, items: seq[string]): void =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  fcQInputDialog_setComboBoxItems(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc comboBoxItems*(self: gen_qinputdialog_types.QInputDialog, ): seq[string] =
  var v_ma = fcQInputDialog_comboBoxItems(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setIntValue*(self: gen_qinputdialog_types.QInputDialog, value: cint): void =
  fcQInputDialog_setIntValue(self.h, value)

proc intValue*(self: gen_qinputdialog_types.QInputDialog, ): cint =
  fcQInputDialog_intValue(self.h)

proc setIntMinimum*(self: gen_qinputdialog_types.QInputDialog, min: cint): void =
  fcQInputDialog_setIntMinimum(self.h, min)

proc intMinimum*(self: gen_qinputdialog_types.QInputDialog, ): cint =
  fcQInputDialog_intMinimum(self.h)

proc setIntMaximum*(self: gen_qinputdialog_types.QInputDialog, max: cint): void =
  fcQInputDialog_setIntMaximum(self.h, max)

proc intMaximum*(self: gen_qinputdialog_types.QInputDialog, ): cint =
  fcQInputDialog_intMaximum(self.h)

proc setIntRange*(self: gen_qinputdialog_types.QInputDialog, min: cint, max: cint): void =
  fcQInputDialog_setIntRange(self.h, min, max)

proc setIntStep*(self: gen_qinputdialog_types.QInputDialog, step: cint): void =
  fcQInputDialog_setIntStep(self.h, step)

proc intStep*(self: gen_qinputdialog_types.QInputDialog, ): cint =
  fcQInputDialog_intStep(self.h)

proc setDoubleValue*(self: gen_qinputdialog_types.QInputDialog, value: float64): void =
  fcQInputDialog_setDoubleValue(self.h, value)

proc doubleValue*(self: gen_qinputdialog_types.QInputDialog, ): float64 =
  fcQInputDialog_doubleValue(self.h)

proc setDoubleMinimum*(self: gen_qinputdialog_types.QInputDialog, min: float64): void =
  fcQInputDialog_setDoubleMinimum(self.h, min)

proc doubleMinimum*(self: gen_qinputdialog_types.QInputDialog, ): float64 =
  fcQInputDialog_doubleMinimum(self.h)

proc setDoubleMaximum*(self: gen_qinputdialog_types.QInputDialog, max: float64): void =
  fcQInputDialog_setDoubleMaximum(self.h, max)

proc doubleMaximum*(self: gen_qinputdialog_types.QInputDialog, ): float64 =
  fcQInputDialog_doubleMaximum(self.h)

proc setDoubleRange*(self: gen_qinputdialog_types.QInputDialog, min: float64, max: float64): void =
  fcQInputDialog_setDoubleRange(self.h, min, max)

proc setDoubleDecimals*(self: gen_qinputdialog_types.QInputDialog, decimals: cint): void =
  fcQInputDialog_setDoubleDecimals(self.h, decimals)

proc doubleDecimals*(self: gen_qinputdialog_types.QInputDialog, ): cint =
  fcQInputDialog_doubleDecimals(self.h)

proc setOkButtonText*(self: gen_qinputdialog_types.QInputDialog, text: string): void =
  fcQInputDialog_setOkButtonText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc okButtonText*(self: gen_qinputdialog_types.QInputDialog, ): string =
  let v_ms = fcQInputDialog_okButtonText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCancelButtonText*(self: gen_qinputdialog_types.QInputDialog, text: string): void =
  fcQInputDialog_setCancelButtonText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc cancelButtonText*(self: gen_qinputdialog_types.QInputDialog, ): string =
  let v_ms = fcQInputDialog_cancelButtonText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc minimumSizeHint*(self: gen_qinputdialog_types.QInputDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQInputDialog_minimumSizeHint(self.h))

proc sizeHint*(self: gen_qinputdialog_types.QInputDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQInputDialog_sizeHint(self.h))

proc setVisible*(self: gen_qinputdialog_types.QInputDialog, visible: bool): void =
  fcQInputDialog_setVisible(self.h, visible)

proc getText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string): string =
  let v_ms = fcQInputDialog_getText(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string): string =
  let v_ms = fcQInputDialog_getMultiLineText(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, items: seq[string]): string =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string): cint =
  fcQInputDialog_getInt(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))))

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string): float64 =
  fcQInputDialog_getDouble(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))))

proc setDoubleStep*(self: gen_qinputdialog_types.QInputDialog, step: float64): void =
  fcQInputDialog_setDoubleStep(self.h, step)

proc doubleStep*(self: gen_qinputdialog_types.QInputDialog, ): float64 =
  fcQInputDialog_doubleStep(self.h)

proc textValueChanged*(self: gen_qinputdialog_types.QInputDialog, text: string): void =
  fcQInputDialog_textValueChanged(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QInputDialogtextValueChangedSlot* = proc(text: string)
proc miqt_exec_callback_QInputDialog_textValueChanged(slot: int, text: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QInputDialogtextValueChangedSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc ontextValueChanged*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogtextValueChangedSlot) =
  var tmp = new QInputDialogtextValueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_textValueChanged(self.h, cast[int](addr tmp[]))

proc textValueSelected*(self: gen_qinputdialog_types.QInputDialog, text: string): void =
  fcQInputDialog_textValueSelected(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QInputDialogtextValueSelectedSlot* = proc(text: string)
proc miqt_exec_callback_QInputDialog_textValueSelected(slot: int, text: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QInputDialogtextValueSelectedSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc ontextValueSelected*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogtextValueSelectedSlot) =
  var tmp = new QInputDialogtextValueSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_textValueSelected(self.h, cast[int](addr tmp[]))

proc intValueChanged*(self: gen_qinputdialog_types.QInputDialog, value: cint): void =
  fcQInputDialog_intValueChanged(self.h, value)

type QInputDialogintValueChangedSlot* = proc(value: cint)
proc miqt_exec_callback_QInputDialog_intValueChanged(slot: int, value: cint) {.exportc.} =
  let nimfunc = cast[ptr QInputDialogintValueChangedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc onintValueChanged*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogintValueChangedSlot) =
  var tmp = new QInputDialogintValueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_intValueChanged(self.h, cast[int](addr tmp[]))

proc intValueSelected*(self: gen_qinputdialog_types.QInputDialog, value: cint): void =
  fcQInputDialog_intValueSelected(self.h, value)

type QInputDialogintValueSelectedSlot* = proc(value: cint)
proc miqt_exec_callback_QInputDialog_intValueSelected(slot: int, value: cint) {.exportc.} =
  let nimfunc = cast[ptr QInputDialogintValueSelectedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc onintValueSelected*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogintValueSelectedSlot) =
  var tmp = new QInputDialogintValueSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_intValueSelected(self.h, cast[int](addr tmp[]))

proc doubleValueChanged*(self: gen_qinputdialog_types.QInputDialog, value: float64): void =
  fcQInputDialog_doubleValueChanged(self.h, value)

type QInputDialogdoubleValueChangedSlot* = proc(value: float64)
proc miqt_exec_callback_QInputDialog_doubleValueChanged(slot: int, value: float64) {.exportc.} =
  let nimfunc = cast[ptr QInputDialogdoubleValueChangedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc ondoubleValueChanged*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdoubleValueChangedSlot) =
  var tmp = new QInputDialogdoubleValueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_doubleValueChanged(self.h, cast[int](addr tmp[]))

proc doubleValueSelected*(self: gen_qinputdialog_types.QInputDialog, value: float64): void =
  fcQInputDialog_doubleValueSelected(self.h, value)

type QInputDialogdoubleValueSelectedSlot* = proc(value: float64)
proc miqt_exec_callback_QInputDialog_doubleValueSelected(slot: int, value: float64) {.exportc.} =
  let nimfunc = cast[ptr QInputDialogdoubleValueSelectedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc ondoubleValueSelected*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdoubleValueSelectedSlot) =
  var tmp = new QInputDialogdoubleValueSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_doubleValueSelected(self.h, cast[int](addr tmp[]))

proc done*(self: gen_qinputdialog_types.QInputDialog, resultVal: cint): void =
  fcQInputDialog_done(self.h, resultVal)

proc tr*(_: type gen_qinputdialog_types.QInputDialog, s: cstring, c: cstring): string =
  let v_ms = fcQInputDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qinputdialog_types.QInputDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQInputDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qinputdialog_types.QInputDialog, option: cint, on: bool): void =
  fcQInputDialog_setOption2(self.h, cint(option), on)

proc getText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, echo: cint): string =
  let v_ms = fcQInputDialog_getText4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), cint(echo))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, echo: cint, text: string): string =
  let v_ms = fcQInputDialog_getText5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), cint(echo), struct_miqt_string(data: text, len: csize_t(len(text))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, echo: cint, text: string, ok: ptr bool): string =
  let v_ms = fcQInputDialog_getText6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), cint(echo), struct_miqt_string(data: text, len: csize_t(len(text))), ok)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, echo: cint, text: string, ok: ptr bool, flags: cint): string =
  let v_ms = fcQInputDialog_getText7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), cint(echo), struct_miqt_string(data: text, len: csize_t(len(text))), ok, cint(flags))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, echo: cint, text: string, ok: ptr bool, flags: cint, inputMethodHints: cint): string =
  let v_ms = fcQInputDialog_getText8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), cint(echo), struct_miqt_string(data: text, len: csize_t(len(text))), ok, cint(flags), cint(inputMethodHints))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, text: string): string =
  let v_ms = fcQInputDialog_getMultiLineText4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_string(data: text, len: csize_t(len(text))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, text: string, ok: ptr bool): string =
  let v_ms = fcQInputDialog_getMultiLineText5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_string(data: text, len: csize_t(len(text))), ok)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, text: string, ok: ptr bool, flags: cint): string =
  let v_ms = fcQInputDialog_getMultiLineText6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_string(data: text, len: csize_t(len(text))), ok, cint(flags))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, text: string, ok: ptr bool, flags: cint, inputMethodHints: cint): string =
  let v_ms = fcQInputDialog_getMultiLineText7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_string(data: text, len: csize_t(len(text))), ok, cint(flags), cint(inputMethodHints))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, items: seq[string], current: cint): string =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, items: seq[string], current: cint, editable: bool): string =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current, editable)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, items: seq[string], current: cint, editable: bool, ok: ptr bool): string =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current, editable, ok)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, items: seq[string], current: cint, editable: bool, ok: ptr bool, flags: cint): string =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current, editable, ok, cint(flags))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, items: seq[string], current: cint, editable: bool, ok: ptr bool, flags: cint, inputMethodHints: cint): string =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: items[i], len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem9(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current, editable, ok, cint(flags), cint(inputMethodHints))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: cint): cint =
  fcQInputDialog_getInt4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value)

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: cint, minValue: cint): cint =
  fcQInputDialog_getInt5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue)

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: cint, minValue: cint, maxValue: cint): cint =
  fcQInputDialog_getInt6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue)

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: cint, minValue: cint, maxValue: cint, step: cint): cint =
  fcQInputDialog_getInt7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, step)

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: cint, minValue: cint, maxValue: cint, step: cint, ok: ptr bool): cint =
  fcQInputDialog_getInt8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, step, ok)

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: cint, minValue: cint, maxValue: cint, step: cint, ok: ptr bool, flags: cint): cint =
  fcQInputDialog_getInt9(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, step, ok, cint(flags))

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: float64): float64 =
  fcQInputDialog_getDouble4(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value)

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: float64, minValue: float64): float64 =
  fcQInputDialog_getDouble5(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue)

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: float64, minValue: float64, maxValue: float64): float64 =
  fcQInputDialog_getDouble6(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue)

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: float64, minValue: float64, maxValue: float64, decimals: cint): float64 =
  fcQInputDialog_getDouble7(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, decimals)

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool): float64 =
  fcQInputDialog_getDouble8(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, decimals, ok)

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool, flags: cint): float64 =
  fcQInputDialog_getDouble9(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, decimals, ok, cint(flags))

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool, flags: cint, step: float64): float64 =
  fcQInputDialog_getDouble10(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, decimals, ok, cint(flags), step)

proc QInputDialogminimumSizeHint*(self: gen_qinputdialog_types.QInputDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQInputDialog_virtualbase_minimumSizeHint(self.h))

type QInputDialogminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QInputDialogminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_minimumSizeHint(self: ptr cQInputDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QInputDialog_minimumSizeHint ".} =
  var nimfunc = cast[ptr QInputDialogminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QInputDialogsizeHint*(self: gen_qinputdialog_types.QInputDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQInputDialog_virtualbase_sizeHint(self.h))

type QInputDialogsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogsizeHintProc) =
  # TODO check subclass
  var tmp = new QInputDialogsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_sizeHint(self: ptr cQInputDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QInputDialog_sizeHint ".} =
  var nimfunc = cast[ptr QInputDialogsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QInputDialogsetVisible*(self: gen_qinputdialog_types.QInputDialog, visible: bool): void =
  fQInputDialog_virtualbase_setVisible(self.h, visible)

type QInputDialogsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogsetVisibleProc) =
  # TODO check subclass
  var tmp = new QInputDialogsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_setVisible(self: ptr cQInputDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QInputDialog_setVisible ".} =
  var nimfunc = cast[ptr QInputDialogsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QInputDialogdone*(self: gen_qinputdialog_types.QInputDialog, resultVal: cint): void =
  fQInputDialog_virtualbase_done(self.h, resultVal)

type QInputDialogdoneProc* = proc(resultVal: cint): void
proc ondone*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdoneProc) =
  # TODO check subclass
  var tmp = new QInputDialogdoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_done(self: ptr cQInputDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QInputDialog_done ".} =
  var nimfunc = cast[ptr QInputDialogdoneProc](cast[pointer](slot))
  let slotval1 = resultVal


  nimfunc[](slotval1)
proc QInputDialogopen*(self: gen_qinputdialog_types.QInputDialog, ): void =
  fQInputDialog_virtualbase_open(self.h)

type QInputDialogopenProc* = proc(): void
proc onopen*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogopenProc) =
  # TODO check subclass
  var tmp = new QInputDialogopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_open(self: ptr cQInputDialog, slot: int): void {.exportc: "miqt_exec_callback_QInputDialog_open ".} =
  var nimfunc = cast[ptr QInputDialogopenProc](cast[pointer](slot))

  nimfunc[]()
proc QInputDialogexec*(self: gen_qinputdialog_types.QInputDialog, ): cint =
  fQInputDialog_virtualbase_exec(self.h)

type QInputDialogexecProc* = proc(): cint
proc onexec*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogexecProc) =
  # TODO check subclass
  var tmp = new QInputDialogexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_exec(self: ptr cQInputDialog, slot: int): cint {.exportc: "miqt_exec_callback_QInputDialog_exec ".} =
  var nimfunc = cast[ptr QInputDialogexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QInputDialogaccept*(self: gen_qinputdialog_types.QInputDialog, ): void =
  fQInputDialog_virtualbase_accept(self.h)

type QInputDialogacceptProc* = proc(): void
proc onaccept*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogacceptProc) =
  # TODO check subclass
  var tmp = new QInputDialogacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_accept(self: ptr cQInputDialog, slot: int): void {.exportc: "miqt_exec_callback_QInputDialog_accept ".} =
  var nimfunc = cast[ptr QInputDialogacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QInputDialogreject*(self: gen_qinputdialog_types.QInputDialog, ): void =
  fQInputDialog_virtualbase_reject(self.h)

type QInputDialogrejectProc* = proc(): void
proc onreject*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogrejectProc) =
  # TODO check subclass
  var tmp = new QInputDialogrejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_reject(self: ptr cQInputDialog, slot: int): void {.exportc: "miqt_exec_callback_QInputDialog_reject ".} =
  var nimfunc = cast[ptr QInputDialogrejectProc](cast[pointer](slot))

  nimfunc[]()
proc QInputDialogkeyPressEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QKeyEvent): void =
  fQInputDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QInputDialogkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_keyPressEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_keyPressEvent ".} =
  var nimfunc = cast[ptr QInputDialogkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QInputDialogcloseEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QCloseEvent): void =
  fQInputDialog_virtualbase_closeEvent(self.h, param1.h)

type QInputDialogcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogcloseEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_closeEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_closeEvent ".} =
  var nimfunc = cast[ptr QInputDialogcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QInputDialogshowEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QShowEvent): void =
  fQInputDialog_virtualbase_showEvent(self.h, param1.h)

type QInputDialogshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogshowEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_showEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_showEvent ".} =
  var nimfunc = cast[ptr QInputDialogshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QInputDialogresizeEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QResizeEvent): void =
  fQInputDialog_virtualbase_resizeEvent(self.h, param1.h)

type QInputDialogresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogresizeEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_resizeEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_resizeEvent ".} =
  var nimfunc = cast[ptr QInputDialogresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QInputDialogcontextMenuEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fQInputDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QInputDialogcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_contextMenuEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_contextMenuEvent ".} =
  var nimfunc = cast[ptr QInputDialogcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QInputDialogeventFilter*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQInputDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QInputDialogeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogeventFilterProc) =
  # TODO check subclass
  var tmp = new QInputDialogeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_eventFilter(self: ptr cQInputDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QInputDialog_eventFilter ".} =
  var nimfunc = cast[ptr QInputDialogeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QInputDialogdevType*(self: gen_qinputdialog_types.QInputDialog, ): cint =
  fQInputDialog_virtualbase_devType(self.h)

type QInputDialogdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdevTypeProc) =
  # TODO check subclass
  var tmp = new QInputDialogdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_devType(self: ptr cQInputDialog, slot: int): cint {.exportc: "miqt_exec_callback_QInputDialog_devType ".} =
  var nimfunc = cast[ptr QInputDialogdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QInputDialogheightForWidth*(self: gen_qinputdialog_types.QInputDialog, param1: cint): cint =
  fQInputDialog_virtualbase_heightForWidth(self.h, param1)

type QInputDialogheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogheightForWidthProc) =
  # TODO check subclass
  var tmp = new QInputDialogheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_heightForWidth(self: ptr cQInputDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QInputDialog_heightForWidth ".} =
  var nimfunc = cast[ptr QInputDialogheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QInputDialoghasHeightForWidth*(self: gen_qinputdialog_types.QInputDialog, ): bool =
  fQInputDialog_virtualbase_hasHeightForWidth(self.h)

type QInputDialoghasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialoghasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QInputDialoghasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_hasHeightForWidth(self: ptr cQInputDialog, slot: int): bool {.exportc: "miqt_exec_callback_QInputDialog_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QInputDialoghasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QInputDialogpaintEngine*(self: gen_qinputdialog_types.QInputDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQInputDialog_virtualbase_paintEngine(self.h))

type QInputDialogpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogpaintEngineProc) =
  # TODO check subclass
  var tmp = new QInputDialogpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_paintEngine(self: ptr cQInputDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QInputDialog_paintEngine ".} =
  var nimfunc = cast[ptr QInputDialogpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QInputDialogevent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QEvent): bool =
  fQInputDialog_virtualbase_event(self.h, event.h)

type QInputDialogeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogeventProc) =
  # TODO check subclass
  var tmp = new QInputDialogeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_event(self: ptr cQInputDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QInputDialog_event ".} =
  var nimfunc = cast[ptr QInputDialogeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QInputDialogmousePressEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMouseEvent): void =
  fQInputDialog_virtualbase_mousePressEvent(self.h, event.h)

type QInputDialogmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogmousePressEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_mousePressEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_mousePressEvent ".} =
  var nimfunc = cast[ptr QInputDialogmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogmouseReleaseEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMouseEvent): void =
  fQInputDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QInputDialogmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_mouseReleaseEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QInputDialogmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogmouseDoubleClickEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMouseEvent): void =
  fQInputDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QInputDialogmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_mouseDoubleClickEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QInputDialogmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogmouseMoveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMouseEvent): void =
  fQInputDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QInputDialogmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_mouseMoveEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QInputDialogmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogwheelEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QWheelEvent): void =
  fQInputDialog_virtualbase_wheelEvent(self.h, event.h)

type QInputDialogwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogwheelEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_wheelEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_wheelEvent ".} =
  var nimfunc = cast[ptr QInputDialogwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogkeyReleaseEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QKeyEvent): void =
  fQInputDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QInputDialogkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_keyReleaseEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QInputDialogkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogfocusInEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QFocusEvent): void =
  fQInputDialog_virtualbase_focusInEvent(self.h, event.h)

type QInputDialogfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogfocusInEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_focusInEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_focusInEvent ".} =
  var nimfunc = cast[ptr QInputDialogfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogfocusOutEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QFocusEvent): void =
  fQInputDialog_virtualbase_focusOutEvent(self.h, event.h)

type QInputDialogfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_focusOutEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_focusOutEvent ".} =
  var nimfunc = cast[ptr QInputDialogfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogenterEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QEnterEvent): void =
  fQInputDialog_virtualbase_enterEvent(self.h, event.h)

type QInputDialogenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogenterEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_enterEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_enterEvent ".} =
  var nimfunc = cast[ptr QInputDialogenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogleaveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QEvent): void =
  fQInputDialog_virtualbase_leaveEvent(self.h, event.h)

type QInputDialogleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogleaveEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_leaveEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_leaveEvent ".} =
  var nimfunc = cast[ptr QInputDialogleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogpaintEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QPaintEvent): void =
  fQInputDialog_virtualbase_paintEvent(self.h, event.h)

type QInputDialogpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogpaintEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_paintEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_paintEvent ".} =
  var nimfunc = cast[ptr QInputDialogpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogmoveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMoveEvent): void =
  fQInputDialog_virtualbase_moveEvent(self.h, event.h)

type QInputDialogmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogmoveEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_moveEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_moveEvent ".} =
  var nimfunc = cast[ptr QInputDialogmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogtabletEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QTabletEvent): void =
  fQInputDialog_virtualbase_tabletEvent(self.h, event.h)

type QInputDialogtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogtabletEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_tabletEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_tabletEvent ".} =
  var nimfunc = cast[ptr QInputDialogtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogactionEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QActionEvent): void =
  fQInputDialog_virtualbase_actionEvent(self.h, event.h)

type QInputDialogactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogactionEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_actionEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_actionEvent ".} =
  var nimfunc = cast[ptr QInputDialogactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogdragEnterEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fQInputDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QInputDialogdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_dragEnterEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_dragEnterEvent ".} =
  var nimfunc = cast[ptr QInputDialogdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogdragMoveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fQInputDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QInputDialogdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_dragMoveEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_dragMoveEvent ".} =
  var nimfunc = cast[ptr QInputDialogdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogdragLeaveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fQInputDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QInputDialogdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_dragLeaveEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QInputDialogdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogdropEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QDropEvent): void =
  fQInputDialog_virtualbase_dropEvent(self.h, event.h)

type QInputDialogdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdropEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_dropEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_dropEvent ".} =
  var nimfunc = cast[ptr QInputDialogdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialoghideEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QHideEvent): void =
  fQInputDialog_virtualbase_hideEvent(self.h, event.h)

type QInputDialoghideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialoghideEventProc) =
  # TODO check subclass
  var tmp = new QInputDialoghideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_hideEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_hideEvent ".} =
  var nimfunc = cast[ptr QInputDialoghideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialognativeEvent*(self: gen_qinputdialog_types.QInputDialog, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQInputDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QInputDialognativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialognativeEventProc) =
  # TODO check subclass
  var tmp = new QInputDialognativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_nativeEvent(self: ptr cQInputDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QInputDialog_nativeEvent ".} =
  var nimfunc = cast[ptr QInputDialognativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QInputDialogchangeEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qcoreevent_types.QEvent): void =
  fQInputDialog_virtualbase_changeEvent(self.h, param1.h)

type QInputDialogchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogchangeEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_changeEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_changeEvent ".} =
  var nimfunc = cast[ptr QInputDialogchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QInputDialogmetric*(self: gen_qinputdialog_types.QInputDialog, param1: cint): cint =
  fQInputDialog_virtualbase_metric(self.h, cint(param1))

type QInputDialogmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogmetricProc) =
  # TODO check subclass
  var tmp = new QInputDialogmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_metric(self: ptr cQInputDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QInputDialog_metric ".} =
  var nimfunc = cast[ptr QInputDialogmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QInputDialoginitPainter*(self: gen_qinputdialog_types.QInputDialog, painter: gen_qpainter_types.QPainter): void =
  fQInputDialog_virtualbase_initPainter(self.h, painter.h)

type QInputDialoginitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialoginitPainterProc) =
  # TODO check subclass
  var tmp = new QInputDialoginitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_initPainter(self: ptr cQInputDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_initPainter ".} =
  var nimfunc = cast[ptr QInputDialoginitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QInputDialogredirected*(self: gen_qinputdialog_types.QInputDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQInputDialog_virtualbase_redirected(self.h, offset.h))

type QInputDialogredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogredirectedProc) =
  # TODO check subclass
  var tmp = new QInputDialogredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_redirected(self: ptr cQInputDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QInputDialog_redirected ".} =
  var nimfunc = cast[ptr QInputDialogredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QInputDialogsharedPainter*(self: gen_qinputdialog_types.QInputDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQInputDialog_virtualbase_sharedPainter(self.h))

type QInputDialogsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogsharedPainterProc) =
  # TODO check subclass
  var tmp = new QInputDialogsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_sharedPainter(self: ptr cQInputDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QInputDialog_sharedPainter ".} =
  var nimfunc = cast[ptr QInputDialogsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QInputDialoginputMethodEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fQInputDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QInputDialoginputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialoginputMethodEventProc) =
  # TODO check subclass
  var tmp = new QInputDialoginputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_inputMethodEvent(self: ptr cQInputDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_inputMethodEvent ".} =
  var nimfunc = cast[ptr QInputDialoginputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QInputDialoginputMethodQuery*(self: gen_qinputdialog_types.QInputDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQInputDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QInputDialoginputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialoginputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QInputDialoginputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_inputMethodQuery(self: ptr cQInputDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QInputDialog_inputMethodQuery ".} =
  var nimfunc = cast[ptr QInputDialoginputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QInputDialogfocusNextPrevChild*(self: gen_qinputdialog_types.QInputDialog, next: bool): bool =
  fQInputDialog_virtualbase_focusNextPrevChild(self.h, next)

type QInputDialogfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QInputDialogfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_focusNextPrevChild(self: ptr cQInputDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QInputDialog_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QInputDialogfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QInputDialogtimerEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fQInputDialog_virtualbase_timerEvent(self.h, event.h)

type QInputDialogtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogtimerEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_timerEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_timerEvent ".} =
  var nimfunc = cast[ptr QInputDialogtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogchildEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fQInputDialog_virtualbase_childEvent(self.h, event.h)

type QInputDialogchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogchildEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_childEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_childEvent ".} =
  var nimfunc = cast[ptr QInputDialogchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogcustomEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QEvent): void =
  fQInputDialog_virtualbase_customEvent(self.h, event.h)

type QInputDialogcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogcustomEventProc) =
  # TODO check subclass
  var tmp = new QInputDialogcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_customEvent(self: ptr cQInputDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_customEvent ".} =
  var nimfunc = cast[ptr QInputDialogcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QInputDialogconnectNotify*(self: gen_qinputdialog_types.QInputDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQInputDialog_virtualbase_connectNotify(self.h, signal.h)

type QInputDialogconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QInputDialogconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_connectNotify(self: ptr cQInputDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_connectNotify ".} =
  var nimfunc = cast[ptr QInputDialogconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QInputDialogdisconnectNotify*(self: gen_qinputdialog_types.QInputDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQInputDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QInputDialogdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QInputDialogdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDialog_disconnectNotify(self: ptr cQInputDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QInputDialog_disconnectNotify ".} =
  var nimfunc = cast[ptr QInputDialogdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qinputdialog_types.QInputDialog) =
  fcQInputDialog_delete(self.h)
