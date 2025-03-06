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

proc fcQInputDialog_metaObject(self: pointer, ): pointer {.importc: "QInputDialog_metaObject".}
proc fcQInputDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputDialog_metacast".}
proc fcQInputDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QInputDialog_metacall".}
proc fcQInputDialog_tr(s: cstring): struct_miqt_string {.importc: "QInputDialog_tr".}
proc fcQInputDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QInputDialog_trUtf8".}
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
proc fcQInputDialog_getDouble2(parent: pointer, title: struct_miqt_string, label: struct_miqt_string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool, flags: cint, step: float64): float64 {.importc: "QInputDialog_getDouble2".}
proc fcQInputDialog_setDoubleStep(self: pointer, step: float64): void {.importc: "QInputDialog_setDoubleStep".}
proc fcQInputDialog_doubleStep(self: pointer, ): float64 {.importc: "QInputDialog_doubleStep".}
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
proc fcQInputDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QInputDialog_trUtf82".}
proc fcQInputDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QInputDialog_trUtf83".}
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
type cQInputDialogVTable = object
  destructor*: proc(vtbl: ptr cQInputDialogVTable, self: ptr cQInputDialog) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  done*: proc(vtbl, self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  accept*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQInputDialog_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QInputDialog_virtualbase_metaObject".}
proc fcQInputDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputDialog_virtualbase_metacast".}
proc fcQInputDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QInputDialog_virtualbase_metacall".}
proc fcQInputDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QInputDialog_virtualbase_minimumSizeHint".}
proc fcQInputDialog_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QInputDialog_virtualbase_sizeHint".}
proc fcQInputDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QInputDialog_virtualbase_setVisible".}
proc fcQInputDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QInputDialog_virtualbase_done".}
proc fcQInputDialog_virtualbase_open(self: pointer, ): void {.importc: "QInputDialog_virtualbase_open".}
proc fcQInputDialog_virtualbase_exec(self: pointer, ): cint {.importc: "QInputDialog_virtualbase_exec".}
proc fcQInputDialog_virtualbase_accept(self: pointer, ): void {.importc: "QInputDialog_virtualbase_accept".}
proc fcQInputDialog_virtualbase_reject(self: pointer, ): void {.importc: "QInputDialog_virtualbase_reject".}
proc fcQInputDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_keyPressEvent".}
proc fcQInputDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_closeEvent".}
proc fcQInputDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_showEvent".}
proc fcQInputDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_resizeEvent".}
proc fcQInputDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_contextMenuEvent".}
proc fcQInputDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QInputDialog_virtualbase_eventFilter".}
proc fcQInputDialog_virtualbase_devType(self: pointer, ): cint {.importc: "QInputDialog_virtualbase_devType".}
proc fcQInputDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QInputDialog_virtualbase_heightForWidth".}
proc fcQInputDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QInputDialog_virtualbase_hasHeightForWidth".}
proc fcQInputDialog_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QInputDialog_virtualbase_paintEngine".}
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
proc fcQInputDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QInputDialog_virtualbase_nativeEvent".}
proc fcQInputDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_changeEvent".}
proc fcQInputDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QInputDialog_virtualbase_metric".}
proc fcQInputDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QInputDialog_virtualbase_initPainter".}
proc fcQInputDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QInputDialog_virtualbase_redirected".}
proc fcQInputDialog_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QInputDialog_virtualbase_sharedPainter".}
proc fcQInputDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QInputDialog_virtualbase_inputMethodEvent".}
proc fcQInputDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QInputDialog_virtualbase_inputMethodQuery".}
proc fcQInputDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QInputDialog_virtualbase_focusNextPrevChild".}
proc fcQInputDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_timerEvent".}
proc fcQInputDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_childEvent".}
proc fcQInputDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QInputDialog_virtualbase_customEvent".}
proc fcQInputDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QInputDialog_virtualbase_connectNotify".}
proc fcQInputDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QInputDialog_virtualbase_disconnectNotify".}
proc fcQInputDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QInputDialog_protectedbase_adjustPosition".}
proc fcQInputDialog_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QInputDialog_protectedbase_updateMicroFocus".}
proc fcQInputDialog_protectedbase_create(self: pointer, ): void {.importc: "QInputDialog_protectedbase_create".}
proc fcQInputDialog_protectedbase_destroy(self: pointer, ): void {.importc: "QInputDialog_protectedbase_destroy".}
proc fcQInputDialog_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QInputDialog_protectedbase_focusNextChild".}
proc fcQInputDialog_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QInputDialog_protectedbase_focusPreviousChild".}
proc fcQInputDialog_protectedbase_sender(self: pointer, ): pointer {.importc: "QInputDialog_protectedbase_sender".}
proc fcQInputDialog_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QInputDialog_protectedbase_senderSignalIndex".}
proc fcQInputDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QInputDialog_protectedbase_receivers".}
proc fcQInputDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QInputDialog_protectedbase_isSignalConnected".}
proc fcQInputDialog_new(vtbl: pointer, parent: pointer): ptr cQInputDialog {.importc: "QInputDialog_new".}
proc fcQInputDialog_new2(vtbl: pointer, ): ptr cQInputDialog {.importc: "QInputDialog_new2".}
proc fcQInputDialog_new3(vtbl: pointer, parent: pointer, flags: cint): ptr cQInputDialog {.importc: "QInputDialog_new3".}
proc fcQInputDialog_staticMetaObject(): pointer {.importc: "QInputDialog_staticMetaObject".}
proc fcQInputDialog_delete(self: pointer) {.importc: "QInputDialog_delete".}

proc metaObject*(self: gen_qinputdialog_types.QInputDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDialog_metaObject(self.h))

proc metacast*(self: gen_qinputdialog_types.QInputDialog, param1: cstring): pointer =
  fcQInputDialog_metacast(self.h, param1)

proc metacall*(self: gen_qinputdialog_types.QInputDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQInputDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qinputdialog_types.QInputDialog, s: cstring): string =
  let v_ms = fcQInputDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qinputdialog_types.QInputDialog, s: cstring): string =
  let v_ms = fcQInputDialog_trUtf8(s)
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

