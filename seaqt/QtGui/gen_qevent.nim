import ./qtgui_pkg

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


type QWheelEventEnumEnum* = distinct cint
template DefaultDeltasPerStep*(_: type QWheelEventEnumEnum): untyped = 120


type QTabletEventTabletDeviceEnum* = distinct cint
template NoDevice*(_: type QTabletEventTabletDeviceEnum): untyped = 0
template Puck*(_: type QTabletEventTabletDeviceEnum): untyped = 1
template Stylus*(_: type QTabletEventTabletDeviceEnum): untyped = 2
template Airbrush*(_: type QTabletEventTabletDeviceEnum): untyped = 3
template FourDMouse*(_: type QTabletEventTabletDeviceEnum): untyped = 4
template XFreeEraser*(_: type QTabletEventTabletDeviceEnum): untyped = 5
template RotationStylus*(_: type QTabletEventTabletDeviceEnum): untyped = 6


type QTabletEventPointerTypeEnum* = distinct cint
template UnknownPointer*(_: type QTabletEventPointerTypeEnum): untyped = 0
template Pen*(_: type QTabletEventPointerTypeEnum): untyped = 1
template Cursor*(_: type QTabletEventPointerTypeEnum): untyped = 2
template Eraser*(_: type QTabletEventPointerTypeEnum): untyped = 3


type QPlatformSurfaceEventSurfaceEventTypeEnum* = distinct cint
template SurfaceCreated*(_: type QPlatformSurfaceEventSurfaceEventTypeEnum): untyped = 0
template SurfaceAboutToBeDestroyed*(_: type QPlatformSurfaceEventSurfaceEventTypeEnum): untyped = 1


type QContextMenuEventReasonEnum* = distinct cint
template Mouse*(_: type QContextMenuEventReasonEnum): untyped = 0
template Keyboard*(_: type QContextMenuEventReasonEnum): untyped = 1
template Other*(_: type QContextMenuEventReasonEnum): untyped = 2


type QInputMethodEventAttributeTypeEnum* = distinct cint
template TextFormat*(_: type QInputMethodEventAttributeTypeEnum): untyped = 0
template Cursor*(_: type QInputMethodEventAttributeTypeEnum): untyped = 1
template Language*(_: type QInputMethodEventAttributeTypeEnum): untyped = 2
template Ruby*(_: type QInputMethodEventAttributeTypeEnum): untyped = 3
template Selection*(_: type QInputMethodEventAttributeTypeEnum): untyped = 4


type QTouchEventTouchPointInfoFlagEnum* = distinct cint
template Pen*(_: type QTouchEventTouchPointInfoFlagEnum): untyped = 1
template Token*(_: type QTouchEventTouchPointInfoFlagEnum): untyped = 2


type QScrollEventScrollStateEnum* = distinct cint
template ScrollStarted*(_: type QScrollEventScrollStateEnum): untyped = 0
template ScrollUpdated*(_: type QScrollEventScrollStateEnum): untyped = 1
template ScrollFinished*(_: type QScrollEventScrollStateEnum): untyped = 2


import ./gen_qevent_types
export gen_qevent_types

import
  ../QtCore/gen_qcoreevent,
  ../QtCore/gen_qfile_types,
  ../QtCore/gen_qmimedata_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qkeysequence_types,
  ./gen_qregion_types,
  ./gen_qscreen_types,
  ./gen_qtouchdevice_types,
  ./gen_qvector2d_types,
  ./gen_qwindow_types
export
  gen_qcoreevent,
  gen_qfile_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qkeysequence_types,
  gen_qregion_types,
  gen_qscreen_types,
  gen_qtouchdevice_types,
  gen_qvector2d_types,
  gen_qwindow_types

type cQInputEvent*{.exportc: "QInputEvent", incompleteStruct.} = object
type cQEnterEvent*{.exportc: "QEnterEvent", incompleteStruct.} = object
type cQMouseEvent*{.exportc: "QMouseEvent", incompleteStruct.} = object
type cQHoverEvent*{.exportc: "QHoverEvent", incompleteStruct.} = object
type cQWheelEvent*{.exportc: "QWheelEvent", incompleteStruct.} = object
type cQTabletEvent*{.exportc: "QTabletEvent", incompleteStruct.} = object
type cQNativeGestureEvent*{.exportc: "QNativeGestureEvent", incompleteStruct.} = object
type cQKeyEvent*{.exportc: "QKeyEvent", incompleteStruct.} = object
type cQFocusEvent*{.exportc: "QFocusEvent", incompleteStruct.} = object
type cQPaintEvent*{.exportc: "QPaintEvent", incompleteStruct.} = object
type cQMoveEvent*{.exportc: "QMoveEvent", incompleteStruct.} = object
type cQExposeEvent*{.exportc: "QExposeEvent", incompleteStruct.} = object
type cQPlatformSurfaceEvent*{.exportc: "QPlatformSurfaceEvent", incompleteStruct.} = object
type cQResizeEvent*{.exportc: "QResizeEvent", incompleteStruct.} = object
type cQCloseEvent*{.exportc: "QCloseEvent", incompleteStruct.} = object
type cQIconDragEvent*{.exportc: "QIconDragEvent", incompleteStruct.} = object
type cQShowEvent*{.exportc: "QShowEvent", incompleteStruct.} = object
type cQHideEvent*{.exportc: "QHideEvent", incompleteStruct.} = object
type cQContextMenuEvent*{.exportc: "QContextMenuEvent", incompleteStruct.} = object
type cQInputMethodEvent*{.exportc: "QInputMethodEvent", incompleteStruct.} = object
type cQInputMethodQueryEvent*{.exportc: "QInputMethodQueryEvent", incompleteStruct.} = object
type cQDropEvent*{.exportc: "QDropEvent", incompleteStruct.} = object
type cQDragMoveEvent*{.exportc: "QDragMoveEvent", incompleteStruct.} = object
type cQDragEnterEvent*{.exportc: "QDragEnterEvent", incompleteStruct.} = object
type cQDragLeaveEvent*{.exportc: "QDragLeaveEvent", incompleteStruct.} = object
type cQHelpEvent*{.exportc: "QHelpEvent", incompleteStruct.} = object
type cQStatusTipEvent*{.exportc: "QStatusTipEvent", incompleteStruct.} = object
type cQWhatsThisClickedEvent*{.exportc: "QWhatsThisClickedEvent", incompleteStruct.} = object
type cQActionEvent*{.exportc: "QActionEvent", incompleteStruct.} = object
type cQFileOpenEvent*{.exportc: "QFileOpenEvent", incompleteStruct.} = object
type cQToolBarChangeEvent*{.exportc: "QToolBarChangeEvent", incompleteStruct.} = object
type cQShortcutEvent*{.exportc: "QShortcutEvent", incompleteStruct.} = object
type cQWindowStateChangeEvent*{.exportc: "QWindowStateChangeEvent", incompleteStruct.} = object
type cQPointingDeviceUniqueId*{.exportc: "QPointingDeviceUniqueId", incompleteStruct.} = object
type cQTouchEvent*{.exportc: "QTouchEvent", incompleteStruct.} = object
type cQScrollPrepareEvent*{.exportc: "QScrollPrepareEvent", incompleteStruct.} = object
type cQScrollEvent*{.exportc: "QScrollEvent", incompleteStruct.} = object
type cQScreenOrientationChangeEvent*{.exportc: "QScreenOrientationChangeEvent", incompleteStruct.} = object
type cQApplicationStateChangeEvent*{.exportc: "QApplicationStateChangeEvent", incompleteStruct.} = object
type cQInputMethodEventAttribute*{.exportc: "QInputMethodEvent__Attribute", incompleteStruct.} = object
type cQTouchEventTouchPoint*{.exportc: "QTouchEvent__TouchPoint", incompleteStruct.} = object

