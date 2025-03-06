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
{.compile("gen_qabstractspinbox.cpp", cflags).}


type QAbstractSpinBoxStepEnabledFlagEnum* = distinct cint
template StepNone*(_: type QAbstractSpinBoxStepEnabledFlagEnum): untyped = 0
template StepUpEnabled*(_: type QAbstractSpinBoxStepEnabledFlagEnum): untyped = 1
template StepDownEnabled*(_: type QAbstractSpinBoxStepEnabledFlagEnum): untyped = 2


type QAbstractSpinBoxButtonSymbolsEnum* = distinct cint
template UpDownArrows*(_: type QAbstractSpinBoxButtonSymbolsEnum): untyped = 0
template PlusMinus*(_: type QAbstractSpinBoxButtonSymbolsEnum): untyped = 1
template NoButtons*(_: type QAbstractSpinBoxButtonSymbolsEnum): untyped = 2


type QAbstractSpinBoxCorrectionModeEnum* = distinct cint
template CorrectToPreviousValue*(_: type QAbstractSpinBoxCorrectionModeEnum): untyped = 0
template CorrectToNearestValue*(_: type QAbstractSpinBoxCorrectionModeEnum): untyped = 1


type QAbstractSpinBoxStepTypeEnum* = distinct cint
template DefaultStepType*(_: type QAbstractSpinBoxStepTypeEnum): untyped = 0
template AdaptiveDecimalStepType*(_: type QAbstractSpinBoxStepTypeEnum): untyped = 1


import ./gen_qabstractspinbox_types
export gen_qabstractspinbox_types

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
  ./gen_qstyleoption_types,
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
  gen_qstyleoption_types,
  gen_qwidget

type cQAbstractSpinBox*{.exportc: "QAbstractSpinBox", incompleteStruct.} = object

