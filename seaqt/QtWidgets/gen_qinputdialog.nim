import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets") & " -fPIC"
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

proc fcQInputDialog_metaObject(self: pointer): pointer {.importc: "QInputDialog_metaObject".}
proc fcQInputDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputDialog_metacast".}
proc fcQInputDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QInputDialog_metacall".}
proc fcQInputDialog_tr(s: cstring): struct_miqt_string {.importc: "QInputDialog_tr".}
proc fcQInputDialog_setInputMode(self: pointer, mode: cint): void {.importc: "QInputDialog_setInputMode".}
proc fcQInputDialog_inputMode(self: pointer): cint {.importc: "QInputDialog_inputMode".}
proc fcQInputDialog_setLabelText(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_setLabelText".}
proc fcQInputDialog_labelText(self: pointer): struct_miqt_string {.importc: "QInputDialog_labelText".}
proc fcQInputDialog_setOption(self: pointer, option: cint): void {.importc: "QInputDialog_setOption".}
proc fcQInputDialog_testOption(self: pointer, option: cint): bool {.importc: "QInputDialog_testOption".}
proc fcQInputDialog_setOptions(self: pointer, options: cint): void {.importc: "QInputDialog_setOptions".}
proc fcQInputDialog_options(self: pointer): cint {.importc: "QInputDialog_options".}
proc fcQInputDialog_setTextValue(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_setTextValue".}
proc fcQInputDialog_textValue(self: pointer): struct_miqt_string {.importc: "QInputDialog_textValue".}
proc fcQInputDialog_setTextEchoMode(self: pointer, mode: cint): void {.importc: "QInputDialog_setTextEchoMode".}
proc fcQInputDialog_textEchoMode(self: pointer): cint {.importc: "QInputDialog_textEchoMode".}
proc fcQInputDialog_setComboBoxEditable(self: pointer, editable: bool): void {.importc: "QInputDialog_setComboBoxEditable".}
proc fcQInputDialog_isComboBoxEditable(self: pointer): bool {.importc: "QInputDialog_isComboBoxEditable".}
proc fcQInputDialog_setComboBoxItems(self: pointer, items: struct_miqt_array): void {.importc: "QInputDialog_setComboBoxItems".}
proc fcQInputDialog_comboBoxItems(self: pointer): struct_miqt_array {.importc: "QInputDialog_comboBoxItems".}
proc fcQInputDialog_setIntValue(self: pointer, value: cint): void {.importc: "QInputDialog_setIntValue".}
proc fcQInputDialog_intValue(self: pointer): cint {.importc: "QInputDialog_intValue".}
proc fcQInputDialog_setIntMinimum(self: pointer, min: cint): void {.importc: "QInputDialog_setIntMinimum".}
proc fcQInputDialog_intMinimum(self: pointer): cint {.importc: "QInputDialog_intMinimum".}
proc fcQInputDialog_setIntMaximum(self: pointer, max: cint): void {.importc: "QInputDialog_setIntMaximum".}
proc fcQInputDialog_intMaximum(self: pointer): cint {.importc: "QInputDialog_intMaximum".}
proc fcQInputDialog_setIntRange(self: pointer, min: cint, max: cint): void {.importc: "QInputDialog_setIntRange".}
proc fcQInputDialog_setIntStep(self: pointer, step: cint): void {.importc: "QInputDialog_setIntStep".}
proc fcQInputDialog_intStep(self: pointer): cint {.importc: "QInputDialog_intStep".}
proc fcQInputDialog_setDoubleValue(self: pointer, value: float64): void {.importc: "QInputDialog_setDoubleValue".}
proc fcQInputDialog_doubleValue(self: pointer): float64 {.importc: "QInputDialog_doubleValue".}
proc fcQInputDialog_setDoubleMinimum(self: pointer, min: float64): void {.importc: "QInputDialog_setDoubleMinimum".}
proc fcQInputDialog_doubleMinimum(self: pointer): float64 {.importc: "QInputDialog_doubleMinimum".}
proc fcQInputDialog_setDoubleMaximum(self: pointer, max: float64): void {.importc: "QInputDialog_setDoubleMaximum".}
proc fcQInputDialog_doubleMaximum(self: pointer): float64 {.importc: "QInputDialog_doubleMaximum".}
proc fcQInputDialog_setDoubleRange(self: pointer, min: float64, max: float64): void {.importc: "QInputDialog_setDoubleRange".}
proc fcQInputDialog_setDoubleDecimals(self: pointer, decimals: cint): void {.importc: "QInputDialog_setDoubleDecimals".}
proc fcQInputDialog_doubleDecimals(self: pointer): cint {.importc: "QInputDialog_doubleDecimals".}
proc fcQInputDialog_setOkButtonText(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_setOkButtonText".}
proc fcQInputDialog_okButtonText(self: pointer): struct_miqt_string {.importc: "QInputDialog_okButtonText".}
proc fcQInputDialog_setCancelButtonText(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_setCancelButtonText".}
proc fcQInputDialog_cancelButtonText(self: pointer): struct_miqt_string {.importc: "QInputDialog_cancelButtonText".}
proc fcQInputDialog_minimumSizeHint(self: pointer): pointer {.importc: "QInputDialog_minimumSizeHint".}
proc fcQInputDialog_sizeHint(self: pointer): pointer {.importc: "QInputDialog_sizeHint".}
proc fcQInputDialog_setVisible(self: pointer, visible: bool): void {.importc: "QInputDialog_setVisible".}
proc fcQInputDialog_getText(parent: pointer, title: struct_miqt_string, label: struct_miqt_string): struct_miqt_string {.importc: "QInputDialog_getText".}
proc fcQInputDialog_getMultiLineText(parent: pointer, title: struct_miqt_string, label: struct_miqt_string): struct_miqt_string {.importc: "QInputDialog_getMultiLineText".}
proc fcQInputDialog_getItem(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, items: struct_miqt_array): struct_miqt_string {.importc: "QInputDialog_getItem".}
proc fcQInputDialog_getInt(parent: pointer, title: struct_miqt_string, label: struct_miqt_string): cint {.importc: "QInputDialog_getInt".}
proc fcQInputDialog_getDouble(parent: pointer, title: struct_miqt_string, label: struct_miqt_string): float64 {.importc: "QInputDialog_getDouble".}
proc fcQInputDialog_setDoubleStep(self: pointer, step: float64): void {.importc: "QInputDialog_setDoubleStep".}
proc fcQInputDialog_doubleStep(self: pointer): float64 {.importc: "QInputDialog_doubleStep".}
proc fcQInputDialog_textValueChanged(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_textValueChanged".}
proc fcQInputDialog_connect_textValueChanged(self: pointer, slot: int, callback: proc (slot: int, text: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QInputDialog_connect_textValueChanged".}
proc fcQInputDialog_textValueSelected(self: pointer, text: struct_miqt_string): void {.importc: "QInputDialog_textValueSelected".}
proc fcQInputDialog_connect_textValueSelected(self: pointer, slot: int, callback: proc (slot: int, text: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QInputDialog_connect_textValueSelected".}
proc fcQInputDialog_intValueChanged(self: pointer, value: cint): void {.importc: "QInputDialog_intValueChanged".}
proc fcQInputDialog_connect_intValueChanged(self: pointer, slot: int, callback: proc (slot: int, value: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QInputDialog_connect_intValueChanged".}
proc fcQInputDialog_intValueSelected(self: pointer, value: cint): void {.importc: "QInputDialog_intValueSelected".}
proc fcQInputDialog_connect_intValueSelected(self: pointer, slot: int, callback: proc (slot: int, value: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QInputDialog_connect_intValueSelected".}
proc fcQInputDialog_doubleValueChanged(self: pointer, value: float64): void {.importc: "QInputDialog_doubleValueChanged".}
proc fcQInputDialog_connect_doubleValueChanged(self: pointer, slot: int, callback: proc (slot: int, value: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QInputDialog_connect_doubleValueChanged".}
proc fcQInputDialog_doubleValueSelected(self: pointer, value: float64): void {.importc: "QInputDialog_doubleValueSelected".}
proc fcQInputDialog_connect_doubleValueSelected(self: pointer, slot: int, callback: proc (slot: int, value: float64) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QInputDialog_connect_doubleValueSelected".}
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
proc fcQInputDialog_vtbl(self: pointer): pointer {.importc: "QInputDialog_vtbl".}
proc fcQInputDialog_vdata(self: pointer): pointer {.importc: "QInputDialog_vdata".}
type cQInputDialogVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  done*: proc(self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  accept*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
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
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQInputDialog_virtualbase_metaObject(self: pointer): pointer {.importc: "QInputDialog_virtualbase_metaObject".}
proc fcQInputDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputDialog_virtualbase_metacast".}
proc fcQInputDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QInputDialog_virtualbase_metacall".}
proc fcQInputDialog_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QInputDialog_virtualbase_minimumSizeHint".}
proc fcQInputDialog_virtualbase_sizeHint(self: pointer): pointer {.importc: "QInputDialog_virtualbase_sizeHint".}
proc fcQInputDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QInputDialog_virtualbase_setVisible".}
proc fcQInputDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QInputDialog_virtualbase_done".}
proc fcQInputDialog_virtualbase_open(self: pointer): void {.importc: "QInputDialog_virtualbase_open".}
proc fcQInputDialog_virtualbase_exec(self: pointer): cint {.importc: "QInputDialog_virtualbase_exec".}
proc fcQInputDialog_virtualbase_accept(self: pointer): void {.importc: "QInputDialog_virtualbase_accept".}
proc fcQInputDialog_virtualbase_reject(self: pointer): void {.importc: "QInputDialog_virtualbase_reject".}
proc fcQInputDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_keyPressEvent".}
proc fcQInputDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_closeEvent".}
proc fcQInputDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_showEvent".}
proc fcQInputDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_resizeEvent".}
proc fcQInputDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_contextMenuEvent".}
proc fcQInputDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QInputDialog_virtualbase_eventFilter".}
proc fcQInputDialog_virtualbase_devType(self: pointer): cint {.importc: "QInputDialog_virtualbase_devType".}
proc fcQInputDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QInputDialog_virtualbase_heightForWidth".}
proc fcQInputDialog_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QInputDialog_virtualbase_hasHeightForWidth".}
proc fcQInputDialog_virtualbase_paintEngine(self: pointer): pointer {.importc: "QInputDialog_virtualbase_paintEngine".}
proc fcQInputDialog_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QInputDialog_virtualbase_event".}
proc fcQInputDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_mousePressEvent".}
proc fcQInputDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_mouseReleaseEvent".}
proc fcQInputDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQInputDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_mouseMoveEvent".}
proc fcQInputDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_wheelEvent".}
proc fcQInputDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_keyReleaseEvent".}
proc fcQInputDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_focusInEvent".}
proc fcQInputDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_focusOutEvent".}
proc fcQInputDialog_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_enterEvent".}
proc fcQInputDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_leaveEvent".}
proc fcQInputDialog_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_paintEvent".}
proc fcQInputDialog_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_moveEvent".}
proc fcQInputDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_tabletEvent".}
proc fcQInputDialog_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_actionEvent".}
proc fcQInputDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_dragEnterEvent".}
proc fcQInputDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_dragMoveEvent".}
proc fcQInputDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_dragLeaveEvent".}
proc fcQInputDialog_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_dropEvent".}
proc fcQInputDialog_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_hideEvent".}
proc fcQInputDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QInputDialog_virtualbase_nativeEvent".}
proc fcQInputDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_changeEvent".}
proc fcQInputDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QInputDialog_virtualbase_metric".}
proc fcQInputDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QInputDialog_virtualbase_initPainter".}
proc fcQInputDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QInputDialog_virtualbase_redirected".}
proc fcQInputDialog_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QInputDialog_virtualbase_sharedPainter".}
proc fcQInputDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_inputMethodEvent".}
proc fcQInputDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QInputDialog_virtualbase_inputMethodQuery".}
proc fcQInputDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QInputDialog_virtualbase_focusNextPrevChild".}
proc fcQInputDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_timerEvent".}
proc fcQInputDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_childEvent".}
proc fcQInputDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_customEvent".}
proc fcQInputDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QInputDialog_virtualbase_connectNotify".}
proc fcQInputDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QInputDialog_virtualbase_disconnectNotify".}
proc fcQInputDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QInputDialog_protectedbase_adjustPosition".}
proc fcQInputDialog_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QInputDialog_protectedbase_updateMicroFocus".}
proc fcQInputDialog_protectedbase_create(self: pointer): void {.importc: "QInputDialog_protectedbase_create".}
proc fcQInputDialog_protectedbase_destroy(self: pointer): void {.importc: "QInputDialog_protectedbase_destroy".}
proc fcQInputDialog_protectedbase_focusNextChild(self: pointer): bool {.importc: "QInputDialog_protectedbase_focusNextChild".}
proc fcQInputDialog_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QInputDialog_protectedbase_focusPreviousChild".}
proc fcQInputDialog_protectedbase_sender(self: pointer): pointer {.importc: "QInputDialog_protectedbase_sender".}
proc fcQInputDialog_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QInputDialog_protectedbase_senderSignalIndex".}
proc fcQInputDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QInputDialog_protectedbase_receivers".}
proc fcQInputDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QInputDialog_protectedbase_isSignalConnected".}
proc fcQInputDialog_new(vtbl, vdata: pointer, parent: pointer): ptr cQInputDialog {.importc: "QInputDialog_new".}
proc fcQInputDialog_new2(vtbl, vdata: pointer): ptr cQInputDialog {.importc: "QInputDialog_new2".}
proc fcQInputDialog_new3(vtbl, vdata: pointer, parent: pointer, flags: cint): ptr cQInputDialog {.importc: "QInputDialog_new3".}
proc fcQInputDialog_staticMetaObject(): pointer {.importc: "QInputDialog_staticMetaObject".}

proc metaObject*(self: gen_qinputdialog_types.QInputDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDialog_metaObject(self.h), owned: false)

proc metacast*(self: gen_qinputdialog_types.QInputDialog, param1: cstring): pointer =
  fcQInputDialog_metacast(self.h, param1)

proc metacall*(self: gen_qinputdialog_types.QInputDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQInputDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qinputdialog_types.QInputDialog, s: cstring): string =
  let v_ms = fcQInputDialog_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setInputMode*(self: gen_qinputdialog_types.QInputDialog, mode: cint): void =
  fcQInputDialog_setInputMode(self.h, cint(mode))

proc inputMode*(self: gen_qinputdialog_types.QInputDialog): cint =
  cint(fcQInputDialog_inputMode(self.h))

proc setLabelText*(self: gen_qinputdialog_types.QInputDialog, text: openArray[char]): void =
  fcQInputDialog_setLabelText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc labelText*(self: gen_qinputdialog_types.QInputDialog): string =
  let v_ms = fcQInputDialog_labelText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qinputdialog_types.QInputDialog, option: cint): void =
  fcQInputDialog_setOption(self.h, cint(option))

proc testOption*(self: gen_qinputdialog_types.QInputDialog, option: cint): bool =
  fcQInputDialog_testOption(self.h, cint(option))

proc setOptions*(self: gen_qinputdialog_types.QInputDialog, options: cint): void =
  fcQInputDialog_setOptions(self.h, cint(options))

proc options*(self: gen_qinputdialog_types.QInputDialog): cint =
  cint(fcQInputDialog_options(self.h))

proc setTextValue*(self: gen_qinputdialog_types.QInputDialog, text: openArray[char]): void =
  fcQInputDialog_setTextValue(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc textValue*(self: gen_qinputdialog_types.QInputDialog): string =
  let v_ms = fcQInputDialog_textValue(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setTextEchoMode*(self: gen_qinputdialog_types.QInputDialog, mode: cint): void =
  fcQInputDialog_setTextEchoMode(self.h, cint(mode))

proc textEchoMode*(self: gen_qinputdialog_types.QInputDialog): cint =
  cint(fcQInputDialog_textEchoMode(self.h))

proc setComboBoxEditable*(self: gen_qinputdialog_types.QInputDialog, editable: bool): void =
  fcQInputDialog_setComboBoxEditable(self.h, editable)

proc isComboBoxEditable*(self: gen_qinputdialog_types.QInputDialog): bool =
  fcQInputDialog_isComboBoxEditable(self.h)

proc setComboBoxItems*(self: gen_qinputdialog_types.QInputDialog, items: openArray[string]): void =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: if len(items[i]) > 0: addr items[i][0] else: nil, len: csize_t(len(items[i])))

  fcQInputDialog_setComboBoxItems(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc comboBoxItems*(self: gen_qinputdialog_types.QInputDialog): seq[string] =
  var v_ma = fcQInputDialog_comboBoxItems(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setIntValue*(self: gen_qinputdialog_types.QInputDialog, value: cint): void =
  fcQInputDialog_setIntValue(self.h, value)

proc intValue*(self: gen_qinputdialog_types.QInputDialog): cint =
  fcQInputDialog_intValue(self.h)

proc setIntMinimum*(self: gen_qinputdialog_types.QInputDialog, min: cint): void =
  fcQInputDialog_setIntMinimum(self.h, min)

proc intMinimum*(self: gen_qinputdialog_types.QInputDialog): cint =
  fcQInputDialog_intMinimum(self.h)

proc setIntMaximum*(self: gen_qinputdialog_types.QInputDialog, max: cint): void =
  fcQInputDialog_setIntMaximum(self.h, max)

proc intMaximum*(self: gen_qinputdialog_types.QInputDialog): cint =
  fcQInputDialog_intMaximum(self.h)

proc setIntRange*(self: gen_qinputdialog_types.QInputDialog, min: cint, max: cint): void =
  fcQInputDialog_setIntRange(self.h, min, max)

proc setIntStep*(self: gen_qinputdialog_types.QInputDialog, step: cint): void =
  fcQInputDialog_setIntStep(self.h, step)

proc intStep*(self: gen_qinputdialog_types.QInputDialog): cint =
  fcQInputDialog_intStep(self.h)

proc setDoubleValue*(self: gen_qinputdialog_types.QInputDialog, value: float64): void =
  fcQInputDialog_setDoubleValue(self.h, value)

proc doubleValue*(self: gen_qinputdialog_types.QInputDialog): float64 =
  fcQInputDialog_doubleValue(self.h)

proc setDoubleMinimum*(self: gen_qinputdialog_types.QInputDialog, min: float64): void =
  fcQInputDialog_setDoubleMinimum(self.h, min)

proc doubleMinimum*(self: gen_qinputdialog_types.QInputDialog): float64 =
  fcQInputDialog_doubleMinimum(self.h)

proc setDoubleMaximum*(self: gen_qinputdialog_types.QInputDialog, max: float64): void =
  fcQInputDialog_setDoubleMaximum(self.h, max)

proc doubleMaximum*(self: gen_qinputdialog_types.QInputDialog): float64 =
  fcQInputDialog_doubleMaximum(self.h)

proc setDoubleRange*(self: gen_qinputdialog_types.QInputDialog, min: float64, max: float64): void =
  fcQInputDialog_setDoubleRange(self.h, min, max)

proc setDoubleDecimals*(self: gen_qinputdialog_types.QInputDialog, decimals: cint): void =
  fcQInputDialog_setDoubleDecimals(self.h, decimals)

proc doubleDecimals*(self: gen_qinputdialog_types.QInputDialog): cint =
  fcQInputDialog_doubleDecimals(self.h)

proc setOkButtonText*(self: gen_qinputdialog_types.QInputDialog, text: openArray[char]): void =
  fcQInputDialog_setOkButtonText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc okButtonText*(self: gen_qinputdialog_types.QInputDialog): string =
  let v_ms = fcQInputDialog_okButtonText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCancelButtonText*(self: gen_qinputdialog_types.QInputDialog, text: openArray[char]): void =
  fcQInputDialog_setCancelButtonText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc cancelButtonText*(self: gen_qinputdialog_types.QInputDialog): string =
  let v_ms = fcQInputDialog_cancelButtonText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc minimumSizeHint*(self: gen_qinputdialog_types.QInputDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQInputDialog_minimumSizeHint(self.h), owned: true)

proc sizeHint*(self: gen_qinputdialog_types.QInputDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQInputDialog_sizeHint(self.h), owned: true)

proc setVisible*(self: gen_qinputdialog_types.QInputDialog, visible: bool): void =
  fcQInputDialog_setVisible(self.h, visible)

proc getText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char]): string =
  let v_ms = fcQInputDialog_getText(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char]): string =
  let v_ms = fcQInputDialog_getMultiLineText(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], items: openArray[string]): string =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: if len(items[i]) > 0: addr items[i][0] else: nil, len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char]): cint =
  fcQInputDialog_getInt(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))))

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char]): float64 =
  fcQInputDialog_getDouble(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))))

proc setDoubleStep*(self: gen_qinputdialog_types.QInputDialog, step: float64): void =
  fcQInputDialog_setDoubleStep(self.h, step)

proc doubleStep*(self: gen_qinputdialog_types.QInputDialog): float64 =
  fcQInputDialog_doubleStep(self.h)

proc textValueChanged*(self: gen_qinputdialog_types.QInputDialog, text: openArray[char]): void =
  fcQInputDialog_textValueChanged(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

type QInputDialogtextValueChangedSlot* = proc(text: openArray[char])
proc cQInputDialog_slot_callback_textValueChanged(slot: int, text: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QInputDialogtextValueChangedSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc cQInputDialog_slot_callback_textValueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDialogtextValueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontextValueChanged*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogtextValueChangedSlot) =
  var tmp = new QInputDialogtextValueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_textValueChanged(self.h, cast[int](addr tmp[]), cQInputDialog_slot_callback_textValueChanged, cQInputDialog_slot_callback_textValueChanged_release)

proc textValueSelected*(self: gen_qinputdialog_types.QInputDialog, text: openArray[char]): void =
  fcQInputDialog_textValueSelected(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

type QInputDialogtextValueSelectedSlot* = proc(text: openArray[char])
proc cQInputDialog_slot_callback_textValueSelected(slot: int, text: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QInputDialogtextValueSelectedSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc cQInputDialog_slot_callback_textValueSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDialogtextValueSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontextValueSelected*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogtextValueSelectedSlot) =
  var tmp = new QInputDialogtextValueSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_textValueSelected(self.h, cast[int](addr tmp[]), cQInputDialog_slot_callback_textValueSelected, cQInputDialog_slot_callback_textValueSelected_release)

proc intValueChanged*(self: gen_qinputdialog_types.QInputDialog, value: cint): void =
  fcQInputDialog_intValueChanged(self.h, value)

type QInputDialogintValueChangedSlot* = proc(value: cint)
proc cQInputDialog_slot_callback_intValueChanged(slot: int, value: cint) {.cdecl.} =
  let nimfunc = cast[ptr QInputDialogintValueChangedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc cQInputDialog_slot_callback_intValueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDialogintValueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onintValueChanged*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogintValueChangedSlot) =
  var tmp = new QInputDialogintValueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_intValueChanged(self.h, cast[int](addr tmp[]), cQInputDialog_slot_callback_intValueChanged, cQInputDialog_slot_callback_intValueChanged_release)

proc intValueSelected*(self: gen_qinputdialog_types.QInputDialog, value: cint): void =
  fcQInputDialog_intValueSelected(self.h, value)

type QInputDialogintValueSelectedSlot* = proc(value: cint)
proc cQInputDialog_slot_callback_intValueSelected(slot: int, value: cint) {.cdecl.} =
  let nimfunc = cast[ptr QInputDialogintValueSelectedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc cQInputDialog_slot_callback_intValueSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDialogintValueSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onintValueSelected*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogintValueSelectedSlot) =
  var tmp = new QInputDialogintValueSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_intValueSelected(self.h, cast[int](addr tmp[]), cQInputDialog_slot_callback_intValueSelected, cQInputDialog_slot_callback_intValueSelected_release)

proc doubleValueChanged*(self: gen_qinputdialog_types.QInputDialog, value: float64): void =
  fcQInputDialog_doubleValueChanged(self.h, value)

type QInputDialogdoubleValueChangedSlot* = proc(value: float64)
proc cQInputDialog_slot_callback_doubleValueChanged(slot: int, value: float64) {.cdecl.} =
  let nimfunc = cast[ptr QInputDialogdoubleValueChangedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc cQInputDialog_slot_callback_doubleValueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDialogdoubleValueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondoubleValueChanged*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdoubleValueChangedSlot) =
  var tmp = new QInputDialogdoubleValueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_doubleValueChanged(self.h, cast[int](addr tmp[]), cQInputDialog_slot_callback_doubleValueChanged, cQInputDialog_slot_callback_doubleValueChanged_release)

proc doubleValueSelected*(self: gen_qinputdialog_types.QInputDialog, value: float64): void =
  fcQInputDialog_doubleValueSelected(self.h, value)

type QInputDialogdoubleValueSelectedSlot* = proc(value: float64)
proc cQInputDialog_slot_callback_doubleValueSelected(slot: int, value: float64) {.cdecl.} =
  let nimfunc = cast[ptr QInputDialogdoubleValueSelectedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc cQInputDialog_slot_callback_doubleValueSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDialogdoubleValueSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondoubleValueSelected*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdoubleValueSelectedSlot) =
  var tmp = new QInputDialogdoubleValueSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_doubleValueSelected(self.h, cast[int](addr tmp[]), cQInputDialog_slot_callback_doubleValueSelected, cQInputDialog_slot_callback_doubleValueSelected_release)

proc done*(self: gen_qinputdialog_types.QInputDialog, resultVal: cint): void =
  fcQInputDialog_done(self.h, resultVal)

proc tr*(_: type gen_qinputdialog_types.QInputDialog, s: cstring, c: cstring): string =
  let v_ms = fcQInputDialog_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qinputdialog_types.QInputDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQInputDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qinputdialog_types.QInputDialog, option: cint, on: bool): void =
  fcQInputDialog_setOption2(self.h, cint(option), on)

proc getText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], echo: cint): string =
  let v_ms = fcQInputDialog_getText4(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), cint(echo))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], echo: cint, text: openArray[char]): string =
  let v_ms = fcQInputDialog_getText5(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), cint(echo), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], echo: cint, text: openArray[char], ok: ptr bool): string =
  let v_ms = fcQInputDialog_getText6(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), cint(echo), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), ok)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], echo: cint, text: openArray[char], ok: ptr bool, flags: cint): string =
  let v_ms = fcQInputDialog_getText7(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), cint(echo), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), ok, cint(flags))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], echo: cint, text: openArray[char], ok: ptr bool, flags: cint, inputMethodHints: cint): string =
  let v_ms = fcQInputDialog_getText8(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), cint(echo), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), ok, cint(flags), cint(inputMethodHints))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], text: openArray[char]): string =
  let v_ms = fcQInputDialog_getMultiLineText4(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], text: openArray[char], ok: ptr bool): string =
  let v_ms = fcQInputDialog_getMultiLineText5(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), ok)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], text: openArray[char], ok: ptr bool, flags: cint): string =
  let v_ms = fcQInputDialog_getMultiLineText6(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), ok, cint(flags))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getMultiLineText*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], text: openArray[char], ok: ptr bool, flags: cint, inputMethodHints: cint): string =
  let v_ms = fcQInputDialog_getMultiLineText7(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), ok, cint(flags), cint(inputMethodHints))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], items: openArray[string], current: cint): string =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: if len(items[i]) > 0: addr items[i][0] else: nil, len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem5(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], items: openArray[string], current: cint, editable: bool): string =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: if len(items[i]) > 0: addr items[i][0] else: nil, len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem6(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current, editable)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], items: openArray[string], current: cint, editable: bool, ok: ptr bool): string =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: if len(items[i]) > 0: addr items[i][0] else: nil, len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem7(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current, editable, ok)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], items: openArray[string], current: cint, editable: bool, ok: ptr bool, flags: cint): string =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: if len(items[i]) > 0: addr items[i][0] else: nil, len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem8(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current, editable, ok, cint(flags))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getItem*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], items: openArray[string], current: cint, editable: bool, ok: ptr bool, flags: cint, inputMethodHints: cint): string =
  var items_CArray = newSeq[struct_miqt_string](len(items))
  for i in 0..<len(items):
    items_CArray[i] = struct_miqt_string(data: if len(items[i]) > 0: addr items[i][0] else: nil, len: csize_t(len(items[i])))

  let v_ms = fcQInputDialog_getItem9(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])), current, editable, ok, cint(flags), cint(inputMethodHints))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: cint): cint =
  fcQInputDialog_getInt4(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value)

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: cint, minValue: cint): cint =
  fcQInputDialog_getInt5(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value, minValue)

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: cint, minValue: cint, maxValue: cint): cint =
  fcQInputDialog_getInt6(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value, minValue, maxValue)

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: cint, minValue: cint, maxValue: cint, step: cint): cint =
  fcQInputDialog_getInt7(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value, minValue, maxValue, step)

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: cint, minValue: cint, maxValue: cint, step: cint, ok: ptr bool): cint =
  fcQInputDialog_getInt8(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value, minValue, maxValue, step, ok)

