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

proc fcQAbstractSlider_new(parent: pointer): ptr cQAbstractSlider {.importc: "QAbstractSlider_new".}
proc fcQAbstractSlider_new2(): ptr cQAbstractSlider {.importc: "QAbstractSlider_new2".}
proc fcQAbstractSlider_metaObject(self: pointer, ): pointer {.importc: "QAbstractSlider_metaObject".}
proc fcQAbstractSlider_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractSlider_metacast".}
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
proc fcQAbstractSlider_connect_valueChanged(self: pointer, slot: int) {.importc: "QAbstractSlider_connect_valueChanged".}
proc fcQAbstractSlider_sliderPressed(self: pointer, ): void {.importc: "QAbstractSlider_sliderPressed".}
proc fcQAbstractSlider_connect_sliderPressed(self: pointer, slot: int) {.importc: "QAbstractSlider_connect_sliderPressed".}
proc fcQAbstractSlider_sliderMoved(self: pointer, position: cint): void {.importc: "QAbstractSlider_sliderMoved".}
proc fcQAbstractSlider_connect_sliderMoved(self: pointer, slot: int) {.importc: "QAbstractSlider_connect_sliderMoved".}
proc fcQAbstractSlider_sliderReleased(self: pointer, ): void {.importc: "QAbstractSlider_sliderReleased".}
proc fcQAbstractSlider_connect_sliderReleased(self: pointer, slot: int) {.importc: "QAbstractSlider_connect_sliderReleased".}
proc fcQAbstractSlider_rangeChanged(self: pointer, min: cint, max: cint): void {.importc: "QAbstractSlider_rangeChanged".}
proc fcQAbstractSlider_connect_rangeChanged(self: pointer, slot: int) {.importc: "QAbstractSlider_connect_rangeChanged".}
proc fcQAbstractSlider_actionTriggered(self: pointer, action: cint): void {.importc: "QAbstractSlider_actionTriggered".}
proc fcQAbstractSlider_connect_actionTriggered(self: pointer, slot: int) {.importc: "QAbstractSlider_connect_actionTriggered".}
proc fcQAbstractSlider_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractSlider_tr2".}
proc fcQAbstractSlider_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractSlider_tr3".}
proc fQAbstractSlider_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QAbstractSlider_virtualbase_event".}
proc fcQAbstractSlider_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_event".}
proc fQAbstractSlider_virtualbase_sliderChange(self: pointer, change: cint): void{.importc: "QAbstractSlider_virtualbase_sliderChange".}
proc fcQAbstractSlider_override_virtual_sliderChange(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_sliderChange".}
proc fQAbstractSlider_virtualbase_keyPressEvent(self: pointer, ev: pointer): void{.importc: "QAbstractSlider_virtualbase_keyPressEvent".}
proc fcQAbstractSlider_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_keyPressEvent".}
proc fQAbstractSlider_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QAbstractSlider_virtualbase_timerEvent".}
proc fcQAbstractSlider_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_timerEvent".}
proc fQAbstractSlider_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QAbstractSlider_virtualbase_wheelEvent".}
proc fcQAbstractSlider_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_wheelEvent".}
proc fQAbstractSlider_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QAbstractSlider_virtualbase_changeEvent".}
proc fcQAbstractSlider_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_changeEvent".}
proc fQAbstractSlider_virtualbase_devType(self: pointer, ): cint{.importc: "QAbstractSlider_virtualbase_devType".}
proc fcQAbstractSlider_override_virtual_devType(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_devType".}
proc fQAbstractSlider_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QAbstractSlider_virtualbase_setVisible".}
proc fcQAbstractSlider_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_setVisible".}
proc fQAbstractSlider_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QAbstractSlider_virtualbase_sizeHint".}
proc fcQAbstractSlider_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_sizeHint".}
proc fQAbstractSlider_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QAbstractSlider_virtualbase_minimumSizeHint".}
proc fcQAbstractSlider_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_minimumSizeHint".}
proc fQAbstractSlider_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QAbstractSlider_virtualbase_heightForWidth".}
proc fcQAbstractSlider_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_heightForWidth".}
proc fQAbstractSlider_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QAbstractSlider_virtualbase_hasHeightForWidth".}
proc fcQAbstractSlider_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_hasHeightForWidth".}
proc fQAbstractSlider_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QAbstractSlider_virtualbase_paintEngine".}
proc fcQAbstractSlider_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_paintEngine".}
proc fQAbstractSlider_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_mousePressEvent".}
proc fcQAbstractSlider_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_mousePressEvent".}
proc fQAbstractSlider_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_mouseReleaseEvent".}
proc fcQAbstractSlider_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_mouseReleaseEvent".}
proc fQAbstractSlider_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractSlider_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractSlider_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_mouseMoveEvent".}
proc fcQAbstractSlider_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_mouseMoveEvent".}
proc fQAbstractSlider_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_keyReleaseEvent".}
proc fcQAbstractSlider_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_keyReleaseEvent".}
proc fQAbstractSlider_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_focusInEvent".}
proc fcQAbstractSlider_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_focusInEvent".}
proc fQAbstractSlider_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_focusOutEvent".}
proc fcQAbstractSlider_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_focusOutEvent".}
proc fQAbstractSlider_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_enterEvent".}
proc fcQAbstractSlider_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_enterEvent".}
proc fQAbstractSlider_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_leaveEvent".}
proc fcQAbstractSlider_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_leaveEvent".}
proc fQAbstractSlider_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_paintEvent".}
proc fcQAbstractSlider_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_paintEvent".}
proc fQAbstractSlider_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_moveEvent".}
proc fcQAbstractSlider_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_moveEvent".}
proc fQAbstractSlider_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_resizeEvent".}
proc fcQAbstractSlider_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_resizeEvent".}
proc fQAbstractSlider_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_closeEvent".}
proc fcQAbstractSlider_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_closeEvent".}
proc fQAbstractSlider_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_contextMenuEvent".}
proc fcQAbstractSlider_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_contextMenuEvent".}
proc fQAbstractSlider_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_tabletEvent".}
proc fcQAbstractSlider_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_tabletEvent".}
proc fQAbstractSlider_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_actionEvent".}
proc fcQAbstractSlider_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_actionEvent".}
proc fQAbstractSlider_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_dragEnterEvent".}
proc fcQAbstractSlider_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_dragEnterEvent".}
proc fQAbstractSlider_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_dragMoveEvent".}
proc fcQAbstractSlider_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_dragMoveEvent".}
proc fQAbstractSlider_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_dragLeaveEvent".}
proc fcQAbstractSlider_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_dragLeaveEvent".}
proc fQAbstractSlider_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_dropEvent".}
proc fcQAbstractSlider_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_dropEvent".}
proc fQAbstractSlider_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_showEvent".}
proc fcQAbstractSlider_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_showEvent".}
proc fQAbstractSlider_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_hideEvent".}
proc fcQAbstractSlider_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_hideEvent".}
proc fQAbstractSlider_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QAbstractSlider_virtualbase_nativeEvent".}
proc fcQAbstractSlider_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_nativeEvent".}
proc fQAbstractSlider_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QAbstractSlider_virtualbase_metric".}
proc fcQAbstractSlider_override_virtual_metric(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_metric".}
proc fQAbstractSlider_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QAbstractSlider_virtualbase_initPainter".}
proc fcQAbstractSlider_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_initPainter".}
proc fQAbstractSlider_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QAbstractSlider_virtualbase_redirected".}
proc fcQAbstractSlider_override_virtual_redirected(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_redirected".}
proc fQAbstractSlider_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QAbstractSlider_virtualbase_sharedPainter".}
proc fcQAbstractSlider_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_sharedPainter".}
proc fQAbstractSlider_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QAbstractSlider_virtualbase_inputMethodEvent".}
proc fcQAbstractSlider_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_inputMethodEvent".}
proc fQAbstractSlider_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QAbstractSlider_virtualbase_inputMethodQuery".}
proc fcQAbstractSlider_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_inputMethodQuery".}
proc fQAbstractSlider_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QAbstractSlider_virtualbase_focusNextPrevChild".}
proc fcQAbstractSlider_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_focusNextPrevChild".}
proc fQAbstractSlider_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractSlider_virtualbase_eventFilter".}
proc fcQAbstractSlider_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_eventFilter".}
proc fQAbstractSlider_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_childEvent".}
proc fcQAbstractSlider_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_childEvent".}
proc fQAbstractSlider_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractSlider_virtualbase_customEvent".}
proc fcQAbstractSlider_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_customEvent".}
proc fQAbstractSlider_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractSlider_virtualbase_connectNotify".}
proc fcQAbstractSlider_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_connectNotify".}
proc fQAbstractSlider_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractSlider_virtualbase_disconnectNotify".}
proc fcQAbstractSlider_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractSlider_override_virtual_disconnectNotify".}
proc fcQAbstractSlider_delete(self: pointer) {.importc: "QAbstractSlider_delete".}


func init*(T: type gen_qabstractslider_types.QAbstractSlider, h: ptr cQAbstractSlider): gen_qabstractslider_types.QAbstractSlider =
  T(h: h)
proc create*(T: type gen_qabstractslider_types.QAbstractSlider, parent: gen_qwidget_types.QWidget): gen_qabstractslider_types.QAbstractSlider =
  gen_qabstractslider_types.QAbstractSlider.init(fcQAbstractSlider_new(parent.h))

proc create*(T: type gen_qabstractslider_types.QAbstractSlider, ): gen_qabstractslider_types.QAbstractSlider =
  gen_qabstractslider_types.QAbstractSlider.init(fcQAbstractSlider_new2())

proc metaObject*(self: gen_qabstractslider_types.QAbstractSlider, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractSlider_metaObject(self.h))

proc metacast*(self: gen_qabstractslider_types.QAbstractSlider, param1: cstring): pointer =
  fcQAbstractSlider_metacast(self.h, param1)

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
proc miqt_exec_callback_QAbstractSlider_valueChanged(slot: int, value: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSlidervalueChangedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc onvalueChanged*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidervalueChangedSlot) =
  var tmp = new QAbstractSlidervalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_valueChanged(self.h, cast[int](addr tmp[]))

proc sliderPressed*(self: gen_qabstractslider_types.QAbstractSlider, ): void =
  fcQAbstractSlider_sliderPressed(self.h)

type QAbstractSlidersliderPressedSlot* = proc()
proc miqt_exec_callback_QAbstractSlider_sliderPressed(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSlidersliderPressedSlot](cast[pointer](slot))
  nimfunc[]()

proc onsliderPressed*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersliderPressedSlot) =
  var tmp = new QAbstractSlidersliderPressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_sliderPressed(self.h, cast[int](addr tmp[]))

proc sliderMoved*(self: gen_qabstractslider_types.QAbstractSlider, position: cint): void =
  fcQAbstractSlider_sliderMoved(self.h, position)

type QAbstractSlidersliderMovedSlot* = proc(position: cint)
proc miqt_exec_callback_QAbstractSlider_sliderMoved(slot: int, position: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSlidersliderMovedSlot](cast[pointer](slot))
  let slotval1 = position

  nimfunc[](slotval1)

proc onsliderMoved*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersliderMovedSlot) =
  var tmp = new QAbstractSlidersliderMovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_sliderMoved(self.h, cast[int](addr tmp[]))

proc sliderReleased*(self: gen_qabstractslider_types.QAbstractSlider, ): void =
  fcQAbstractSlider_sliderReleased(self.h)

type QAbstractSlidersliderReleasedSlot* = proc()
proc miqt_exec_callback_QAbstractSlider_sliderReleased(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSlidersliderReleasedSlot](cast[pointer](slot))
  nimfunc[]()

proc onsliderReleased*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersliderReleasedSlot) =
  var tmp = new QAbstractSlidersliderReleasedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_sliderReleased(self.h, cast[int](addr tmp[]))

proc rangeChanged*(self: gen_qabstractslider_types.QAbstractSlider, min: cint, max: cint): void =
  fcQAbstractSlider_rangeChanged(self.h, min, max)

type QAbstractSliderrangeChangedSlot* = proc(min: cint, max: cint)
proc miqt_exec_callback_QAbstractSlider_rangeChanged(slot: int, min: cint, max: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSliderrangeChangedSlot](cast[pointer](slot))
  let slotval1 = min

  let slotval2 = max

  nimfunc[](slotval1, slotval2)

proc onrangeChanged*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderrangeChangedSlot) =
  var tmp = new QAbstractSliderrangeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_rangeChanged(self.h, cast[int](addr tmp[]))