proc fcQInputEvent_modifiers(self: pointer): cint {.importc: "QInputEvent_modifiers".}
proc fcQInputEvent_setModifiers(self: pointer, amodifiers: cint): void {.importc: "QInputEvent_setModifiers".}
proc fcQInputEvent_timestamp(self: pointer): culong {.importc: "QInputEvent_timestamp".}
proc fcQInputEvent_setTimestamp(self: pointer, atimestamp: culong): void {.importc: "QInputEvent_setTimestamp".}
proc fcQInputEvent_new(typeVal: cint): ptr cQInputEvent {.importc: "QInputEvent_new".}
proc fcQInputEvent_new2(param1: pointer): ptr cQInputEvent {.importc: "QInputEvent_new2".}
proc fcQInputEvent_new3(typeVal: cint, modifiers: cint): ptr cQInputEvent {.importc: "QInputEvent_new3".}
proc fcQEnterEvent_pos(self: pointer): pointer {.importc: "QEnterEvent_pos".}
proc fcQEnterEvent_globalPos(self: pointer): pointer {.importc: "QEnterEvent_globalPos".}
proc fcQEnterEvent_x(self: pointer): cint {.importc: "QEnterEvent_x".}
proc fcQEnterEvent_y(self: pointer): cint {.importc: "QEnterEvent_y".}
proc fcQEnterEvent_globalX(self: pointer): cint {.importc: "QEnterEvent_globalX".}
proc fcQEnterEvent_globalY(self: pointer): cint {.importc: "QEnterEvent_globalY".}
proc fcQEnterEvent_localPos(self: pointer): pointer {.importc: "QEnterEvent_localPos".}
proc fcQEnterEvent_windowPos(self: pointer): pointer {.importc: "QEnterEvent_windowPos".}
proc fcQEnterEvent_screenPos(self: pointer): pointer {.importc: "QEnterEvent_screenPos".}
proc fcQEnterEvent_new(localPos: pointer, windowPos: pointer, screenPos: pointer): ptr cQEnterEvent {.importc: "QEnterEvent_new".}
proc fcQEnterEvent_new2(param1: pointer): ptr cQEnterEvent {.importc: "QEnterEvent_new2".}
proc fcQMouseEvent_pos(self: pointer): pointer {.importc: "QMouseEvent_pos".}
proc fcQMouseEvent_globalPos(self: pointer): pointer {.importc: "QMouseEvent_globalPos".}
proc fcQMouseEvent_x(self: pointer): cint {.importc: "QMouseEvent_x".}
proc fcQMouseEvent_y(self: pointer): cint {.importc: "QMouseEvent_y".}
proc fcQMouseEvent_globalX(self: pointer): cint {.importc: "QMouseEvent_globalX".}
proc fcQMouseEvent_globalY(self: pointer): cint {.importc: "QMouseEvent_globalY".}
proc fcQMouseEvent_localPos(self: pointer): pointer {.importc: "QMouseEvent_localPos".}
proc fcQMouseEvent_windowPos(self: pointer): pointer {.importc: "QMouseEvent_windowPos".}
proc fcQMouseEvent_screenPos(self: pointer): pointer {.importc: "QMouseEvent_screenPos".}
proc fcQMouseEvent_button(self: pointer): cint {.importc: "QMouseEvent_button".}
proc fcQMouseEvent_buttons(self: pointer): cint {.importc: "QMouseEvent_buttons".}
proc fcQMouseEvent_setLocalPos(self: pointer, localPosition: pointer): void {.importc: "QMouseEvent_setLocalPos".}
proc fcQMouseEvent_source(self: pointer): cint {.importc: "QMouseEvent_source".}
proc fcQMouseEvent_flags(self: pointer): cint {.importc: "QMouseEvent_flags".}
proc fcQMouseEvent_new(typeVal: cint, localPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new".}
proc fcQMouseEvent_new2(typeVal: cint, localPos: pointer, screenPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new2".}
proc fcQMouseEvent_new3(typeVal: cint, localPos: pointer, windowPos: pointer, screenPos: pointer, button: cint, buttons: cint, modifiers: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new3".}
proc fcQMouseEvent_new4(typeVal: cint, localPos: pointer, windowPos: pointer, screenPos: pointer, button: cint, buttons: cint, modifiers: cint, source: cint): ptr cQMouseEvent {.importc: "QMouseEvent_new4".}
proc fcQMouseEvent_new5(param1: pointer): ptr cQMouseEvent {.importc: "QMouseEvent_new5".}
proc fcQHoverEvent_pos(self: pointer): pointer {.importc: "QHoverEvent_pos".}
proc fcQHoverEvent_oldPos(self: pointer): pointer {.importc: "QHoverEvent_oldPos".}
proc fcQHoverEvent_posF(self: pointer): pointer {.importc: "QHoverEvent_posF".}
proc fcQHoverEvent_oldPosF(self: pointer): pointer {.importc: "QHoverEvent_oldPosF".}
proc fcQHoverEvent_new(typeVal: cint, pos: pointer, oldPos: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new".}
proc fcQHoverEvent_new2(param1: pointer): ptr cQHoverEvent {.importc: "QHoverEvent_new2".}
proc fcQHoverEvent_new3(typeVal: cint, pos: pointer, oldPos: pointer, modifiers: cint): ptr cQHoverEvent {.importc: "QHoverEvent_new3".}
proc fcQWheelEvent_pixelDelta(self: pointer): pointer {.importc: "QWheelEvent_pixelDelta".}
proc fcQWheelEvent_angleDelta(self: pointer): pointer {.importc: "QWheelEvent_angleDelta".}
proc fcQWheelEvent_delta(self: pointer): cint {.importc: "QWheelEvent_delta".}
proc fcQWheelEvent_orientation(self: pointer): cint {.importc: "QWheelEvent_orientation".}
proc fcQWheelEvent_pos(self: pointer): pointer {.importc: "QWheelEvent_pos".}
proc fcQWheelEvent_globalPos(self: pointer): pointer {.importc: "QWheelEvent_globalPos".}
proc fcQWheelEvent_x(self: pointer): cint {.importc: "QWheelEvent_x".}
proc fcQWheelEvent_y(self: pointer): cint {.importc: "QWheelEvent_y".}
proc fcQWheelEvent_globalX(self: pointer): cint {.importc: "QWheelEvent_globalX".}
proc fcQWheelEvent_globalY(self: pointer): cint {.importc: "QWheelEvent_globalY".}
proc fcQWheelEvent_posF(self: pointer): pointer {.importc: "QWheelEvent_posF".}
proc fcQWheelEvent_globalPosF(self: pointer): pointer {.importc: "QWheelEvent_globalPosF".}
proc fcQWheelEvent_position(self: pointer): pointer {.importc: "QWheelEvent_position".}
proc fcQWheelEvent_globalPosition(self: pointer): pointer {.importc: "QWheelEvent_globalPosition".}
proc fcQWheelEvent_buttons(self: pointer): cint {.importc: "QWheelEvent_buttons".}
proc fcQWheelEvent_phase(self: pointer): cint {.importc: "QWheelEvent_phase".}
proc fcQWheelEvent_inverted(self: pointer): bool {.importc: "QWheelEvent_inverted".}
proc fcQWheelEvent_source(self: pointer): cint {.importc: "QWheelEvent_source".}
proc fcQWheelEvent_new(pos: pointer, delta: cint, buttons: cint, modifiers: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new".}
proc fcQWheelEvent_new2(pos: pointer, globalPos: pointer, delta: cint, buttons: cint, modifiers: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new2".}
proc fcQWheelEvent_new3(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, qt4Delta: cint, qt4Orientation: cint, buttons: cint, modifiers: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new3".}
proc fcQWheelEvent_new4(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, qt4Delta: cint, qt4Orientation: cint, buttons: cint, modifiers: cint, phase: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new4".}
proc fcQWheelEvent_new5(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, qt4Delta: cint, qt4Orientation: cint, buttons: cint, modifiers: cint, phase: cint, source: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new5".}
proc fcQWheelEvent_new6(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, qt4Delta: cint, qt4Orientation: cint, buttons: cint, modifiers: cint, phase: cint, source: cint, inverted: bool): ptr cQWheelEvent {.importc: "QWheelEvent_new6".}
proc fcQWheelEvent_new7(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool): ptr cQWheelEvent {.importc: "QWheelEvent_new7".}
proc fcQWheelEvent_new8(param1: pointer): ptr cQWheelEvent {.importc: "QWheelEvent_new8".}
proc fcQWheelEvent_new9(pos: pointer, delta: cint, buttons: cint, modifiers: cint, orient: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new9".}
proc fcQWheelEvent_new10(pos: pointer, globalPos: pointer, delta: cint, buttons: cint, modifiers: cint, orient: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new10".}
proc fcQWheelEvent_new11(pos: pointer, globalPos: pointer, pixelDelta: pointer, angleDelta: pointer, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint): ptr cQWheelEvent {.importc: "QWheelEvent_new11".}
proc fcQTabletEvent_pos(self: pointer): pointer {.importc: "QTabletEvent_pos".}
proc fcQTabletEvent_globalPos(self: pointer): pointer {.importc: "QTabletEvent_globalPos".}
proc fcQTabletEvent_posF(self: pointer): pointer {.importc: "QTabletEvent_posF".}
proc fcQTabletEvent_globalPosF(self: pointer): pointer {.importc: "QTabletEvent_globalPosF".}
proc fcQTabletEvent_x(self: pointer): cint {.importc: "QTabletEvent_x".}
proc fcQTabletEvent_y(self: pointer): cint {.importc: "QTabletEvent_y".}
proc fcQTabletEvent_globalX(self: pointer): cint {.importc: "QTabletEvent_globalX".}
proc fcQTabletEvent_globalY(self: pointer): cint {.importc: "QTabletEvent_globalY".}
proc fcQTabletEvent_hiResGlobalX(self: pointer): float64 {.importc: "QTabletEvent_hiResGlobalX".}
proc fcQTabletEvent_hiResGlobalY(self: pointer): float64 {.importc: "QTabletEvent_hiResGlobalY".}
proc fcQTabletEvent_device(self: pointer): cint {.importc: "QTabletEvent_device".}
proc fcQTabletEvent_deviceType(self: pointer): cint {.importc: "QTabletEvent_deviceType".}
proc fcQTabletEvent_pointerType(self: pointer): cint {.importc: "QTabletEvent_pointerType".}
proc fcQTabletEvent_uniqueId(self: pointer): clonglong {.importc: "QTabletEvent_uniqueId".}
proc fcQTabletEvent_pressure(self: pointer): float64 {.importc: "QTabletEvent_pressure".}
proc fcQTabletEvent_z(self: pointer): cint {.importc: "QTabletEvent_z".}
proc fcQTabletEvent_tangentialPressure(self: pointer): float64 {.importc: "QTabletEvent_tangentialPressure".}
proc fcQTabletEvent_rotation(self: pointer): float64 {.importc: "QTabletEvent_rotation".}
proc fcQTabletEvent_xTilt(self: pointer): cint {.importc: "QTabletEvent_xTilt".}
proc fcQTabletEvent_yTilt(self: pointer): cint {.importc: "QTabletEvent_yTilt".}
proc fcQTabletEvent_button(self: pointer): cint {.importc: "QTabletEvent_button".}
proc fcQTabletEvent_buttons(self: pointer): cint {.importc: "QTabletEvent_buttons".}
proc fcQTabletEvent_new(t: cint, pos: pointer, globalPos: pointer, device: cint, pointerType: cint, pressure: float64, xTilt: cint, yTilt: cint, tangentialPressure: float64, rotation: float64, z: cint, keyState: cint, uniqueID: clonglong): ptr cQTabletEvent {.importc: "QTabletEvent_new".}
proc fcQTabletEvent_new2(t: cint, pos: pointer, globalPos: pointer, device: cint, pointerType: cint, pressure: float64, xTilt: cint, yTilt: cint, tangentialPressure: float64, rotation: float64, z: cint, keyState: cint, uniqueID: clonglong, button: cint, buttons: cint): ptr cQTabletEvent {.importc: "QTabletEvent_new2".}
proc fcQTabletEvent_new3(param1: pointer): ptr cQTabletEvent {.importc: "QTabletEvent_new3".}
proc fcQTabletEvent_staticMetaObject(): pointer {.importc: "QTabletEvent_staticMetaObject".}
proc fcQNativeGestureEvent_gestureType(self: pointer): cint {.importc: "QNativeGestureEvent_gestureType".}
proc fcQNativeGestureEvent_value(self: pointer): float64 {.importc: "QNativeGestureEvent_value".}
proc fcQNativeGestureEvent_pos(self: pointer): pointer {.importc: "QNativeGestureEvent_pos".}
proc fcQNativeGestureEvent_globalPos(self: pointer): pointer {.importc: "QNativeGestureEvent_globalPos".}
proc fcQNativeGestureEvent_localPos(self: pointer): pointer {.importc: "QNativeGestureEvent_localPos".}
proc fcQNativeGestureEvent_windowPos(self: pointer): pointer {.importc: "QNativeGestureEvent_windowPos".}
proc fcQNativeGestureEvent_screenPos(self: pointer): pointer {.importc: "QNativeGestureEvent_screenPos".}
proc fcQNativeGestureEvent_device(self: pointer): pointer {.importc: "QNativeGestureEvent_device".}
proc fcQNativeGestureEvent_new(typeVal: cint, localPos: pointer, windowPos: pointer, screenPos: pointer, value: float64, sequenceId: culong, intArgument: culonglong): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new".}
proc fcQNativeGestureEvent_new2(typeVal: cint, dev: pointer, localPos: pointer, windowPos: pointer, screenPos: pointer, value: float64, sequenceId: culong, intArgument: culonglong): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new2".}
proc fcQNativeGestureEvent_new3(param1: pointer): ptr cQNativeGestureEvent {.importc: "QNativeGestureEvent_new3".}
proc fcQKeyEvent_key(self: pointer): cint {.importc: "QKeyEvent_key".}
proc fcQKeyEvent_matches(self: pointer, key: cint): bool {.importc: "QKeyEvent_matches".}
proc fcQKeyEvent_modifiers(self: pointer): cint {.importc: "QKeyEvent_modifiers".}
proc fcQKeyEvent_text(self: pointer): struct_miqt_string {.importc: "QKeyEvent_text".}
proc fcQKeyEvent_isAutoRepeat(self: pointer): bool {.importc: "QKeyEvent_isAutoRepeat".}
proc fcQKeyEvent_count(self: pointer): cint {.importc: "QKeyEvent_count".}
proc fcQKeyEvent_nativeScanCode(self: pointer): cuint {.importc: "QKeyEvent_nativeScanCode".}
proc fcQKeyEvent_nativeVirtualKey(self: pointer): cuint {.importc: "QKeyEvent_nativeVirtualKey".}
proc fcQKeyEvent_nativeModifiers(self: pointer): cuint {.importc: "QKeyEvent_nativeModifiers".}
proc fcQKeyEvent_new(typeVal: cint, key: cint, modifiers: cint): ptr cQKeyEvent {.importc: "QKeyEvent_new".}
proc fcQKeyEvent_new2(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint): ptr cQKeyEvent {.importc: "QKeyEvent_new2".}
proc fcQKeyEvent_new3(param1: pointer): ptr cQKeyEvent {.importc: "QKeyEvent_new3".}
proc fcQKeyEvent_new4(typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string): ptr cQKeyEvent {.importc: "QKeyEvent_new4".}
proc fcQKeyEvent_new5(typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string, autorep: bool): ptr cQKeyEvent {.importc: "QKeyEvent_new5".}
proc fcQKeyEvent_new6(typeVal: cint, key: cint, modifiers: cint, text: struct_miqt_string, autorep: bool, count: cushort): ptr cQKeyEvent {.importc: "QKeyEvent_new6".}
proc fcQKeyEvent_new7(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string): ptr cQKeyEvent {.importc: "QKeyEvent_new7".}
proc fcQKeyEvent_new8(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool): ptr cQKeyEvent {.importc: "QKeyEvent_new8".}
proc fcQKeyEvent_new9(typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: struct_miqt_string, autorep: bool, count: cushort): ptr cQKeyEvent {.importc: "QKeyEvent_new9".}
proc fcQFocusEvent_gotFocus(self: pointer): bool {.importc: "QFocusEvent_gotFocus".}
proc fcQFocusEvent_lostFocus(self: pointer): bool {.importc: "QFocusEvent_lostFocus".}
proc fcQFocusEvent_reason(self: pointer): cint {.importc: "QFocusEvent_reason".}
proc fcQFocusEvent_new(typeVal: cint): ptr cQFocusEvent {.importc: "QFocusEvent_new".}
proc fcQFocusEvent_new2(param1: pointer): ptr cQFocusEvent {.importc: "QFocusEvent_new2".}
proc fcQFocusEvent_new3(typeVal: cint, reason: cint): ptr cQFocusEvent {.importc: "QFocusEvent_new3".}
proc fcQPaintEvent_rect(self: pointer): pointer {.importc: "QPaintEvent_rect".}
proc fcQPaintEvent_region(self: pointer): pointer {.importc: "QPaintEvent_region".}
proc fcQPaintEvent_new(paintRegion: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new".}
proc fcQPaintEvent_new2(paintRect: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new2".}
proc fcQPaintEvent_new3(param1: pointer): ptr cQPaintEvent {.importc: "QPaintEvent_new3".}
proc fcQMoveEvent_pos(self: pointer): pointer {.importc: "QMoveEvent_pos".}
proc fcQMoveEvent_oldPos(self: pointer): pointer {.importc: "QMoveEvent_oldPos".}
proc fcQMoveEvent_new(pos: pointer, oldPos: pointer): ptr cQMoveEvent {.importc: "QMoveEvent_new".}
proc fcQMoveEvent_new2(param1: pointer): ptr cQMoveEvent {.importc: "QMoveEvent_new2".}
proc fcQExposeEvent_region(self: pointer): pointer {.importc: "QExposeEvent_region".}
proc fcQExposeEvent_new(rgn: pointer): ptr cQExposeEvent {.importc: "QExposeEvent_new".}
proc fcQExposeEvent_new2(param1: pointer): ptr cQExposeEvent {.importc: "QExposeEvent_new2".}
proc fcQPlatformSurfaceEvent_surfaceEventType(self: pointer): cint {.importc: "QPlatformSurfaceEvent_surfaceEventType".}
proc fcQPlatformSurfaceEvent_new(surfaceEventType: cint): ptr cQPlatformSurfaceEvent {.importc: "QPlatformSurfaceEvent_new".}
proc fcQPlatformSurfaceEvent_new2(param1: pointer): ptr cQPlatformSurfaceEvent {.importc: "QPlatformSurfaceEvent_new2".}
proc fcQResizeEvent_size(self: pointer): pointer {.importc: "QResizeEvent_size".}
proc fcQResizeEvent_oldSize(self: pointer): pointer {.importc: "QResizeEvent_oldSize".}
proc fcQResizeEvent_new(size: pointer, oldSize: pointer): ptr cQResizeEvent {.importc: "QResizeEvent_new".}
proc fcQResizeEvent_new2(param1: pointer): ptr cQResizeEvent {.importc: "QResizeEvent_new2".}
proc fcQCloseEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QCloseEvent_operatorAssign".}
proc fcQCloseEvent_new(): ptr cQCloseEvent {.importc: "QCloseEvent_new".}
proc fcQCloseEvent_new2(param1: pointer): ptr cQCloseEvent {.importc: "QCloseEvent_new2".}
proc fcQIconDragEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QIconDragEvent_operatorAssign".}
proc fcQIconDragEvent_new(): ptr cQIconDragEvent {.importc: "QIconDragEvent_new".}
proc fcQIconDragEvent_new2(param1: pointer): ptr cQIconDragEvent {.importc: "QIconDragEvent_new2".}
proc fcQShowEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QShowEvent_operatorAssign".}
proc fcQShowEvent_new(): ptr cQShowEvent {.importc: "QShowEvent_new".}
proc fcQShowEvent_new2(param1: pointer): ptr cQShowEvent {.importc: "QShowEvent_new2".}
proc fcQHideEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QHideEvent_operatorAssign".}
proc fcQHideEvent_new(): ptr cQHideEvent {.importc: "QHideEvent_new".}
proc fcQHideEvent_new2(param1: pointer): ptr cQHideEvent {.importc: "QHideEvent_new2".}
proc fcQContextMenuEvent_x(self: pointer): cint {.importc: "QContextMenuEvent_x".}
proc fcQContextMenuEvent_y(self: pointer): cint {.importc: "QContextMenuEvent_y".}
proc fcQContextMenuEvent_globalX(self: pointer): cint {.importc: "QContextMenuEvent_globalX".}
proc fcQContextMenuEvent_globalY(self: pointer): cint {.importc: "QContextMenuEvent_globalY".}
proc fcQContextMenuEvent_pos(self: pointer): pointer {.importc: "QContextMenuEvent_pos".}
proc fcQContextMenuEvent_globalPos(self: pointer): pointer {.importc: "QContextMenuEvent_globalPos".}
proc fcQContextMenuEvent_reason(self: pointer): cint {.importc: "QContextMenuEvent_reason".}
proc fcQContextMenuEvent_new(reason: cint, pos: pointer, globalPos: pointer, modifiers: cint): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new".}
proc fcQContextMenuEvent_new2(reason: cint, pos: pointer, globalPos: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new2".}
proc fcQContextMenuEvent_new3(reason: cint, pos: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new3".}
proc fcQContextMenuEvent_new4(param1: pointer): ptr cQContextMenuEvent {.importc: "QContextMenuEvent_new4".}
proc fcQInputMethodEvent_setCommitString(self: pointer, commitString: struct_miqt_string): void {.importc: "QInputMethodEvent_setCommitString".}
proc fcQInputMethodEvent_attributes(self: pointer): struct_miqt_array {.importc: "QInputMethodEvent_attributes".}
proc fcQInputMethodEvent_preeditString(self: pointer): struct_miqt_string {.importc: "QInputMethodEvent_preeditString".}
proc fcQInputMethodEvent_commitString(self: pointer): struct_miqt_string {.importc: "QInputMethodEvent_commitString".}
proc fcQInputMethodEvent_replacementStart(self: pointer): cint {.importc: "QInputMethodEvent_replacementStart".}
proc fcQInputMethodEvent_replacementLength(self: pointer): cint {.importc: "QInputMethodEvent_replacementLength".}
proc fcQInputMethodEvent_setCommitString2(self: pointer, commitString: struct_miqt_string, replaceFrom: cint): void {.importc: "QInputMethodEvent_setCommitString2".}
proc fcQInputMethodEvent_setCommitString3(self: pointer, commitString: struct_miqt_string, replaceFrom: cint, replaceLength: cint): void {.importc: "QInputMethodEvent_setCommitString3".}
proc fcQInputMethodEvent_new(): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new".}
proc fcQInputMethodEvent_new2(preeditText: struct_miqt_string, attributes: struct_miqt_array): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new2".}
proc fcQInputMethodEvent_new3(other: pointer): ptr cQInputMethodEvent {.importc: "QInputMethodEvent_new3".}
proc fcQInputMethodQueryEvent_queries(self: pointer): cint {.importc: "QInputMethodQueryEvent_queries".}
proc fcQInputMethodQueryEvent_setValue(self: pointer, query: cint, value: pointer): void {.importc: "QInputMethodQueryEvent_setValue".}
proc fcQInputMethodQueryEvent_value(self: pointer, query: cint): pointer {.importc: "QInputMethodQueryEvent_value".}
proc fcQInputMethodQueryEvent_new(queries: cint): ptr cQInputMethodQueryEvent {.importc: "QInputMethodQueryEvent_new".}
proc fcQInputMethodQueryEvent_new2(param1: pointer): ptr cQInputMethodQueryEvent {.importc: "QInputMethodQueryEvent_new2".}
proc fcQDropEvent_pos(self: pointer): pointer {.importc: "QDropEvent_pos".}
proc fcQDropEvent_posF(self: pointer): pointer {.importc: "QDropEvent_posF".}
proc fcQDropEvent_mouseButtons(self: pointer): cint {.importc: "QDropEvent_mouseButtons".}
proc fcQDropEvent_keyboardModifiers(self: pointer): cint {.importc: "QDropEvent_keyboardModifiers".}
proc fcQDropEvent_possibleActions(self: pointer): cint {.importc: "QDropEvent_possibleActions".}
proc fcQDropEvent_proposedAction(self: pointer): cint {.importc: "QDropEvent_proposedAction".}
proc fcQDropEvent_acceptProposedAction(self: pointer): void {.importc: "QDropEvent_acceptProposedAction".}
proc fcQDropEvent_dropAction(self: pointer): cint {.importc: "QDropEvent_dropAction".}
proc fcQDropEvent_setDropAction(self: pointer, action: cint): void {.importc: "QDropEvent_setDropAction".}
proc fcQDropEvent_source(self: pointer): pointer {.importc: "QDropEvent_source".}
proc fcQDropEvent_mimeData(self: pointer): pointer {.importc: "QDropEvent_mimeData".}
proc fcQDropEvent_new(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDropEvent {.importc: "QDropEvent_new".}
proc fcQDropEvent_new2(param1: pointer): ptr cQDropEvent {.importc: "QDropEvent_new2".}
proc fcQDropEvent_new3(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint, typeVal: cint): ptr cQDropEvent {.importc: "QDropEvent_new3".}
proc fcQDragMoveEvent_answerRect(self: pointer): pointer {.importc: "QDragMoveEvent_answerRect".}
proc fcQDragMoveEvent_accept(self: pointer): void {.importc: "QDragMoveEvent_accept".}
proc fcQDragMoveEvent_ignore(self: pointer): void {.importc: "QDragMoveEvent_ignore".}
proc fcQDragMoveEvent_acceptWithQRect(self: pointer, r: pointer): void {.importc: "QDragMoveEvent_acceptWithQRect".}
proc fcQDragMoveEvent_ignoreWithQRect(self: pointer, r: pointer): void {.importc: "QDragMoveEvent_ignoreWithQRect".}
proc fcQDragMoveEvent_new(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new".}
proc fcQDragMoveEvent_new2(param1: pointer): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new2".}
proc fcQDragMoveEvent_new3(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint, typeVal: cint): ptr cQDragMoveEvent {.importc: "QDragMoveEvent_new3".}
proc fcQDragEnterEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QDragEnterEvent_operatorAssign".}
proc fcQDragEnterEvent_new(pos: pointer, actions: cint, data: pointer, buttons: cint, modifiers: cint): ptr cQDragEnterEvent {.importc: "QDragEnterEvent_new".}
proc fcQDragEnterEvent_new2(param1: pointer): ptr cQDragEnterEvent {.importc: "QDragEnterEvent_new2".}
proc fcQDragLeaveEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QDragLeaveEvent_operatorAssign".}
proc fcQDragLeaveEvent_new(): ptr cQDragLeaveEvent {.importc: "QDragLeaveEvent_new".}
proc fcQDragLeaveEvent_new2(param1: pointer): ptr cQDragLeaveEvent {.importc: "QDragLeaveEvent_new2".}
proc fcQHelpEvent_x(self: pointer): cint {.importc: "QHelpEvent_x".}
proc fcQHelpEvent_y(self: pointer): cint {.importc: "QHelpEvent_y".}
proc fcQHelpEvent_globalX(self: pointer): cint {.importc: "QHelpEvent_globalX".}
proc fcQHelpEvent_globalY(self: pointer): cint {.importc: "QHelpEvent_globalY".}
proc fcQHelpEvent_pos(self: pointer): pointer {.importc: "QHelpEvent_pos".}
proc fcQHelpEvent_globalPos(self: pointer): pointer {.importc: "QHelpEvent_globalPos".}
proc fcQHelpEvent_new(typeVal: cint, pos: pointer, globalPos: pointer): ptr cQHelpEvent {.importc: "QHelpEvent_new".}
proc fcQHelpEvent_new2(param1: pointer): ptr cQHelpEvent {.importc: "QHelpEvent_new2".}
proc fcQStatusTipEvent_tip(self: pointer): struct_miqt_string {.importc: "QStatusTipEvent_tip".}
proc fcQStatusTipEvent_new(tip: struct_miqt_string): ptr cQStatusTipEvent {.importc: "QStatusTipEvent_new".}
proc fcQStatusTipEvent_new2(param1: pointer): ptr cQStatusTipEvent {.importc: "QStatusTipEvent_new2".}
proc fcQWhatsThisClickedEvent_href(self: pointer): struct_miqt_string {.importc: "QWhatsThisClickedEvent_href".}
proc fcQWhatsThisClickedEvent_new(href: struct_miqt_string): ptr cQWhatsThisClickedEvent {.importc: "QWhatsThisClickedEvent_new".}
proc fcQWhatsThisClickedEvent_new2(param1: pointer): ptr cQWhatsThisClickedEvent {.importc: "QWhatsThisClickedEvent_new2".}
proc fcQActionEvent_operatorAssign(self: pointer, param1: pointer): void {.importc: "QActionEvent_operatorAssign".}
proc fcQActionEvent_new(typeVal: cint, action: ptr cQAction): ptr cQActionEvent {.importc: "QActionEvent_new".}
proc fcQActionEvent_new2(param1: pointer): ptr cQActionEvent {.importc: "QActionEvent_new2".}
proc fcQActionEvent_new3(typeVal: cint, action: ptr cQAction, before: ptr cQAction): ptr cQActionEvent {.importc: "QActionEvent_new3".}
proc fcQFileOpenEvent_file(self: pointer): struct_miqt_string {.importc: "QFileOpenEvent_file".}
proc fcQFileOpenEvent_url(self: pointer): pointer {.importc: "QFileOpenEvent_url".}
proc fcQFileOpenEvent_openFile(self: pointer, file: pointer, flags: cint): bool {.importc: "QFileOpenEvent_openFile".}
proc fcQFileOpenEvent_new(file: struct_miqt_string): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new".}
proc fcQFileOpenEvent_new2(url: pointer): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new2".}
proc fcQFileOpenEvent_new3(param1: pointer): ptr cQFileOpenEvent {.importc: "QFileOpenEvent_new3".}
proc fcQToolBarChangeEvent_toggle(self: pointer): bool {.importc: "QToolBarChangeEvent_toggle".}
proc fcQToolBarChangeEvent_new(t: bool): ptr cQToolBarChangeEvent {.importc: "QToolBarChangeEvent_new".}
proc fcQToolBarChangeEvent_new2(param1: pointer): ptr cQToolBarChangeEvent {.importc: "QToolBarChangeEvent_new2".}
proc fcQShortcutEvent_key(self: pointer): pointer {.importc: "QShortcutEvent_key".}
proc fcQShortcutEvent_shortcutId(self: pointer): cint {.importc: "QShortcutEvent_shortcutId".}
proc fcQShortcutEvent_isAmbiguous(self: pointer): bool {.importc: "QShortcutEvent_isAmbiguous".}
proc fcQShortcutEvent_new(key: pointer, id: cint): ptr cQShortcutEvent {.importc: "QShortcutEvent_new".}
proc fcQShortcutEvent_new2(param1: pointer): ptr cQShortcutEvent {.importc: "QShortcutEvent_new2".}
proc fcQShortcutEvent_new3(key: pointer, id: cint, ambiguous: bool): ptr cQShortcutEvent {.importc: "QShortcutEvent_new3".}
proc fcQWindowStateChangeEvent_oldState(self: pointer): cint {.importc: "QWindowStateChangeEvent_oldState".}
proc fcQWindowStateChangeEvent_isOverride(self: pointer): bool {.importc: "QWindowStateChangeEvent_isOverride".}
proc fcQWindowStateChangeEvent_new(aOldState: cint): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new".}
proc fcQWindowStateChangeEvent_new2(param1: pointer): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new2".}
proc fcQWindowStateChangeEvent_new3(aOldState: cint, isOverride: bool): ptr cQWindowStateChangeEvent {.importc: "QWindowStateChangeEvent_new3".}
proc fcQPointingDeviceUniqueId_fromNumericId(id: clonglong): pointer {.importc: "QPointingDeviceUniqueId_fromNumericId".}
proc fcQPointingDeviceUniqueId_isValid(self: pointer): bool {.importc: "QPointingDeviceUniqueId_isValid".}
proc fcQPointingDeviceUniqueId_numericId(self: pointer): clonglong {.importc: "QPointingDeviceUniqueId_numericId".}
proc fcQPointingDeviceUniqueId_new(): ptr cQPointingDeviceUniqueId {.importc: "QPointingDeviceUniqueId_new".}
proc fcQPointingDeviceUniqueId_new2(param1: pointer): ptr cQPointingDeviceUniqueId {.importc: "QPointingDeviceUniqueId_new2".}
proc fcQPointingDeviceUniqueId_staticMetaObject(): pointer {.importc: "QPointingDeviceUniqueId_staticMetaObject".}
proc fcQTouchEvent_window(self: pointer): pointer {.importc: "QTouchEvent_window".}
proc fcQTouchEvent_target(self: pointer): pointer {.importc: "QTouchEvent_target".}
proc fcQTouchEvent_touchPointStates(self: pointer): cint {.importc: "QTouchEvent_touchPointStates".}
proc fcQTouchEvent_touchPoints(self: pointer): struct_miqt_array {.importc: "QTouchEvent_touchPoints".}
proc fcQTouchEvent_device(self: pointer): pointer {.importc: "QTouchEvent_device".}
proc fcQTouchEvent_setWindow(self: pointer, awindow: pointer): void {.importc: "QTouchEvent_setWindow".}
proc fcQTouchEvent_setTarget(self: pointer, atarget: pointer): void {.importc: "QTouchEvent_setTarget".}
proc fcQTouchEvent_setTouchPointStates(self: pointer, aTouchPointStates: cint): void {.importc: "QTouchEvent_setTouchPointStates".}
proc fcQTouchEvent_setTouchPoints(self: pointer, atouchPoints: struct_miqt_array): void {.importc: "QTouchEvent_setTouchPoints".}
proc fcQTouchEvent_setDevice(self: pointer, adevice: pointer): void {.importc: "QTouchEvent_setDevice".}
proc fcQTouchEvent_new(eventType: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new".}
proc fcQTouchEvent_new2(param1: pointer): ptr cQTouchEvent {.importc: "QTouchEvent_new2".}
proc fcQTouchEvent_new3(eventType: cint, device: pointer): ptr cQTouchEvent {.importc: "QTouchEvent_new3".}
proc fcQTouchEvent_new4(eventType: cint, device: pointer, modifiers: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new4".}
proc fcQTouchEvent_new5(eventType: cint, device: pointer, modifiers: cint, touchPointStates: cint): ptr cQTouchEvent {.importc: "QTouchEvent_new5".}
proc fcQTouchEvent_new6(eventType: cint, device: pointer, modifiers: cint, touchPointStates: cint, touchPoints: struct_miqt_array): ptr cQTouchEvent {.importc: "QTouchEvent_new6".}
proc fcQScrollPrepareEvent_startPos(self: pointer): pointer {.importc: "QScrollPrepareEvent_startPos".}
proc fcQScrollPrepareEvent_viewportSize(self: pointer): pointer {.importc: "QScrollPrepareEvent_viewportSize".}
proc fcQScrollPrepareEvent_contentPosRange(self: pointer): pointer {.importc: "QScrollPrepareEvent_contentPosRange".}
proc fcQScrollPrepareEvent_contentPos(self: pointer): pointer {.importc: "QScrollPrepareEvent_contentPos".}
proc fcQScrollPrepareEvent_setViewportSize(self: pointer, size: pointer): void {.importc: "QScrollPrepareEvent_setViewportSize".}
proc fcQScrollPrepareEvent_setContentPosRange(self: pointer, rect: pointer): void {.importc: "QScrollPrepareEvent_setContentPosRange".}
proc fcQScrollPrepareEvent_setContentPos(self: pointer, pos: pointer): void {.importc: "QScrollPrepareEvent_setContentPos".}
proc fcQScrollPrepareEvent_new(startPos: pointer): ptr cQScrollPrepareEvent {.importc: "QScrollPrepareEvent_new".}
proc fcQScrollPrepareEvent_new2(param1: pointer): ptr cQScrollPrepareEvent {.importc: "QScrollPrepareEvent_new2".}
proc fcQScrollEvent_contentPos(self: pointer): pointer {.importc: "QScrollEvent_contentPos".}
proc fcQScrollEvent_overshootDistance(self: pointer): pointer {.importc: "QScrollEvent_overshootDistance".}
proc fcQScrollEvent_scrollState(self: pointer): cint {.importc: "QScrollEvent_scrollState".}
proc fcQScrollEvent_new(contentPos: pointer, overshoot: pointer, scrollState: cint): ptr cQScrollEvent {.importc: "QScrollEvent_new".}
proc fcQScrollEvent_new2(param1: pointer): ptr cQScrollEvent {.importc: "QScrollEvent_new2".}
proc fcQScreenOrientationChangeEvent_screen(self: pointer): pointer {.importc: "QScreenOrientationChangeEvent_screen".}
proc fcQScreenOrientationChangeEvent_orientation(self: pointer): cint {.importc: "QScreenOrientationChangeEvent_orientation".}
proc fcQScreenOrientationChangeEvent_new(screen: pointer, orientation: cint): ptr cQScreenOrientationChangeEvent {.importc: "QScreenOrientationChangeEvent_new".}
proc fcQScreenOrientationChangeEvent_new2(param1: pointer): ptr cQScreenOrientationChangeEvent {.importc: "QScreenOrientationChangeEvent_new2".}
proc fcQApplicationStateChangeEvent_applicationState(self: pointer): cint {.importc: "QApplicationStateChangeEvent_applicationState".}
proc fcQApplicationStateChangeEvent_new(state: cint): ptr cQApplicationStateChangeEvent {.importc: "QApplicationStateChangeEvent_new".}
proc fcQApplicationStateChangeEvent_new2(param1: pointer): ptr cQApplicationStateChangeEvent {.importc: "QApplicationStateChangeEvent_new2".}
proc fcQInputMethodEventAttribute_operatorAssign(self: pointer, param1: pointer): void {.importc: "QInputMethodEvent__Attribute_operatorAssign".}
proc fcQInputMethodEventAttribute_new(typ: cint, s: cint, l: cint, val: pointer): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new".}
proc fcQInputMethodEventAttribute_new2(typ: cint, s: cint, l: cint): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new2".}
proc fcQInputMethodEventAttribute_new3(param1: pointer): ptr cQInputMethodEventAttribute {.importc: "QInputMethodEvent__Attribute_new3".}
proc fcQTouchEventTouchPoint_operatorAssign(self: pointer, other: pointer): void {.importc: "QTouchEvent__TouchPoint_operatorAssign".}
proc fcQTouchEventTouchPoint_swap(self: pointer, other: pointer): void {.importc: "QTouchEvent__TouchPoint_swap".}
proc fcQTouchEventTouchPoint_id(self: pointer): cint {.importc: "QTouchEvent__TouchPoint_id".}
proc fcQTouchEventTouchPoint_uniqueId(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_uniqueId".}
proc fcQTouchEventTouchPoint_state(self: pointer): cint {.importc: "QTouchEvent__TouchPoint_state".}
proc fcQTouchEventTouchPoint_pos(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_pos".}
proc fcQTouchEventTouchPoint_startPos(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_startPos".}
proc fcQTouchEventTouchPoint_lastPos(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_lastPos".}
proc fcQTouchEventTouchPoint_scenePos(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_scenePos".}
proc fcQTouchEventTouchPoint_startScenePos(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_startScenePos".}
proc fcQTouchEventTouchPoint_lastScenePos(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_lastScenePos".}
proc fcQTouchEventTouchPoint_screenPos(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_screenPos".}
proc fcQTouchEventTouchPoint_startScreenPos(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_startScreenPos".}
proc fcQTouchEventTouchPoint_lastScreenPos(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_lastScreenPos".}
proc fcQTouchEventTouchPoint_normalizedPos(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_normalizedPos".}
proc fcQTouchEventTouchPoint_startNormalizedPos(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_startNormalizedPos".}
proc fcQTouchEventTouchPoint_lastNormalizedPos(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_lastNormalizedPos".}
proc fcQTouchEventTouchPoint_rect(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_rect".}
proc fcQTouchEventTouchPoint_sceneRect(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_sceneRect".}
proc fcQTouchEventTouchPoint_screenRect(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_screenRect".}
proc fcQTouchEventTouchPoint_setRect(self: pointer, rect: pointer): void {.importc: "QTouchEvent__TouchPoint_setRect".}
proc fcQTouchEventTouchPoint_setSceneRect(self: pointer, sceneRect: pointer): void {.importc: "QTouchEvent__TouchPoint_setSceneRect".}
proc fcQTouchEventTouchPoint_setScreenRect(self: pointer, screenRect: pointer): void {.importc: "QTouchEvent__TouchPoint_setScreenRect".}
proc fcQTouchEventTouchPoint_pressure(self: pointer): float64 {.importc: "QTouchEvent__TouchPoint_pressure".}
proc fcQTouchEventTouchPoint_rotation(self: pointer): float64 {.importc: "QTouchEvent__TouchPoint_rotation".}
proc fcQTouchEventTouchPoint_ellipseDiameters(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_ellipseDiameters".}
proc fcQTouchEventTouchPoint_velocity(self: pointer): pointer {.importc: "QTouchEvent__TouchPoint_velocity".}
proc fcQTouchEventTouchPoint_flags(self: pointer): cint {.importc: "QTouchEvent__TouchPoint_flags".}
proc fcQTouchEventTouchPoint_rawScreenPositions(self: pointer): struct_miqt_array {.importc: "QTouchEvent__TouchPoint_rawScreenPositions".}
proc fcQTouchEventTouchPoint_setId(self: pointer, id: cint): void {.importc: "QTouchEvent__TouchPoint_setId".}
proc fcQTouchEventTouchPoint_setUniqueId(self: pointer, uid: clonglong): void {.importc: "QTouchEvent__TouchPoint_setUniqueId".}
proc fcQTouchEventTouchPoint_setState(self: pointer, state: cint): void {.importc: "QTouchEvent__TouchPoint_setState".}
proc fcQTouchEventTouchPoint_setPos(self: pointer, pos: pointer): void {.importc: "QTouchEvent__TouchPoint_setPos".}
proc fcQTouchEventTouchPoint_setScenePos(self: pointer, scenePos: pointer): void {.importc: "QTouchEvent__TouchPoint_setScenePos".}
proc fcQTouchEventTouchPoint_setScreenPos(self: pointer, screenPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setScreenPos".}
proc fcQTouchEventTouchPoint_setNormalizedPos(self: pointer, normalizedPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setNormalizedPos".}
proc fcQTouchEventTouchPoint_setStartPos(self: pointer, startPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setStartPos".}
proc fcQTouchEventTouchPoint_setStartScenePos(self: pointer, startScenePos: pointer): void {.importc: "QTouchEvent__TouchPoint_setStartScenePos".}
proc fcQTouchEventTouchPoint_setStartScreenPos(self: pointer, startScreenPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setStartScreenPos".}
proc fcQTouchEventTouchPoint_setStartNormalizedPos(self: pointer, startNormalizedPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setStartNormalizedPos".}
proc fcQTouchEventTouchPoint_setLastPos(self: pointer, lastPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setLastPos".}
proc fcQTouchEventTouchPoint_setLastScenePos(self: pointer, lastScenePos: pointer): void {.importc: "QTouchEvent__TouchPoint_setLastScenePos".}
proc fcQTouchEventTouchPoint_setLastScreenPos(self: pointer, lastScreenPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setLastScreenPos".}
proc fcQTouchEventTouchPoint_setLastNormalizedPos(self: pointer, lastNormalizedPos: pointer): void {.importc: "QTouchEvent__TouchPoint_setLastNormalizedPos".}
proc fcQTouchEventTouchPoint_setPressure(self: pointer, pressure: float64): void {.importc: "QTouchEvent__TouchPoint_setPressure".}
proc fcQTouchEventTouchPoint_setRotation(self: pointer, angle: float64): void {.importc: "QTouchEvent__TouchPoint_setRotation".}
proc fcQTouchEventTouchPoint_setEllipseDiameters(self: pointer, dia: pointer): void {.importc: "QTouchEvent__TouchPoint_setEllipseDiameters".}
proc fcQTouchEventTouchPoint_setVelocity(self: pointer, v: pointer): void {.importc: "QTouchEvent__TouchPoint_setVelocity".}
proc fcQTouchEventTouchPoint_setFlags(self: pointer, flags: cint): void {.importc: "QTouchEvent__TouchPoint_setFlags".}
proc fcQTouchEventTouchPoint_setRawScreenPositions(self: pointer, positions: struct_miqt_array): void {.importc: "QTouchEvent__TouchPoint_setRawScreenPositions".}
proc fcQTouchEventTouchPoint_new(): ptr cQTouchEventTouchPoint {.importc: "QTouchEvent__TouchPoint_new".}
proc fcQTouchEventTouchPoint_new2(other: pointer): ptr cQTouchEventTouchPoint {.importc: "QTouchEvent__TouchPoint_new2".}
proc fcQTouchEventTouchPoint_new3(id: cint): ptr cQTouchEventTouchPoint {.importc: "QTouchEvent__TouchPoint_new3".}

proc modifiers*(self: gen_qevent_types.QInputEvent): cint =
  cint(fcQInputEvent_modifiers(self.h))

proc setModifiers*(self: gen_qevent_types.QInputEvent, amodifiers: cint): void =
  fcQInputEvent_setModifiers(self.h, cint(amodifiers))

proc timestamp*(self: gen_qevent_types.QInputEvent): culong =
  fcQInputEvent_timestamp(self.h)

proc setTimestamp*(self: gen_qevent_types.QInputEvent, atimestamp: culong): void =
  fcQInputEvent_setTimestamp(self.h, atimestamp)

proc create*(T: type gen_qevent_types.QInputEvent,
    typeVal: cint): gen_qevent_types.QInputEvent =
  gen_qevent_types.QInputEvent(h: fcQInputEvent_new(cint(typeVal)), owned: true)

proc create*(T: type gen_qevent_types.QInputEvent,
    param1: gen_qevent_types.QInputEvent): gen_qevent_types.QInputEvent =
  gen_qevent_types.QInputEvent(h: fcQInputEvent_new2(param1.h), owned: true)

proc create*(T: type gen_qevent_types.QInputEvent,
    typeVal: cint, modifiers: cint): gen_qevent_types.QInputEvent =
  gen_qevent_types.QInputEvent(h: fcQInputEvent_new3(cint(typeVal), cint(modifiers)), owned: true)

proc pos*(self: gen_qevent_types.QEnterEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQEnterEvent_pos(self.h), owned: true)

proc globalPos*(self: gen_qevent_types.QEnterEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQEnterEvent_globalPos(self.h), owned: true)

proc x*(self: gen_qevent_types.QEnterEvent): cint =
  fcQEnterEvent_x(self.h)

proc y*(self: gen_qevent_types.QEnterEvent): cint =
  fcQEnterEvent_y(self.h)

proc globalX*(self: gen_qevent_types.QEnterEvent): cint =
  fcQEnterEvent_globalX(self.h)

proc globalY*(self: gen_qevent_types.QEnterEvent): cint =
  fcQEnterEvent_globalY(self.h)

proc localPos*(self: gen_qevent_types.QEnterEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEnterEvent_localPos(self.h), owned: false)

proc windowPos*(self: gen_qevent_types.QEnterEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEnterEvent_windowPos(self.h), owned: false)

proc screenPos*(self: gen_qevent_types.QEnterEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEnterEvent_screenPos(self.h), owned: false)

proc create*(T: type gen_qevent_types.QEnterEvent,
    localPos: gen_qpoint_types.QPointF, windowPos: gen_qpoint_types.QPointF, screenPos: gen_qpoint_types.QPointF): gen_qevent_types.QEnterEvent =
  gen_qevent_types.QEnterEvent(h: fcQEnterEvent_new(localPos.h, windowPos.h, screenPos.h), owned: true)

proc create*(T: type gen_qevent_types.QEnterEvent,
    param1: gen_qevent_types.QEnterEvent): gen_qevent_types.QEnterEvent =
  gen_qevent_types.QEnterEvent(h: fcQEnterEvent_new2(param1.h), owned: true)

proc pos*(self: gen_qevent_types.QMouseEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMouseEvent_pos(self.h), owned: true)

proc globalPos*(self: gen_qevent_types.QMouseEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMouseEvent_globalPos(self.h), owned: true)

proc x*(self: gen_qevent_types.QMouseEvent): cint =
  fcQMouseEvent_x(self.h)

proc y*(self: gen_qevent_types.QMouseEvent): cint =
  fcQMouseEvent_y(self.h)

proc globalX*(self: gen_qevent_types.QMouseEvent): cint =
  fcQMouseEvent_globalX(self.h)

proc globalY*(self: gen_qevent_types.QMouseEvent): cint =
  fcQMouseEvent_globalY(self.h)

proc localPos*(self: gen_qevent_types.QMouseEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQMouseEvent_localPos(self.h), owned: false)

proc windowPos*(self: gen_qevent_types.QMouseEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQMouseEvent_windowPos(self.h), owned: false)

proc screenPos*(self: gen_qevent_types.QMouseEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQMouseEvent_screenPos(self.h), owned: false)

proc button*(self: gen_qevent_types.QMouseEvent): cint =
  cint(fcQMouseEvent_button(self.h))

proc buttons*(self: gen_qevent_types.QMouseEvent): cint =
  cint(fcQMouseEvent_buttons(self.h))

proc setLocalPos*(self: gen_qevent_types.QMouseEvent, localPosition: gen_qpoint_types.QPointF): void =
  fcQMouseEvent_setLocalPos(self.h, localPosition.h)

proc source*(self: gen_qevent_types.QMouseEvent): cint =
  cint(fcQMouseEvent_source(self.h))

proc flags*(self: gen_qevent_types.QMouseEvent): cint =
  cint(fcQMouseEvent_flags(self.h))

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new(cint(typeVal), localPos.h, cint(button), cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, screenPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new2(cint(typeVal), localPos.h, screenPos.h, cint(button), cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, windowPos: gen_qpoint_types.QPointF, screenPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new3(cint(typeVal), localPos.h, windowPos.h, screenPos.h, cint(button), cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QMouseEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, windowPos: gen_qpoint_types.QPointF, screenPos: gen_qpoint_types.QPointF, button: cint, buttons: cint, modifiers: cint, source: cint): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new4(cint(typeVal), localPos.h, windowPos.h, screenPos.h, cint(button), cint(buttons), cint(modifiers), cint(source)), owned: true)

proc create*(T: type gen_qevent_types.QMouseEvent,
    param1: gen_qevent_types.QMouseEvent): gen_qevent_types.QMouseEvent =
  gen_qevent_types.QMouseEvent(h: fcQMouseEvent_new5(param1.h), owned: true)

proc pos*(self: gen_qevent_types.QHoverEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQHoverEvent_pos(self.h), owned: true)

proc oldPos*(self: gen_qevent_types.QHoverEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQHoverEvent_oldPos(self.h), owned: true)

proc posF*(self: gen_qevent_types.QHoverEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQHoverEvent_posF(self.h), owned: false)

proc oldPosF*(self: gen_qevent_types.QHoverEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQHoverEvent_oldPosF(self.h), owned: false)

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new(cint(typeVal), pos.h, oldPos.h), owned: true)

proc create*(T: type gen_qevent_types.QHoverEvent,
    param1: gen_qevent_types.QHoverEvent): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new2(param1.h), owned: true)

proc create*(T: type gen_qevent_types.QHoverEvent,
    typeVal: cint, pos: gen_qpoint_types.QPointF, oldPos: gen_qpoint_types.QPointF, modifiers: cint): gen_qevent_types.QHoverEvent =
  gen_qevent_types.QHoverEvent(h: fcQHoverEvent_new3(cint(typeVal), pos.h, oldPos.h, cint(modifiers)), owned: true)

proc pixelDelta*(self: gen_qevent_types.QWheelEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWheelEvent_pixelDelta(self.h), owned: true)

proc angleDelta*(self: gen_qevent_types.QWheelEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWheelEvent_angleDelta(self.h), owned: true)

proc delta*(self: gen_qevent_types.QWheelEvent): cint =
  fcQWheelEvent_delta(self.h)

proc orientation*(self: gen_qevent_types.QWheelEvent): cint =
  cint(fcQWheelEvent_orientation(self.h))

proc pos*(self: gen_qevent_types.QWheelEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWheelEvent_pos(self.h), owned: true)

proc globalPos*(self: gen_qevent_types.QWheelEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWheelEvent_globalPos(self.h), owned: true)

proc x*(self: gen_qevent_types.QWheelEvent): cint =
  fcQWheelEvent_x(self.h)

proc y*(self: gen_qevent_types.QWheelEvent): cint =
  fcQWheelEvent_y(self.h)

proc globalX*(self: gen_qevent_types.QWheelEvent): cint =
  fcQWheelEvent_globalX(self.h)

proc globalY*(self: gen_qevent_types.QWheelEvent): cint =
  fcQWheelEvent_globalY(self.h)

proc posF*(self: gen_qevent_types.QWheelEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWheelEvent_posF(self.h), owned: false)

proc globalPosF*(self: gen_qevent_types.QWheelEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWheelEvent_globalPosF(self.h), owned: false)

proc position*(self: gen_qevent_types.QWheelEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWheelEvent_position(self.h), owned: true)

proc globalPosition*(self: gen_qevent_types.QWheelEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQWheelEvent_globalPosition(self.h), owned: true)

proc buttons*(self: gen_qevent_types.QWheelEvent): cint =
  cint(fcQWheelEvent_buttons(self.h))

proc phase*(self: gen_qevent_types.QWheelEvent): cint =
  cint(fcQWheelEvent_phase(self.h))

proc inverted*(self: gen_qevent_types.QWheelEvent): bool =
  fcQWheelEvent_inverted(self.h)

proc source*(self: gen_qevent_types.QWheelEvent): cint =
  cint(fcQWheelEvent_source(self.h))

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, delta: cint, buttons: cint, modifiers: cint): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new(pos.h, delta, cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, delta: cint, buttons: cint, modifiers: cint): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new2(pos.h, globalPos.h, delta, cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, qt4Delta: cint, qt4Orientation: cint, buttons: cint, modifiers: cint): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new3(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, qt4Delta, cint(qt4Orientation), cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, qt4Delta: cint, qt4Orientation: cint, buttons: cint, modifiers: cint, phase: cint): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new4(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, qt4Delta, cint(qt4Orientation), cint(buttons), cint(modifiers), cint(phase)), owned: true)

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, qt4Delta: cint, qt4Orientation: cint, buttons: cint, modifiers: cint, phase: cint, source: cint): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new5(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, qt4Delta, cint(qt4Orientation), cint(buttons), cint(modifiers), cint(phase), cint(source)), owned: true)

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, qt4Delta: cint, qt4Orientation: cint, buttons: cint, modifiers: cint, phase: cint, source: cint, inverted: bool): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new6(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, qt4Delta, cint(qt4Orientation), cint(buttons), cint(modifiers), cint(phase), cint(source), inverted), owned: true)

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new7(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted), owned: true)

proc create*(T: type gen_qevent_types.QWheelEvent,
    param1: gen_qevent_types.QWheelEvent): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new8(param1.h), owned: true)

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, delta: cint, buttons: cint, modifiers: cint, orient: cint): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new9(pos.h, delta, cint(buttons), cint(modifiers), cint(orient)), owned: true)

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, delta: cint, buttons: cint, modifiers: cint, orient: cint): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new10(pos.h, globalPos.h, delta, cint(buttons), cint(modifiers), cint(orient)), owned: true)

proc create*(T: type gen_qevent_types.QWheelEvent,
    pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, pixelDelta: gen_qpoint_types.QPoint, angleDelta: gen_qpoint_types.QPoint, buttons: cint, modifiers: cint, phase: cint, inverted: bool, source: cint): gen_qevent_types.QWheelEvent =
  gen_qevent_types.QWheelEvent(h: fcQWheelEvent_new11(pos.h, globalPos.h, pixelDelta.h, angleDelta.h, cint(buttons), cint(modifiers), cint(phase), inverted, cint(source)), owned: true)

proc pos*(self: gen_qevent_types.QTabletEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQTabletEvent_pos(self.h), owned: true)

proc globalPos*(self: gen_qevent_types.QTabletEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQTabletEvent_globalPos(self.h), owned: true)

proc posF*(self: gen_qevent_types.QTabletEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTabletEvent_posF(self.h), owned: false)

proc globalPosF*(self: gen_qevent_types.QTabletEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTabletEvent_globalPosF(self.h), owned: false)

proc x*(self: gen_qevent_types.QTabletEvent): cint =
  fcQTabletEvent_x(self.h)

proc y*(self: gen_qevent_types.QTabletEvent): cint =
  fcQTabletEvent_y(self.h)

proc globalX*(self: gen_qevent_types.QTabletEvent): cint =
  fcQTabletEvent_globalX(self.h)

proc globalY*(self: gen_qevent_types.QTabletEvent): cint =
  fcQTabletEvent_globalY(self.h)

proc hiResGlobalX*(self: gen_qevent_types.QTabletEvent): float64 =
  fcQTabletEvent_hiResGlobalX(self.h)

proc hiResGlobalY*(self: gen_qevent_types.QTabletEvent): float64 =
  fcQTabletEvent_hiResGlobalY(self.h)

proc device*(self: gen_qevent_types.QTabletEvent): cint =
  cint(fcQTabletEvent_device(self.h))

proc deviceType*(self: gen_qevent_types.QTabletEvent): cint =
  cint(fcQTabletEvent_deviceType(self.h))

proc pointerType*(self: gen_qevent_types.QTabletEvent): cint =
  cint(fcQTabletEvent_pointerType(self.h))

proc uniqueId*(self: gen_qevent_types.QTabletEvent): clonglong =
  fcQTabletEvent_uniqueId(self.h)

proc pressure*(self: gen_qevent_types.QTabletEvent): float64 =
  fcQTabletEvent_pressure(self.h)

proc z*(self: gen_qevent_types.QTabletEvent): cint =
  fcQTabletEvent_z(self.h)

proc tangentialPressure*(self: gen_qevent_types.QTabletEvent): float64 =
  fcQTabletEvent_tangentialPressure(self.h)

proc rotation*(self: gen_qevent_types.QTabletEvent): float64 =
  fcQTabletEvent_rotation(self.h)

proc xTilt*(self: gen_qevent_types.QTabletEvent): cint =
  fcQTabletEvent_xTilt(self.h)

proc yTilt*(self: gen_qevent_types.QTabletEvent): cint =
  fcQTabletEvent_yTilt(self.h)

proc button*(self: gen_qevent_types.QTabletEvent): cint =
  cint(fcQTabletEvent_button(self.h))

proc buttons*(self: gen_qevent_types.QTabletEvent): cint =
  cint(fcQTabletEvent_buttons(self.h))

proc create*(T: type gen_qevent_types.QTabletEvent,
    t: cint, pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, device: cint, pointerType: cint, pressure: float64, xTilt: cint, yTilt: cint, tangentialPressure: float64, rotation: float64, z: cint, keyState: cint, uniqueID: clonglong): gen_qevent_types.QTabletEvent =
  gen_qevent_types.QTabletEvent(h: fcQTabletEvent_new(cint(t), pos.h, globalPos.h, device, pointerType, pressure, xTilt, yTilt, tangentialPressure, rotation, z, cint(keyState), uniqueID), owned: true)

proc create*(T: type gen_qevent_types.QTabletEvent,
    t: cint, pos: gen_qpoint_types.QPointF, globalPos: gen_qpoint_types.QPointF, device: cint, pointerType: cint, pressure: float64, xTilt: cint, yTilt: cint, tangentialPressure: float64, rotation: float64, z: cint, keyState: cint, uniqueID: clonglong, button: cint, buttons: cint): gen_qevent_types.QTabletEvent =
  gen_qevent_types.QTabletEvent(h: fcQTabletEvent_new2(cint(t), pos.h, globalPos.h, device, pointerType, pressure, xTilt, yTilt, tangentialPressure, rotation, z, cint(keyState), uniqueID, cint(button), cint(buttons)), owned: true)

proc create*(T: type gen_qevent_types.QTabletEvent,
    param1: gen_qevent_types.QTabletEvent): gen_qevent_types.QTabletEvent =
  gen_qevent_types.QTabletEvent(h: fcQTabletEvent_new3(param1.h), owned: true)

proc staticMetaObject*(_: type gen_qevent_types.QTabletEvent): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTabletEvent_staticMetaObject())
proc gestureType*(self: gen_qevent_types.QNativeGestureEvent): cint =
  cint(fcQNativeGestureEvent_gestureType(self.h))

proc value*(self: gen_qevent_types.QNativeGestureEvent): float64 =
  fcQNativeGestureEvent_value(self.h)

proc pos*(self: gen_qevent_types.QNativeGestureEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQNativeGestureEvent_pos(self.h), owned: true)

proc globalPos*(self: gen_qevent_types.QNativeGestureEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQNativeGestureEvent_globalPos(self.h), owned: true)

proc localPos*(self: gen_qevent_types.QNativeGestureEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQNativeGestureEvent_localPos(self.h), owned: false)

proc windowPos*(self: gen_qevent_types.QNativeGestureEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQNativeGestureEvent_windowPos(self.h), owned: false)

proc screenPos*(self: gen_qevent_types.QNativeGestureEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQNativeGestureEvent_screenPos(self.h), owned: false)

proc device*(self: gen_qevent_types.QNativeGestureEvent): gen_qtouchdevice_types.QTouchDevice =
  gen_qtouchdevice_types.QTouchDevice(h: fcQNativeGestureEvent_device(self.h), owned: false)

proc create*(T: type gen_qevent_types.QNativeGestureEvent,
    typeVal: cint, localPos: gen_qpoint_types.QPointF, windowPos: gen_qpoint_types.QPointF, screenPos: gen_qpoint_types.QPointF, value: float64, sequenceId: culong, intArgument: culonglong): gen_qevent_types.QNativeGestureEvent =
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_new(cint(typeVal), localPos.h, windowPos.h, screenPos.h, value, sequenceId, intArgument), owned: true)

proc create*(T: type gen_qevent_types.QNativeGestureEvent,
    typeVal: cint, dev: gen_qtouchdevice_types.QTouchDevice, localPos: gen_qpoint_types.QPointF, windowPos: gen_qpoint_types.QPointF, screenPos: gen_qpoint_types.QPointF, value: float64, sequenceId: culong, intArgument: culonglong): gen_qevent_types.QNativeGestureEvent =
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_new2(cint(typeVal), dev.h, localPos.h, windowPos.h, screenPos.h, value, sequenceId, intArgument), owned: true)

proc create*(T: type gen_qevent_types.QNativeGestureEvent,
    param1: gen_qevent_types.QNativeGestureEvent): gen_qevent_types.QNativeGestureEvent =
  gen_qevent_types.QNativeGestureEvent(h: fcQNativeGestureEvent_new3(param1.h), owned: true)

proc key*(self: gen_qevent_types.QKeyEvent): cint =
  fcQKeyEvent_key(self.h)

proc matches*(self: gen_qevent_types.QKeyEvent, key: cint): bool =
  fcQKeyEvent_matches(self.h, cint(key))

proc modifiers*(self: gen_qevent_types.QKeyEvent): cint =
  cint(fcQKeyEvent_modifiers(self.h))

proc text*(self: gen_qevent_types.QKeyEvent): string =
  let v_ms = fcQKeyEvent_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isAutoRepeat*(self: gen_qevent_types.QKeyEvent): bool =
  fcQKeyEvent_isAutoRepeat(self.h)

proc count*(self: gen_qevent_types.QKeyEvent): cint =
  fcQKeyEvent_count(self.h)

proc nativeScanCode*(self: gen_qevent_types.QKeyEvent): cuint =
  fcQKeyEvent_nativeScanCode(self.h)

proc nativeVirtualKey*(self: gen_qevent_types.QKeyEvent): cuint =
  fcQKeyEvent_nativeVirtualKey(self.h)

proc nativeModifiers*(self: gen_qevent_types.QKeyEvent): cuint =
  fcQKeyEvent_nativeModifiers(self.h)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new(cint(typeVal), key, cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new2(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    param1: gen_qevent_types.QKeyEvent): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new3(param1.h), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, text: openArray[char]): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new4(cint(typeVal), key, cint(modifiers), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, text: openArray[char], autorep: bool): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new5(cint(typeVal), key, cint(modifiers), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, text: openArray[char], autorep: bool, count: cushort): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new6(cint(typeVal), key, cint(modifiers), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep, count), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: openArray[char]): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new7(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: openArray[char], autorep: bool): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new8(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep), owned: true)

proc create*(T: type gen_qevent_types.QKeyEvent,
    typeVal: cint, key: cint, modifiers: cint, nativeScanCode: cuint, nativeVirtualKey: cuint, nativeModifiers: cuint, text: openArray[char], autorep: bool, count: cushort): gen_qevent_types.QKeyEvent =
  gen_qevent_types.QKeyEvent(h: fcQKeyEvent_new9(cint(typeVal), key, cint(modifiers), nativeScanCode, nativeVirtualKey, nativeModifiers, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), autorep, count), owned: true)

proc gotFocus*(self: gen_qevent_types.QFocusEvent): bool =
  fcQFocusEvent_gotFocus(self.h)

proc lostFocus*(self: gen_qevent_types.QFocusEvent): bool =
  fcQFocusEvent_lostFocus(self.h)

proc reason*(self: gen_qevent_types.QFocusEvent): cint =
  cint(fcQFocusEvent_reason(self.h))

proc create*(T: type gen_qevent_types.QFocusEvent,
    typeVal: cint): gen_qevent_types.QFocusEvent =
  gen_qevent_types.QFocusEvent(h: fcQFocusEvent_new(cint(typeVal)), owned: true)

proc create*(T: type gen_qevent_types.QFocusEvent,
    param1: gen_qevent_types.QFocusEvent): gen_qevent_types.QFocusEvent =
  gen_qevent_types.QFocusEvent(h: fcQFocusEvent_new2(param1.h), owned: true)

proc create*(T: type gen_qevent_types.QFocusEvent,
    typeVal: cint, reason: cint): gen_qevent_types.QFocusEvent =
  gen_qevent_types.QFocusEvent(h: fcQFocusEvent_new3(cint(typeVal), cint(reason)), owned: true)

proc rect*(self: gen_qevent_types.QPaintEvent): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPaintEvent_rect(self.h), owned: false)

proc region*(self: gen_qevent_types.QPaintEvent): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQPaintEvent_region(self.h), owned: false)

proc create*(T: type gen_qevent_types.QPaintEvent,
    paintRegion: gen_qregion_types.QRegion): gen_qevent_types.QPaintEvent =
  gen_qevent_types.QPaintEvent(h: fcQPaintEvent_new(paintRegion.h), owned: true)

proc create*(T: type gen_qevent_types.QPaintEvent,
    paintRect: gen_qrect_types.QRect): gen_qevent_types.QPaintEvent =
  gen_qevent_types.QPaintEvent(h: fcQPaintEvent_new2(paintRect.h), owned: true)

proc create*(T: type gen_qevent_types.QPaintEvent,
    param1: gen_qevent_types.QPaintEvent): gen_qevent_types.QPaintEvent =
  gen_qevent_types.QPaintEvent(h: fcQPaintEvent_new3(param1.h), owned: true)

proc pos*(self: gen_qevent_types.QMoveEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMoveEvent_pos(self.h), owned: false)

proc oldPos*(self: gen_qevent_types.QMoveEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQMoveEvent_oldPos(self.h), owned: false)

proc create*(T: type gen_qevent_types.QMoveEvent,
    pos: gen_qpoint_types.QPoint, oldPos: gen_qpoint_types.QPoint): gen_qevent_types.QMoveEvent =
  gen_qevent_types.QMoveEvent(h: fcQMoveEvent_new(pos.h, oldPos.h), owned: true)

proc create*(T: type gen_qevent_types.QMoveEvent,
    param1: gen_qevent_types.QMoveEvent): gen_qevent_types.QMoveEvent =
  gen_qevent_types.QMoveEvent(h: fcQMoveEvent_new2(param1.h), owned: true)

proc region*(self: gen_qevent_types.QExposeEvent): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQExposeEvent_region(self.h), owned: false)

proc create*(T: type gen_qevent_types.QExposeEvent,
    rgn: gen_qregion_types.QRegion): gen_qevent_types.QExposeEvent =
  gen_qevent_types.QExposeEvent(h: fcQExposeEvent_new(rgn.h), owned: true)

proc create*(T: type gen_qevent_types.QExposeEvent,
    param1: gen_qevent_types.QExposeEvent): gen_qevent_types.QExposeEvent =
  gen_qevent_types.QExposeEvent(h: fcQExposeEvent_new2(param1.h), owned: true)

proc surfaceEventType*(self: gen_qevent_types.QPlatformSurfaceEvent): cint =
  cint(fcQPlatformSurfaceEvent_surfaceEventType(self.h))

proc create*(T: type gen_qevent_types.QPlatformSurfaceEvent,
    surfaceEventType: cint): gen_qevent_types.QPlatformSurfaceEvent =
  gen_qevent_types.QPlatformSurfaceEvent(h: fcQPlatformSurfaceEvent_new(cint(surfaceEventType)), owned: true)

proc create*(T: type gen_qevent_types.QPlatformSurfaceEvent,
    param1: gen_qevent_types.QPlatformSurfaceEvent): gen_qevent_types.QPlatformSurfaceEvent =
  gen_qevent_types.QPlatformSurfaceEvent(h: fcQPlatformSurfaceEvent_new2(param1.h), owned: true)

proc size*(self: gen_qevent_types.QResizeEvent): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQResizeEvent_size(self.h), owned: false)

proc oldSize*(self: gen_qevent_types.QResizeEvent): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQResizeEvent_oldSize(self.h), owned: false)

proc create*(T: type gen_qevent_types.QResizeEvent,
    size: gen_qsize_types.QSize, oldSize: gen_qsize_types.QSize): gen_qevent_types.QResizeEvent =
  gen_qevent_types.QResizeEvent(h: fcQResizeEvent_new(size.h, oldSize.h), owned: true)

proc create*(T: type gen_qevent_types.QResizeEvent,
    param1: gen_qevent_types.QResizeEvent): gen_qevent_types.QResizeEvent =
  gen_qevent_types.QResizeEvent(h: fcQResizeEvent_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qevent_types.QCloseEvent, param1: gen_qevent_types.QCloseEvent): void =
  fcQCloseEvent_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qevent_types.QCloseEvent): gen_qevent_types.QCloseEvent =
  gen_qevent_types.QCloseEvent(h: fcQCloseEvent_new(), owned: true)

proc create*(T: type gen_qevent_types.QCloseEvent,
    param1: gen_qevent_types.QCloseEvent): gen_qevent_types.QCloseEvent =
  gen_qevent_types.QCloseEvent(h: fcQCloseEvent_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qevent_types.QIconDragEvent, param1: gen_qevent_types.QIconDragEvent): void =
  fcQIconDragEvent_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qevent_types.QIconDragEvent): gen_qevent_types.QIconDragEvent =
  gen_qevent_types.QIconDragEvent(h: fcQIconDragEvent_new(), owned: true)

proc create*(T: type gen_qevent_types.QIconDragEvent,
    param1: gen_qevent_types.QIconDragEvent): gen_qevent_types.QIconDragEvent =
  gen_qevent_types.QIconDragEvent(h: fcQIconDragEvent_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qevent_types.QShowEvent, param1: gen_qevent_types.QShowEvent): void =
  fcQShowEvent_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qevent_types.QShowEvent): gen_qevent_types.QShowEvent =
  gen_qevent_types.QShowEvent(h: fcQShowEvent_new(), owned: true)

proc create*(T: type gen_qevent_types.QShowEvent,
    param1: gen_qevent_types.QShowEvent): gen_qevent_types.QShowEvent =
  gen_qevent_types.QShowEvent(h: fcQShowEvent_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qevent_types.QHideEvent, param1: gen_qevent_types.QHideEvent): void =
  fcQHideEvent_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qevent_types.QHideEvent): gen_qevent_types.QHideEvent =
  gen_qevent_types.QHideEvent(h: fcQHideEvent_new(), owned: true)

proc create*(T: type gen_qevent_types.QHideEvent,
    param1: gen_qevent_types.QHideEvent): gen_qevent_types.QHideEvent =
  gen_qevent_types.QHideEvent(h: fcQHideEvent_new2(param1.h), owned: true)

proc x*(self: gen_qevent_types.QContextMenuEvent): cint =
  fcQContextMenuEvent_x(self.h)

proc y*(self: gen_qevent_types.QContextMenuEvent): cint =
  fcQContextMenuEvent_y(self.h)

proc globalX*(self: gen_qevent_types.QContextMenuEvent): cint =
  fcQContextMenuEvent_globalX(self.h)

proc globalY*(self: gen_qevent_types.QContextMenuEvent): cint =
  fcQContextMenuEvent_globalY(self.h)

proc pos*(self: gen_qevent_types.QContextMenuEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQContextMenuEvent_pos(self.h), owned: false)

proc globalPos*(self: gen_qevent_types.QContextMenuEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQContextMenuEvent_globalPos(self.h), owned: false)

proc reason*(self: gen_qevent_types.QContextMenuEvent): cint =
  cint(fcQContextMenuEvent_reason(self.h))

proc create*(T: type gen_qevent_types.QContextMenuEvent,
    reason: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint, modifiers: cint): gen_qevent_types.QContextMenuEvent =
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_new(cint(reason), pos.h, globalPos.h, cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QContextMenuEvent,
    reason: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint): gen_qevent_types.QContextMenuEvent =
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_new2(cint(reason), pos.h, globalPos.h), owned: true)

proc create*(T: type gen_qevent_types.QContextMenuEvent,
    reason: cint, pos: gen_qpoint_types.QPoint): gen_qevent_types.QContextMenuEvent =
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_new3(cint(reason), pos.h), owned: true)

proc create*(T: type gen_qevent_types.QContextMenuEvent,
    param1: gen_qevent_types.QContextMenuEvent): gen_qevent_types.QContextMenuEvent =
  gen_qevent_types.QContextMenuEvent(h: fcQContextMenuEvent_new4(param1.h), owned: true)

proc setCommitString*(self: gen_qevent_types.QInputMethodEvent, commitString: openArray[char]): void =
  fcQInputMethodEvent_setCommitString(self.h, struct_miqt_string(data: if len(commitString) > 0: addr commitString[0] else: nil, len: csize_t(len(commitString))))

proc attributes*(self: gen_qevent_types.QInputMethodEvent): seq[gen_qevent_types.QInputMethodEventAttribute] =
  var v_ma = fcQInputMethodEvent_attributes(self.h)
  var vx_ret = newSeq[gen_qevent_types.QInputMethodEventAttribute](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qevent_types.QInputMethodEventAttribute(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc preeditString*(self: gen_qevent_types.QInputMethodEvent): string =
  let v_ms = fcQInputMethodEvent_preeditString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc commitString*(self: gen_qevent_types.QInputMethodEvent): string =
  let v_ms = fcQInputMethodEvent_commitString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc replacementStart*(self: gen_qevent_types.QInputMethodEvent): cint =
  fcQInputMethodEvent_replacementStart(self.h)

proc replacementLength*(self: gen_qevent_types.QInputMethodEvent): cint =
  fcQInputMethodEvent_replacementLength(self.h)

proc setCommitString*(self: gen_qevent_types.QInputMethodEvent, commitString: openArray[char], replaceFrom: cint): void =
  fcQInputMethodEvent_setCommitString2(self.h, struct_miqt_string(data: if len(commitString) > 0: addr commitString[0] else: nil, len: csize_t(len(commitString))), replaceFrom)

proc setCommitString*(self: gen_qevent_types.QInputMethodEvent, commitString: openArray[char], replaceFrom: cint, replaceLength: cint): void =
  fcQInputMethodEvent_setCommitString3(self.h, struct_miqt_string(data: if len(commitString) > 0: addr commitString[0] else: nil, len: csize_t(len(commitString))), replaceFrom, replaceLength)

proc create*(T: type gen_qevent_types.QInputMethodEvent): gen_qevent_types.QInputMethodEvent =
  gen_qevent_types.QInputMethodEvent(h: fcQInputMethodEvent_new(), owned: true)

proc create*(T: type gen_qevent_types.QInputMethodEvent,
    preeditText: openArray[char], attributes: openArray[gen_qevent_types.QInputMethodEventAttribute]): gen_qevent_types.QInputMethodEvent =
  var attributes_CArray = newSeq[pointer](len(attributes))
  for i in 0..<len(attributes):
    attributes_CArray[i] = attributes[i].h

  gen_qevent_types.QInputMethodEvent(h: fcQInputMethodEvent_new2(struct_miqt_string(data: if len(preeditText) > 0: addr preeditText[0] else: nil, len: csize_t(len(preeditText))), struct_miqt_array(len: csize_t(len(attributes)), data: if len(attributes) == 0: nil else: addr(attributes_CArray[0]))), owned: true)

proc create*(T: type gen_qevent_types.QInputMethodEvent,
    other: gen_qevent_types.QInputMethodEvent): gen_qevent_types.QInputMethodEvent =
  gen_qevent_types.QInputMethodEvent(h: fcQInputMethodEvent_new3(other.h), owned: true)

proc queries*(self: gen_qevent_types.QInputMethodQueryEvent): cint =
  cint(fcQInputMethodQueryEvent_queries(self.h))

proc setValue*(self: gen_qevent_types.QInputMethodQueryEvent, query: cint, value: gen_qvariant_types.QVariant): void =
  fcQInputMethodQueryEvent_setValue(self.h, cint(query), value.h)

proc value*(self: gen_qevent_types.QInputMethodQueryEvent, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQInputMethodQueryEvent_value(self.h, cint(query)), owned: true)

proc create*(T: type gen_qevent_types.QInputMethodQueryEvent,
    queries: cint): gen_qevent_types.QInputMethodQueryEvent =
  gen_qevent_types.QInputMethodQueryEvent(h: fcQInputMethodQueryEvent_new(cint(queries)), owned: true)

proc create*(T: type gen_qevent_types.QInputMethodQueryEvent,
    param1: gen_qevent_types.QInputMethodQueryEvent): gen_qevent_types.QInputMethodQueryEvent =
  gen_qevent_types.QInputMethodQueryEvent(h: fcQInputMethodQueryEvent_new2(param1.h), owned: true)

proc pos*(self: gen_qevent_types.QDropEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQDropEvent_pos(self.h), owned: true)

proc posF*(self: gen_qevent_types.QDropEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQDropEvent_posF(self.h), owned: false)

proc mouseButtons*(self: gen_qevent_types.QDropEvent): cint =
  cint(fcQDropEvent_mouseButtons(self.h))

proc keyboardModifiers*(self: gen_qevent_types.QDropEvent): cint =
  cint(fcQDropEvent_keyboardModifiers(self.h))

proc possibleActions*(self: gen_qevent_types.QDropEvent): cint =
  cint(fcQDropEvent_possibleActions(self.h))

proc proposedAction*(self: gen_qevent_types.QDropEvent): cint =
  cint(fcQDropEvent_proposedAction(self.h))

proc acceptProposedAction*(self: gen_qevent_types.QDropEvent): void =
  fcQDropEvent_acceptProposedAction(self.h)

proc dropAction*(self: gen_qevent_types.QDropEvent): cint =
  cint(fcQDropEvent_dropAction(self.h))

proc setDropAction*(self: gen_qevent_types.QDropEvent, action: cint): void =
  fcQDropEvent_setDropAction(self.h, cint(action))

proc source*(self: gen_qevent_types.QDropEvent): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDropEvent_source(self.h), owned: false)

proc mimeData*(self: gen_qevent_types.QDropEvent): gen_qmimedata_types.QMimeData =
  gen_qmimedata_types.QMimeData(h: fcQDropEvent_mimeData(self.h), owned: false)

proc create*(T: type gen_qevent_types.QDropEvent,
    pos: gen_qpoint_types.QPointF, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint): gen_qevent_types.QDropEvent =
  gen_qevent_types.QDropEvent(h: fcQDropEvent_new(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QDropEvent,
    param1: gen_qevent_types.QDropEvent): gen_qevent_types.QDropEvent =
  gen_qevent_types.QDropEvent(h: fcQDropEvent_new2(param1.h), owned: true)

proc create*(T: type gen_qevent_types.QDropEvent,
    pos: gen_qpoint_types.QPointF, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint, typeVal: cint): gen_qevent_types.QDropEvent =
  gen_qevent_types.QDropEvent(h: fcQDropEvent_new3(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal)), owned: true)

proc answerRect*(self: gen_qevent_types.QDragMoveEvent): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQDragMoveEvent_answerRect(self.h), owned: true)

proc accept*(self: gen_qevent_types.QDragMoveEvent): void =
  fcQDragMoveEvent_accept(self.h)

proc ignore*(self: gen_qevent_types.QDragMoveEvent): void =
  fcQDragMoveEvent_ignore(self.h)

proc accept*(self: gen_qevent_types.QDragMoveEvent, r: gen_qrect_types.QRect): void =
  fcQDragMoveEvent_acceptWithQRect(self.h, r.h)

proc ignore*(self: gen_qevent_types.QDragMoveEvent, r: gen_qrect_types.QRect): void =
  fcQDragMoveEvent_ignoreWithQRect(self.h, r.h)

proc create*(T: type gen_qevent_types.QDragMoveEvent,
    pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint): gen_qevent_types.QDragMoveEvent =
  gen_qevent_types.QDragMoveEvent(h: fcQDragMoveEvent_new(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QDragMoveEvent,
    param1: gen_qevent_types.QDragMoveEvent): gen_qevent_types.QDragMoveEvent =
  gen_qevent_types.QDragMoveEvent(h: fcQDragMoveEvent_new2(param1.h), owned: true)

proc create*(T: type gen_qevent_types.QDragMoveEvent,
    pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint, typeVal: cint): gen_qevent_types.QDragMoveEvent =
  gen_qevent_types.QDragMoveEvent(h: fcQDragMoveEvent_new3(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers), cint(typeVal)), owned: true)

proc operatorAssign*(self: gen_qevent_types.QDragEnterEvent, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQDragEnterEvent_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qevent_types.QDragEnterEvent,
    pos: gen_qpoint_types.QPoint, actions: cint, data: gen_qmimedata_types.QMimeData, buttons: cint, modifiers: cint): gen_qevent_types.QDragEnterEvent =
  gen_qevent_types.QDragEnterEvent(h: fcQDragEnterEvent_new(pos.h, cint(actions), data.h, cint(buttons), cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QDragEnterEvent,
    param1: gen_qevent_types.QDragEnterEvent): gen_qevent_types.QDragEnterEvent =
  gen_qevent_types.QDragEnterEvent(h: fcQDragEnterEvent_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qevent_types.QDragLeaveEvent, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQDragLeaveEvent_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qevent_types.QDragLeaveEvent): gen_qevent_types.QDragLeaveEvent =
  gen_qevent_types.QDragLeaveEvent(h: fcQDragLeaveEvent_new(), owned: true)

proc create*(T: type gen_qevent_types.QDragLeaveEvent,
    param1: gen_qevent_types.QDragLeaveEvent): gen_qevent_types.QDragLeaveEvent =
  gen_qevent_types.QDragLeaveEvent(h: fcQDragLeaveEvent_new2(param1.h), owned: true)

proc x*(self: gen_qevent_types.QHelpEvent): cint =
  fcQHelpEvent_x(self.h)

proc y*(self: gen_qevent_types.QHelpEvent): cint =
  fcQHelpEvent_y(self.h)

proc globalX*(self: gen_qevent_types.QHelpEvent): cint =
  fcQHelpEvent_globalX(self.h)

proc globalY*(self: gen_qevent_types.QHelpEvent): cint =
  fcQHelpEvent_globalY(self.h)

proc pos*(self: gen_qevent_types.QHelpEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQHelpEvent_pos(self.h), owned: false)

proc globalPos*(self: gen_qevent_types.QHelpEvent): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQHelpEvent_globalPos(self.h), owned: false)

proc create*(T: type gen_qevent_types.QHelpEvent,
    typeVal: cint, pos: gen_qpoint_types.QPoint, globalPos: gen_qpoint_types.QPoint): gen_qevent_types.QHelpEvent =
  gen_qevent_types.QHelpEvent(h: fcQHelpEvent_new(cint(typeVal), pos.h, globalPos.h), owned: true)

proc create*(T: type gen_qevent_types.QHelpEvent,
    param1: gen_qevent_types.QHelpEvent): gen_qevent_types.QHelpEvent =
  gen_qevent_types.QHelpEvent(h: fcQHelpEvent_new2(param1.h), owned: true)

proc tip*(self: gen_qevent_types.QStatusTipEvent): string =
  let v_ms = fcQStatusTipEvent_tip(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qevent_types.QStatusTipEvent,
    tip: openArray[char]): gen_qevent_types.QStatusTipEvent =
  gen_qevent_types.QStatusTipEvent(h: fcQStatusTipEvent_new(struct_miqt_string(data: if len(tip) > 0: addr tip[0] else: nil, len: csize_t(len(tip)))), owned: true)

proc create*(T: type gen_qevent_types.QStatusTipEvent,
    param1: gen_qevent_types.QStatusTipEvent): gen_qevent_types.QStatusTipEvent =
  gen_qevent_types.QStatusTipEvent(h: fcQStatusTipEvent_new2(param1.h), owned: true)

proc href*(self: gen_qevent_types.QWhatsThisClickedEvent): string =
  let v_ms = fcQWhatsThisClickedEvent_href(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qevent_types.QWhatsThisClickedEvent,
    href: openArray[char]): gen_qevent_types.QWhatsThisClickedEvent =
  gen_qevent_types.QWhatsThisClickedEvent(h: fcQWhatsThisClickedEvent_new(struct_miqt_string(data: if len(href) > 0: addr href[0] else: nil, len: csize_t(len(href)))), owned: true)

proc create*(T: type gen_qevent_types.QWhatsThisClickedEvent,
    param1: gen_qevent_types.QWhatsThisClickedEvent): gen_qevent_types.QWhatsThisClickedEvent =
  gen_qevent_types.QWhatsThisClickedEvent(h: fcQWhatsThisClickedEvent_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qevent_types.QActionEvent, param1: gen_qevent_types.QActionEvent): void =
  fcQActionEvent_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qevent_types.QActionEvent,
    typeVal: cint, action: ptr QAction): gen_qevent_types.QActionEvent =
  gen_qevent_types.QActionEvent(h: fcQActionEvent_new(typeVal, action), owned: true)

proc create*(T: type gen_qevent_types.QActionEvent,
    param1: gen_qevent_types.QActionEvent): gen_qevent_types.QActionEvent =
  gen_qevent_types.QActionEvent(h: fcQActionEvent_new2(param1.h), owned: true)

proc create*(T: type gen_qevent_types.QActionEvent,
    typeVal: cint, action: ptr QAction, before: ptr QAction): gen_qevent_types.QActionEvent =
  gen_qevent_types.QActionEvent(h: fcQActionEvent_new3(typeVal, action, before), owned: true)

proc file*(self: gen_qevent_types.QFileOpenEvent): string =
  let v_ms = fcQFileOpenEvent_file(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc url*(self: gen_qevent_types.QFileOpenEvent): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQFileOpenEvent_url(self.h), owned: true)

proc openFile*(self: gen_qevent_types.QFileOpenEvent, file: gen_qfile_types.QFile, flags: cint): bool =
  fcQFileOpenEvent_openFile(self.h, file.h, cint(flags))

proc create*(T: type gen_qevent_types.QFileOpenEvent,
    file: openArray[char]): gen_qevent_types.QFileOpenEvent =
  gen_qevent_types.QFileOpenEvent(h: fcQFileOpenEvent_new(struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file)))), owned: true)

proc create*(T: type gen_qevent_types.QFileOpenEvent,
    url: gen_qurl_types.QUrl): gen_qevent_types.QFileOpenEvent =
  gen_qevent_types.QFileOpenEvent(h: fcQFileOpenEvent_new2(url.h), owned: true)

proc create*(T: type gen_qevent_types.QFileOpenEvent,
    param1: gen_qevent_types.QFileOpenEvent): gen_qevent_types.QFileOpenEvent =
  gen_qevent_types.QFileOpenEvent(h: fcQFileOpenEvent_new3(param1.h), owned: true)

proc toggle*(self: gen_qevent_types.QToolBarChangeEvent): bool =
  fcQToolBarChangeEvent_toggle(self.h)

proc create*(T: type gen_qevent_types.QToolBarChangeEvent,
    t: bool): gen_qevent_types.QToolBarChangeEvent =
  gen_qevent_types.QToolBarChangeEvent(h: fcQToolBarChangeEvent_new(t), owned: true)

proc create*(T: type gen_qevent_types.QToolBarChangeEvent,
    param1: gen_qevent_types.QToolBarChangeEvent): gen_qevent_types.QToolBarChangeEvent =
  gen_qevent_types.QToolBarChangeEvent(h: fcQToolBarChangeEvent_new2(param1.h), owned: true)

proc key*(self: gen_qevent_types.QShortcutEvent): gen_qkeysequence_types.QKeySequence =
  gen_qkeysequence_types.QKeySequence(h: fcQShortcutEvent_key(self.h), owned: false)

proc shortcutId*(self: gen_qevent_types.QShortcutEvent): cint =
  fcQShortcutEvent_shortcutId(self.h)

proc isAmbiguous*(self: gen_qevent_types.QShortcutEvent): bool =
  fcQShortcutEvent_isAmbiguous(self.h)

proc create*(T: type gen_qevent_types.QShortcutEvent,
    key: gen_qkeysequence_types.QKeySequence, id: cint): gen_qevent_types.QShortcutEvent =
  gen_qevent_types.QShortcutEvent(h: fcQShortcutEvent_new(key.h, id), owned: true)

proc create*(T: type gen_qevent_types.QShortcutEvent,
    param1: gen_qevent_types.QShortcutEvent): gen_qevent_types.QShortcutEvent =
  gen_qevent_types.QShortcutEvent(h: fcQShortcutEvent_new2(param1.h), owned: true)

proc create*(T: type gen_qevent_types.QShortcutEvent,
    key: gen_qkeysequence_types.QKeySequence, id: cint, ambiguous: bool): gen_qevent_types.QShortcutEvent =
  gen_qevent_types.QShortcutEvent(h: fcQShortcutEvent_new3(key.h, id, ambiguous), owned: true)

proc oldState*(self: gen_qevent_types.QWindowStateChangeEvent): cint =
  cint(fcQWindowStateChangeEvent_oldState(self.h))

proc isOverride*(self: gen_qevent_types.QWindowStateChangeEvent): bool =
  fcQWindowStateChangeEvent_isOverride(self.h)

proc create*(T: type gen_qevent_types.QWindowStateChangeEvent,
    aOldState: cint): gen_qevent_types.QWindowStateChangeEvent =
  gen_qevent_types.QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_new(cint(aOldState)), owned: true)

proc create*(T: type gen_qevent_types.QWindowStateChangeEvent,
    param1: gen_qevent_types.QWindowStateChangeEvent): gen_qevent_types.QWindowStateChangeEvent =
  gen_qevent_types.QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_new2(param1.h), owned: true)

proc create*(T: type gen_qevent_types.QWindowStateChangeEvent,
    aOldState: cint, isOverride: bool): gen_qevent_types.QWindowStateChangeEvent =
  gen_qevent_types.QWindowStateChangeEvent(h: fcQWindowStateChangeEvent_new3(cint(aOldState), isOverride), owned: true)

proc fromNumericId*(_: type gen_qevent_types.QPointingDeviceUniqueId, id: clonglong): gen_qevent_types.QPointingDeviceUniqueId =
  gen_qevent_types.QPointingDeviceUniqueId(h: fcQPointingDeviceUniqueId_fromNumericId(id), owned: true)

proc isValid*(self: gen_qevent_types.QPointingDeviceUniqueId): bool =
  fcQPointingDeviceUniqueId_isValid(self.h)

proc numericId*(self: gen_qevent_types.QPointingDeviceUniqueId): clonglong =
  fcQPointingDeviceUniqueId_numericId(self.h)

proc create*(T: type gen_qevent_types.QPointingDeviceUniqueId): gen_qevent_types.QPointingDeviceUniqueId =
  gen_qevent_types.QPointingDeviceUniqueId(h: fcQPointingDeviceUniqueId_new(), owned: true)

proc create*(T: type gen_qevent_types.QPointingDeviceUniqueId,
    param1: gen_qevent_types.QPointingDeviceUniqueId): gen_qevent_types.QPointingDeviceUniqueId =
  gen_qevent_types.QPointingDeviceUniqueId(h: fcQPointingDeviceUniqueId_new2(param1.h), owned: true)

proc staticMetaObject*(_: type gen_qevent_types.QPointingDeviceUniqueId): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPointingDeviceUniqueId_staticMetaObject())
proc window*(self: gen_qevent_types.QTouchEvent): gen_qwindow_types.QWindow =
  gen_qwindow_types.QWindow(h: fcQTouchEvent_window(self.h), owned: false)

proc target*(self: gen_qevent_types.QTouchEvent): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTouchEvent_target(self.h), owned: false)

proc touchPointStates*(self: gen_qevent_types.QTouchEvent): cint =
  cint(fcQTouchEvent_touchPointStates(self.h))

proc touchPoints*(self: gen_qevent_types.QTouchEvent): seq[gen_qevent_types.QTouchEventTouchPoint] =
  var v_ma = fcQTouchEvent_touchPoints(self.h)
  var vx_ret = newSeq[gen_qevent_types.QTouchEventTouchPoint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qevent_types.QTouchEventTouchPoint(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc device*(self: gen_qevent_types.QTouchEvent): gen_qtouchdevice_types.QTouchDevice =
  gen_qtouchdevice_types.QTouchDevice(h: fcQTouchEvent_device(self.h), owned: false)

proc setWindow*(self: gen_qevent_types.QTouchEvent, awindow: gen_qwindow_types.QWindow): void =
  fcQTouchEvent_setWindow(self.h, awindow.h)

proc setTarget*(self: gen_qevent_types.QTouchEvent, atarget: gen_qobject_types.QObject): void =
  fcQTouchEvent_setTarget(self.h, atarget.h)

proc setTouchPointStates*(self: gen_qevent_types.QTouchEvent, aTouchPointStates: cint): void =
  fcQTouchEvent_setTouchPointStates(self.h, cint(aTouchPointStates))

proc setTouchPoints*(self: gen_qevent_types.QTouchEvent, atouchPoints: openArray[gen_qevent_types.QTouchEventTouchPoint]): void =
  var atouchPoints_CArray = newSeq[pointer](len(atouchPoints))
  for i in 0..<len(atouchPoints):
    atouchPoints_CArray[i] = atouchPoints[i].h

  fcQTouchEvent_setTouchPoints(self.h, struct_miqt_array(len: csize_t(len(atouchPoints)), data: if len(atouchPoints) == 0: nil else: addr(atouchPoints_CArray[0])))

proc setDevice*(self: gen_qevent_types.QTouchEvent, adevice: gen_qtouchdevice_types.QTouchDevice): void =
  fcQTouchEvent_setDevice(self.h, adevice.h)

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new(cint(eventType)), owned: true)

proc create*(T: type gen_qevent_types.QTouchEvent,
    param1: gen_qevent_types.QTouchEvent): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new2(param1.h), owned: true)

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qtouchdevice_types.QTouchDevice): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new3(cint(eventType), device.h), owned: true)

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qtouchdevice_types.QTouchDevice, modifiers: cint): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new4(cint(eventType), device.h, cint(modifiers)), owned: true)

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qtouchdevice_types.QTouchDevice, modifiers: cint, touchPointStates: cint): gen_qevent_types.QTouchEvent =
  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new5(cint(eventType), device.h, cint(modifiers), cint(touchPointStates)), owned: true)