proc getDouble*(_: type gen_qinputdialog_types.QInputDialog, parent: gen_qwidget_types.QWidget, title: string, label: string, value: float64, minValue: float64, maxValue: float64, decimals: cint, ok: ptr bool, flags: cint, step: float64): float64 =
  fcQInputDialog_getDouble2(parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), struct_miqt_string(data: label, len: csize_t(len(label))), value, minValue, maxValue, decimals, ok, cint(flags), step)

proc setDoubleStep*(self: gen_qinputdialog_types.QInputDialog, step: float64): void =
  fcQInputDialog_setDoubleStep(self.h, step)

proc doubleStep*(self: gen_qinputdialog_types.QInputDialog, ): float64 =
  fcQInputDialog_doubleStep(self.h)

proc textValueChanged*(self: gen_qinputdialog_types.QInputDialog, text: string): void =
  fcQInputDialog_textValueChanged(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QInputDialogtextValueChangedSlot* = proc(text: string)
proc miqt_exec_callback_cQInputDialog_textValueChanged(slot: int, text: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QInputDialogtextValueChangedSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQInputDialog_textValueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDialogtextValueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontextValueChanged*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogtextValueChangedSlot) =
  var tmp = new QInputDialogtextValueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_textValueChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQInputDialog_textValueChanged, miqt_exec_callback_cQInputDialog_textValueChanged_release)