proc fcQAbstractSpinBox_new(parent: pointer): ptr cQAbstractSpinBox {.importc: "QAbstractSpinBox_new".}
proc fcQAbstractSpinBox_new2(): ptr cQAbstractSpinBox {.importc: "QAbstractSpinBox_new2".}
proc fcQAbstractSpinBox_metaObject(self: pointer, ): pointer {.importc: "QAbstractSpinBox_metaObject".}
proc fcQAbstractSpinBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSpinBox_metacast".}
proc fcQAbstractSpinBox_tr(s: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_tr".}
proc fcQAbstractSpinBox_buttonSymbols(self: pointer, ): cint {.importc: "QAbstractSpinBox_buttonSymbols".}
proc fcQAbstractSpinBox_setButtonSymbols(self: pointer, bs: cint): void {.importc: "QAbstractSpinBox_setButtonSymbols".}
proc fcQAbstractSpinBox_setCorrectionMode(self: pointer, cm: cint): void {.importc: "QAbstractSpinBox_setCorrectionMode".}
proc fcQAbstractSpinBox_correctionMode(self: pointer, ): cint {.importc: "QAbstractSpinBox_correctionMode".}
proc fcQAbstractSpinBox_hasAcceptableInput(self: pointer, ): bool {.importc: "QAbstractSpinBox_hasAcceptableInput".}
proc fcQAbstractSpinBox_text(self: pointer, ): struct_miqt_string {.importc: "QAbstractSpinBox_text".}
proc fcQAbstractSpinBox_specialValueText(self: pointer, ): struct_miqt_string {.importc: "QAbstractSpinBox_specialValueText".}
proc fcQAbstractSpinBox_setSpecialValueText(self: pointer, txt: struct_miqt_string): void {.importc: "QAbstractSpinBox_setSpecialValueText".}
proc fcQAbstractSpinBox_wrapping(self: pointer, ): bool {.importc: "QAbstractSpinBox_wrapping".}
proc fcQAbstractSpinBox_setWrapping(self: pointer, w: bool): void {.importc: "QAbstractSpinBox_setWrapping".}
proc fcQAbstractSpinBox_setReadOnly(self: pointer, r: bool): void {.importc: "QAbstractSpinBox_setReadOnly".}
proc fcQAbstractSpinBox_isReadOnly(self: pointer, ): bool {.importc: "QAbstractSpinBox_isReadOnly".}
proc fcQAbstractSpinBox_setKeyboardTracking(self: pointer, kt: bool): void {.importc: "QAbstractSpinBox_setKeyboardTracking".}
proc fcQAbstractSpinBox_keyboardTracking(self: pointer, ): bool {.importc: "QAbstractSpinBox_keyboardTracking".}
proc fcQAbstractSpinBox_setAlignment(self: pointer, flag: cint): void {.importc: "QAbstractSpinBox_setAlignment".}
proc fcQAbstractSpinBox_alignment(self: pointer, ): cint {.importc: "QAbstractSpinBox_alignment".}
proc fcQAbstractSpinBox_setFrame(self: pointer, frame: bool): void {.importc: "QAbstractSpinBox_setFrame".}
proc fcQAbstractSpinBox_hasFrame(self: pointer, ): bool {.importc: "QAbstractSpinBox_hasFrame".}
proc fcQAbstractSpinBox_setAccelerated(self: pointer, on: bool): void {.importc: "QAbstractSpinBox_setAccelerated".}
proc fcQAbstractSpinBox_isAccelerated(self: pointer, ): bool {.importc: "QAbstractSpinBox_isAccelerated".}
proc fcQAbstractSpinBox_setGroupSeparatorShown(self: pointer, shown: bool): void {.importc: "QAbstractSpinBox_setGroupSeparatorShown".}
proc fcQAbstractSpinBox_isGroupSeparatorShown(self: pointer, ): bool {.importc: "QAbstractSpinBox_isGroupSeparatorShown".}
proc fcQAbstractSpinBox_sizeHint(self: pointer, ): pointer {.importc: "QAbstractSpinBox_sizeHint".}
proc fcQAbstractSpinBox_minimumSizeHint(self: pointer, ): pointer {.importc: "QAbstractSpinBox_minimumSizeHint".}
proc fcQAbstractSpinBox_interpretText(self: pointer, ): void {.importc: "QAbstractSpinBox_interpretText".}
proc fcQAbstractSpinBox_event(self: pointer, event: pointer): bool {.importc: "QAbstractSpinBox_event".}
proc fcQAbstractSpinBox_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractSpinBox_inputMethodQuery".}
proc fcQAbstractSpinBox_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint {.importc: "QAbstractSpinBox_validate".}
proc fcQAbstractSpinBox_fixup(self: pointer, input: struct_miqt_string): void {.importc: "QAbstractSpinBox_fixup".}
proc fcQAbstractSpinBox_stepBy(self: pointer, steps: cint): void {.importc: "QAbstractSpinBox_stepBy".}
proc fcQAbstractSpinBox_stepUp(self: pointer, ): void {.importc: "QAbstractSpinBox_stepUp".}
proc fcQAbstractSpinBox_stepDown(self: pointer, ): void {.importc: "QAbstractSpinBox_stepDown".}
proc fcQAbstractSpinBox_selectAll(self: pointer, ): void {.importc: "QAbstractSpinBox_selectAll".}
proc fcQAbstractSpinBox_clear(self: pointer, ): void {.importc: "QAbstractSpinBox_clear".}
proc fcQAbstractSpinBox_editingFinished(self: pointer, ): void {.importc: "QAbstractSpinBox_editingFinished".}
proc fcQAbstractSpinBox_connect_editingFinished(self: pointer, slot: int) {.importc: "QAbstractSpinBox_connect_editingFinished".}
proc fcQAbstractSpinBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSpinBox_tr2".}
proc fcQAbstractSpinBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSpinBox_tr3".}
proc fQAbstractSpinBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QAbstractSpinBox_virtualbase_sizeHint".}
proc fcQAbstractSpinBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_sizeHint".}
proc fQAbstractSpinBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QAbstractSpinBox_virtualbase_minimumSizeHint".}
proc fcQAbstractSpinBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_minimumSizeHint".}
proc fQAbstractSpinBox_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractSpinBox_virtualbase_event".}
proc fcQAbstractSpinBox_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_event".}
proc fQAbstractSpinBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QAbstractSpinBox_virtualbase_inputMethodQuery".}
proc fcQAbstractSpinBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_inputMethodQuery".}
proc fQAbstractSpinBox_virtualbase_validate(self: pointer, input: struct_miqt_string, pos: ptr cint): cint{.importc: "QAbstractSpinBox_virtualbase_validate".}
proc fcQAbstractSpinBox_override_virtual_validate(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_validate".}
proc fQAbstractSpinBox_virtualbase_fixup(self: pointer, input: struct_miqt_string): void{.importc: "QAbstractSpinBox_virtualbase_fixup".}
proc fcQAbstractSpinBox_override_virtual_fixup(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_fixup".}
proc fQAbstractSpinBox_virtualbase_stepBy(self: pointer, steps: cint): void{.importc: "QAbstractSpinBox_virtualbase_stepBy".}
proc fcQAbstractSpinBox_override_virtual_stepBy(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_stepBy".}
proc fQAbstractSpinBox_virtualbase_clear(self: pointer, ): void{.importc: "QAbstractSpinBox_virtualbase_clear".}
proc fcQAbstractSpinBox_override_virtual_clear(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_clear".}
proc fQAbstractSpinBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_resizeEvent".}
proc fcQAbstractSpinBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_resizeEvent".}
proc fQAbstractSpinBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_keyPressEvent".}
proc fcQAbstractSpinBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_keyPressEvent".}
proc fQAbstractSpinBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_keyReleaseEvent".}
proc fcQAbstractSpinBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_keyReleaseEvent".}
proc fQAbstractSpinBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_wheelEvent".}
proc fcQAbstractSpinBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_wheelEvent".}
proc fQAbstractSpinBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_focusInEvent".}
proc fcQAbstractSpinBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_focusInEvent".}
proc fQAbstractSpinBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_focusOutEvent".}
proc fcQAbstractSpinBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_focusOutEvent".}
proc fQAbstractSpinBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_contextMenuEvent".}
proc fcQAbstractSpinBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_contextMenuEvent".}
proc fQAbstractSpinBox_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_changeEvent".}
proc fcQAbstractSpinBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_changeEvent".}
proc fQAbstractSpinBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_closeEvent".}
proc fcQAbstractSpinBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_closeEvent".}
proc fQAbstractSpinBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_hideEvent".}
proc fcQAbstractSpinBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_hideEvent".}
proc fQAbstractSpinBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_mousePressEvent".}
proc fcQAbstractSpinBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_mousePressEvent".}
proc fQAbstractSpinBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_mouseReleaseEvent".}
proc fcQAbstractSpinBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_mouseReleaseEvent".}
proc fQAbstractSpinBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_mouseMoveEvent".}
proc fcQAbstractSpinBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_mouseMoveEvent".}
proc fQAbstractSpinBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_timerEvent".}
proc fcQAbstractSpinBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_timerEvent".}
proc fQAbstractSpinBox_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_paintEvent".}
proc fcQAbstractSpinBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_paintEvent".}
proc fQAbstractSpinBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_showEvent".}
proc fcQAbstractSpinBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_showEvent".}
proc fQAbstractSpinBox_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QAbstractSpinBox_virtualbase_initStyleOption".}
proc fcQAbstractSpinBox_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_initStyleOption".}
proc fQAbstractSpinBox_virtualbase_stepEnabled(self: pointer, ): cint{.importc: "QAbstractSpinBox_virtualbase_stepEnabled".}
proc fcQAbstractSpinBox_override_virtual_stepEnabled(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_stepEnabled".}
proc fQAbstractSpinBox_virtualbase_devType(self: pointer, ): cint{.importc: "QAbstractSpinBox_virtualbase_devType".}
proc fcQAbstractSpinBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_devType".}
proc fQAbstractSpinBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QAbstractSpinBox_virtualbase_setVisible".}
proc fcQAbstractSpinBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_setVisible".}
proc fQAbstractSpinBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QAbstractSpinBox_virtualbase_heightForWidth".}
proc fcQAbstractSpinBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_heightForWidth".}
proc fQAbstractSpinBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QAbstractSpinBox_virtualbase_hasHeightForWidth".}
proc fcQAbstractSpinBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_hasHeightForWidth".}
proc fQAbstractSpinBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QAbstractSpinBox_virtualbase_paintEngine".}
proc fcQAbstractSpinBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_paintEngine".}
proc fQAbstractSpinBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractSpinBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractSpinBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_enterEvent".}
proc fcQAbstractSpinBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_enterEvent".}
proc fQAbstractSpinBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_leaveEvent".}
proc fcQAbstractSpinBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_leaveEvent".}
proc fQAbstractSpinBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_moveEvent".}
proc fcQAbstractSpinBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_moveEvent".}
proc fQAbstractSpinBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_tabletEvent".}
proc fcQAbstractSpinBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_tabletEvent".}
proc fQAbstractSpinBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_actionEvent".}
proc fcQAbstractSpinBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_actionEvent".}
proc fQAbstractSpinBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_dragEnterEvent".}
proc fcQAbstractSpinBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_dragEnterEvent".}
proc fQAbstractSpinBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_dragMoveEvent".}
proc fcQAbstractSpinBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_dragMoveEvent".}
proc fQAbstractSpinBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_dragLeaveEvent".}
proc fcQAbstractSpinBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_dragLeaveEvent".}
proc fQAbstractSpinBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_dropEvent".}
proc fcQAbstractSpinBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_dropEvent".}
proc fQAbstractSpinBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QAbstractSpinBox_virtualbase_nativeEvent".}
proc fcQAbstractSpinBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_nativeEvent".}
proc fQAbstractSpinBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QAbstractSpinBox_virtualbase_metric".}
proc fcQAbstractSpinBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_metric".}
proc fQAbstractSpinBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QAbstractSpinBox_virtualbase_initPainter".}
proc fcQAbstractSpinBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_initPainter".}
proc fQAbstractSpinBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QAbstractSpinBox_virtualbase_redirected".}
proc fcQAbstractSpinBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_redirected".}
proc fQAbstractSpinBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QAbstractSpinBox_virtualbase_sharedPainter".}
proc fcQAbstractSpinBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_sharedPainter".}
proc fQAbstractSpinBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QAbstractSpinBox_virtualbase_inputMethodEvent".}
proc fcQAbstractSpinBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_inputMethodEvent".}
proc fQAbstractSpinBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QAbstractSpinBox_virtualbase_focusNextPrevChild".}
proc fcQAbstractSpinBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_focusNextPrevChild".}
proc fQAbstractSpinBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractSpinBox_virtualbase_eventFilter".}
proc fcQAbstractSpinBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_eventFilter".}
proc fQAbstractSpinBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_childEvent".}
proc fcQAbstractSpinBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_childEvent".}
proc fQAbstractSpinBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractSpinBox_virtualbase_customEvent".}
proc fcQAbstractSpinBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_customEvent".}
proc fQAbstractSpinBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractSpinBox_virtualbase_connectNotify".}
proc fcQAbstractSpinBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_connectNotify".}
proc fQAbstractSpinBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractSpinBox_virtualbase_disconnectNotify".}
proc fcQAbstractSpinBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractSpinBox_override_virtual_disconnectNotify".}
proc fcQAbstractSpinBox_delete(self: pointer) {.importc: "QAbstractSpinBox_delete".}


func init*(T: type gen_qabstractspinbox_types.QAbstractSpinBox, h: ptr cQAbstractSpinBox): gen_qabstractspinbox_types.QAbstractSpinBox =
  T(h: h)
proc create*(T: type gen_qabstractspinbox_types.QAbstractSpinBox, parent: gen_qwidget_types.QWidget): gen_qabstractspinbox_types.QAbstractSpinBox =
  gen_qabstractspinbox_types.QAbstractSpinBox.init(fcQAbstractSpinBox_new(parent.h))

proc create*(T: type gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qabstractspinbox_types.QAbstractSpinBox =
  gen_qabstractspinbox_types.QAbstractSpinBox.init(fcQAbstractSpinBox_new2())

proc metaObject*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSpinBox_metaObject(self.h))

proc metacast*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cstring): pointer =
  fcQAbstractSpinBox_metacast(self.h, param1)

proc tr*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring): string =
  let v_ms = fcQAbstractSpinBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc buttonSymbols*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): cint =
  cint(fcQAbstractSpinBox_buttonSymbols(self.h))

proc setButtonSymbols*(self: gen_qabstractspinbox_types.QAbstractSpinBox, bs: cint): void =
  fcQAbstractSpinBox_setButtonSymbols(self.h, cint(bs))

proc setCorrectionMode*(self: gen_qabstractspinbox_types.QAbstractSpinBox, cm: cint): void =
  fcQAbstractSpinBox_setCorrectionMode(self.h, cint(cm))

proc correctionMode*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): cint =
  cint(fcQAbstractSpinBox_correctionMode(self.h))

proc hasAcceptableInput*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_hasAcceptableInput(self.h)

proc text*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): string =
  let v_ms = fcQAbstractSpinBox_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc specialValueText*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): string =
  let v_ms = fcQAbstractSpinBox_specialValueText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSpecialValueText*(self: gen_qabstractspinbox_types.QAbstractSpinBox, txt: string): void =
  fcQAbstractSpinBox_setSpecialValueText(self.h, struct_miqt_string(data: txt, len: csize_t(len(txt))))