proc create*(T: type gen_qevent_types.QTouchEvent,
    eventType: cint, device: gen_qtouchdevice_types.QTouchDevice, modifiers: cint, touchPointStates: cint, touchPoints: openArray[gen_qevent_types.QTouchEventTouchPoint]): gen_qevent_types.QTouchEvent =
  var touchPoints_CArray = newSeq[pointer](len(touchPoints))
  for i in 0..<len(touchPoints):
    touchPoints_CArray[i] = touchPoints[i].h

  gen_qevent_types.QTouchEvent(h: fcQTouchEvent_new6(cint(eventType), device.h, cint(modifiers), cint(touchPointStates), struct_miqt_array(len: csize_t(len(touchPoints)), data: if len(touchPoints) == 0: nil else: addr(touchPoints_CArray[0]))), owned: true)

proc startPos*(self: gen_qevent_types.QScrollPrepareEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScrollPrepareEvent_startPos(self.h), owned: true)

proc viewportSize*(self: gen_qevent_types.QScrollPrepareEvent): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQScrollPrepareEvent_viewportSize(self.h), owned: true)

proc contentPosRange*(self: gen_qevent_types.QScrollPrepareEvent): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQScrollPrepareEvent_contentPosRange(self.h), owned: true)

proc contentPos*(self: gen_qevent_types.QScrollPrepareEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScrollPrepareEvent_contentPos(self.h), owned: true)