proc actionTriggered*(self: gen_qabstractslider_types.QAbstractSlider, action: cint): void =
  fcQAbstractSlider_actionTriggered(self.h, action)

type QAbstractSlideractionTriggeredSlot* = proc(action: cint)
proc miqt_exec_callback_QAbstractSlider_actionTriggered(slot: int, action: cint) {.exportc.} =
  let nimfunc = cast[ptr QAbstractSlideractionTriggeredSlot](cast[pointer](slot))
  let slotval1 = action

  nimfunc[](slotval1)

proc onactionTriggered*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlideractionTriggeredSlot) =
  var tmp = new QAbstractSlideractionTriggeredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_connect_actionTriggered(self.h, cast[int](addr tmp[]))

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

proc QAbstractSliderevent*(self: gen_qabstractslider_types.QAbstractSlider, e: gen_qcoreevent_types.QEvent): bool =
  fQAbstractSlider_virtualbase_event(self.h, e.h)

type QAbstractSlidereventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidereventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_event(self: ptr cQAbstractSlider, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QAbstractSlider_event ".} =
  var nimfunc = cast[ptr QAbstractSlidereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSlidersliderChange*(self: gen_qabstractslider_types.QAbstractSlider, change: cint): void =
  fQAbstractSlider_virtualbase_sliderChange(self.h, cint(change))

type QAbstractSlidersliderChangeProc* = proc(change: cint): void
proc onsliderChange*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersliderChangeProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidersliderChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_sliderChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_sliderChange(self: ptr cQAbstractSlider, slot: int, change: cint): void {.exportc: "miqt_exec_callback_QAbstractSlider_sliderChange ".} =
  var nimfunc = cast[ptr QAbstractSlidersliderChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)


  nimfunc[](slotval1)
proc QAbstractSliderkeyPressEvent*(self: gen_qabstractslider_types.QAbstractSlider, ev: gen_qevent_types.QKeyEvent): void =
  fQAbstractSlider_virtualbase_keyPressEvent(self.h, ev.h)

type QAbstractSliderkeyPressEventProc* = proc(ev: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_keyPressEvent(self: ptr cQAbstractSlider, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_keyPressEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev)


  nimfunc[](slotval1)
proc QAbstractSlidertimerEvent*(self: gen_qabstractslider_types.QAbstractSlider, param1: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractSlider_virtualbase_timerEvent(self.h, param1.h)

type QAbstractSlidertimerEventProc* = proc(param1: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidertimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_timerEvent(self: ptr cQAbstractSlider, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractSlidertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractSliderwheelEvent*(self: gen_qabstractslider_types.QAbstractSlider, e: gen_qevent_types.QWheelEvent): void =
  fQAbstractSlider_virtualbase_wheelEvent(self.h, e.h)

type QAbstractSliderwheelEventProc* = proc(e: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderwheelEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_wheelEvent(self: ptr cQAbstractSlider, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_wheelEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: e)


  nimfunc[](slotval1)
proc QAbstractSliderchangeEvent*(self: gen_qabstractslider_types.QAbstractSlider, e: gen_qcoreevent_types.QEvent): void =
  fQAbstractSlider_virtualbase_changeEvent(self.h, e.h)

type QAbstractSliderchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderchangeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_changeEvent(self: ptr cQAbstractSlider, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_changeEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QAbstractSliderdevType*(self: gen_qabstractslider_types.QAbstractSlider, ): cint =
  fQAbstractSlider_virtualbase_devType(self.h)

type QAbstractSliderdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderdevTypeProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_devType(self: ptr cQAbstractSlider, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractSlider_devType ".} =
  var nimfunc = cast[ptr QAbstractSliderdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSlidersetVisible*(self: gen_qabstractslider_types.QAbstractSlider, visible: bool): void =
  fQAbstractSlider_virtualbase_setVisible(self.h, visible)

type QAbstractSlidersetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersetVisibleProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidersetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_setVisible(self: ptr cQAbstractSlider, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QAbstractSlider_setVisible ".} =
  var nimfunc = cast[ptr QAbstractSlidersetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QAbstractSlidersizeHint*(self: gen_qabstractslider_types.QAbstractSlider, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractSlider_virtualbase_sizeHint(self.h))

type QAbstractSlidersizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidersizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_sizeHint(self: ptr cQAbstractSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSlider_sizeHint ".} =
  var nimfunc = cast[ptr QAbstractSlidersizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractSliderminimumSizeHint*(self: gen_qabstractslider_types.QAbstractSlider, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQAbstractSlider_virtualbase_minimumSizeHint(self.h))

type QAbstractSliderminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_minimumSizeHint(self: ptr cQAbstractSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSlider_minimumSizeHint ".} =
  var nimfunc = cast[ptr QAbstractSliderminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractSliderheightForWidth*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint): cint =
  fQAbstractSlider_virtualbase_heightForWidth(self.h, param1)

type QAbstractSliderheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderheightForWidthProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_heightForWidth(self: ptr cQAbstractSlider, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractSlider_heightForWidth ".} =
  var nimfunc = cast[ptr QAbstractSliderheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSliderhasHeightForWidth*(self: gen_qabstractslider_types.QAbstractSlider, ): bool =
  fQAbstractSlider_virtualbase_hasHeightForWidth(self.h)

type QAbstractSliderhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_hasHeightForWidth(self: ptr cQAbstractSlider, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractSlider_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QAbstractSliderhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QAbstractSliderpaintEngine*(self: gen_qabstractslider_types.QAbstractSlider, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQAbstractSlider_virtualbase_paintEngine(self.h))

type QAbstractSliderpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderpaintEngineProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_paintEngine(self: ptr cQAbstractSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSlider_paintEngine ".} =
  var nimfunc = cast[ptr QAbstractSliderpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractSlidermousePressEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractSlider_virtualbase_mousePressEvent(self.h, event.h)

type QAbstractSlidermousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidermousePressEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidermousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_mousePressEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_mousePressEvent ".} =
  var nimfunc = cast[ptr QAbstractSlidermousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSlidermouseReleaseEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractSlider_virtualbase_mouseReleaseEvent(self.h, event.h)

type QAbstractSlidermouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidermouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidermouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_mouseReleaseEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractSlidermouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSlidermouseDoubleClickEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractSlider_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QAbstractSlidermouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidermouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidermouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_mouseDoubleClickEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QAbstractSlidermouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSlidermouseMoveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMouseEvent): void =
  fQAbstractSlider_virtualbase_mouseMoveEvent(self.h, event.h)

type QAbstractSlidermouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidermouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidermouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_mouseMoveEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractSlidermouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderkeyReleaseEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QKeyEvent): void =
  fQAbstractSlider_virtualbase_keyReleaseEvent(self.h, event.h)

type QAbstractSliderkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_keyReleaseEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderfocusInEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QFocusEvent): void =
  fQAbstractSlider_virtualbase_focusInEvent(self.h, event.h)

type QAbstractSliderfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderfocusInEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_focusInEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_focusInEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderfocusOutEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QFocusEvent): void =
  fQAbstractSlider_virtualbase_focusOutEvent(self.h, event.h)

type QAbstractSliderfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_focusOutEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_focusOutEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderenterEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QEnterEvent): void =
  fQAbstractSlider_virtualbase_enterEvent(self.h, event.h)

type QAbstractSliderenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderenterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_enterEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_enterEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderleaveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractSlider_virtualbase_leaveEvent(self.h, event.h)

type QAbstractSliderleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderleaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_leaveEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_leaveEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderpaintEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QPaintEvent): void =
  fQAbstractSlider_virtualbase_paintEvent(self.h, event.h)

type QAbstractSliderpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderpaintEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_paintEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_paintEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSlidermoveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QMoveEvent): void =
  fQAbstractSlider_virtualbase_moveEvent(self.h, event.h)

type QAbstractSlidermoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidermoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidermoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_moveEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_moveEvent ".} =
  var nimfunc = cast[ptr QAbstractSlidermoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderresizeEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QResizeEvent): void =
  fQAbstractSlider_virtualbase_resizeEvent(self.h, event.h)

type QAbstractSliderresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderresizeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_resizeEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_resizeEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSlidercloseEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QCloseEvent): void =
  fQAbstractSlider_virtualbase_closeEvent(self.h, event.h)

type QAbstractSlidercloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidercloseEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidercloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_closeEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_closeEvent ".} =
  var nimfunc = cast[ptr QAbstractSlidercloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSlidercontextMenuEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QContextMenuEvent): void =
  fQAbstractSlider_virtualbase_contextMenuEvent(self.h, event.h)

type QAbstractSlidercontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidercontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidercontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_contextMenuEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_contextMenuEvent ".} =
  var nimfunc = cast[ptr QAbstractSlidercontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSlidertabletEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QTabletEvent): void =
  fQAbstractSlider_virtualbase_tabletEvent(self.h, event.h)

type QAbstractSlidertabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidertabletEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidertabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_tabletEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_tabletEvent ".} =
  var nimfunc = cast[ptr QAbstractSlidertabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSlideractionEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QActionEvent): void =
  fQAbstractSlider_virtualbase_actionEvent(self.h, event.h)

type QAbstractSlideractionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlideractionEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlideractionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_actionEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_actionEvent ".} =
  var nimfunc = cast[ptr QAbstractSlideractionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderdragEnterEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QDragEnterEvent): void =
  fQAbstractSlider_virtualbase_dragEnterEvent(self.h, event.h)

type QAbstractSliderdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_dragEnterEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_dragEnterEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderdragMoveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QDragMoveEvent): void =
  fQAbstractSlider_virtualbase_dragMoveEvent(self.h, event.h)

type QAbstractSliderdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_dragMoveEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_dragMoveEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderdragLeaveEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QDragLeaveEvent): void =
  fQAbstractSlider_virtualbase_dragLeaveEvent(self.h, event.h)

type QAbstractSliderdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_dragLeaveEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderdropEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QDropEvent): void =
  fQAbstractSlider_virtualbase_dropEvent(self.h, event.h)

type QAbstractSliderdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderdropEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_dropEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_dropEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSlidershowEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QShowEvent): void =
  fQAbstractSlider_virtualbase_showEvent(self.h, event.h)

type QAbstractSlidershowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidershowEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidershowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_showEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_showEvent ".} =
  var nimfunc = cast[ptr QAbstractSlidershowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderhideEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qevent_types.QHideEvent): void =
  fQAbstractSlider_virtualbase_hideEvent(self.h, event.h)

type QAbstractSliderhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderhideEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_hideEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_hideEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSlidernativeEvent*(self: gen_qabstractslider_types.QAbstractSlider, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQAbstractSlider_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractSlidernativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidernativeEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidernativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_nativeEvent(self: ptr cQAbstractSlider, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QAbstractSlider_nativeEvent ".} =
  var nimfunc = cast[ptr QAbstractSlidernativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAbstractSlidermetric*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint): cint =
  fQAbstractSlider_virtualbase_metric(self.h, cint(param1))

type QAbstractSlidermetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidermetricProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidermetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_metric(self: ptr cQAbstractSlider, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractSlider_metric ".} =
  var nimfunc = cast[ptr QAbstractSlidermetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSliderinitPainter*(self: gen_qabstractslider_types.QAbstractSlider, painter: gen_qpainter_types.QPainter): void =
  fQAbstractSlider_virtualbase_initPainter(self.h, painter.h)

type QAbstractSliderinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderinitPainterProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_initPainter(self: ptr cQAbstractSlider, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_initPainter ".} =
  var nimfunc = cast[ptr QAbstractSliderinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QAbstractSliderredirected*(self: gen_qabstractslider_types.QAbstractSlider, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQAbstractSlider_virtualbase_redirected(self.h, offset.h))

type QAbstractSliderredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderredirectedProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_redirected(self: ptr cQAbstractSlider, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractSlider_redirected ".} =
  var nimfunc = cast[ptr QAbstractSliderredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractSlidersharedPainter*(self: gen_qabstractslider_types.QAbstractSlider, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQAbstractSlider_virtualbase_sharedPainter(self.h))

type QAbstractSlidersharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidersharedPainterProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidersharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_sharedPainter(self: ptr cQAbstractSlider, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractSlider_sharedPainter ".} =
  var nimfunc = cast[ptr QAbstractSlidersharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractSliderinputMethodEvent*(self: gen_qabstractslider_types.QAbstractSlider, param1: gen_qevent_types.QInputMethodEvent): void =
  fQAbstractSlider_virtualbase_inputMethodEvent(self.h, param1.h)

type QAbstractSliderinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_inputMethodEvent(self: ptr cQAbstractSlider, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_inputMethodEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QAbstractSliderinputMethodQuery*(self: gen_qabstractslider_types.QAbstractSlider, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQAbstractSlider_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QAbstractSliderinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_inputMethodQuery(self: ptr cQAbstractSlider, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QAbstractSlider_inputMethodQuery ".} =
  var nimfunc = cast[ptr QAbstractSliderinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractSliderfocusNextPrevChild*(self: gen_qabstractslider_types.QAbstractSlider, next: bool): bool =
  fQAbstractSlider_virtualbase_focusNextPrevChild(self.h, next)

type QAbstractSliderfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_focusNextPrevChild(self: ptr cQAbstractSlider, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QAbstractSlider_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QAbstractSliderfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractSlidereventFilter*(self: gen_qabstractslider_types.QAbstractSlider, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractSlider_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractSlidereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidereventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_eventFilter(self: ptr cQAbstractSlider, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractSlider_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractSlidereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractSliderchildEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractSlider_virtualbase_childEvent(self.h, event.h)

type QAbstractSliderchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderchildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_childEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_childEvent ".} =
  var nimfunc = cast[ptr QAbstractSliderchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSlidercustomEvent*(self: gen_qabstractslider_types.QAbstractSlider, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractSlider_virtualbase_customEvent(self.h, event.h)

type QAbstractSlidercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSlidercustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractSlidercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_customEvent(self: ptr cQAbstractSlider, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_customEvent ".} =
  var nimfunc = cast[ptr QAbstractSlidercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractSliderconnectNotify*(self: gen_qabstractslider_types.QAbstractSlider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractSlider_virtualbase_connectNotify(self.h, signal.h)

type QAbstractSliderconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_connectNotify(self: ptr cQAbstractSlider, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractSliderconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractSliderdisconnectNotify*(self: gen_qabstractslider_types.QAbstractSlider, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractSlider_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractSliderdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractslider_types.QAbstractSlider, slot: QAbstractSliderdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractSliderdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractSlider_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractSlider_disconnectNotify(self: ptr cQAbstractSlider, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractSlider_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractSliderdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qabstractslider_types.QAbstractSlider) =
  fcQAbstractSlider_delete(self.h)