proc wrapping*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_wrapping(self.h)

proc setWrapping*(self: gen_qabstractspinbox_types.QAbstractSpinBox, w: bool): void =
  fcQAbstractSpinBox_setWrapping(self.h, w)

proc setReadOnly*(self: gen_qabstractspinbox_types.QAbstractSpinBox, r: bool): void =
  fcQAbstractSpinBox_setReadOnly(self.h, r)

proc isReadOnly*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_isReadOnly(self.h)

proc setKeyboardTracking*(self: gen_qabstractspinbox_types.QAbstractSpinBox, kt: bool): void =
  fcQAbstractSpinBox_setKeyboardTracking(self.h, kt)

proc keyboardTracking*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_keyboardTracking(self.h)

proc setAlignment*(self: gen_qabstractspinbox_types.QAbstractSpinBox, flag: cint): void =
  fcQAbstractSpinBox_setAlignment(self.h, cint(flag))

proc alignment*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): cint =
  cint(fcQAbstractSpinBox_alignment(self.h))

proc setFrame*(self: gen_qabstractspinbox_types.QAbstractSpinBox, frame: bool): void =
  fcQAbstractSpinBox_setFrame(self.h, frame)

proc hasFrame*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_hasFrame(self.h)

proc setAccelerated*(self: gen_qabstractspinbox_types.QAbstractSpinBox, on: bool): void =
  fcQAbstractSpinBox_setAccelerated(self.h, on)

