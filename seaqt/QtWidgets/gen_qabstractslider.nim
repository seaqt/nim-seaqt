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


{.compile("gen_qabstractslider.cpp", QtWidgetsCFlags).}


type QAbstractSliderSliderActionEnum* = distinct cint
template SliderNoAction*(_: type QAbstractSliderSliderActionEnum): untyped = 0
template SliderSingleStepAdd*(_: type QAbstractSliderSliderActionEnum): untyped = 1
template SliderSingleStepSub*(_: type QAbstractSliderSliderActionEnum): untyped = 2
template SliderPageStepAdd*(_: type QAbstractSliderSliderActionEnum): untyped = 3
template SliderPageStepSub*(_: type QAbstractSliderSliderActionEnum): untyped = 4
template SliderToMinimum*(_: type QAbstractSliderSliderActionEnum): untyped = 5
template SliderToMaximum*(_: type QAbstractSliderSliderActionEnum): untyped = 6
template SliderMove*(_: type QAbstractSliderSliderActionEnum): untyped = 7


type QAbstractSliderSliderChangeEnum* = distinct cint
template SliderRangeChange*(_: type QAbstractSliderSliderChangeEnum): untyped = 0
template SliderOrientationChange*(_: type QAbstractSliderSliderChangeEnum): untyped = 1
template SliderStepsChange*(_: type QAbstractSliderSliderChangeEnum): untyped = 2
template SliderValueChange*(_: type QAbstractSliderSliderChangeEnum): untyped = 3


import ./gen_qabstractslider_types
export gen_qabstractslider_types

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
  gen_qwidget

type cQAbstractSlider*{.exportc: "QAbstractSlider", incompleteStruct.} = object