proc setViewportSize*(self: gen_qevent_types.QScrollPrepareEvent, size: gen_qsize_types.QSizeF): void =
  fcQScrollPrepareEvent_setViewportSize(self.h, size.h)

proc setContentPosRange*(self: gen_qevent_types.QScrollPrepareEvent, rect: gen_qrect_types.QRectF): void =
  fcQScrollPrepareEvent_setContentPosRange(self.h, rect.h)

proc setContentPos*(self: gen_qevent_types.QScrollPrepareEvent, pos: gen_qpoint_types.QPointF): void =
  fcQScrollPrepareEvent_setContentPos(self.h, pos.h)

proc create*(T: type gen_qevent_types.QScrollPrepareEvent,
    startPos: gen_qpoint_types.QPointF): gen_qevent_types.QScrollPrepareEvent =
  gen_qevent_types.QScrollPrepareEvent(h: fcQScrollPrepareEvent_new(startPos.h), owned: true)

proc create*(T: type gen_qevent_types.QScrollPrepareEvent,
    param1: gen_qevent_types.QScrollPrepareEvent): gen_qevent_types.QScrollPrepareEvent =
  gen_qevent_types.QScrollPrepareEvent(h: fcQScrollPrepareEvent_new2(param1.h), owned: true)

proc contentPos*(self: gen_qevent_types.QScrollEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScrollEvent_contentPos(self.h), owned: true)