proc isAccelerated*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_isAccelerated(self.h)

proc setGroupSeparatorShown*(self: gen_qabstractspinbox_types.QAbstractSpinBox, shown: bool): void =
  fcQAbstractSpinBox_setGroupSeparatorShown(self.h, shown)

proc isGroupSeparatorShown*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fcQAbstractSpinBox_isGroupSeparatorShown(self.h)

proc sizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSpinBox_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSpinBox_minimumSizeHint(self.h))

proc interpretText*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_interpretText(self.h)

proc event*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSpinBox_event(self.h, event.h)

proc inputMethodQuery*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractSpinBox_inputMethodQuery(self.h, cint(param1)))

proc validate*(self: gen_qabstractspinbox_types.QAbstractSpinBox, input: string, pos: ptr cint): cint =
  cint(fcQAbstractSpinBox_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

proc fixup*(self: gen_qabstractspinbox_types.QAbstractSpinBox, input: string): void =
  fcQAbstractSpinBox_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

proc stepBy*(self: gen_qabstractspinbox_types.QAbstractSpinBox, steps: cint): void =
  fcQAbstractSpinBox_stepBy(self.h, steps)

proc stepUp*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_stepUp(self.h)

proc stepDown*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_stepDown(self.h)

proc selectAll*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_selectAll(self.h)

proc clear*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_clear(self.h)

proc editingFinished*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fcQAbstractSpinBox_editingFinished(self.h)

type QAbstractSpinBoxeditingFinishedSlot* = proc()
proc miqt_exec_callback_QAbstractSpinBox_editingFinished(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSpinBoxeditingFinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc oneditingFinished*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxeditingFinishedSlot) =
  var tmp = new QAbstractSpinBoxeditingFinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_connect_editingFinished(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractSpinBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractspinbox_types.QAbstractSpinBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractSpinBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAbstractSpinBoxsizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractSpinBox_virtualbase_sizeHint(self.h))

type QAbstractSpinBoxsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxsizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_sizeHint(self: ptr cQAbstractSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSpinBox_sizeHint ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractSpinBoxminimumSizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractSpinBox_virtualbase_minimumSizeHint(self.h))

type QAbstractSpinBoxminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_minimumSizeHint(self: ptr cQAbstractSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSpinBox_minimumSizeHint ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractSpinBoxevent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractSpinBox_virtualbase_event(self.h, event.h)

type QAbstractSpinBoxeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxeventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_event(self: ptr cQAbstractSpinBox, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractSpinBox_event ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSpinBoxinputMethodQuery*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractSpinBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QAbstractSpinBoxinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_inputMethodQuery(self: ptr cQAbstractSpinBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QAbstractSpinBox_inputMethodQuery ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractSpinBoxvalidate*(self: gen_qabstractspinbox_types.QAbstractSpinBox, input: string, pos: ptr cint): cint =
  cint(fQAbstractSpinBox_virtualbase_validate(self.h, struct_miqt_string(data: input, len: csize_t(len(input))), pos))

type QAbstractSpinBoxvalidateProc* = proc(input: string, pos: ptr cint): cint
proc onvalidate*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxvalidateProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_validate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_validate(self: ptr cQAbstractSpinBox, slot: int, input: struct_miqt_string, pos: ptr cint): cint {.exportc: "miqt_exec_callback_QAbstractSpinBox_validate ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxvalidateProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret

  let slotval2 = pos


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  cint(virtualReturn)
proc QAbstractSpinBoxfixup*(self: gen_qabstractspinbox_types.QAbstractSpinBox, input: string): void =
  fQAbstractSpinBox_virtualbase_fixup(self.h, struct_miqt_string(data: input, len: csize_t(len(input))))

type QAbstractSpinBoxfixupProc* = proc(input: string): void
proc onfixup*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxfixupProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxfixupProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_fixup(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_fixup(self: ptr cQAbstractSpinBox, slot: int, input: struct_miqt_string): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_fixup ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxfixupProc](cast[pointer](slot))
  let vinput_ms = input
  let vinputx_ret = string.fromBytes(toOpenArrayByte(vinput_ms.data, 0, int(vinput_ms.len)-1))
  c_free(vinput_ms.data)
  let slotval1 = vinputx_ret


  nimfunc[](slotval1)
proc QAbstractSpinBoxstepBy*(self: gen_qabstractspinbox_types.QAbstractSpinBox, steps: cint): void =
  fQAbstractSpinBox_virtualbase_stepBy(self.h, steps)

type QAbstractSpinBoxstepByProc* = proc(steps: cint): void
proc onstepBy*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxstepByProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxstepByProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_stepBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_stepBy(self: ptr cQAbstractSpinBox, slot: int, steps: cint): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_stepBy ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxstepByProc](cast[pointer](slot))
  let slotval1 = steps


  nimfunc[](slotval1)
proc QAbstractSpinBoxclear*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): void =
  fQAbstractSpinBox_virtualbase_clear(self.h)

type QAbstractSpinBoxclearProc* = proc(): void
proc onclear*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxclearProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxclearProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_clear(self: ptr cQAbstractSpinBox, slot: int): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_clear ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxclearProc](cast[pointer](slot))

  nimfunc[]()
proc QAbstractSpinBoxresizeEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QResizeEvent): void =
  fQAbstractSpinBox_virtualbase_resizeEvent(self.h, event.h)

type QAbstractSpinBoxresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxresizeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_resizeEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_resizeEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxkeyPressEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fQAbstractSpinBox_virtualbase_keyPressEvent(self.h, event.h)

type QAbstractSpinBoxkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_keyPressEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_keyPressEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxkeyReleaseEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QKeyEvent): void =
  fQAbstractSpinBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QAbstractSpinBoxkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_keyReleaseEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxwheelEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QWheelEvent): void =
  fQAbstractSpinBox_virtualbase_wheelEvent(self.h, event.h)

type QAbstractSpinBoxwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxwheelEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_wheelEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_wheelEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxfocusInEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fQAbstractSpinBox_virtualbase_focusInEvent(self.h, event.h)

type QAbstractSpinBoxfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxfocusInEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_focusInEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_focusInEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxfocusOutEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QFocusEvent): void =
  fQAbstractSpinBox_virtualbase_focusOutEvent(self.h, event.h)

type QAbstractSpinBoxfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_focusOutEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_focusOutEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxcontextMenuEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QContextMenuEvent): void =
  fQAbstractSpinBox_virtualbase_contextMenuEvent(self.h, event.h)

type QAbstractSpinBoxcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_contextMenuEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_contextMenuEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxchangeEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractSpinBox_virtualbase_changeEvent(self.h, event.h)

type QAbstractSpinBoxchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxchangeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_changeEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_changeEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxcloseEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QCloseEvent): void =
  fQAbstractSpinBox_virtualbase_closeEvent(self.h, event.h)

type QAbstractSpinBoxcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxcloseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_closeEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_closeEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxhideEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QHideEvent): void =
  fQAbstractSpinBox_virtualbase_hideEvent(self.h, event.h)

type QAbstractSpinBoxhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxhideEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_hideEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_hideEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxmousePressEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractSpinBox_virtualbase_mousePressEvent(self.h, event.h)

type QAbstractSpinBoxmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxmousePressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_mousePressEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_mousePressEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxmouseReleaseEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractSpinBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QAbstractSpinBoxmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_mouseReleaseEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxmouseMoveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractSpinBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QAbstractSpinBoxmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_mouseMoveEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxtimerEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractSpinBox_virtualbase_timerEvent(self.h, event.h)

type QAbstractSpinBoxtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxtimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_timerEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxpaintEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QPaintEvent): void =
  fQAbstractSpinBox_virtualbase_paintEvent(self.h, event.h)

type QAbstractSpinBoxpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxpaintEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_paintEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_paintEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxshowEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QShowEvent): void =
  fQAbstractSpinBox_virtualbase_showEvent(self.h, event.h)

type QAbstractSpinBoxshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxshowEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_showEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_showEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxinitStyleOption*(self: gen_qabstractspinbox_types.QAbstractSpinBox, option: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fQAbstractSpinBox_virtualbase_initStyleOption(self.h, option.h)

type QAbstractSpinBoxinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionSpinBox): void
proc oninitStyleOption*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_initStyleOption(self: ptr cQAbstractSpinBox, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_initStyleOption ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionSpinBox(h: option)


  nimfunc[](slotval1)
proc QAbstractSpinBoxstepEnabled*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): cint =
  cint(fQAbstractSpinBox_virtualbase_stepEnabled(self.h))