proc fcQAbstractSlider_metaObject(self: pointer): pointer {.importc: "QAbstractSlider_metaObject".}
proc fcQAbstractSlider_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSlider_metacast".}
proc fcQAbstractSlider_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSlider_metacall".}
proc fcQAbstractSlider_tr(s: cstring): struct_miqt_string {.importc: "QAbstractSlider_tr".}
proc fcQAbstractSlider_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractSlider_trUtf8".}
proc fcQAbstractSlider_orientation(self: pointer): cint {.importc: "QAbstractSlider_orientation".}
proc fcQAbstractSlider_setMinimum(self: pointer, minimum: cint): void {.importc: "QAbstractSlider_setMinimum".}
proc fcQAbstractSlider_minimum(self: pointer): cint {.importc: "QAbstractSlider_minimum".}
proc fcQAbstractSlider_setMaximum(self: pointer, maximum: cint): void {.importc: "QAbstractSlider_setMaximum".}
proc fcQAbstractSlider_maximum(self: pointer): cint {.importc: "QAbstractSlider_maximum".}
proc fcQAbstractSlider_setSingleStep(self: pointer, singleStep: cint): void {.importc: "QAbstractSlider_setSingleStep".}
proc fcQAbstractSlider_singleStep(self: pointer): cint {.importc: "QAbstractSlider_singleStep".}
proc fcQAbstractSlider_setPageStep(self: pointer, pageStep: cint): void {.importc: "QAbstractSlider_setPageStep".}
proc fcQAbstractSlider_pageStep(self: pointer): cint {.importc: "QAbstractSlider_pageStep".}
proc fcQAbstractSlider_setTracking(self: pointer, enable: bool): void {.importc: "QAbstractSlider_setTracking".}
proc fcQAbstractSlider_hasTracking(self: pointer): bool {.importc: "QAbstractSlider_hasTracking".}
proc fcQAbstractSlider_setSliderDown(self: pointer, sliderDown: bool): void {.importc: "QAbstractSlider_setSliderDown".}
proc fcQAbstractSlider_isSliderDown(self: pointer): bool {.importc: "QAbstractSlider_isSliderDown".}
proc fcQAbstractSlider_setSliderPosition(self: pointer, sliderPosition: cint): void {.importc: "QAbstractSlider_setSliderPosition".}
proc fcQAbstractSlider_sliderPosition(self: pointer): cint {.importc: "QAbstractSlider_sliderPosition".}
proc fcQAbstractSlider_setInvertedAppearance(self: pointer, invertedAppearance: bool): void {.importc: "QAbstractSlider_setInvertedAppearance".}
proc fcQAbstractSlider_invertedAppearance(self: pointer): bool {.importc: "QAbstractSlider_invertedAppearance".}
proc fcQAbstractSlider_setInvertedControls(self: pointer, invertedControls: bool): void {.importc: "QAbstractSlider_setInvertedControls".}
proc fcQAbstractSlider_invertedControls(self: pointer): bool {.importc: "QAbstractSlider_invertedControls".}
proc fcQAbstractSlider_value(self: pointer): cint {.importc: "QAbstractSlider_value".}
proc fcQAbstractSlider_triggerAction(self: pointer, action: cint): void {.importc: "QAbstractSlider_triggerAction".}
proc fcQAbstractSlider_setValue(self: pointer, value: cint): void {.importc: "QAbstractSlider_setValue".}
proc fcQAbstractSlider_setOrientation(self: pointer, orientation: cint): void {.importc: "QAbstractSlider_setOrientation".}
proc fcQAbstractSlider_setRange(self: pointer, min: cint, max: cint): void {.importc: "QAbstractSlider_setRange".}
proc fcQAbstractSlider_valueChanged(self: pointer, value: cint): void {.importc: "QAbstractSlider_valueChanged".}
proc fcQAbstractSlider_connect_valueChanged(self: pointer, slot: int, callback: proc (slot: int, value: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSlider_connect_valueChanged".}
proc fcQAbstractSlider_sliderPressed(self: pointer): void {.importc: "QAbstractSlider_sliderPressed".}
proc fcQAbstractSlider_connect_sliderPressed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSlider_connect_sliderPressed".}
proc fcQAbstractSlider_sliderMoved(self: pointer, position: cint): void {.importc: "QAbstractSlider_sliderMoved".}
proc fcQAbstractSlider_connect_sliderMoved(self: pointer, slot: int, callback: proc (slot: int, position: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSlider_connect_sliderMoved".}
proc fcQAbstractSlider_sliderReleased(self: pointer): void {.importc: "QAbstractSlider_sliderReleased".}
proc fcQAbstractSlider_connect_sliderReleased(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSlider_connect_sliderReleased".}
proc fcQAbstractSlider_rangeChanged(self: pointer, min: cint, max: cint): void {.importc: "QAbstractSlider_rangeChanged".}
proc fcQAbstractSlider_connect_rangeChanged(self: pointer, slot: int, callback: proc (slot: int, min: cint, max: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSlider_connect_rangeChanged".}
proc fcQAbstractSlider_actionTriggered(self: pointer, action: cint): void {.importc: "QAbstractSlider_actionTriggered".}
proc fcQAbstractSlider_connect_actionTriggered(self: pointer, slot: int, callback: proc (slot: int, action: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSlider_connect_actionTriggered".}
proc fcQAbstractSlider_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSlider_tr2".}
proc fcQAbstractSlider_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSlider_tr3".}
proc fcQAbstractSlider_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSlider_trUtf82".}
proc fcQAbstractSlider_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSlider_trUtf83".}
proc fcQAbstractSlider_vtbl(self: pointer): pointer {.importc: "QAbstractSlider_vtbl".}
proc fcQAbstractSlider_vdata(self: pointer): pointer {.importc: "QAbstractSlider_vdata".}

type cQAbstractSliderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  sliderChange*: proc(self: pointer, change: cint): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
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
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractSlider_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractSlider_virtualbase_metaObject".}
proc fcQAbstractSlider_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSlider_virtualbase_metacast".}
proc fcQAbstractSlider_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSlider_virtualbase_metacall".}
proc fcQAbstractSlider_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QAbstractSlider_virtualbase_event".}
proc fcQAbstractSlider_virtualbase_sliderChange(self: pointer, change: cint): void {.importc: "QAbstractSlider_virtualbase_sliderChange".}
proc fcQAbstractSlider_virtualbase_keyPressEvent(self: pointer, ev: pointer): void {.importc: "QAbstractSlider_virtualbase_keyPressEvent".}
proc fcQAbstractSlider_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QAbstractSlider_virtualbase_timerEvent".}
proc fcQAbstractSlider_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QAbstractSlider_virtualbase_wheelEvent".}
proc fcQAbstractSlider_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QAbstractSlider_virtualbase_changeEvent".}
proc fcQAbstractSlider_virtualbase_devType(self: pointer): cint {.importc: "QAbstractSlider_virtualbase_devType".}
proc fcQAbstractSlider_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QAbstractSlider_virtualbase_setVisible".}
proc fcQAbstractSlider_virtualbase_sizeHint(self: pointer): pointer {.importc: "QAbstractSlider_virtualbase_sizeHint".}
proc fcQAbstractSlider_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QAbstractSlider_virtualbase_minimumSizeHint".}
proc fcQAbstractSlider_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QAbstractSlider_virtualbase_heightForWidth".}
proc fcQAbstractSlider_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QAbstractSlider_virtualbase_hasHeightForWidth".}
proc fcQAbstractSlider_virtualbase_paintEngine(self: pointer): pointer {.importc: "QAbstractSlider_virtualbase_paintEngine".}
proc fcQAbstractSlider_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_mousePressEvent".}
proc fcQAbstractSlider_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_mouseReleaseEvent".}
proc fcQAbstractSlider_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractSlider_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_mouseMoveEvent".}
proc fcQAbstractSlider_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_keyReleaseEvent".}
proc fcQAbstractSlider_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_focusInEvent".}
proc fcQAbstractSlider_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_focusOutEvent".}
proc fcQAbstractSlider_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_enterEvent".}
proc fcQAbstractSlider_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_leaveEvent".}
proc fcQAbstractSlider_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_paintEvent".}
proc fcQAbstractSlider_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_moveEvent".}
proc fcQAbstractSlider_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_resizeEvent".}
proc fcQAbstractSlider_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_closeEvent".}
proc fcQAbstractSlider_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_contextMenuEvent".}
proc fcQAbstractSlider_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_tabletEvent".}
proc fcQAbstractSlider_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_actionEvent".}
proc fcQAbstractSlider_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_dragEnterEvent".}
proc fcQAbstractSlider_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_dragMoveEvent".}
proc fcQAbstractSlider_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_dragLeaveEvent".}
proc fcQAbstractSlider_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_dropEvent".}
proc fcQAbstractSlider_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_showEvent".}
proc fcQAbstractSlider_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_hideEvent".}
proc fcQAbstractSlider_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QAbstractSlider_virtualbase_nativeEvent".}
proc fcQAbstractSlider_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QAbstractSlider_virtualbase_metric".}
proc fcQAbstractSlider_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QAbstractSlider_virtualbase_initPainter".}
proc fcQAbstractSlider_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QAbstractSlider_virtualbase_redirected".}
proc fcQAbstractSlider_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QAbstractSlider_virtualbase_sharedPainter".}
proc fcQAbstractSlider_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QAbstractSlider_virtualbase_inputMethodEvent".}
proc fcQAbstractSlider_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractSlider_virtualbase_inputMethodQuery".}
proc fcQAbstractSlider_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QAbstractSlider_virtualbase_focusNextPrevChild".}
proc fcQAbstractSlider_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractSlider_virtualbase_eventFilter".}
proc fcQAbstractSlider_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_childEvent".}
proc fcQAbstractSlider_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_customEvent".}
proc fcQAbstractSlider_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractSlider_virtualbase_connectNotify".}
proc fcQAbstractSlider_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractSlider_virtualbase_disconnectNotify".}
proc fcQAbstractSlider_protectedbase_setRepeatAction(self: pointer, action: cint): void {.importc: "QAbstractSlider_protectedbase_setRepeatAction".}
proc fcQAbstractSlider_protectedbase_repeatAction(self: pointer): cint {.importc: "QAbstractSlider_protectedbase_repeatAction".}
proc fcQAbstractSlider_protectedbase_setRepeatAction2(self: pointer, action: cint, thresholdTime: cint): void {.importc: "QAbstractSlider_protectedbase_setRepeatAction2".}
proc fcQAbstractSlider_protectedbase_setRepeatAction3(self: pointer, action: cint, thresholdTime: cint, repeatTime: cint): void {.importc: "QAbstractSlider_protectedbase_setRepeatAction3".}
proc fcQAbstractSlider_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QAbstractSlider_protectedbase_updateMicroFocus".}
proc fcQAbstractSlider_protectedbase_create(self: pointer): void {.importc: "QAbstractSlider_protectedbase_create".}
proc fcQAbstractSlider_protectedbase_destroy(self: pointer): void {.importc: "QAbstractSlider_protectedbase_destroy".}
proc fcQAbstractSlider_protectedbase_focusNextChild(self: pointer): bool {.importc: "QAbstractSlider_protectedbase_focusNextChild".}
proc fcQAbstractSlider_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QAbstractSlider_protectedbase_focusPreviousChild".}
proc fcQAbstractSlider_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractSlider_protectedbase_sender".}
proc fcQAbstractSlider_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractSlider_protectedbase_senderSignalIndex".}
proc fcQAbstractSlider_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractSlider_protectedbase_receivers".}
proc fcQAbstractSlider_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractSlider_protectedbase_isSignalConnected".}
proc fcQAbstractSlider_new(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractSlider {.importc: "QAbstractSlider_new".}
proc fcQAbstractSlider_new2(vtbl, vdata: pointer): ptr cQAbstractSlider {.importc: "QAbstractSlider_new2".}
proc fcQAbstractSlider_staticMetaObject(): pointer {.importc: "QAbstractSlider_staticMetaObject".}

proc metaObject*(self: gen_qabstractslider_types.QAbstractSlider): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSlider_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractslider_types.QAbstractSlider, param1: cstring): pointer =
  fcQAbstractSlider_metacast(self.h, param1)

proc metacall*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractSlider_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractslider_types.QAbstractSlider, s: cstring): string =
  let v_ms = fcQAbstractSlider_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractslider_types.QAbstractSlider, s: cstring): string =
  let v_ms = fcQAbstractSlider_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc orientation*(self: gen_qabstractslider_types.QAbstractSlider): cint =
  cint(fcQAbstractSlider_orientation(self.h))

proc setMinimum*(self: gen_qabstractslider_types.QAbstractSlider, minimum: cint): void =
  fcQAbstractSlider_setMinimum(self.h, minimum)

proc minimum*(self: gen_qabstractslider_types.QAbstractSlider): cint =
  fcQAbstractSlider_minimum(self.h)

proc setMaximum*(self: gen_qabstractslider_types.QAbstractSlider, maximum: cint): void =
  fcQAbstractSlider_setMaximum(self.h, maximum)

proc maximum*(self: gen_qabstractslider_types.QAbstractSlider): cint =
  fcQAbstractSlider_maximum(self.h)

proc setSingleStep*(self: gen_qabstractslider_types.QAbstractSlider, singleStep: cint): void =
  fcQAbstractSlider_setSingleStep(self.h, singleStep)

proc singleStep*(self: gen_qabstractslider_types.QAbstractSlider): cint =
  fcQAbstractSlider_singleStep(self.h)

proc setPageStep*(self: gen_qabstractslider_types.QAbstractSlider, pageStep: cint): void =
  fcQAbstractSlider_setPageStep(self.h, pageStep)

proc pageStep*(self: gen_qabstractslider_types.QAbstractSlider): cint =
  fcQAbstractSlider_pageStep(self.h)

proc setTracking*(self: gen_qabstractslider_types.QAbstractSlider, enable: bool): void =
  fcQAbstractSlider_setTracking(self.h, enable)

proc hasTracking*(self: gen_qabstractslider_types.QAbstractSlider): bool =
  fcQAbstractSlider_hasTracking(self.h)

proc setSliderDown*(self: gen_qabstractslider_types.QAbstractSlider, sliderDown: bool): void =
  fcQAbstractSlider_setSliderDown(self.h, sliderDown)

proc isSliderDown*(self: gen_qabstractslider_types.QAbstractSlider): bool =
  fcQAbstractSlider_isSliderDown(self.h)

proc setSliderPosition*(self: gen_qabstractslider_types.QAbstractSlider, sliderPosition: cint): void =
  fcQAbstractSlider_setSliderPosition(self.h, sliderPosition)

proc sliderPosition*(self: gen_qabstractslider_types.QAbstractSlider): cint =
  fcQAbstractSlider_sliderPosition(self.h)

proc setInvertedAppearance*(self: gen_qabstractslider_types.QAbstractSlider, invertedAppearance: bool): void =
  fcQAbstractSlider_setInvertedAppearance(self.h, invertedAppearance)

proc invertedAppearance*(self: gen_qabstractslider_types.QAbstractSlider): bool =
  fcQAbstractSlider_invertedAppearance(self.h)

proc setInvertedControls*(self: gen_qabstractslider_types.QAbstractSlider, invertedControls: bool): void =
  fcQAbstractSlider_setInvertedControls(self.h, invertedControls)

proc invertedControls*(self: gen_qabstractslider_types.QAbstractSlider): bool =
  fcQAbstractSlider_invertedControls(self.h)

proc value*(self: gen_qabstractslider_types.QAbstractSlider): cint =
  fcQAbstractSlider_value(self.h)

proc triggerAction*(self: gen_qabstractslider_types.QAbstractSlider, action: cint): void =
  fcQAbstractSlider_triggerAction(self.h, cint(action))

proc setValue*(self: gen_qabstractslider_types.QAbstractSlider, value: cint): void =
  fcQAbstractSlider_setValue(self.h, value)

proc setOrientation*(self: gen_qabstractslider_types.QAbstractSlider, orientation: cint): void =
  fcQAbstractSlider_setOrientation(self.h, cint(orientation))

proc setRange*(self: gen_qabstractslider_types.QAbstractSlider, min: cint, max: cint): void =
  fcQAbstractSlider_setRange(self.h, min, max)

proc valueChanged*(self: gen_qabstractslider_types.QAbstractSlider, value: cint): void =
  fcQAbstractSlider_valueChanged(self.h, value)

type QAbstractSlidervalueChangedSlot* = proc(value: cint)
proc fcQAbstractSlider_slot_callback_valueChanged(slot: int, value: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSlidervalueChangedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc fcQAbstractSlider_slot_callback_valueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSlidervalueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onValueChanged*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidervalueChangedSlot) =
  var tmp = new QAbstractSlidervalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_valueChanged(self.h, cast[int](addr tmp[]), fcQAbstractSlider_slot_callback_valueChanged, fcQAbstractSlider_slot_callback_valueChanged_release)

proc sliderPressed*(self: gen_qabstractslider_types.QAbstractSlider): void =
  fcQAbstractSlider_sliderPressed(self.h)

type QAbstractSlidersliderPressedSlot* = proc()
proc fcQAbstractSlider_slot_callback_sliderPressed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSlidersliderPressedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAbstractSlider_slot_callback_sliderPressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSlidersliderPressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSliderPressed*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersliderPressedSlot) =
  var tmp = new QAbstractSlidersliderPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_sliderPressed(self.h, cast[int](addr tmp[]), fcQAbstractSlider_slot_callback_sliderPressed, fcQAbstractSlider_slot_callback_sliderPressed_release)

proc sliderMoved*(self: gen_qabstractslider_types.QAbstractSlider, position: cint): void =
  fcQAbstractSlider_sliderMoved(self.h, position)

type QAbstractSlidersliderMovedSlot* = proc(position: cint)
proc fcQAbstractSlider_slot_callback_sliderMoved(slot: int, position: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSlidersliderMovedSlot](cast[pointer](slot))
  let slotval1 = position

  nimfunc[](slotval1)

proc fcQAbstractSlider_slot_callback_sliderMoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSlidersliderMovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSliderMoved*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersliderMovedSlot) =
  var tmp = new QAbstractSlidersliderMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_sliderMoved(self.h, cast[int](addr tmp[]), fcQAbstractSlider_slot_callback_sliderMoved, fcQAbstractSlider_slot_callback_sliderMoved_release)

proc sliderReleased*(self: gen_qabstractslider_types.QAbstractSlider): void =
  fcQAbstractSlider_sliderReleased(self.h)

type QAbstractSlidersliderReleasedSlot* = proc()
proc fcQAbstractSlider_slot_callback_sliderReleased(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSlidersliderReleasedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAbstractSlider_slot_callback_sliderReleased_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSlidersliderReleasedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSliderReleased*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersliderReleasedSlot) =
  var tmp = new QAbstractSlidersliderReleasedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_sliderReleased(self.h, cast[int](addr tmp[]), fcQAbstractSlider_slot_callback_sliderReleased, fcQAbstractSlider_slot_callback_sliderReleased_release)

proc rangeChanged*(self: gen_qabstractslider_types.QAbstractSlider, min: cint, max: cint): void =
  fcQAbstractSlider_rangeChanged(self.h, min, max)

type QAbstractSliderrangeChangedSlot* = proc(min: cint, max: cint)
proc fcQAbstractSlider_slot_callback_rangeChanged(slot: int, min: cint, max: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSliderrangeChangedSlot](cast[pointer](slot))
  let slotval1 = min

  let slotval2 = max

  nimfunc[](slotval1, slotval2)

proc fcQAbstractSlider_slot_callback_rangeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSliderrangeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onRangeChanged*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderrangeChangedSlot) =
  var tmp = new QAbstractSliderrangeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_rangeChanged(self.h, cast[int](addr tmp[]), fcQAbstractSlider_slot_callback_rangeChanged, fcQAbstractSlider_slot_callback_rangeChanged_release)

proc actionTriggered*(self: gen_qabstractslider_types.QAbstractSlider, action: cint): void =
  fcQAbstractSlider_actionTriggered(self.h, action)

type QAbstractSlideractionTriggeredSlot* = proc(action: cint)
proc fcQAbstractSlider_slot_callback_actionTriggered(slot: int, action: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSlideractionTriggeredSlot](cast[pointer](slot))
  let slotval1 = action

  nimfunc[](slotval1)

proc fcQAbstractSlider_slot_callback_actionTriggered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSlideractionTriggeredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onActionTriggered*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlideractionTriggeredSlot) =
  var tmp = new QAbstractSlideractionTriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_actionTriggered(self.h, cast[int](addr tmp[]), fcQAbstractSlider_slot_callback_actionTriggered, fcQAbstractSlider_slot_callback_actionTriggered_release)

proc tr*(_: type gen_qabstractslider_types.QAbstractSlider, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractSlider_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractslider_types.QAbstractSlider, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractSlider_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractslider_types.QAbstractSlider, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractSlider_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractslider_types.QAbstractSlider, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractSlider_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QAbstractSlidermetaObjectProc* = proc(self: QAbstractSlider): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractSlidermetacastProc* = proc(self: QAbstractSlider, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractSlidermetacallProc* = proc(self: QAbstractSlider, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractSlidereventProc* = proc(self: QAbstractSlider, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractSlidersliderChangeProc* = proc(self: QAbstractSlider, change: cint): void {.raises: [], gcsafe.}
type QAbstractSliderkeyPressEventProc* = proc(self: QAbstractSlider, ev: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractSlidertimerEventProc* = proc(self: QAbstractSlider, param1: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractSliderwheelEventProc* = proc(self: QAbstractSlider, e: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QAbstractSliderchangeEventProc* = proc(self: QAbstractSlider, e: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractSliderdevTypeProc* = proc(self: QAbstractSlider): cint {.raises: [], gcsafe.}
type QAbstractSlidersetVisibleProc* = proc(self: QAbstractSlider, visible: bool): void {.raises: [], gcsafe.}
type QAbstractSlidersizeHintProc* = proc(self: QAbstractSlider): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractSliderminimumSizeHintProc* = proc(self: QAbstractSlider): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractSliderheightForWidthProc* = proc(self: QAbstractSlider, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractSliderhasHeightForWidthProc* = proc(self: QAbstractSlider): bool {.raises: [], gcsafe.}
type QAbstractSliderpaintEngineProc* = proc(self: QAbstractSlider): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QAbstractSlidermousePressEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractSlidermouseReleaseEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractSlidermouseDoubleClickEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractSlidermouseMoveEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractSliderkeyReleaseEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractSliderfocusInEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractSliderfocusOutEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractSliderenterEventProc* = proc(self: QAbstractSlider, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractSliderleaveEventProc* = proc(self: QAbstractSlider, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractSliderpaintEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QAbstractSlidermoveEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QAbstractSliderresizeEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QAbstractSlidercloseEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QAbstractSlidercontextMenuEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QAbstractSlidertabletEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QAbstractSlideractionEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QAbstractSliderdragEnterEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QAbstractSliderdragMoveEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QAbstractSliderdragLeaveEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QAbstractSliderdropEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QAbstractSlidershowEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QAbstractSliderhideEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QAbstractSlidernativeEventProc* = proc(self: QAbstractSlider, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QAbstractSlidermetricProc* = proc(self: QAbstractSlider, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractSliderinitPainterProc* = proc(self: QAbstractSlider, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QAbstractSliderredirectedProc* = proc(self: QAbstractSlider, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QAbstractSlidersharedPainterProc* = proc(self: QAbstractSlider): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QAbstractSliderinputMethodEventProc* = proc(self: QAbstractSlider, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QAbstractSliderinputMethodQueryProc* = proc(self: QAbstractSlider, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractSliderfocusNextPrevChildProc* = proc(self: QAbstractSlider, next: bool): bool {.raises: [], gcsafe.}
type QAbstractSlidereventFilterProc* = proc(self: QAbstractSlider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractSliderchildEventProc* = proc(self: QAbstractSlider, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractSlidercustomEventProc* = proc(self: QAbstractSlider, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractSliderconnectNotifyProc* = proc(self: QAbstractSlider, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractSliderdisconnectNotifyProc* = proc(self: QAbstractSlider, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QAbstractSliderVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractSliderVTable
  metaObject*: QAbstractSlidermetaObjectProc
  metacast*: QAbstractSlidermetacastProc
  metacall*: QAbstractSlidermetacallProc
  event*: QAbstractSlidereventProc
  sliderChange*: QAbstractSlidersliderChangeProc
  keyPressEvent*: QAbstractSliderkeyPressEventProc
  timerEvent*: QAbstractSlidertimerEventProc
  wheelEvent*: QAbstractSliderwheelEventProc
  changeEvent*: QAbstractSliderchangeEventProc
  devType*: QAbstractSliderdevTypeProc
  setVisible*: QAbstractSlidersetVisibleProc
  sizeHint*: QAbstractSlidersizeHintProc
  minimumSizeHint*: QAbstractSliderminimumSizeHintProc
  heightForWidth*: QAbstractSliderheightForWidthProc
  hasHeightForWidth*: QAbstractSliderhasHeightForWidthProc
  paintEngine*: QAbstractSliderpaintEngineProc
  mousePressEvent*: QAbstractSlidermousePressEventProc
  mouseReleaseEvent*: QAbstractSlidermouseReleaseEventProc
  mouseDoubleClickEvent*: QAbstractSlidermouseDoubleClickEventProc
  mouseMoveEvent*: QAbstractSlidermouseMoveEventProc
  keyReleaseEvent*: QAbstractSliderkeyReleaseEventProc
  focusInEvent*: QAbstractSliderfocusInEventProc
  focusOutEvent*: QAbstractSliderfocusOutEventProc
  enterEvent*: QAbstractSliderenterEventProc
  leaveEvent*: QAbstractSliderleaveEventProc
  paintEvent*: QAbstractSliderpaintEventProc
  moveEvent*: QAbstractSlidermoveEventProc
  resizeEvent*: QAbstractSliderresizeEventProc
  closeEvent*: QAbstractSlidercloseEventProc
  contextMenuEvent*: QAbstractSlidercontextMenuEventProc
  tabletEvent*: QAbstractSlidertabletEventProc
  actionEvent*: QAbstractSlideractionEventProc
  dragEnterEvent*: QAbstractSliderdragEnterEventProc
  dragMoveEvent*: QAbstractSliderdragMoveEventProc
  dragLeaveEvent*: QAbstractSliderdragLeaveEventProc
  dropEvent*: QAbstractSliderdropEventProc
  showEvent*: QAbstractSlidershowEventProc
  hideEvent*: QAbstractSliderhideEventProc
  nativeEvent*: QAbstractSlidernativeEventProc
  metric*: QAbstractSlidermetricProc
  initPainter*: QAbstractSliderinitPainterProc
  redirected*: QAbstractSliderredirectedProc
  sharedPainter*: QAbstractSlidersharedPainterProc
  inputMethodEvent*: QAbstractSliderinputMethodEventProc
  inputMethodQuery*: QAbstractSliderinputMethodQueryProc
  focusNextPrevChild*: QAbstractSliderfocusNextPrevChildProc
  eventFilter*: QAbstractSlidereventFilterProc
  childEvent*: QAbstractSliderchildEventProc
  customEvent*: QAbstractSlidercustomEventProc
  connectNotify*: QAbstractSliderconnectNotifyProc
  disconnectNotify*: QAbstractSliderdisconnectNotifyProc

proc QAbstractSlidermetaObject*(self: gen_qabstractslider_types.QAbstractSlider): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSlider_virtualbase_metaObject(self.h), owned: false)

proc QAbstractSlidermetacast*(self: gen_qabstractslider_types.QAbstractSlider, param1: cstring): pointer =
  fcQAbstractSlider_virtualbase_metacast(self.h, param1)

proc QAbstractSlidermetacall*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractSlider_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAbstractSliderevent*(self: gen_qabstractslider_types.QAbstractSlider, e: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSlider_virtualbase_event(self.h, e.h)

proc QAbstractSlidersliderChange*(self: gen_qabstractslider_types.QAbstractSlider, change: cint): void =
  fcQAbstractSlider_virtualbase_sliderChange(self.h, cint(change))

proc QAbstractSliderkeyPressEvent*(self: gen_qabstractslider_types.QAbstractSlider, ev: gen_qevent_types.QKeyEvent): void =
  fcQAbstractSlider_virtualbase_keyPressEvent(self.h, ev.h)

proc QAbstractSlidertimerEvent*(self: gen_qabstractslider_types.QAbstractSlider, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractSlider_virtualbase_timerEvent(self.h, param1.h)

proc QAbstractSliderwheelEvent*(self: gen_qabstractslider_types.QAbstractSlider, e: gen_qevent_types.QWheelEvent): void =
  fcQAbstractSlider_virtualbase_wheelEvent(self.h, e.h)

proc QAbstractSliderchangeEvent*(self: gen_qabstractslider_types.QAbstractSlider, e: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSlider_virtualbase_changeEvent(self.h, e.h)

proc QAbstractSliderdevType*(self: gen_qabstractslider_types.QAbstractSlider): cint =
  fcQAbstractSlider_virtualbase_devType(self.h)

proc QAbstractSlidersetVisible*(self: gen_qabstractslider_types.QAbstractSlider, visible: bool): void =
  fcQAbstractSlider_virtualbase_setVisible(self.h, visible)

proc QAbstractSlidersizeHint*(self: gen_qabstractslider_types.QAbstractSlider): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSlider_virtualbase_sizeHint(self.h), owned: true)

proc QAbstractSliderminimumSizeHint*(self: gen_qabstractslider_types.QAbstractSlider): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSlider_virtualbase_minimumSizeHint(self.h), owned: true)

proc QAbstractSliderheightForWidth*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint): cint =
  fcQAbstractSlider_virtualbase_heightForWidth(self.h, param1)

proc QAbstractSliderhasHeightForWidth*(self: gen_qabstractslider_types.QAbstractSlider): bool =
  fcQAbstractSlider_virtualbase_hasHeightForWidth(self.h)

proc QAbstractSliderpaintEngine*(self: gen_qabstractslider_types.QAbstractSlider): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQAbstractSlider_virtualbase_paintEngine(self.h), owned: false)

proc QAbstractSlidermousePressEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSlider_virtualbase_mousePressEvent(self.h, event.h)

proc QAbstractSlidermouseReleaseEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSlider_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QAbstractSlidermouseDoubleClickEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSlider_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QAbstractSlidermouseMoveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSlider_virtualbase_mouseMoveEvent(self.h, event.h)

proc QAbstractSliderkeyReleaseEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractSlider_virtualbase_keyReleaseEvent(self.h, event.h)

proc QAbstractSliderfocusInEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractSlider_virtualbase_focusInEvent(self.h, event.h)

proc QAbstractSliderfocusOutEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractSlider_virtualbase_focusOutEvent(self.h, event.h)

proc QAbstractSliderenterEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSlider_virtualbase_enterEvent(self.h, event.h)

proc QAbstractSliderleaveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSlider_virtualbase_leaveEvent(self.h, event.h)

proc QAbstractSliderpaintEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QPaintEvent): void =
  fcQAbstractSlider_virtualbase_paintEvent(self.h, event.h)

proc QAbstractSlidermoveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMoveEvent): void =
  fcQAbstractSlider_virtualbase_moveEvent(self.h, event.h)

proc QAbstractSliderresizeEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QResizeEvent): void =
  fcQAbstractSlider_virtualbase_resizeEvent(self.h, event.h)

proc QAbstractSlidercloseEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QCloseEvent): void =
  fcQAbstractSlider_virtualbase_closeEvent(self.h, event.h)

proc QAbstractSlidercontextMenuEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QContextMenuEvent): void =
  fcQAbstractSlider_virtualbase_contextMenuEvent(self.h, event.h)

proc QAbstractSlidertabletEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QTabletEvent): void =
  fcQAbstractSlider_virtualbase_tabletEvent(self.h, event.h)

proc QAbstractSlideractionEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QActionEvent): void =
  fcQAbstractSlider_virtualbase_actionEvent(self.h, event.h)

proc QAbstractSliderdragEnterEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QDragEnterEvent): void =
  fcQAbstractSlider_virtualbase_dragEnterEvent(self.h, event.h)

proc QAbstractSliderdragMoveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QDragMoveEvent): void =
  fcQAbstractSlider_virtualbase_dragMoveEvent(self.h, event.h)

proc QAbstractSliderdragLeaveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQAbstractSlider_virtualbase_dragLeaveEvent(self.h, event.h)

proc QAbstractSliderdropEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QDropEvent): void =
  fcQAbstractSlider_virtualbase_dropEvent(self.h, event.h)

proc QAbstractSlidershowEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QShowEvent): void =
  fcQAbstractSlider_virtualbase_showEvent(self.h, event.h)

proc QAbstractSliderhideEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QHideEvent): void =
  fcQAbstractSlider_virtualbase_hideEvent(self.h, event.h)

proc QAbstractSlidernativeEvent*(self: gen_qabstractslider_types.QAbstractSlider, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractSlider_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QAbstractSlidermetric*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint): cint =
  fcQAbstractSlider_virtualbase_metric(self.h, cint(param1))

proc QAbstractSliderinitPainter*(self: gen_qabstractslider_types.QAbstractSlider, painter: gen_qpainter_types.QPainter): void =
  fcQAbstractSlider_virtualbase_initPainter(self.h, painter.h)

proc QAbstractSliderredirected*(self: gen_qabstractslider_types.QAbstractSlider, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractSlider_virtualbase_redirected(self.h, offset.h), owned: false)

proc QAbstractSlidersharedPainter*(self: gen_qabstractslider_types.QAbstractSlider): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQAbstractSlider_virtualbase_sharedPainter(self.h), owned: false)

proc QAbstractSliderinputMethodEvent*(self: gen_qabstractslider_types.QAbstractSlider, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractSlider_virtualbase_inputMethodEvent(self.h, param1.h)

proc QAbstractSliderinputMethodQuery*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractSlider_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QAbstractSliderfocusNextPrevChild*(self: gen_qabstractslider_types.QAbstractSlider, next: bool): bool =
  fcQAbstractSlider_virtualbase_focusNextPrevChild(self.h, next)

proc QAbstractSlidereventFilter*(self: gen_qabstractslider_types.QAbstractSlider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSlider_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAbstractSliderchildEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractSlider_virtualbase_childEvent(self.h, event.h)

proc QAbstractSlidercustomEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSlider_virtualbase_customEvent(self.h, event.h)

proc QAbstractSliderconnectNotify*(self: gen_qabstractslider_types.QAbstractSlider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractSlider_virtualbase_connectNotify(self.h, signal.h)

proc QAbstractSliderdisconnectNotify*(self: gen_qabstractslider_types.QAbstractSlider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractSlider_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAbstractSlider_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAbstractSlider_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractSlider_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAbstractSlider_vtable_callback_sliderChange(self: pointer, change: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = cint(change)
  vtbl[].sliderChange(self, slotval1)

proc fcQAbstractSlider_vtable_callback_keyPressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQAbstractSlider_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQAbstractSlider_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQAbstractSlider_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQAbstractSlider_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractSlider_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQAbstractSlider_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQAbstractSlider_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQAbstractSlider_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAbstractSlider_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAbstractSlider_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAbstractSlider_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractSlider* {.inheritable.} = ref object of QAbstractSlider
  vtbl*: cQAbstractSliderVTable

method metaObject*(self: VirtualQAbstractSlider): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractSlidermetaObject(self[])
method metacast*(self: VirtualQAbstractSlider, param1: cstring): pointer {.base.} =
  QAbstractSlidermetacast(self[], param1)
method metacall*(self: VirtualQAbstractSlider, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractSlidermetacall(self[], param1, param2, param3)
method event*(self: VirtualQAbstractSlider, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractSliderevent(self[], e)
method sliderChange*(self: VirtualQAbstractSlider, change: cint): void {.base.} =
  QAbstractSlidersliderChange(self[], change)
method keyPressEvent*(self: VirtualQAbstractSlider, ev: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractSliderkeyPressEvent(self[], ev)
method timerEvent*(self: VirtualQAbstractSlider, param1: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractSlidertimerEvent(self[], param1)
method wheelEvent*(self: VirtualQAbstractSlider, e: gen_qevent_types.QWheelEvent): void {.base.} =
  QAbstractSliderwheelEvent(self[], e)
method changeEvent*(self: VirtualQAbstractSlider, e: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSliderchangeEvent(self[], e)
method devType*(self: VirtualQAbstractSlider): cint {.base.} =
  QAbstractSliderdevType(self[])
method setVisible*(self: VirtualQAbstractSlider, visible: bool): void {.base.} =
  QAbstractSlidersetVisible(self[], visible)
method sizeHint*(self: VirtualQAbstractSlider): gen_qsize_types.QSize {.base.} =
  QAbstractSlidersizeHint(self[])
method minimumSizeHint*(self: VirtualQAbstractSlider): gen_qsize_types.QSize {.base.} =
  QAbstractSliderminimumSizeHint(self[])
method heightForWidth*(self: VirtualQAbstractSlider, param1: cint): cint {.base.} =
  QAbstractSliderheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQAbstractSlider): bool {.base.} =
  QAbstractSliderhasHeightForWidth(self[])
method paintEngine*(self: VirtualQAbstractSlider): gen_qpaintengine_types.QPaintEngine {.base.} =
  QAbstractSliderpaintEngine(self[])
method mousePressEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractSlidermousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractSlidermouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractSlidermouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractSlidermouseMoveEvent(self[], event)
method keyReleaseEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractSliderkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractSliderfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractSliderfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQAbstractSlider, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSliderenterEvent(self[], event)
method leaveEvent*(self: VirtualQAbstractSlider, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSliderleaveEvent(self[], event)
method paintEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QAbstractSliderpaintEvent(self[], event)
method moveEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QAbstractSlidermoveEvent(self[], event)
method resizeEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QAbstractSliderresizeEvent(self[], event)
method closeEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QAbstractSlidercloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QAbstractSlidercontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QAbstractSlidertabletEvent(self[], event)
method actionEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QActionEvent): void {.base.} =
  QAbstractSlideractionEvent(self[], event)
method dragEnterEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QAbstractSliderdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QAbstractSliderdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QAbstractSliderdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QDropEvent): void {.base.} =
  QAbstractSliderdropEvent(self[], event)
method showEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QShowEvent): void {.base.} =
  QAbstractSlidershowEvent(self[], event)
method hideEvent*(self: VirtualQAbstractSlider, event: gen_qevent_types.QHideEvent): void {.base.} =
  QAbstractSliderhideEvent(self[], event)
method nativeEvent*(self: VirtualQAbstractSlider, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QAbstractSlidernativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQAbstractSlider, param1: cint): cint {.base.} =
  QAbstractSlidermetric(self[], param1)
method initPainter*(self: VirtualQAbstractSlider, painter: gen_qpainter_types.QPainter): void {.base.} =
  QAbstractSliderinitPainter(self[], painter)
method redirected*(self: VirtualQAbstractSlider, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QAbstractSliderredirected(self[], offset)
method sharedPainter*(self: VirtualQAbstractSlider): gen_qpainter_types.QPainter {.base.} =
  QAbstractSlidersharedPainter(self[])
method inputMethodEvent*(self: VirtualQAbstractSlider, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QAbstractSliderinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQAbstractSlider, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractSliderinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQAbstractSlider, next: bool): bool {.base.} =
  QAbstractSliderfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQAbstractSlider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractSlidereventFilter(self[], watched, event)
method childEvent*(self: VirtualQAbstractSlider, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractSliderchildEvent(self[], event)
method customEvent*(self: VirtualQAbstractSlider, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractSlidercustomEvent(self[], event)
method connectNotify*(self: VirtualQAbstractSlider, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractSliderconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAbstractSlider, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractSliderdisconnectNotify(self[], signal)

proc fcQAbstractSlider_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAbstractSlider_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractSlider_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAbstractSlider_method_callback_sliderChange(self: pointer, change: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = cint(change)
  inst.sliderChange(slotval1)

proc fcQAbstractSlider_method_callback_keyPressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQAbstractSlider_method_callback_timerEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1, owned: false)
  inst.timerEvent(slotval1)

proc fcQAbstractSlider_method_callback_wheelEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e, owned: false)
  inst.wheelEvent(slotval1)

proc fcQAbstractSlider_method_callback_changeEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  inst.changeEvent(slotval1)

proc fcQAbstractSlider_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQAbstractSlider_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQAbstractSlider_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQAbstractSlider_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQAbstractSlider_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQAbstractSlider_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQAbstractSlider_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQAbstractSlider_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQAbstractSlider_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQAbstractSlider_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQAbstractSlider_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQAbstractSlider_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQAbstractSlider_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQAbstractSlider_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQAbstractSlider_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQAbstractSlider_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQAbstractSlider_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQAbstractSlider_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQAbstractSlider_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQAbstractSlider_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQAbstractSlider_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQAbstractSlider_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQAbstractSlider_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQAbstractSlider_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQAbstractSlider_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQAbstractSlider_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQAbstractSlider_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAbstractSlider_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQAbstractSlider_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQAbstractSlider_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQAbstractSlider_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAbstractSlider_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQAbstractSlider_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAbstractSlider_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAbstractSlider_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAbstractSlider_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAbstractSlider_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractSlider](fcQAbstractSlider_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc setRepeatAction*(self: gen_qabstractslider_types.QAbstractSlider, action: cint): void =
  fcQAbstractSlider_protectedbase_setRepeatAction(self.h, cint(action))

proc repeatAction*(self: gen_qabstractslider_types.QAbstractSlider): cint =
  cint(fcQAbstractSlider_protectedbase_repeatAction(self.h))

proc setRepeatAction*(self: gen_qabstractslider_types.QAbstractSlider, action: cint, thresholdTime: cint): void =
  fcQAbstractSlider_protectedbase_setRepeatAction2(self.h, cint(action), thresholdTime)

proc setRepeatAction*(self: gen_qabstractslider_types.QAbstractSlider, action: cint, thresholdTime: cint, repeatTime: cint): void =
  fcQAbstractSlider_protectedbase_setRepeatAction3(self.h, cint(action), thresholdTime, repeatTime)

proc updateMicroFocus*(self: gen_qabstractslider_types.QAbstractSlider): void =
  fcQAbstractSlider_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qabstractslider_types.QAbstractSlider): void =
  fcQAbstractSlider_protectedbase_create(self.h)

proc destroy*(self: gen_qabstractslider_types.QAbstractSlider): void =
  fcQAbstractSlider_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qabstractslider_types.QAbstractSlider): bool =
  fcQAbstractSlider_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qabstractslider_types.QAbstractSlider): bool =
  fcQAbstractSlider_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qabstractslider_types.QAbstractSlider): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractSlider_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractslider_types.QAbstractSlider): cint =
  fcQAbstractSlider_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractslider_types.QAbstractSlider, signal: cstring): cint =
  fcQAbstractSlider_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractslider_types.QAbstractSlider, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractSlider_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractslider_types.QAbstractSlider,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QAbstractSliderVTable = nil): gen_qabstractslider_types.QAbstractSlider =
  let vtbl = if vtbl == nil: new QAbstractSliderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAbstractSlider_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAbstractSlider_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAbstractSlider_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAbstractSlider_vtable_callback_event
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = fcQAbstractSlider_vtable_callback_sliderChange
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQAbstractSlider_vtable_callback_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAbstractSlider_vtable_callback_timerEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQAbstractSlider_vtable_callback_wheelEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQAbstractSlider_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQAbstractSlider_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQAbstractSlider_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQAbstractSlider_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQAbstractSlider_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQAbstractSlider_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQAbstractSlider_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQAbstractSlider_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQAbstractSlider_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQAbstractSlider_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQAbstractSlider_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQAbstractSlider_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQAbstractSlider_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQAbstractSlider_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQAbstractSlider_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQAbstractSlider_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQAbstractSlider_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQAbstractSlider_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQAbstractSlider_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQAbstractSlider_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQAbstractSlider_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQAbstractSlider_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQAbstractSlider_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQAbstractSlider_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQAbstractSlider_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQAbstractSlider_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQAbstractSlider_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQAbstractSlider_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQAbstractSlider_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQAbstractSlider_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQAbstractSlider_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQAbstractSlider_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQAbstractSlider_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQAbstractSlider_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQAbstractSlider_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQAbstractSlider_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQAbstractSlider_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQAbstractSlider_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAbstractSlider_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAbstractSlider_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAbstractSlider_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAbstractSlider_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAbstractSlider_vtable_callback_disconnectNotify
  gen_qabstractslider_types.QAbstractSlider(h: fcQAbstractSlider_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qabstractslider_types.QAbstractSlider,
    vtbl: ref QAbstractSliderVTable = nil): gen_qabstractslider_types.QAbstractSlider =
  let vtbl = if vtbl == nil: new QAbstractSliderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractSliderVTable](fcQAbstractSlider_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAbstractSlider_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAbstractSlider_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAbstractSlider_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAbstractSlider_vtable_callback_event
  if not isNil(vtbl[].sliderChange):
    vtbl[].vtbl.sliderChange = fcQAbstractSlider_vtable_callback_sliderChange
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQAbstractSlider_vtable_callback_keyPressEvent
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAbstractSlider_vtable_callback_timerEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQAbstractSlider_vtable_callback_wheelEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQAbstractSlider_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQAbstractSlider_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQAbstractSlider_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQAbstractSlider_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQAbstractSlider_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQAbstractSlider_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQAbstractSlider_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQAbstractSlider_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQAbstractSlider_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQAbstractSlider_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQAbstractSlider_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQAbstractSlider_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQAbstractSlider_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQAbstractSlider_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQAbstractSlider_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQAbstractSlider_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQAbstractSlider_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQAbstractSlider_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQAbstractSlider_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQAbstractSlider_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQAbstractSlider_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQAbstractSlider_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQAbstractSlider_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQAbstractSlider_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQAbstractSlider_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQAbstractSlider_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQAbstractSlider_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQAbstractSlider_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQAbstractSlider_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQAbstractSlider_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQAbstractSlider_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQAbstractSlider_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQAbstractSlider_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQAbstractSlider_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQAbstractSlider_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQAbstractSlider_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQAbstractSlider_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQAbstractSlider_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAbstractSlider_vtable_callback_eventFilter
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAbstractSlider_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAbstractSlider_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAbstractSlider_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAbstractSlider_vtable_callback_disconnectNotify
  gen_qabstractslider_types.QAbstractSlider(h: fcQAbstractSlider_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQAbstractSlider_mvtbl = cQAbstractSliderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractSlider()[])](self.fcQAbstractSlider_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAbstractSlider_method_callback_metaObject,
  metacast: fcQAbstractSlider_method_callback_metacast,
  metacall: fcQAbstractSlider_method_callback_metacall,
  event: fcQAbstractSlider_method_callback_event,
  sliderChange: fcQAbstractSlider_method_callback_sliderChange,
  keyPressEvent: fcQAbstractSlider_method_callback_keyPressEvent,
  timerEvent: fcQAbstractSlider_method_callback_timerEvent,
  wheelEvent: fcQAbstractSlider_method_callback_wheelEvent,
  changeEvent: fcQAbstractSlider_method_callback_changeEvent,
  devType: fcQAbstractSlider_method_callback_devType,
  setVisible: fcQAbstractSlider_method_callback_setVisible,
  sizeHint: fcQAbstractSlider_method_callback_sizeHint,
  minimumSizeHint: fcQAbstractSlider_method_callback_minimumSizeHint,
  heightForWidth: fcQAbstractSlider_method_callback_heightForWidth,
  hasHeightForWidth: fcQAbstractSlider_method_callback_hasHeightForWidth,
  paintEngine: fcQAbstractSlider_method_callback_paintEngine,
  mousePressEvent: fcQAbstractSlider_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQAbstractSlider_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQAbstractSlider_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQAbstractSlider_method_callback_mouseMoveEvent,
  keyReleaseEvent: fcQAbstractSlider_method_callback_keyReleaseEvent,
  focusInEvent: fcQAbstractSlider_method_callback_focusInEvent,
  focusOutEvent: fcQAbstractSlider_method_callback_focusOutEvent,
  enterEvent: fcQAbstractSlider_method_callback_enterEvent,
  leaveEvent: fcQAbstractSlider_method_callback_leaveEvent,
  paintEvent: fcQAbstractSlider_method_callback_paintEvent,
  moveEvent: fcQAbstractSlider_method_callback_moveEvent,
  resizeEvent: fcQAbstractSlider_method_callback_resizeEvent,
  closeEvent: fcQAbstractSlider_method_callback_closeEvent,
  contextMenuEvent: fcQAbstractSlider_method_callback_contextMenuEvent,
  tabletEvent: fcQAbstractSlider_method_callback_tabletEvent,
  actionEvent: fcQAbstractSlider_method_callback_actionEvent,
  dragEnterEvent: fcQAbstractSlider_method_callback_dragEnterEvent,
  dragMoveEvent: fcQAbstractSlider_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQAbstractSlider_method_callback_dragLeaveEvent,
  dropEvent: fcQAbstractSlider_method_callback_dropEvent,
  showEvent: fcQAbstractSlider_method_callback_showEvent,
  hideEvent: fcQAbstractSlider_method_callback_hideEvent,
  nativeEvent: fcQAbstractSlider_method_callback_nativeEvent,
  metric: fcQAbstractSlider_method_callback_metric,
  initPainter: fcQAbstractSlider_method_callback_initPainter,
  redirected: fcQAbstractSlider_method_callback_redirected,
  sharedPainter: fcQAbstractSlider_method_callback_sharedPainter,
  inputMethodEvent: fcQAbstractSlider_method_callback_inputMethodEvent,
  inputMethodQuery: fcQAbstractSlider_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQAbstractSlider_method_callback_focusNextPrevChild,
  eventFilter: fcQAbstractSlider_method_callback_eventFilter,
  childEvent: fcQAbstractSlider_method_callback_childEvent,
  customEvent: fcQAbstractSlider_method_callback_customEvent,
  connectNotify: fcQAbstractSlider_method_callback_connectNotify,
  disconnectNotify: fcQAbstractSlider_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractslider_types.QAbstractSlider,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQAbstractSlider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractSlider_new(addr(cQAbstractSlider_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qabstractslider_types.QAbstractSlider,
    inst: VirtualQAbstractSlider) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractSlider_new2(addr(cQAbstractSlider_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractslider_types.QAbstractSlider): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSlider_staticMetaObject())