proc overshootDistance*(self: gen_qevent_types.QScrollEvent): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQScrollEvent_overshootDistance(self.h), owned: true)

proc scrollState*(self: gen_qevent_types.QScrollEvent): cint =
  cint(fcQScrollEvent_scrollState(self.h))

proc create*(T: type gen_qevent_types.QScrollEvent,
    contentPos: gen_qpoint_types.QPointF, overshoot: gen_qpoint_types.QPointF, scrollState: cint): gen_qevent_types.QScrollEvent =
  gen_qevent_types.QScrollEvent(h: fcQScrollEvent_new(contentPos.h, overshoot.h, cint(scrollState)), owned: true)

proc create*(T: type gen_qevent_types.QScrollEvent,
    param1: gen_qevent_types.QScrollEvent): gen_qevent_types.QScrollEvent =
  gen_qevent_types.QScrollEvent(h: fcQScrollEvent_new2(param1.h), owned: true)

proc screen*(self: gen_qevent_types.QScreenOrientationChangeEvent): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQScreenOrientationChangeEvent_screen(self.h), owned: false)

proc orientation*(self: gen_qevent_types.QScreenOrientationChangeEvent): cint =
  cint(fcQScreenOrientationChangeEvent_orientation(self.h))

proc create*(T: type gen_qevent_types.QScreenOrientationChangeEvent,
    screen: gen_qscreen_types.QScreen, orientation: cint): gen_qevent_types.QScreenOrientationChangeEvent =
  gen_qevent_types.QScreenOrientationChangeEvent(h: fcQScreenOrientationChangeEvent_new(screen.h, cint(orientation)), owned: true)