proc textValueSelected*(self: gen_qinputdialog_types.QInputDialog, text: string): void =
  fcQInputDialog_textValueSelected(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QInputDialogtextValueSelectedSlot* = proc(text: string)
proc miqt_exec_callback_cQInputDialog_textValueSelected(slot: int, text: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QInputDialogtextValueSelectedSlot](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQInputDialog_textValueSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDialogtextValueSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontextValueSelected*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogtextValueSelectedSlot) =
  var tmp = new QInputDialogtextValueSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_textValueSelected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQInputDialog_textValueSelected, miqt_exec_callback_cQInputDialog_textValueSelected_release)

proc intValueChanged*(self: gen_qinputdialog_types.QInputDialog, value: cint): void =
  fcQInputDialog_intValueChanged(self.h, value)

type QInputDialogintValueChangedSlot* = proc(value: cint)
proc miqt_exec_callback_cQInputDialog_intValueChanged(slot: int, value: cint) {.cdecl.} =
  let nimfunc = cast[ptr QInputDialogintValueChangedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc miqt_exec_callback_cQInputDialog_intValueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDialogintValueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onintValueChanged*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogintValueChangedSlot) =
  var tmp = new QInputDialogintValueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_intValueChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQInputDialog_intValueChanged, miqt_exec_callback_cQInputDialog_intValueChanged_release)

proc intValueSelected*(self: gen_qinputdialog_types.QInputDialog, value: cint): void =
  fcQInputDialog_intValueSelected(self.h, value)

type QInputDialogintValueSelectedSlot* = proc(value: cint)
proc miqt_exec_callback_cQInputDialog_intValueSelected(slot: int, value: cint) {.cdecl.} =
  let nimfunc = cast[ptr QInputDialogintValueSelectedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc miqt_exec_callback_cQInputDialog_intValueSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDialogintValueSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onintValueSelected*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogintValueSelectedSlot) =
  var tmp = new QInputDialogintValueSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_intValueSelected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQInputDialog_intValueSelected, miqt_exec_callback_cQInputDialog_intValueSelected_release)

proc doubleValueChanged*(self: gen_qinputdialog_types.QInputDialog, value: float64): void =
  fcQInputDialog_doubleValueChanged(self.h, value)

type QInputDialogdoubleValueChangedSlot* = proc(value: float64)
proc miqt_exec_callback_cQInputDialog_doubleValueChanged(slot: int, value: float64) {.cdecl.} =
  let nimfunc = cast[ptr QInputDialogdoubleValueChangedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc miqt_exec_callback_cQInputDialog_doubleValueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDialogdoubleValueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondoubleValueChanged*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdoubleValueChangedSlot) =
  var tmp = new QInputDialogdoubleValueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_doubleValueChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQInputDialog_doubleValueChanged, miqt_exec_callback_cQInputDialog_doubleValueChanged_release)

proc doubleValueSelected*(self: gen_qinputdialog_types.QInputDialog, value: float64): void =
  fcQInputDialog_doubleValueSelected(self.h, value)