proc getInt*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: cint, minValue: cint, maxValue: cint, step: cint, ok: ptr bool, flags: cint): cint =
  fcQInputDialog_getInt9(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value, minValue, maxValue, step, ok, cint(flags))

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: float64): float64 =
  fcQInputDialog_getDouble4(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value)

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: float64, minValue: float64): float64 =
  fcQInputDialog_getDouble5(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value, minValue)

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: float64, minValue: float64, maxValue: float64): float64 =
  fcQInputDialog_getDouble6(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value, minValue, maxValue)

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: float64, minValue: float64, maxValue: float64, decimals: cint): float64 =
  fcQInputDialog_getDouble7(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value, minValue, maxValue, decimals)

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool): float64 =
  fcQInputDialog_getDouble8(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value, minValue, maxValue, decimals, ok)

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool, flags: cint): float64 =
  fcQInputDialog_getDouble9(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value, minValue, maxValue, decimals, ok, cint(flags))

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: openArray[char], label: openArray[char], value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool, flags: cint, step: float64): float64 =
  fcQInputDialog_getDouble10(parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), struct_miqt_string(data: if len(label) > 0: addr label[0] else: nil, len: csize_t(len(label))), value, minValue, maxValue, decimals, ok, cint(flags), step)

type QInputDialogmetaObjectProc* = proc(self: QInputDialog): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QInputDialogmetacastProc* = proc(self: QInputDialog, param1: cstring): pointer {.raises: [], gcsafe.}
type QInputDialogmetacallProc* = proc(self: QInputDialog, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QInputDialogminimumSizeHintProc* = proc(self: QInputDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QInputDialogsizeHintProc* = proc(self: QInputDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QInputDialogsetVisibleProc* = proc(self: QInputDialog, visible: bool): void {.raises: [], gcsafe.}
type QInputDialogdoneProc* = proc(self: QInputDialog, resultVal: cint): void {.raises: [], gcsafe.}
type QInputDialogopenProc* = proc(self: QInputDialog): void {.raises: [], gcsafe.}
type QInputDialogexecProc* = proc(self: QInputDialog): cint {.raises: [], gcsafe.}
type QInputDialogacceptProc* = proc(self: QInputDialog): void {.raises: [], gcsafe.}
type QInputDialogrejectProc* = proc(self: QInputDialog): void {.raises: [], gcsafe.}
type QInputDialogkeyPressEventProc* = proc(self: QInputDialog, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QInputDialogcloseEventProc* = proc(self: QInputDialog, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QInputDialogshowEventProc* = proc(self: QInputDialog, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QInputDialogresizeEventProc* = proc(self: QInputDialog, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QInputDialogcontextMenuEventProc* = proc(self: QInputDialog, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QInputDialogeventFilterProc* = proc(self: QInputDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QInputDialogdevTypeProc* = proc(self: QInputDialog): cint {.raises: [], gcsafe.}
type QInputDialogheightForWidthProc* = proc(self: QInputDialog, param1: cint): cint {.raises: [], gcsafe.}
type QInputDialoghasHeightForWidthProc* = proc(self: QInputDialog): bool {.raises: [], gcsafe.}
type QInputDialogpaintEngineProc* = proc(self: QInputDialog): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QInputDialogeventProc* = proc(self: QInputDialog, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QInputDialogmousePressEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QInputDialogmouseReleaseEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QInputDialogmouseDoubleClickEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QInputDialogmouseMoveEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QInputDialogwheelEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QInputDialogkeyReleaseEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QInputDialogfocusInEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QInputDialogfocusOutEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QInputDialogenterEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QInputDialogleaveEventProc* = proc(self: QInputDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QInputDialogpaintEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QInputDialogmoveEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QInputDialogtabletEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QInputDialogactionEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QInputDialogdragEnterEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QInputDialogdragMoveEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QInputDialogdragLeaveEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QInputDialogdropEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QInputDialoghideEventProc* = proc(self: QInputDialog, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QInputDialognativeEventProc* = proc(self: QInputDialog, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QInputDialogchangeEventProc* = proc(self: QInputDialog, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QInputDialogmetricProc* = proc(self: QInputDialog, param1: cint): cint {.raises: [], gcsafe.}
type QInputDialoginitPainterProc* = proc(self: QInputDialog, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QInputDialogredirectedProc* = proc(self: QInputDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QInputDialogsharedPainterProc* = proc(self: QInputDialog): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QInputDialoginputMethodEventProc* = proc(self: QInputDialog, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QInputDialoginputMethodQueryProc* = proc(self: QInputDialog, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QInputDialogfocusNextPrevChildProc* = proc(self: QInputDialog, next: bool): bool {.raises: [], gcsafe.}
type QInputDialogtimerEventProc* = proc(self: QInputDialog, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QInputDialogchildEventProc* = proc(self: QInputDialog, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QInputDialogcustomEventProc* = proc(self: QInputDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QInputDialogconnectNotifyProc* = proc(self: QInputDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QInputDialogdisconnectNotifyProc* = proc(self: QInputDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QInputDialogVTable* {.inheritable, pure.} = object
  vtbl: cQInputDialogVTable
  metaObject*: QInputDialogmetaObjectProc
  metacast*: QInputDialogmetacastProc
  metacall*: QInputDialogmetacallProc
  minimumSizeHint*: QInputDialogminimumSizeHintProc
  sizeHint*: QInputDialogsizeHintProc
  setVisible*: QInputDialogsetVisibleProc
  done*: QInputDialogdoneProc
  open*: QInputDialogopenProc
  exec*: QInputDialogexecProc
  accept*: QInputDialogacceptProc
  reject*: QInputDialogrejectProc
  keyPressEvent*: QInputDialogkeyPressEventProc
  closeEvent*: QInputDialogcloseEventProc
  showEvent*: QInputDialogshowEventProc
  resizeEvent*: QInputDialogresizeEventProc
  contextMenuEvent*: QInputDialogcontextMenuEventProc
  eventFilter*: QInputDialogeventFilterProc
  devType*: QInputDialogdevTypeProc
  heightForWidth*: QInputDialogheightForWidthProc
  hasHeightForWidth*: QInputDialoghasHeightForWidthProc
  paintEngine*: QInputDialogpaintEngineProc
  event*: QInputDialogeventProc
  mousePressEvent*: QInputDialogmousePressEventProc
  mouseReleaseEvent*: QInputDialogmouseReleaseEventProc
  mouseDoubleClickEvent*: QInputDialogmouseDoubleClickEventProc
  mouseMoveEvent*: QInputDialogmouseMoveEventProc
  wheelEvent*: QInputDialogwheelEventProc
  keyReleaseEvent*: QInputDialogkeyReleaseEventProc
  focusInEvent*: QInputDialogfocusInEventProc
  focusOutEvent*: QInputDialogfocusOutEventProc
  enterEvent*: QInputDialogenterEventProc
  leaveEvent*: QInputDialogleaveEventProc
  paintEvent*: QInputDialogpaintEventProc
  moveEvent*: QInputDialogmoveEventProc
  tabletEvent*: QInputDialogtabletEventProc
  actionEvent*: QInputDialogactionEventProc
  dragEnterEvent*: QInputDialogdragEnterEventProc
  dragMoveEvent*: QInputDialogdragMoveEventProc
  dragLeaveEvent*: QInputDialogdragLeaveEventProc
  dropEvent*: QInputDialogdropEventProc
  hideEvent*: QInputDialoghideEventProc
  nativeEvent*: QInputDialognativeEventProc
  changeEvent*: QInputDialogchangeEventProc
  metric*: QInputDialogmetricProc
  initPainter*: QInputDialoginitPainterProc
  redirected*: QInputDialogredirectedProc
  sharedPainter*: QInputDialogsharedPainterProc
  inputMethodEvent*: QInputDialoginputMethodEventProc
  inputMethodQuery*: QInputDialoginputMethodQueryProc
  focusNextPrevChild*: QInputDialogfocusNextPrevChildProc
  timerEvent*: QInputDialogtimerEventProc
  childEvent*: QInputDialogchildEventProc
  customEvent*: QInputDialogcustomEventProc
  connectNotify*: QInputDialogconnectNotifyProc
  disconnectNotify*: QInputDialogdisconnectNotifyProc
proc QInputDialogmetaObject*(self: gen_qinputdialog_types.QInputDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDialog_virtualbase_metaObject(self.h), owned: false)

proc cQInputDialog_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QInputDialogmetacast*(self: gen_qinputdialog_types.QInputDialog, param1: cstring): pointer =
  fcQInputDialog_virtualbase_metacast(self.h, param1)

proc cQInputDialog_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QInputDialogmetacall*(self: gen_qinputdialog_types.QInputDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQInputDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQInputDialog_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QInputDialogminimumSizeHint*(self: gen_qinputdialog_types.QInputDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQInputDialog_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQInputDialog_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QInputDialogsizeHint*(self: gen_qinputdialog_types.QInputDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQInputDialog_virtualbase_sizeHint(self.h), owned: true)

proc cQInputDialog_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QInputDialogsetVisible*(self: gen_qinputdialog_types.QInputDialog, visible: bool): void =
  fcQInputDialog_virtualbase_setVisible(self.h, visible)

proc cQInputDialog_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QInputDialogdone*(self: gen_qinputdialog_types.QInputDialog, resultVal: cint): void =
  fcQInputDialog_virtualbase_done(self.h, resultVal)

proc cQInputDialog_vtable_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QInputDialogopen*(self: gen_qinputdialog_types.QInputDialog): void =
  fcQInputDialog_virtualbase_open(self.h)

proc cQInputDialog_vtable_callback_open(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  vtbl[].open(self)

proc QInputDialogexec*(self: gen_qinputdialog_types.QInputDialog): cint =
  fcQInputDialog_virtualbase_exec(self.h)

proc cQInputDialog_vtable_callback_exec(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QInputDialogaccept*(self: gen_qinputdialog_types.QInputDialog): void =
  fcQInputDialog_virtualbase_accept(self.h)

proc cQInputDialog_vtable_callback_accept(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  vtbl[].accept(self)

proc QInputDialogreject*(self: gen_qinputdialog_types.QInputDialog): void =
  fcQInputDialog_virtualbase_reject(self.h)

proc cQInputDialog_vtable_callback_reject(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  vtbl[].reject(self)

proc QInputDialogkeyPressEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQInputDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc cQInputDialog_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QInputDialogcloseEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQInputDialog_virtualbase_closeEvent(self.h, param1.h)

proc cQInputDialog_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QInputDialogshowEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQInputDialog_virtualbase_showEvent(self.h, param1.h)

proc cQInputDialog_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QInputDialogresizeEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQInputDialog_virtualbase_resizeEvent(self.h, param1.h)

proc cQInputDialog_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QInputDialogcontextMenuEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQInputDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQInputDialog_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QInputDialogeventFilter*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQInputDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQInputDialog_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QInputDialogdevType*(self: gen_qinputdialog_types.QInputDialog): cint =
  fcQInputDialog_virtualbase_devType(self.h)

proc cQInputDialog_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QInputDialogheightForWidth*(self: gen_qinputdialog_types.QInputDialog, param1: cint): cint =
  fcQInputDialog_virtualbase_heightForWidth(self.h, param1)

proc cQInputDialog_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QInputDialoghasHeightForWidth*(self: gen_qinputdialog_types.QInputDialog): bool =
  fcQInputDialog_virtualbase_hasHeightForWidth(self.h)

proc cQInputDialog_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QInputDialogpaintEngine*(self: gen_qinputdialog_types.QInputDialog): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQInputDialog_virtualbase_paintEngine(self.h), owned: false)

proc cQInputDialog_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QInputDialogevent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQInputDialog_virtualbase_event(self.h, event.h)

proc cQInputDialog_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QInputDialogmousePressEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQInputDialog_virtualbase_mousePressEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QInputDialogmouseReleaseEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQInputDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QInputDialogmouseDoubleClickEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQInputDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QInputDialogmouseMoveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQInputDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QInputDialogwheelEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQInputDialog_virtualbase_wheelEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QInputDialogkeyReleaseEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQInputDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QInputDialogfocusInEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQInputDialog_virtualbase_focusInEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QInputDialogfocusOutEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQInputDialog_virtualbase_focusOutEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QInputDialogenterEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QEnterEvent): void =
  fcQInputDialog_virtualbase_enterEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QInputDialogleaveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQInputDialog_virtualbase_leaveEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QInputDialogpaintEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQInputDialog_virtualbase_paintEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QInputDialogmoveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQInputDialog_virtualbase_moveEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QInputDialogtabletEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQInputDialog_virtualbase_tabletEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QInputDialogactionEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QActionEvent): void =
  fcQInputDialog_virtualbase_actionEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QInputDialogdragEnterEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQInputDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QInputDialogdragMoveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQInputDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QInputDialogdragLeaveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQInputDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QInputDialogdropEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QDropEvent): void =
  fcQInputDialog_virtualbase_dropEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QInputDialoghideEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QHideEvent): void =
  fcQInputDialog_virtualbase_hideEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QInputDialognativeEvent*(self: gen_qinputdialog_types.QInputDialog, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQInputDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQInputDialog_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QInputDialogchangeEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qcoreevent_types.QEvent): void =
  fcQInputDialog_virtualbase_changeEvent(self.h, param1.h)

proc cQInputDialog_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QInputDialogmetric*(self: gen_qinputdialog_types.QInputDialog, param1: cint): cint =
  fcQInputDialog_virtualbase_metric(self.h, cint(param1))

proc cQInputDialog_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QInputDialoginitPainter*(self: gen_qinputdialog_types.QInputDialog, painter: gen_qpainter_types.QPainter): void =
  fcQInputDialog_virtualbase_initPainter(self.h, painter.h)

proc cQInputDialog_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QInputDialogredirected*(self: gen_qinputdialog_types.QInputDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQInputDialog_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQInputDialog_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QInputDialogsharedPainter*(self: gen_qinputdialog_types.QInputDialog): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQInputDialog_virtualbase_sharedPainter(self.h), owned: false)

proc cQInputDialog_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QInputDialoginputMethodEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQInputDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQInputDialog_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QInputDialoginputMethodQuery*(self: gen_qinputdialog_types.QInputDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQInputDialog_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQInputDialog_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QInputDialogfocusNextPrevChild*(self: gen_qinputdialog_types.QInputDialog, next: bool): bool =
  fcQInputDialog_virtualbase_focusNextPrevChild(self.h, next)

proc cQInputDialog_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QInputDialogtimerEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQInputDialog_virtualbase_timerEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QInputDialogchildEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQInputDialog_virtualbase_childEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QInputDialogcustomEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQInputDialog_virtualbase_customEvent(self.h, event.h)

proc cQInputDialog_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QInputDialogconnectNotify*(self: gen_qinputdialog_types.QInputDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQInputDialog_virtualbase_connectNotify(self.h, signal.h)

proc cQInputDialog_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QInputDialogdisconnectNotify*(self: gen_qinputdialog_types.QInputDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQInputDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc cQInputDialog_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](fcQInputDialog_vdata(self))
  let self = QInputDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQInputDialog* {.inheritable.} = ref object of QInputDialog
  vtbl*: cQInputDialogVTable
method metaObject*(self: VirtualQInputDialog): gen_qobjectdefs_types.QMetaObject {.base.} =
  QInputDialogmetaObject(self[])
proc cQInputDialog_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQInputDialog, param1: cstring): pointer {.base.} =
  QInputDialogmetacast(self[], param1)
proc cQInputDialog_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQInputDialog, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QInputDialogmetacall(self[], param1, param2, param3)
proc cQInputDialog_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method minimumSizeHint*(self: VirtualQInputDialog): gen_qsize_types.QSize {.base.} =
  QInputDialogminimumSizeHint(self[])
proc cQInputDialog_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHint*(self: VirtualQInputDialog): gen_qsize_types.QSize {.base.} =
  QInputDialogsizeHint(self[])
proc cQInputDialog_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setVisible*(self: VirtualQInputDialog, visible: bool): void {.base.} =
  QInputDialogsetVisible(self[], visible)
proc cQInputDialog_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method done*(self: VirtualQInputDialog, resultVal: cint): void {.base.} =
  QInputDialogdone(self[], resultVal)
proc cQInputDialog_method_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = resultVal
  inst.done(slotval1)

method open*(self: VirtualQInputDialog): void {.base.} =
  QInputDialogopen(self[])
proc cQInputDialog_method_callback_open(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  inst.open()

method exec*(self: VirtualQInputDialog): cint {.base.} =
  QInputDialogexec(self[])
proc cQInputDialog_method_callback_exec(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  var virtualReturn = inst.exec()
  virtualReturn

method accept*(self: VirtualQInputDialog): void {.base.} =
  QInputDialogaccept(self[])
proc cQInputDialog_method_callback_accept(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  inst.accept()

method reject*(self: VirtualQInputDialog): void {.base.} =
  QInputDialogreject(self[])
proc cQInputDialog_method_callback_reject(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  inst.reject()

method keyPressEvent*(self: VirtualQInputDialog, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QInputDialogkeyPressEvent(self[], param1)
proc cQInputDialog_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method closeEvent*(self: VirtualQInputDialog, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QInputDialogcloseEvent(self[], param1)
proc cQInputDialog_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

method showEvent*(self: VirtualQInputDialog, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QInputDialogshowEvent(self[], param1)
proc cQInputDialog_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

method resizeEvent*(self: VirtualQInputDialog, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QInputDialogresizeEvent(self[], param1)
proc cQInputDialog_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method contextMenuEvent*(self: VirtualQInputDialog, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QInputDialogcontextMenuEvent(self[], param1)
proc cQInputDialog_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method eventFilter*(self: VirtualQInputDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QInputDialogeventFilter(self[], param1, param2)
proc cQInputDialog_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method devType*(self: VirtualQInputDialog): cint {.base.} =
  QInputDialogdevType(self[])
proc cQInputDialog_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method heightForWidth*(self: VirtualQInputDialog, param1: cint): cint {.base.} =
  QInputDialogheightForWidth(self[], param1)
proc cQInputDialog_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQInputDialog): bool {.base.} =
  QInputDialoghasHeightForWidth(self[])
proc cQInputDialog_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQInputDialog): gen_qpaintengine_types.QPaintEngine {.base.} =
  QInputDialogpaintEngine(self[])
proc cQInputDialog_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQInputDialog, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QInputDialogevent(self[], event)
proc cQInputDialog_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QInputDialogmousePressEvent(self[], event)
proc cQInputDialog_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QInputDialogmouseReleaseEvent(self[], event)
proc cQInputDialog_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QInputDialogmouseDoubleClickEvent(self[], event)
proc cQInputDialog_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QInputDialogmouseMoveEvent(self[], event)
proc cQInputDialog_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QInputDialogwheelEvent(self[], event)
proc cQInputDialog_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QInputDialogkeyReleaseEvent(self[], event)
proc cQInputDialog_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QInputDialogfocusInEvent(self[], event)
proc cQInputDialog_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QInputDialogfocusOutEvent(self[], event)
proc cQInputDialog_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QInputDialogenterEvent(self[], event)
proc cQInputDialog_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQInputDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QInputDialogleaveEvent(self[], event)
proc cQInputDialog_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QInputDialogpaintEvent(self[], event)
proc cQInputDialog_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QInputDialogmoveEvent(self[], event)
proc cQInputDialog_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QInputDialogtabletEvent(self[], event)
proc cQInputDialog_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QActionEvent): void {.base.} =
  QInputDialogactionEvent(self[], event)
proc cQInputDialog_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QInputDialogdragEnterEvent(self[], event)
proc cQInputDialog_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QInputDialogdragMoveEvent(self[], event)
proc cQInputDialog_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QInputDialogdragLeaveEvent(self[], event)
proc cQInputDialog_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QDropEvent): void {.base.} =
  QInputDialogdropEvent(self[], event)
proc cQInputDialog_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method hideEvent*(self: VirtualQInputDialog, event: gen_qevent_types.QHideEvent): void {.base.} =
  QInputDialoghideEvent(self[], event)
proc cQInputDialog_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQInputDialog, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QInputDialognativeEvent(self[], eventType, message, resultVal)
proc cQInputDialog_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQInputDialog, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QInputDialogchangeEvent(self[], param1)
proc cQInputDialog_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQInputDialog, param1: cint): cint {.base.} =
  QInputDialogmetric(self[], param1)
proc cQInputDialog_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQInputDialog, painter: gen_qpainter_types.QPainter): void {.base.} =
  QInputDialoginitPainter(self[], painter)
proc cQInputDialog_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQInputDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QInputDialogredirected(self[], offset)
proc cQInputDialog_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQInputDialog): gen_qpainter_types.QPainter {.base.} =
  QInputDialogsharedPainter(self[])
proc cQInputDialog_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQInputDialog, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QInputDialoginputMethodEvent(self[], param1)
proc cQInputDialog_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQInputDialog, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QInputDialoginputMethodQuery(self[], param1)
proc cQInputDialog_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQInputDialog, next: bool): bool {.base.} =
  QInputDialogfocusNextPrevChild(self[], next)
proc cQInputDialog_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQInputDialog, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QInputDialogtimerEvent(self[], event)
proc cQInputDialog_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQInputDialog, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QInputDialogchildEvent(self[], event)
proc cQInputDialog_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQInputDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QInputDialogcustomEvent(self[], event)
proc cQInputDialog_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQInputDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QInputDialogconnectNotify(self[], signal)
proc cQInputDialog_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQInputDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QInputDialogdisconnectNotify(self[], signal)
proc cQInputDialog_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDialog](fcQInputDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc adjustPosition*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qwidget_types.QWidget): void =
  fcQInputDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qinputdialog_types.QInputDialog): void =
  fcQInputDialog_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qinputdialog_types.QInputDialog): void =
  fcQInputDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qinputdialog_types.QInputDialog): void =
  fcQInputDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qinputdialog_types.QInputDialog): bool =
  fcQInputDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qinputdialog_types.QInputDialog): bool =
  fcQInputDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qinputdialog_types.QInputDialog): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQInputDialog_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qinputdialog_types.QInputDialog): cint =
  fcQInputDialog_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qinputdialog_types.QInputDialog, signal: cstring): cint =
  fcQInputDialog_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qinputdialog_types.QInputDialog, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQInputDialog_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qinputdialog_types.QInputDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QInputDialogVTable = nil): gen_qinputdialog_types.QInputDialog =
  let vtbl = if vtbl == nil: new QInputDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputDialogVTable](fcQInputDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQInputDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQInputDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQInputDialog_vtable_callback_metacall
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQInputDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQInputDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQInputDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQInputDialog_vtable_callback_done
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQInputDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQInputDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQInputDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQInputDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQInputDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQInputDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQInputDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQInputDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQInputDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQInputDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQInputDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQInputDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQInputDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQInputDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQInputDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQInputDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQInputDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQInputDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQInputDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQInputDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQInputDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQInputDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQInputDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQInputDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQInputDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQInputDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQInputDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQInputDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQInputDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQInputDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQInputDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQInputDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQInputDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQInputDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQInputDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQInputDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQInputDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQInputDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQInputDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQInputDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQInputDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQInputDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQInputDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQInputDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQInputDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQInputDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQInputDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQInputDialog_vtable_callback_disconnectNotify
  gen_qinputdialog_types.QInputDialog(h: fcQInputDialog_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qinputdialog_types.QInputDialog,
    vtbl: ref QInputDialogVTable = nil): gen_qinputdialog_types.QInputDialog =
  let vtbl = if vtbl == nil: new QInputDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputDialogVTable](fcQInputDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQInputDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQInputDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQInputDialog_vtable_callback_metacall
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQInputDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQInputDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQInputDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQInputDialog_vtable_callback_done
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQInputDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQInputDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQInputDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQInputDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQInputDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQInputDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQInputDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQInputDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQInputDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQInputDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQInputDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQInputDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQInputDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQInputDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQInputDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQInputDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQInputDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQInputDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQInputDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQInputDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQInputDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQInputDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQInputDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQInputDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQInputDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQInputDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQInputDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQInputDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQInputDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQInputDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQInputDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQInputDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQInputDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQInputDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQInputDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQInputDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQInputDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQInputDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQInputDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQInputDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQInputDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQInputDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQInputDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQInputDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQInputDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQInputDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQInputDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQInputDialog_vtable_callback_disconnectNotify
  gen_qinputdialog_types.QInputDialog(h: fcQInputDialog_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qinputdialog_types.QInputDialog,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QInputDialogVTable = nil): gen_qinputdialog_types.QInputDialog =
  let vtbl = if vtbl == nil: new QInputDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputDialogVTable](fcQInputDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQInputDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQInputDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQInputDialog_vtable_callback_metacall
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQInputDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQInputDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQInputDialog_vtable_callback_setVisible
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQInputDialog_vtable_callback_done
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQInputDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQInputDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQInputDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQInputDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQInputDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQInputDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQInputDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQInputDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQInputDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQInputDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQInputDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQInputDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQInputDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQInputDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQInputDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQInputDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQInputDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQInputDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQInputDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQInputDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQInputDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQInputDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQInputDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQInputDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQInputDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQInputDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQInputDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQInputDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQInputDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQInputDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQInputDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQInputDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQInputDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQInputDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQInputDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQInputDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQInputDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQInputDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQInputDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQInputDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQInputDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQInputDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQInputDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQInputDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQInputDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQInputDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQInputDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQInputDialog_vtable_callback_disconnectNotify
  gen_qinputdialog_types.QInputDialog(h: fcQInputDialog_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(flags)), owned: true)

const cQInputDialog_mvtbl = cQInputDialogVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQInputDialog()[])](self.fcQInputDialog_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQInputDialog_method_callback_metaObject,
  metacast: cQInputDialog_method_callback_metacast,
  metacall: cQInputDialog_method_callback_metacall,
  minimumSizeHint: cQInputDialog_method_callback_minimumSizeHint,
  sizeHint: cQInputDialog_method_callback_sizeHint,
  setVisible: cQInputDialog_method_callback_setVisible,
  done: cQInputDialog_method_callback_done,
  open: cQInputDialog_method_callback_open,
  exec: cQInputDialog_method_callback_exec,
  accept: cQInputDialog_method_callback_accept,
  reject: cQInputDialog_method_callback_reject,
  keyPressEvent: cQInputDialog_method_callback_keyPressEvent,
  closeEvent: cQInputDialog_method_callback_closeEvent,
  showEvent: cQInputDialog_method_callback_showEvent,
  resizeEvent: cQInputDialog_method_callback_resizeEvent,
  contextMenuEvent: cQInputDialog_method_callback_contextMenuEvent,
  eventFilter: cQInputDialog_method_callback_eventFilter,
  devType: cQInputDialog_method_callback_devType,
  heightForWidth: cQInputDialog_method_callback_heightForWidth,
  hasHeightForWidth: cQInputDialog_method_callback_hasHeightForWidth,
  paintEngine: cQInputDialog_method_callback_paintEngine,
  event: cQInputDialog_method_callback_event,
  mousePressEvent: cQInputDialog_method_callback_mousePressEvent,
  mouseReleaseEvent: cQInputDialog_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQInputDialog_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQInputDialog_method_callback_mouseMoveEvent,
  wheelEvent: cQInputDialog_method_callback_wheelEvent,
  keyReleaseEvent: cQInputDialog_method_callback_keyReleaseEvent,
  focusInEvent: cQInputDialog_method_callback_focusInEvent,
  focusOutEvent: cQInputDialog_method_callback_focusOutEvent,
  enterEvent: cQInputDialog_method_callback_enterEvent,
  leaveEvent: cQInputDialog_method_callback_leaveEvent,
  paintEvent: cQInputDialog_method_callback_paintEvent,
  moveEvent: cQInputDialog_method_callback_moveEvent,
  tabletEvent: cQInputDialog_method_callback_tabletEvent,
  actionEvent: cQInputDialog_method_callback_actionEvent,
  dragEnterEvent: cQInputDialog_method_callback_dragEnterEvent,
  dragMoveEvent: cQInputDialog_method_callback_dragMoveEvent,
  dragLeaveEvent: cQInputDialog_method_callback_dragLeaveEvent,
  dropEvent: cQInputDialog_method_callback_dropEvent,
  hideEvent: cQInputDialog_method_callback_hideEvent,
  nativeEvent: cQInputDialog_method_callback_nativeEvent,
  changeEvent: cQInputDialog_method_callback_changeEvent,
  metric: cQInputDialog_method_callback_metric,
  initPainter: cQInputDialog_method_callback_initPainter,
  redirected: cQInputDialog_method_callback_redirected,
  sharedPainter: cQInputDialog_method_callback_sharedPainter,
  inputMethodEvent: cQInputDialog_method_callback_inputMethodEvent,
  inputMethodQuery: cQInputDialog_method_callback_inputMethodQuery,
  focusNextPrevChild: cQInputDialog_method_callback_focusNextPrevChild,
  timerEvent: cQInputDialog_method_callback_timerEvent,
  childEvent: cQInputDialog_method_callback_childEvent,
  customEvent: cQInputDialog_method_callback_customEvent,
  connectNotify: cQInputDialog_method_callback_connectNotify,
  disconnectNotify: cQInputDialog_method_callback_disconnectNotify,
)
proc create*(T: type gen_qinputdialog_types.QInputDialog,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQInputDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputDialog_new(addr(cQInputDialog_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qinputdialog_types.QInputDialog,
    inst: VirtualQInputDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputDialog_new2(addr(cQInputDialog_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qinputdialog_types.QInputDialog,
    parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQInputDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputDialog_new3(addr(cQInputDialog_mvtbl), addr(inst[]), parent.h, cint(flags))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qinputdialog_types.QInputDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDialog_staticMetaObject())