proc create*(T: type gen_qevent_types.QScreenOrientationChangeEvent,
    param1: gen_qevent_types.QScreenOrientationChangeEvent): gen_qevent_types.QScreenOrientationChangeEvent =
  gen_qevent_types.QScreenOrientationChangeEvent(h: fcQScreenOrientationChangeEvent_new2(param1.h), owned: true)

proc applicationState*(self: gen_qevent_types.QApplicationStateChangeEvent): cint =
  cint(fcQApplicationStateChangeEvent_applicationState(self.h))

proc create*(T: type gen_qevent_types.QApplicationStateChangeEvent,
    state: cint): gen_qevent_types.QApplicationStateChangeEvent =
  gen_qevent_types.QApplicationStateChangeEvent(h: fcQApplicationStateChangeEvent_new(cint(state)), owned: true)

proc create*(T: type gen_qevent_types.QApplicationStateChangeEvent,
    param1: gen_qevent_types.QApplicationStateChangeEvent): gen_qevent_types.QApplicationStateChangeEvent =
  gen_qevent_types.QApplicationStateChangeEvent(h: fcQApplicationStateChangeEvent_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qevent_types.QInputMethodEventAttribute, param1: gen_qevent_types.QInputMethodEventAttribute): void =
  fcQInputMethodEventAttribute_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qevent_types.QInputMethodEventAttribute,
    typ: cint, s: cint, l: cint, val: gen_qvariant_types.QVariant): gen_qevent_types.QInputMethodEventAttribute =
  gen_qevent_types.QInputMethodEventAttribute(h: fcQInputMethodEventAttribute_new(cint(typ), s, l, val.h), owned: true)