type QInputDialogdoubleValueSelectedSlot* = proc(value: float64)
proc miqt_exec_callback_cQInputDialog_doubleValueSelected(slot: int, value: float64) {.cdecl.} =
  let nimfunc = cast[ptr QInputDialogdoubleValueSelectedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc miqt_exec_callback_cQInputDialog_doubleValueSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDialogdoubleValueSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondoubleValueSelected*(self: gen_qinputdialog_types.QInputDialog, slot: QInputDialogdoubleValueSelectedSlot) =
  var tmp = new QInputDialogdoubleValueSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDialog_connect_doubleValueSelected(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQInputDialog_doubleValueSelected, miqt_exec_callback_cQInputDialog_doubleValueSelected_release)

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

proc trUtf8*(_: type gen_qinputdialog_types.QInputDialog, s: cstring, c: cstring): string =
  let v_ms = fcQInputDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qinputdialog_types.QInputDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQInputDialog_trUtf83(s, c, n)
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
type QInputDialogenterEventProc* = proc(self: QInputDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
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
type QInputDialognativeEventProc* = proc(self: QInputDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QInputDialogVTable* = object
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
proc QInputDialogmetaObject*(self: gen_qinputdialog_types.QInputDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDialog_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQInputDialog_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QInputDialogmetacast*(self: gen_qinputdialog_types.QInputDialog, param1: cstring): pointer =
  fcQInputDialog_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQInputDialog_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QInputDialogmetacall*(self: gen_qinputdialog_types.QInputDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQInputDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQInputDialog_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QInputDialogminimumSizeHint*(self: gen_qinputdialog_types.QInputDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQInputDialog_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQInputDialog_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QInputDialogsizeHint*(self: gen_qinputdialog_types.QInputDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQInputDialog_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQInputDialog_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QInputDialogsetVisible*(self: gen_qinputdialog_types.QInputDialog, visible: bool): void =
  fcQInputDialog_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQInputDialog_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QInputDialogdone*(self: gen_qinputdialog_types.QInputDialog, resultVal: cint): void =
  fcQInputDialog_virtualbase_done(self.h, resultVal)

proc miqt_exec_callback_cQInputDialog_done(vtbl: pointer, self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QInputDialogopen*(self: gen_qinputdialog_types.QInputDialog, ): void =
  fcQInputDialog_virtualbase_open(self.h)

proc miqt_exec_callback_cQInputDialog_open(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  vtbl[].open(self)

proc QInputDialogexec*(self: gen_qinputdialog_types.QInputDialog, ): cint =
  fcQInputDialog_virtualbase_exec(self.h)

proc miqt_exec_callback_cQInputDialog_exec(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QInputDialogaccept*(self: gen_qinputdialog_types.QInputDialog, ): void =
  fcQInputDialog_virtualbase_accept(self.h)

proc miqt_exec_callback_cQInputDialog_accept(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  vtbl[].accept(self)

proc QInputDialogreject*(self: gen_qinputdialog_types.QInputDialog, ): void =
  fcQInputDialog_virtualbase_reject(self.h)

proc miqt_exec_callback_cQInputDialog_reject(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  vtbl[].reject(self)

proc QInputDialogkeyPressEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQInputDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc miqt_exec_callback_cQInputDialog_keyPressEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)
  vtbl[].keyPressEvent(self, slotval1)

proc QInputDialogcloseEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQInputDialog_virtualbase_closeEvent(self.h, param1.h)

proc miqt_exec_callback_cQInputDialog_closeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)
  vtbl[].closeEvent(self, slotval1)

proc QInputDialogshowEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQInputDialog_virtualbase_showEvent(self.h, param1.h)

proc miqt_exec_callback_cQInputDialog_showEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)
  vtbl[].showEvent(self, slotval1)

proc QInputDialogresizeEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQInputDialog_virtualbase_resizeEvent(self.h, param1.h)

proc miqt_exec_callback_cQInputDialog_resizeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)
  vtbl[].resizeEvent(self, slotval1)

proc QInputDialogcontextMenuEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQInputDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQInputDialog_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QInputDialogeventFilter*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQInputDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc miqt_exec_callback_cQInputDialog_eventFilter(vtbl: pointer, self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QInputDialogdevType*(self: gen_qinputdialog_types.QInputDialog, ): cint =
  fcQInputDialog_virtualbase_devType(self.h)

proc miqt_exec_callback_cQInputDialog_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QInputDialogheightForWidth*(self: gen_qinputdialog_types.QInputDialog, param1: cint): cint =
  fcQInputDialog_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQInputDialog_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QInputDialoghasHeightForWidth*(self: gen_qinputdialog_types.QInputDialog, ): bool =
  fcQInputDialog_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQInputDialog_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QInputDialogpaintEngine*(self: gen_qinputdialog_types.QInputDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQInputDialog_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQInputDialog_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QInputDialogevent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQInputDialog_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QInputDialogmousePressEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQInputDialog_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QInputDialogmouseReleaseEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQInputDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QInputDialogmouseDoubleClickEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQInputDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QInputDialogmouseMoveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQInputDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QInputDialogwheelEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQInputDialog_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QInputDialogkeyReleaseEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQInputDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QInputDialogfocusInEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQInputDialog_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QInputDialogfocusOutEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQInputDialog_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QInputDialogenterEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQInputDialog_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QInputDialogleaveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQInputDialog_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QInputDialogpaintEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQInputDialog_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QInputDialogmoveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQInputDialog_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QInputDialogtabletEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQInputDialog_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QInputDialogactionEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QActionEvent): void =
  fcQInputDialog_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QInputDialogdragEnterEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQInputDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QInputDialogdragMoveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQInputDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QInputDialogdragLeaveEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQInputDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QInputDialogdropEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QDropEvent): void =
  fcQInputDialog_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QInputDialoghideEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qevent_types.QHideEvent): void =
  fcQInputDialog_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QInputDialognativeEvent*(self: gen_qinputdialog_types.QInputDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQInputDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQInputDialog_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QInputDialogchangeEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qcoreevent_types.QEvent): void =
  fcQInputDialog_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQInputDialog_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QInputDialogmetric*(self: gen_qinputdialog_types.QInputDialog, param1: cint): cint =
  fcQInputDialog_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQInputDialog_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QInputDialoginitPainter*(self: gen_qinputdialog_types.QInputDialog, painter: gen_qpainter_types.QPainter): void =
  fcQInputDialog_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQInputDialog_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QInputDialogredirected*(self: gen_qinputdialog_types.QInputDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQInputDialog_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQInputDialog_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QInputDialogsharedPainter*(self: gen_qinputdialog_types.QInputDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQInputDialog_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQInputDialog_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QInputDialoginputMethodEvent*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQInputDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQInputDialog_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QInputDialoginputMethodQuery*(self: gen_qinputdialog_types.QInputDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQInputDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQInputDialog_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QInputDialogfocusNextPrevChild*(self: gen_qinputdialog_types.QInputDialog, next: bool): bool =
  fcQInputDialog_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQInputDialog_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QInputDialogtimerEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQInputDialog_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QInputDialogchildEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQInputDialog_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QInputDialogcustomEvent*(self: gen_qinputdialog_types.QInputDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQInputDialog_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDialog_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QInputDialogconnectNotify*(self: gen_qinputdialog_types.QInputDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQInputDialog_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQInputDialog_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QInputDialogdisconnectNotify*(self: gen_qinputdialog_types.QInputDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQInputDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQInputDialog_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDialogVTable](vtbl)
  let self = QInputDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc adjustPosition*(self: gen_qinputdialog_types.QInputDialog, param1: gen_qwidget_types.QWidget): void =
  fcQInputDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qinputdialog_types.QInputDialog, ): void =
  fcQInputDialog_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qinputdialog_types.QInputDialog, ): void =
  fcQInputDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qinputdialog_types.QInputDialog, ): void =
  fcQInputDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qinputdialog_types.QInputDialog, ): bool =
  fcQInputDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qinputdialog_types.QInputDialog, ): bool =
  fcQInputDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qinputdialog_types.QInputDialog, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQInputDialog_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qinputdialog_types.QInputDialog, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputDialogVTable, _: ptr cQInputDialog) {.cdecl.} =
    let vtbl = cast[ref QInputDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQInputDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQInputDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQInputDialog_metacall
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQInputDialog_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQInputDialog_sizeHint
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQInputDialog_setVisible
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQInputDialog_done
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQInputDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQInputDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQInputDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQInputDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQInputDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQInputDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQInputDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQInputDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQInputDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQInputDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQInputDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQInputDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQInputDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQInputDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQInputDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQInputDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQInputDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQInputDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQInputDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQInputDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQInputDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQInputDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQInputDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQInputDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQInputDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQInputDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQInputDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQInputDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQInputDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQInputDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQInputDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQInputDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQInputDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQInputDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQInputDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQInputDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQInputDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQInputDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQInputDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQInputDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQInputDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQInputDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQInputDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQInputDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQInputDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQInputDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQInputDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQInputDialog_disconnectNotify
  gen_qinputdialog_types.QInputDialog(h: fcQInputDialog_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qinputdialog_types.QInputDialog,
    vtbl: ref QInputDialogVTable = nil): gen_qinputdialog_types.QInputDialog =
  let vtbl = if vtbl == nil: new QInputDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputDialogVTable, _: ptr cQInputDialog) {.cdecl.} =
    let vtbl = cast[ref QInputDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQInputDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQInputDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQInputDialog_metacall
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQInputDialog_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQInputDialog_sizeHint
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQInputDialog_setVisible
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQInputDialog_done
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQInputDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQInputDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQInputDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQInputDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQInputDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQInputDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQInputDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQInputDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQInputDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQInputDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQInputDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQInputDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQInputDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQInputDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQInputDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQInputDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQInputDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQInputDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQInputDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQInputDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQInputDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQInputDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQInputDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQInputDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQInputDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQInputDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQInputDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQInputDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQInputDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQInputDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQInputDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQInputDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQInputDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQInputDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQInputDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQInputDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQInputDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQInputDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQInputDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQInputDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQInputDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQInputDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQInputDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQInputDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQInputDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQInputDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQInputDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQInputDialog_disconnectNotify
  gen_qinputdialog_types.QInputDialog(h: fcQInputDialog_new2(addr(vtbl[]), ))

proc create*(T: type gen_qinputdialog_types.QInputDialog,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QInputDialogVTable = nil): gen_qinputdialog_types.QInputDialog =
  let vtbl = if vtbl == nil: new QInputDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputDialogVTable, _: ptr cQInputDialog) {.cdecl.} =
    let vtbl = cast[ref QInputDialogVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQInputDialog_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQInputDialog_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQInputDialog_metacall
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQInputDialog_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQInputDialog_sizeHint
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQInputDialog_setVisible
  if not isNil(vtbl.done):
    vtbl[].vtbl.done = miqt_exec_callback_cQInputDialog_done
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQInputDialog_open
  if not isNil(vtbl.exec):
    vtbl[].vtbl.exec = miqt_exec_callback_cQInputDialog_exec
  if not isNil(vtbl.accept):
    vtbl[].vtbl.accept = miqt_exec_callback_cQInputDialog_accept
  if not isNil(vtbl.reject):
    vtbl[].vtbl.reject = miqt_exec_callback_cQInputDialog_reject
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQInputDialog_keyPressEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQInputDialog_closeEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQInputDialog_showEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQInputDialog_resizeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQInputDialog_contextMenuEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQInputDialog_eventFilter
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQInputDialog_devType
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQInputDialog_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQInputDialog_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQInputDialog_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQInputDialog_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQInputDialog_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQInputDialog_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQInputDialog_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQInputDialog_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQInputDialog_wheelEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQInputDialog_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQInputDialog_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQInputDialog_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQInputDialog_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQInputDialog_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQInputDialog_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQInputDialog_moveEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQInputDialog_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQInputDialog_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQInputDialog_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQInputDialog_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQInputDialog_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQInputDialog_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQInputDialog_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQInputDialog_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQInputDialog_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQInputDialog_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQInputDialog_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQInputDialog_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQInputDialog_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQInputDialog_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQInputDialog_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQInputDialog_focusNextPrevChild
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQInputDialog_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQInputDialog_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQInputDialog_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQInputDialog_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQInputDialog_disconnectNotify
  gen_qinputdialog_types.QInputDialog(h: fcQInputDialog_new3(addr(vtbl[]), parent.h, cint(flags)))

proc staticMetaObject*(_: type gen_qinputdialog_types.QInputDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDialog_staticMetaObject())
proc delete*(self: gen_qinputdialog_types.QInputDialog) =
  fcQInputDialog_delete(self.h)
