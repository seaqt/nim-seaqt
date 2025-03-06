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
{.compile("gen_qabstractslider.cpp", cflags).}


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

proc fcQAbstractSlider_metaObject(self: pointer, ): pointer {.importc: "QAbstractSlider_metaObject".}
proc fcQAbstractSlider_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSlider_metacast".}
proc fcQAbstractSlider_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSlider_metacall".}
proc fcQAbstractSlider_tr(s: cstring): struct_miqt_string {.importc: "QAbstractSlider_tr".}
proc fcQAbstractSlider_orientation(self: pointer, ): cint {.importc: "QAbstractSlider_orientation".}
proc fcQAbstractSlider_setMinimum(self: pointer, minimum: cint): void {.importc: "QAbstractSlider_setMinimum".}
proc fcQAbstractSlider_minimum(self: pointer, ): cint {.importc: "QAbstractSlider_minimum".}
proc fcQAbstractSlider_setMaximum(self: pointer, maximum: cint): void {.importc: "QAbstractSlider_setMaximum".}
proc fcQAbstractSlider_maximum(self: pointer, ): cint {.importc: "QAbstractSlider_maximum".}
proc fcQAbstractSlider_setSingleStep(self: pointer, singleStep: cint): void {.importc: "QAbstractSlider_setSingleStep".}
proc fcQAbstractSlider_singleStep(self: pointer, ): cint {.importc: "QAbstractSlider_singleStep".}
proc fcQAbstractSlider_setPageStep(self: pointer, pageStep: cint): void {.importc: "QAbstractSlider_setPageStep".}
proc fcQAbstractSlider_pageStep(self: pointer, ): cint {.importc: "QAbstractSlider_pageStep".}
proc fcQAbstractSlider_setTracking(self: pointer, enable: bool): void {.importc: "QAbstractSlider_setTracking".}
proc fcQAbstractSlider_hasTracking(self: pointer, ): bool {.importc: "QAbstractSlider_hasTracking".}
proc fcQAbstractSlider_setSliderDown(self: pointer, sliderDown: bool): void {.importc: "QAbstractSlider_setSliderDown".}
proc fcQAbstractSlider_isSliderDown(self: pointer, ): bool {.importc: "QAbstractSlider_isSliderDown".}
proc fcQAbstractSlider_setSliderPosition(self: pointer, sliderPosition: cint): void {.importc: "QAbstractSlider_setSliderPosition".}
proc fcQAbstractSlider_sliderPosition(self: pointer, ): cint {.importc: "QAbstractSlider_sliderPosition".}
proc fcQAbstractSlider_setInvertedAppearance(self: pointer, invertedAppearance: bool): void {.importc: "QAbstractSlider_setInvertedAppearance".}
proc fcQAbstractSlider_invertedAppearance(self: pointer, ): bool {.importc: "QAbstractSlider_invertedAppearance".}
proc fcQAbstractSlider_setInvertedControls(self: pointer, invertedControls: bool): void {.importc: "QAbstractSlider_setInvertedControls".}
proc fcQAbstractSlider_invertedControls(self: pointer, ): bool {.importc: "QAbstractSlider_invertedControls".}
proc fcQAbstractSlider_value(self: pointer, ): cint {.importc: "QAbstractSlider_value".}
proc fcQAbstractSlider_triggerAction(self: pointer, action: cint): void {.importc: "QAbstractSlider_triggerAction".}
proc fcQAbstractSlider_setValue(self: pointer, value: cint): void {.importc: "QAbstractSlider_setValue".}
proc fcQAbstractSlider_setOrientation(self: pointer, orientation: cint): void {.importc: "QAbstractSlider_setOrientation".}
proc fcQAbstractSlider_setRange(self: pointer, min: cint, max: cint): void {.importc: "QAbstractSlider_setRange".}
proc fcQAbstractSlider_valueChanged(self: pointer, value: cint): void {.importc: "QAbstractSlider_valueChanged".}
proc fcQAbstractSlider_connect_valueChanged(self: pointer, slot: int, callback: proc (slot: int, value: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSlider_connect_valueChanged".}
proc fcQAbstractSlider_sliderPressed(self: pointer, ): void {.importc: "QAbstractSlider_sliderPressed".}
proc fcQAbstractSlider_connect_sliderPressed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSlider_connect_sliderPressed".}
proc fcQAbstractSlider_sliderMoved(self: pointer, position: cint): void {.importc: "QAbstractSlider_sliderMoved".}
proc fcQAbstractSlider_connect_sliderMoved(self: pointer, slot: int, callback: proc (slot: int, position: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSlider_connect_sliderMoved".}
proc fcQAbstractSlider_sliderReleased(self: pointer, ): void {.importc: "QAbstractSlider_sliderReleased".}
proc fcQAbstractSlider_connect_sliderReleased(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSlider_connect_sliderReleased".}
proc fcQAbstractSlider_rangeChanged(self: pointer, min: cint, max: cint): void {.importc: "QAbstractSlider_rangeChanged".}
proc fcQAbstractSlider_connect_rangeChanged(self: pointer, slot: int, callback: proc (slot: int, min: cint, max: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSlider_connect_rangeChanged".}
proc fcQAbstractSlider_actionTriggered(self: pointer, action: cint): void {.importc: "QAbstractSlider_actionTriggered".}
proc fcQAbstractSlider_connect_actionTriggered(self: pointer, slot: int, callback: proc (slot: int, action: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractSlider_connect_actionTriggered".}
proc fcQAbstractSlider_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSlider_tr2".}
proc fcQAbstractSlider_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSlider_tr3".}
type cQAbstractSliderVTable = object
  destructor*: proc(vtbl: ptr cQAbstractSliderVTable, self: ptr cQAbstractSlider) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  sliderChange*: proc(vtbl, self: pointer, change: cint): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractSlider_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAbstractSlider_virtualbase_metaObject".}
proc fcQAbstractSlider_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSlider_virtualbase_metacast".}
proc fcQAbstractSlider_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractSlider_virtualbase_metacall".}
proc fcQAbstractSlider_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QAbstractSlider_virtualbase_event".}
proc fcQAbstractSlider_virtualbase_sliderChange(self: pointer, change: cint): void {.importc: "QAbstractSlider_virtualbase_sliderChange".}
proc fcQAbstractSlider_virtualbase_keyPressEvent(self: pointer, ev: pointer): void {.importc: "QAbstractSlider_virtualbase_keyPressEvent".}
proc fcQAbstractSlider_virtualbase_timerEvent(self: pointer, param1: pointer): void {.importc: "QAbstractSlider_virtualbase_timerEvent".}
proc fcQAbstractSlider_virtualbase_wheelEvent(self: pointer, e: pointer): void {.importc: "QAbstractSlider_virtualbase_wheelEvent".}
proc fcQAbstractSlider_virtualbase_changeEvent(self: pointer, e: pointer): void {.importc: "QAbstractSlider_virtualbase_changeEvent".}
proc fcQAbstractSlider_virtualbase_devType(self: pointer, ): cint {.importc: "QAbstractSlider_virtualbase_devType".}
proc fcQAbstractSlider_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QAbstractSlider_virtualbase_setVisible".}
proc fcQAbstractSlider_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QAbstractSlider_virtualbase_sizeHint".}
proc fcQAbstractSlider_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QAbstractSlider_virtualbase_minimumSizeHint".}
proc fcQAbstractSlider_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QAbstractSlider_virtualbase_heightForWidth".}
proc fcQAbstractSlider_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QAbstractSlider_virtualbase_hasHeightForWidth".}
proc fcQAbstractSlider_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QAbstractSlider_virtualbase_paintEngine".}
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
proc fcQAbstractSlider_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QAbstractSlider_virtualbase_nativeEvent".}
proc fcQAbstractSlider_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QAbstractSlider_virtualbase_metric".}
proc fcQAbstractSlider_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QAbstractSlider_virtualbase_initPainter".}
proc fcQAbstractSlider_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QAbstractSlider_virtualbase_redirected".}
proc fcQAbstractSlider_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QAbstractSlider_virtualbase_sharedPainter".}
proc fcQAbstractSlider_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QAbstractSlider_virtualbase_inputMethodEvent".}
proc fcQAbstractSlider_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractSlider_virtualbase_inputMethodQuery".}
proc fcQAbstractSlider_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QAbstractSlider_virtualbase_focusNextPrevChild".}
proc fcQAbstractSlider_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractSlider_virtualbase_eventFilter".}
proc fcQAbstractSlider_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_childEvent".}
proc fcQAbstractSlider_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractSlider_virtualbase_customEvent".}
proc fcQAbstractSlider_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractSlider_virtualbase_connectNotify".}
proc fcQAbstractSlider_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractSlider_virtualbase_disconnectNotify".}
proc fcQAbstractSlider_new(vtbl: pointer, parent: pointer): ptr cQAbstractSlider {.importc: "QAbstractSlider_new".}
proc fcQAbstractSlider_new2(vtbl: pointer, ): ptr cQAbstractSlider {.importc: "QAbstractSlider_new2".}
proc fcQAbstractSlider_staticMetaObject(): pointer {.importc: "QAbstractSlider_staticMetaObject".}
proc fcQAbstractSlider_delete(self: pointer) {.importc: "QAbstractSlider_delete".}

proc metaObject*(self: gen_qabstractslider_types.QAbstractSlider, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSlider_metaObject(self.h))

proc metacast*(self: gen_qabstractslider_types.QAbstractSlider, param1: cstring): pointer =
  fcQAbstractSlider_metacast(self.h, param1)

proc metacall*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractSlider_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractslider_types.QAbstractSlider, s: cstring): string =
  let v_ms = fcQAbstractSlider_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc orientation*(self: gen_qabstractslider_types.QAbstractSlider, ): cint =
  cint(fcQAbstractSlider_orientation(self.h))

proc setMinimum*(self: gen_qabstractslider_types.QAbstractSlider, minimum: cint): void =
  fcQAbstractSlider_setMinimum(self.h, minimum)

proc minimum*(self: gen_qabstractslider_types.QAbstractSlider, ): cint =
  fcQAbstractSlider_minimum(self.h)

proc setMaximum*(self: gen_qabstractslider_types.QAbstractSlider, maximum: cint): void =
  fcQAbstractSlider_setMaximum(self.h, maximum)

proc maximum*(self: gen_qabstractslider_types.QAbstractSlider, ): cint =
  fcQAbstractSlider_maximum(self.h)

proc setSingleStep*(self: gen_qabstractslider_types.QAbstractSlider, singleStep: cint): void =
  fcQAbstractSlider_setSingleStep(self.h, singleStep)

proc singleStep*(self: gen_qabstractslider_types.QAbstractSlider, ): cint =
  fcQAbstractSlider_singleStep(self.h)

proc setPageStep*(self: gen_qabstractslider_types.QAbstractSlider, pageStep: cint): void =
  fcQAbstractSlider_setPageStep(self.h, pageStep)

proc pageStep*(self: gen_qabstractslider_types.QAbstractSlider, ): cint =
  fcQAbstractSlider_pageStep(self.h)

proc setTracking*(self: gen_qabstractslider_types.QAbstractSlider, enable: bool): void =
  fcQAbstractSlider_setTracking(self.h, enable)

proc hasTracking*(self: gen_qabstractslider_types.QAbstractSlider, ): bool =
  fcQAbstractSlider_hasTracking(self.h)

proc setSliderDown*(self: gen_qabstractslider_types.QAbstractSlider, sliderDown: bool): void =
  fcQAbstractSlider_setSliderDown(self.h, sliderDown)

proc isSliderDown*(self: gen_qabstractslider_types.QAbstractSlider, ): bool =
  fcQAbstractSlider_isSliderDown(self.h)

proc setSliderPosition*(self: gen_qabstractslider_types.QAbstractSlider, sliderPosition: cint): void =
  fcQAbstractSlider_setSliderPosition(self.h, sliderPosition)

proc sliderPosition*(self: gen_qabstractslider_types.QAbstractSlider, ): cint =
  fcQAbstractSlider_sliderPosition(self.h)

proc setInvertedAppearance*(self: gen_qabstractslider_types.QAbstractSlider, invertedAppearance: bool): void =
  fcQAbstractSlider_setInvertedAppearance(self.h, invertedAppearance)

proc invertedAppearance*(self: gen_qabstractslider_types.QAbstractSlider, ): bool =
  fcQAbstractSlider_invertedAppearance(self.h)

proc setInvertedControls*(self: gen_qabstractslider_types.QAbstractSlider, invertedControls: bool): void =
  fcQAbstractSlider_setInvertedControls(self.h, invertedControls)

proc invertedControls*(self: gen_qabstractslider_types.QAbstractSlider, ): bool =
  fcQAbstractSlider_invertedControls(self.h)

proc value*(self: gen_qabstractslider_types.QAbstractSlider, ): cint =
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
proc miqt_exec_callback_cQAbstractSlider_valueChanged(slot: int, value: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSlidervalueChangedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAbstractSlider_valueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSlidervalueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvalueChanged*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidervalueChangedSlot) =
  var tmp = new QAbstractSlidervalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_valueChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSlider_valueChanged, miqt_exec_callback_cQAbstractSlider_valueChanged_release)

proc sliderPressed*(self: gen_qabstractslider_types.QAbstractSlider, ): void =
  fcQAbstractSlider_sliderPressed(self.h)

type QAbstractSlidersliderPressedSlot* = proc()
proc miqt_exec_callback_cQAbstractSlider_sliderPressed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSlidersliderPressedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAbstractSlider_sliderPressed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSlidersliderPressedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsliderPressed*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersliderPressedSlot) =
  var tmp = new QAbstractSlidersliderPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_sliderPressed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSlider_sliderPressed, miqt_exec_callback_cQAbstractSlider_sliderPressed_release)

proc sliderMoved*(self: gen_qabstractslider_types.QAbstractSlider, position: cint): void =
  fcQAbstractSlider_sliderMoved(self.h, position)

type QAbstractSlidersliderMovedSlot* = proc(position: cint)
proc miqt_exec_callback_cQAbstractSlider_sliderMoved(slot: int, position: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSlidersliderMovedSlot](cast[pointer](slot))
  let slotval1 = position

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAbstractSlider_sliderMoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSlidersliderMovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsliderMoved*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersliderMovedSlot) =
  var tmp = new QAbstractSlidersliderMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_sliderMoved(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSlider_sliderMoved, miqt_exec_callback_cQAbstractSlider_sliderMoved_release)

proc sliderReleased*(self: gen_qabstractslider_types.QAbstractSlider, ): void =
  fcQAbstractSlider_sliderReleased(self.h)

type QAbstractSlidersliderReleasedSlot* = proc()
proc miqt_exec_callback_cQAbstractSlider_sliderReleased(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSlidersliderReleasedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAbstractSlider_sliderReleased_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSlidersliderReleasedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsliderReleased*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersliderReleasedSlot) =
  var tmp = new QAbstractSlidersliderReleasedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_sliderReleased(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSlider_sliderReleased, miqt_exec_callback_cQAbstractSlider_sliderReleased_release)

proc rangeChanged*(self: gen_qabstractslider_types.QAbstractSlider, min: cint, max: cint): void =
  fcQAbstractSlider_rangeChanged(self.h, min, max)

type QAbstractSliderrangeChangedSlot* = proc(min: cint, max: cint)
proc miqt_exec_callback_cQAbstractSlider_rangeChanged(slot: int, min: cint, max: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSliderrangeChangedSlot](cast[pointer](slot))
  let slotval1 = min

  let slotval2 = max

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQAbstractSlider_rangeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSliderrangeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrangeChanged*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderrangeChangedSlot) =
  var tmp = new QAbstractSliderrangeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_rangeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSlider_rangeChanged, miqt_exec_callback_cQAbstractSlider_rangeChanged_release)

proc actionTriggered*(self: gen_qabstractslider_types.QAbstractSlider, action: cint): void =
  fcQAbstractSlider_actionTriggered(self.h, action)

type QAbstractSlideractionTriggeredSlot* = proc(action: cint)
proc miqt_exec_callback_cQAbstractSlider_actionTriggered(slot: int, action: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractSlideractionTriggeredSlot](cast[pointer](slot))
  let slotval1 = action

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAbstractSlider_actionTriggered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractSlideractionTriggeredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactionTriggered*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlideractionTriggeredSlot) =
  var tmp = new QAbstractSlideractionTriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_actionTriggered(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAbstractSlider_actionTriggered, miqt_exec_callback_cQAbstractSlider_actionTriggered_release)

proc tr*(_: type gen_qabstractslider_types.QAbstractSlider, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractSlider_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractslider_types.QAbstractSlider, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractSlider_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QAbstractSliderenterEventProc* = proc(self: QAbstractSlider, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
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
type QAbstractSlidernativeEventProc* = proc(self: QAbstractSlider, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QAbstractSliderVTable* = object
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
proc QAbstractSlidermetaObject*(self: gen_qabstractslider_types.QAbstractSlider, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSlider_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAbstractSlider_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAbstractSlidermetacast*(self: gen_qabstractslider_types.QAbstractSlider, param1: cstring): pointer =
  fcQAbstractSlider_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAbstractSlider_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractSlidermetacall*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractSlider_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAbstractSlider_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractSliderevent*(self: gen_qabstractslider_types.QAbstractSlider, e: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSlider_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQAbstractSlider_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractSlidersliderChange*(self: gen_qabstractslider_types.QAbstractSlider, change: cint): void =
  fcQAbstractSlider_virtualbase_sliderChange(self.h, cint(change))

proc miqt_exec_callback_cQAbstractSlider_sliderChange(vtbl: pointer, self: pointer, change: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = cint(change)
  vtbl[].sliderChange(self, slotval1)

proc QAbstractSliderkeyPressEvent*(self: gen_qabstractslider_types.QAbstractSlider, ev: gen_qevent_types.QKeyEvent): void =
  fcQAbstractSlider_virtualbase_keyPressEvent(self.h, ev.h)

proc miqt_exec_callback_cQAbstractSlider_keyPressEvent(vtbl: pointer, self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev)
  vtbl[].keyPressEvent(self, slotval1)

proc QAbstractSlidertimerEvent*(self: gen_qabstractslider_types.QAbstractSlider, param1: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractSlider_virtualbase_timerEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractSlider_timerEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractSliderwheelEvent*(self: gen_qabstractslider_types.QAbstractSlider, e: gen_qevent_types.QWheelEvent): void =
  fcQAbstractSlider_virtualbase_wheelEvent(self.h, e.h)

proc miqt_exec_callback_cQAbstractSlider_wheelEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)
  vtbl[].wheelEvent(self, slotval1)

proc QAbstractSliderchangeEvent*(self: gen_qabstractslider_types.QAbstractSlider, e: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSlider_virtualbase_changeEvent(self.h, e.h)

proc miqt_exec_callback_cQAbstractSlider_changeEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  vtbl[].changeEvent(self, slotval1)

proc QAbstractSliderdevType*(self: gen_qabstractslider_types.QAbstractSlider, ): cint =
  fcQAbstractSlider_virtualbase_devType(self.h)

proc miqt_exec_callback_cQAbstractSlider_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QAbstractSlidersetVisible*(self: gen_qabstractslider_types.QAbstractSlider, visible: bool): void =
  fcQAbstractSlider_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQAbstractSlider_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QAbstractSlidersizeHint*(self: gen_qabstractslider_types.QAbstractSlider, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSlider_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQAbstractSlider_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QAbstractSliderminimumSizeHint*(self: gen_qabstractslider_types.QAbstractSlider, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractSlider_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQAbstractSlider_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QAbstractSliderheightForWidth*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint): cint =
  fcQAbstractSlider_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQAbstractSlider_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QAbstractSliderhasHeightForWidth*(self: gen_qabstractslider_types.QAbstractSlider, ): bool =
  fcQAbstractSlider_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQAbstractSlider_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QAbstractSliderpaintEngine*(self: gen_qabstractslider_types.QAbstractSlider, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQAbstractSlider_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQAbstractSlider_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QAbstractSlidermousePressEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSlider_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QAbstractSlidermouseReleaseEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSlider_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QAbstractSlidermouseDoubleClickEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSlider_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QAbstractSlidermouseMoveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractSlider_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QAbstractSliderkeyReleaseEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractSlider_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QAbstractSliderfocusInEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractSlider_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QAbstractSliderfocusOutEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractSlider_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QAbstractSliderenterEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QEnterEvent): void =
  fcQAbstractSlider_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QAbstractSliderleaveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSlider_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QAbstractSliderpaintEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QPaintEvent): void =
  fcQAbstractSlider_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QAbstractSlidermoveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMoveEvent): void =
  fcQAbstractSlider_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QAbstractSliderresizeEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QResizeEvent): void =
  fcQAbstractSlider_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QAbstractSlidercloseEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QCloseEvent): void =
  fcQAbstractSlider_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QAbstractSlidercontextMenuEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QContextMenuEvent): void =
  fcQAbstractSlider_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QAbstractSlidertabletEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QTabletEvent): void =
  fcQAbstractSlider_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QAbstractSlideractionEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QActionEvent): void =
  fcQAbstractSlider_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QAbstractSliderdragEnterEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QDragEnterEvent): void =
  fcQAbstractSlider_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QAbstractSliderdragMoveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QDragMoveEvent): void =
  fcQAbstractSlider_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QAbstractSliderdragLeaveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQAbstractSlider_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QAbstractSliderdropEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QDropEvent): void =
  fcQAbstractSlider_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QAbstractSlidershowEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QShowEvent): void =
  fcQAbstractSlider_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QAbstractSliderhideEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QHideEvent): void =
  fcQAbstractSlider_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QAbstractSlidernativeEvent*(self: gen_qabstractslider_types.QAbstractSlider, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQAbstractSlider_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQAbstractSlider_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractSlidermetric*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint): cint =
  fcQAbstractSlider_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQAbstractSlider_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QAbstractSliderinitPainter*(self: gen_qabstractslider_types.QAbstractSlider, painter: gen_qpainter_types.QPainter): void =
  fcQAbstractSlider_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQAbstractSlider_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QAbstractSliderredirected*(self: gen_qabstractslider_types.QAbstractSlider, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractSlider_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQAbstractSlider_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QAbstractSlidersharedPainter*(self: gen_qabstractslider_types.QAbstractSlider, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQAbstractSlider_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQAbstractSlider_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QAbstractSliderinputMethodEvent*(self: gen_qabstractslider_types.QAbstractSlider, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractSlider_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractSlider_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QAbstractSliderinputMethodQuery*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractSlider_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQAbstractSlider_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QAbstractSliderfocusNextPrevChild*(self: gen_qabstractslider_types.QAbstractSlider, next: bool): bool =
  fcQAbstractSlider_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQAbstractSlider_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QAbstractSlidereventFilter*(self: gen_qabstractslider_types.QAbstractSlider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractSlider_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractSliderchildEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractSlider_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAbstractSlidercustomEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractSlider_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractSlider_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAbstractSliderconnectNotify*(self: gen_qabstractslider_types.QAbstractSlider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractSlider_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractSlider_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractSliderdisconnectNotify*(self: gen_qabstractslider_types.QAbstractSlider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractSlider_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractSlider_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractSliderVTable](vtbl)
  let self = QAbstractSlider(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qabstractslider_types.QAbstractSlider,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QAbstractSliderVTable = nil): gen_qabstractslider_types.QAbstractSlider =
  let vtbl = if vtbl == nil: new QAbstractSliderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractSliderVTable, _: ptr cQAbstractSlider) {.cdecl.} =
    let vtbl = cast[ref QAbstractSliderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractSlider_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractSlider_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractSlider_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractSlider_event
  if not isNil(vtbl.sliderChange):
    vtbl[].vtbl.sliderChange = miqt_exec_callback_cQAbstractSlider_sliderChange
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractSlider_keyPressEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractSlider_timerEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractSlider_wheelEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQAbstractSlider_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQAbstractSlider_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQAbstractSlider_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractSlider_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQAbstractSlider_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQAbstractSlider_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQAbstractSlider_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQAbstractSlider_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractSlider_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractSlider_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractSlider_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractSlider_mouseMoveEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractSlider_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractSlider_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractSlider_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQAbstractSlider_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQAbstractSlider_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQAbstractSlider_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQAbstractSlider_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQAbstractSlider_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQAbstractSlider_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractSlider_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQAbstractSlider_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQAbstractSlider_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractSlider_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractSlider_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractSlider_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractSlider_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQAbstractSlider_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQAbstractSlider_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQAbstractSlider_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQAbstractSlider_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQAbstractSlider_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQAbstractSlider_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQAbstractSlider_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractSlider_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractSlider_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQAbstractSlider_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractSlider_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractSlider_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractSlider_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractSlider_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractSlider_disconnectNotify
  gen_qabstractslider_types.QAbstractSlider(h: fcQAbstractSlider_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qabstractslider_types.QAbstractSlider,
    vtbl: ref QAbstractSliderVTable = nil): gen_qabstractslider_types.QAbstractSlider =
  let vtbl = if vtbl == nil: new QAbstractSliderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractSliderVTable, _: ptr cQAbstractSlider) {.cdecl.} =
    let vtbl = cast[ref QAbstractSliderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractSlider_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractSlider_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractSlider_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractSlider_event
  if not isNil(vtbl.sliderChange):
    vtbl[].vtbl.sliderChange = miqt_exec_callback_cQAbstractSlider_sliderChange
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractSlider_keyPressEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractSlider_timerEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractSlider_wheelEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQAbstractSlider_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQAbstractSlider_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQAbstractSlider_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractSlider_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQAbstractSlider_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQAbstractSlider_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQAbstractSlider_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQAbstractSlider_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractSlider_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractSlider_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractSlider_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractSlider_mouseMoveEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractSlider_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractSlider_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractSlider_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQAbstractSlider_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQAbstractSlider_leaveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQAbstractSlider_paintEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQAbstractSlider_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQAbstractSlider_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQAbstractSlider_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractSlider_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQAbstractSlider_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQAbstractSlider_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractSlider_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractSlider_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractSlider_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractSlider_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQAbstractSlider_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQAbstractSlider_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQAbstractSlider_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQAbstractSlider_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQAbstractSlider_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQAbstractSlider_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQAbstractSlider_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractSlider_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractSlider_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQAbstractSlider_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractSlider_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractSlider_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractSlider_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractSlider_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractSlider_disconnectNotify
  gen_qabstractslider_types.QAbstractSlider(h: fcQAbstractSlider_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qabstractslider_types.QAbstractSlider): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSlider_staticMetaObject())
proc delete*(self: gen_qabstractslider_types.QAbstractSlider) =
  fcQAbstractSlider_delete(self.h)