proc create*(T: type gen_qevent_types.QInputMethodEventAttribute,
    typ: cint, s: cint, l: cint): gen_qevent_types.QInputMethodEventAttribute =
  gen_qevent_types.QInputMethodEventAttribute(h: fcQInputMethodEventAttribute_new2(cint(typ), s, l), owned: true)

proc create*(T: type gen_qevent_types.QInputMethodEventAttribute,
    param1: gen_qevent_types.QInputMethodEventAttribute): gen_qevent_types.QInputMethodEventAttribute =
  gen_qevent_types.QInputMethodEventAttribute(h: fcQInputMethodEventAttribute_new3(param1.h), owned: true)

proc operatorAssign*(self: gen_qevent_types.QTouchEventTouchPoint, other: gen_qevent_types.QTouchEventTouchPoint): void =
  fcQTouchEventTouchPoint_operatorAssign(self.h, other.h)

proc swap*(self: gen_qevent_types.QTouchEventTouchPoint, other: gen_qevent_types.QTouchEventTouchPoint): void =
  fcQTouchEventTouchPoint_swap(self.h, other.h)

proc id*(self: gen_qevent_types.QTouchEventTouchPoint): cint =
  fcQTouchEventTouchPoint_id(self.h)

proc uniqueId*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qevent_types.QPointingDeviceUniqueId =
  gen_qevent_types.QPointingDeviceUniqueId(h: fcQTouchEventTouchPoint_uniqueId(self.h), owned: true)