type QAbstractSpinBoxstepEnabledProc* = proc(): cint
proc onstepEnabled*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxstepEnabledProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxstepEnabledProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_stepEnabled(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_stepEnabled(self: ptr cQAbstractSpinBox, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractSpinBox_stepEnabled ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxstepEnabledProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QAbstractSpinBoxdevType*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): cint =
  fQAbstractSpinBox_virtualbase_devType(self.h)

type QAbstractSpinBoxdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxdevTypeProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_devType(self: ptr cQAbstractSpinBox, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractSpinBox_devType ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSpinBoxsetVisible*(self: gen_qabstractspinbox_types.QAbstractSpinBox, visible: bool): void =
  fQAbstractSpinBox_virtualbase_setVisible(self.h, visible)

type QAbstractSpinBoxsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxsetVisibleProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_setVisible(self: ptr cQAbstractSpinBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_setVisible ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QAbstractSpinBoxheightForWidth*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint): cint =
  fQAbstractSpinBox_virtualbase_heightForWidth(self.h, param1)

type QAbstractSpinBoxheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxheightForWidthProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_heightForWidth(self: ptr cQAbstractSpinBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractSpinBox_heightForWidth ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSpinBoxhasHeightForWidth*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): bool =
  fQAbstractSpinBox_virtualbase_hasHeightForWidth(self.h)

type QAbstractSpinBoxhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_hasHeightForWidth(self: ptr cQAbstractSpinBox, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractSpinBox_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSpinBoxpaintEngine*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQAbstractSpinBox_virtualbase_paintEngine(self.h))

type QAbstractSpinBoxpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxpaintEngineProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_paintEngine(self: ptr cQAbstractSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSpinBox_paintEngine ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractSpinBoxmouseDoubleClickEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractSpinBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QAbstractSpinBoxmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_mouseDoubleClickEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxenterEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QEnterEvent): void =
  fQAbstractSpinBox_virtualbase_enterEvent(self.h, event.h)

type QAbstractSpinBoxenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxenterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_enterEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_enterEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxleaveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractSpinBox_virtualbase_leaveEvent(self.h, event.h)

type QAbstractSpinBoxleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxleaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_leaveEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_leaveEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxmoveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QMoveEvent): void =
  fQAbstractSpinBox_virtualbase_moveEvent(self.h, event.h)

type QAbstractSpinBoxmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxmoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_moveEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_moveEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxtabletEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QTabletEvent): void =
  fQAbstractSpinBox_virtualbase_tabletEvent(self.h, event.h)

type QAbstractSpinBoxtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxtabletEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_tabletEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_tabletEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxactionEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QActionEvent): void =
  fQAbstractSpinBox_virtualbase_actionEvent(self.h, event.h)

type QAbstractSpinBoxactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxactionEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_actionEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_actionEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxdragEnterEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QDragEnterEvent): void =
  fQAbstractSpinBox_virtualbase_dragEnterEvent(self.h, event.h)

type QAbstractSpinBoxdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_dragEnterEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_dragEnterEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxdragMoveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QDragMoveEvent): void =
  fQAbstractSpinBox_virtualbase_dragMoveEvent(self.h, event.h)

type QAbstractSpinBoxdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_dragMoveEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_dragMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxdragLeaveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fQAbstractSpinBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QAbstractSpinBoxdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_dragLeaveEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxdropEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qevent_types.QDropEvent): void =
  fQAbstractSpinBox_virtualbase_dropEvent(self.h, event.h)

type QAbstractSpinBoxdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxdropEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_dropEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_dropEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxnativeEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQAbstractSpinBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractSpinBoxnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxnativeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_nativeEvent(self: ptr cQAbstractSpinBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QAbstractSpinBox_nativeEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractSpinBoxmetric*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: cint): cint =
  fQAbstractSpinBox_virtualbase_metric(self.h, cint(param1))

type QAbstractSpinBoxmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxmetricProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_metric(self: ptr cQAbstractSpinBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractSpinBox_metric ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSpinBoxinitPainter*(self: gen_qabstractspinbox_types.QAbstractSpinBox, painter: gen_qpainter_types.QPainter): void =
  fQAbstractSpinBox_virtualbase_initPainter(self.h, painter.h)

type QAbstractSpinBoxinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxinitPainterProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_initPainter(self: ptr cQAbstractSpinBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_initPainter ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QAbstractSpinBoxredirected*(self: gen_qabstractspinbox_types.QAbstractSpinBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQAbstractSpinBox_virtualbase_redirected(self.h, offset.h))

type QAbstractSpinBoxredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxredirectedProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_redirected(self: ptr cQAbstractSpinBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractSpinBox_redirected ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractSpinBoxsharedPainter*(self: gen_qabstractspinbox_types.QAbstractSpinBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQAbstractSpinBox_virtualbase_sharedPainter(self.h))

type QAbstractSpinBoxsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxsharedPainterProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_sharedPainter(self: ptr cQAbstractSpinBox, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSpinBox_sharedPainter ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractSpinBoxinputMethodEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fQAbstractSpinBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QAbstractSpinBoxinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_inputMethodEvent(self: ptr cQAbstractSpinBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_inputMethodEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractSpinBoxfocusNextPrevChild*(self: gen_qabstractspinbox_types.QAbstractSpinBox, next: bool): bool =
  fQAbstractSpinBox_virtualbase_focusNextPrevChild(self.h, next)

type QAbstractSpinBoxfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_focusNextPrevChild(self: ptr cQAbstractSpinBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QAbstractSpinBox_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSpinBoxeventFilter*(self: gen_qabstractspinbox_types.QAbstractSpinBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractSpinBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractSpinBoxeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxeventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_eventFilter(self: ptr cQAbstractSpinBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractSpinBox_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractSpinBoxchildEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractSpinBox_virtualbase_childEvent(self.h, event.h)

type QAbstractSpinBoxchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_childEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_childEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxcustomEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractSpinBox_virtualbase_customEvent(self.h, event.h)

type QAbstractSpinBoxcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxcustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_customEvent(self: ptr cQAbstractSpinBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_customEvent ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSpinBoxconnectNotify*(self: gen_qabstractspinbox_types.QAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractSpinBox_virtualbase_connectNotify(self.h, signal.h)

type QAbstractSpinBoxconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_connectNotify(self: ptr cQAbstractSpinBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractSpinBoxdisconnectNotify*(self: gen_qabstractspinbox_types.QAbstractSpinBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractSpinBox_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractSpinBoxdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractspinbox_types.QAbstractSpinBox, slot: QAbstractSpinBoxdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractSpinBoxdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSpinBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSpinBox_disconnectNotify(self: ptr cQAbstractSpinBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractSpinBox_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractSpinBoxdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qabstractspinbox_types.QAbstractSpinBox) =
  fcQAbstractSpinBox_delete(self.h)