proc state*(self: gen_qevent_types.QTouchEventTouchPoint): cint =
  cint(fcQTouchEventTouchPoint_state(self.h))

proc pos*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTouchEventTouchPoint_pos(self.h), owned: true)

proc startPos*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTouchEventTouchPoint_startPos(self.h), owned: true)

proc lastPos*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTouchEventTouchPoint_lastPos(self.h), owned: true)

proc scenePos*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTouchEventTouchPoint_scenePos(self.h), owned: true)

proc startScenePos*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTouchEventTouchPoint_startScenePos(self.h), owned: true)

proc lastScenePos*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTouchEventTouchPoint_lastScenePos(self.h), owned: true)

proc screenPos*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTouchEventTouchPoint_screenPos(self.h), owned: true)

proc startScreenPos*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTouchEventTouchPoint_startScreenPos(self.h), owned: true)

proc lastScreenPos*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTouchEventTouchPoint_lastScreenPos(self.h), owned: true)

proc normalizedPos*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTouchEventTouchPoint_normalizedPos(self.h), owned: true)

proc startNormalizedPos*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTouchEventTouchPoint_startNormalizedPos(self.h), owned: true)

proc lastNormalizedPos*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTouchEventTouchPoint_lastNormalizedPos(self.h), owned: true)

proc rect*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQTouchEventTouchPoint_rect(self.h), owned: true)

proc sceneRect*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQTouchEventTouchPoint_sceneRect(self.h), owned: true)

proc screenRect*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQTouchEventTouchPoint_screenRect(self.h), owned: true)

proc setRect*(self: gen_qevent_types.QTouchEventTouchPoint, rect: gen_qrect_types.QRectF): void =
  fcQTouchEventTouchPoint_setRect(self.h, rect.h)

proc setSceneRect*(self: gen_qevent_types.QTouchEventTouchPoint, sceneRect: gen_qrect_types.QRectF): void =
  fcQTouchEventTouchPoint_setSceneRect(self.h, sceneRect.h)

proc setScreenRect*(self: gen_qevent_types.QTouchEventTouchPoint, screenRect: gen_qrect_types.QRectF): void =
  fcQTouchEventTouchPoint_setScreenRect(self.h, screenRect.h)

proc pressure*(self: gen_qevent_types.QTouchEventTouchPoint): float64 =
  fcQTouchEventTouchPoint_pressure(self.h)

proc rotation*(self: gen_qevent_types.QTouchEventTouchPoint): float64 =
  fcQTouchEventTouchPoint_rotation(self.h)

proc ellipseDiameters*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQTouchEventTouchPoint_ellipseDiameters(self.h), owned: true)

proc velocity*(self: gen_qevent_types.QTouchEventTouchPoint): gen_qvector2d_types.QVector2D =
  gen_qvector2d_types.QVector2D(h: fcQTouchEventTouchPoint_velocity(self.h), owned: true)

proc flags*(self: gen_qevent_types.QTouchEventTouchPoint): cint =
  cint(fcQTouchEventTouchPoint_flags(self.h))

proc rawScreenPositions*(self: gen_qevent_types.QTouchEventTouchPoint): seq[gen_qpoint_types.QPointF] =
  var v_ma = fcQTouchEventTouchPoint_rawScreenPositions(self.h)
  var vx_ret = newSeq[gen_qpoint_types.QPointF](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpoint_types.QPointF(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setId*(self: gen_qevent_types.QTouchEventTouchPoint, id: cint): void =
  fcQTouchEventTouchPoint_setId(self.h, id)

proc setUniqueId*(self: gen_qevent_types.QTouchEventTouchPoint, uid: clonglong): void =
  fcQTouchEventTouchPoint_setUniqueId(self.h, uid)

proc setState*(self: gen_qevent_types.QTouchEventTouchPoint, state: cint): void =
  fcQTouchEventTouchPoint_setState(self.h, cint(state))

proc setPos*(self: gen_qevent_types.QTouchEventTouchPoint, pos: gen_qpoint_types.QPointF): void =
  fcQTouchEventTouchPoint_setPos(self.h, pos.h)

proc setScenePos*(self: gen_qevent_types.QTouchEventTouchPoint, scenePos: gen_qpoint_types.QPointF): void =
  fcQTouchEventTouchPoint_setScenePos(self.h, scenePos.h)

proc setScreenPos*(self: gen_qevent_types.QTouchEventTouchPoint, screenPos: gen_qpoint_types.QPointF): void =
  fcQTouchEventTouchPoint_setScreenPos(self.h, screenPos.h)

proc setNormalizedPos*(self: gen_qevent_types.QTouchEventTouchPoint, normalizedPos: gen_qpoint_types.QPointF): void =
  fcQTouchEventTouchPoint_setNormalizedPos(self.h, normalizedPos.h)

proc setStartPos*(self: gen_qevent_types.QTouchEventTouchPoint, startPos: gen_qpoint_types.QPointF): void =
  fcQTouchEventTouchPoint_setStartPos(self.h, startPos.h)

proc setStartScenePos*(self: gen_qevent_types.QTouchEventTouchPoint, startScenePos: gen_qpoint_types.QPointF): void =
  fcQTouchEventTouchPoint_setStartScenePos(self.h, startScenePos.h)

proc setStartScreenPos*(self: gen_qevent_types.QTouchEventTouchPoint, startScreenPos: gen_qpoint_types.QPointF): void =
  fcQTouchEventTouchPoint_setStartScreenPos(self.h, startScreenPos.h)

proc setStartNormalizedPos*(self: gen_qevent_types.QTouchEventTouchPoint, startNormalizedPos: gen_qpoint_types.QPointF): void =
  fcQTouchEventTouchPoint_setStartNormalizedPos(self.h, startNormalizedPos.h)

proc setLastPos*(self: gen_qevent_types.QTouchEventTouchPoint, lastPos: gen_qpoint_types.QPointF): void =
  fcQTouchEventTouchPoint_setLastPos(self.h, lastPos.h)

proc setLastScenePos*(self: gen_qevent_types.QTouchEventTouchPoint, lastScenePos: gen_qpoint_types.QPointF): void =
  fcQTouchEventTouchPoint_setLastScenePos(self.h, lastScenePos.h)

proc setLastScreenPos*(self: gen_qevent_types.QTouchEventTouchPoint, lastScreenPos: gen_qpoint_types.QPointF): void =
  fcQTouchEventTouchPoint_setLastScreenPos(self.h, lastScreenPos.h)

proc setLastNormalizedPos*(self: gen_qevent_types.QTouchEventTouchPoint, lastNormalizedPos: gen_qpoint_types.QPointF): void =
  fcQTouchEventTouchPoint_setLastNormalizedPos(self.h, lastNormalizedPos.h)

proc setPressure*(self: gen_qevent_types.QTouchEventTouchPoint, pressure: float64): void =
  fcQTouchEventTouchPoint_setPressure(self.h, pressure)

proc setRotation*(self: gen_qevent_types.QTouchEventTouchPoint, angle: float64): void =
  fcQTouchEventTouchPoint_setRotation(self.h, angle)

proc setEllipseDiameters*(self: gen_qevent_types.QTouchEventTouchPoint, dia: gen_qsize_types.QSizeF): void =
  fcQTouchEventTouchPoint_setEllipseDiameters(self.h, dia.h)

proc setVelocity*(self: gen_qevent_types.QTouchEventTouchPoint, v: gen_qvector2d_types.QVector2D): void =
  fcQTouchEventTouchPoint_setVelocity(self.h, v.h)

proc setFlags*(self: gen_qevent_types.QTouchEventTouchPoint, flags: cint): void =
  fcQTouchEventTouchPoint_setFlags(self.h, cint(flags))

proc setRawScreenPositions*(self: gen_qevent_types.QTouchEventTouchPoint, positions: openArray[gen_qpoint_types.QPointF]): void =
  var positions_CArray = newSeq[pointer](len(positions))
  for i in 0..<len(positions):
    positions_CArray[i] = positions[i].h

  fcQTouchEventTouchPoint_setRawScreenPositions(self.h, struct_miqt_array(len: csize_t(len(positions)), data: if len(positions) == 0: nil else: addr(positions_CArray[0])))

proc create*(T: type gen_qevent_types.QTouchEventTouchPoint): gen_qevent_types.QTouchEventTouchPoint =
  gen_qevent_types.QTouchEventTouchPoint(h: fcQTouchEventTouchPoint_new(), owned: true)

proc create*(T: type gen_qevent_types.QTouchEventTouchPoint,
    other: gen_qevent_types.QTouchEventTouchPoint): gen_qevent_types.QTouchEventTouchPoint =
  gen_qevent_types.QTouchEventTouchPoint(h: fcQTouchEventTouchPoint_new2(other.h), owned: true)

proc create*(T: type gen_qevent_types.QTouchEventTouchPoint,
    id: cint): gen_qevent_types.QTouchEventTouchPoint =
  gen_qevent_types.QTouchEventTouchPoint(h: fcQTouchEventTouchPoint_new3(id), owned: true)

